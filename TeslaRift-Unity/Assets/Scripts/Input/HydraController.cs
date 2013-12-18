﻿using UnityEngine;
using System.Text;
using System.Collections;
using System;
using System.Collections.Generic;

public enum HydraStates
{
	LEFT_IDLE = 0,
	LEFT_HOLDING,
	
	RIGHT_IDLE,
	RIGHT_HOLDING
}

public enum ProximityType{ 
	INSTRUMENT_INTERIOR = 0,
	INSTRUMENT_PROXIMITY,
	GENERATOR
}

public class HydraController : MonoBehaviour {
	
	private static HydraController m_instance;
	public static HydraController Instance{ get { return m_instance; }}

	//Member variables
	//-----------------------
	private SixenseInput.Controller m_leftHandController;
	private SixenseInput.Controller m_rightHandController;
	public GameObject m_leftHand;
	public GameObject m_rightHand;
	protected HydraHand m_leftHandHydra;
	protected HydraHand m_rightHandHydra;
	protected Vector3 m_leftHandVelocity;
	protected Vector3 m_rightHandVelocity;
	private Vector3 m_lastLeftHandPos;
	private Vector3 m_lastRightHandPos;

	public Transform m_leftHandTip;
	public Transform m_rightHandTip;
	public GameObject m_performer;
	
	//Collision lists
	//---------------
	private List<GameObject> m_leftInstrumentProximity;
	private List<GameObject> m_rightInstrumentProximity;
	private List<GameObject> m_leftInstrumentInterior;
	private List<GameObject> m_rightInstrumentInterior;
	
	private ToolController m_toolControlRef;
	public GameObject instrumentController;
	private InstrumentController m_instrumentControlRef;
	
	private GloveController m_leftGlove;
	private GloveController m_rightGlove;
	
	// Initialization
	//------------------
	void Awake() {
		//Collision lists
		m_leftInstrumentProximity = new List<GameObject>();
		m_rightInstrumentProximity = new List<GameObject>();
		m_leftInstrumentInterior = new List<GameObject>();
		m_rightInstrumentInterior = new List<GameObject>();
		m_leftHandHydra = m_leftHand.GetComponent<HydraHand>();
		m_rightHandHydra = m_rightHand.GetComponent<HydraHand>();
		
		//Controllers
		m_toolControlRef = ToolController.Instance;
		m_instrumentControlRef = InstrumentController.Instance;
		m_instance = this;
		
		m_leftGlove = m_leftHand.GetComponent<GloveController>();
		m_rightGlove = m_rightHand.GetComponent<GloveController>();
	}
	
	
	/*
	 * Returns left/right hand controllers
	 */
	public SixenseInput.Controller GetHandController(BaseTool.ToolHand hand){
		if(hand == BaseTool.ToolHand.LEFT)
			return m_leftHandController;
		return m_rightHandController;
	}
	
	
	/*
	 * Gets the left/right hand gameObject
	 */
	public GameObject GetHand(BaseTool.ToolHand hand){
		if(hand == BaseTool.ToolHand.LEFT)
			return m_leftHand;
		return m_rightHand;
	}

	/*
	 * Gets the left/right hand gameObject
	 */
	public Transform GetHandTip(BaseTool.ToolHand hand){
		if(hand == BaseTool.ToolHand.LEFT)
			return m_leftHandTip;
		return m_rightHandTip;
	}

	public Vector3 GetHandVelocity(BaseTool.ToolHand hand){
		if(hand == BaseTool.ToolHand.LEFT)
			return m_leftHandVelocity;
		return m_rightHandVelocity;
	}


	/*
	 * Gets the OVR performer
	 */
	public GameObject GetPerformer{ get { return m_performer; }}

	/*
	 * Checks distance between hand, performer, and a target object
	 */
	public bool IsHandCloserThanObject(Transform t, BaseTool.ToolHand hand){
		float a = Vector3.Distance(t.position, m_performer.transform.position);
		float b = Vector3.Distance(GetHandTip(hand).position, m_performer.transform.position);
		if( a > b )
			return true;
		return false;
	}

	
	/*
	 * Returns left/right glove controllers
	 */
	public GloveController GetGloveController(BaseTool.ToolHand hand){
		if(hand == BaseTool.ToolHand.LEFT)
			return m_leftGlove;
		return m_rightGlove;
	}

	/*
	 * Returns left/right hydrahands controllers
	 */
	public HydraHand GetHydraHand(BaseTool.ToolHand hand){
		if(hand == BaseTool.ToolHand.LEFT)
			return m_leftHandHydra;
		return m_rightHandHydra;
	}

	public Vector3 GetHandColliderPosition(BaseTool.ToolHand hand){
		GameObject handObj;
		if(hand == BaseTool.ToolHand.LEFT)
			handObj = m_leftHand;
		else 
			handObj = m_rightHand;

		if(handObj.collider != null){
			if( handObj.collider.GetType() == typeof(BoxCollider) ){
				BoxCollider coll = handObj.collider as BoxCollider;
				return coll.bounds.center;
			}
		}

		return Vector3.zero;
	}
	
	

	/*
	 * Returns the the closest object to the hand in a specific proximity list
	 */

	public GameObject HandTarget(BaseTool.ToolHand hand, ProximityType proximityTarget, BaseTool.ToolMode mode){
		return GetClosestObjectInList( GetCollisionList(proximityTarget, BaseTool.ToolHandToSixenseHand(hand) ), GetHand(hand), mode );
	}


	public GameObject GetClosestObjectInList(List<GameObject> targetList, GameObject target, BaseTool.ToolMode mode){
		float closestDistance = -1.0f;
		GameObject closestObject = null;
		
		if(targetList != null && target != null){
			foreach(GameObject obj in targetList){
				if(obj != null){
					float dist = Vector3.Distance(obj.transform.position, target.transform.position);
					if(dist < closestDistance || closestDistance < 0){
						BaseAttachment attach = obj.GetComponent<BaseAttachment>();

						if(attach != null){
							if(attach.respondsToToolMode(mode)){
								closestDistance = dist;
								closestObject = obj;
							}
						}
					}

				}
			}
		}
		
		return closestObject;
	}

	public void RemoveFromAllCollisionLists(GameObject target){
		GetCollisionList(ProximityType.INSTRUMENT_INTERIOR, SixenseHands.LEFT).Remove(target);
		GetCollisionList(ProximityType.INSTRUMENT_INTERIOR, SixenseHands.RIGHT).Remove(target);
		GetCollisionList(ProximityType.INSTRUMENT_PROXIMITY, SixenseHands.LEFT).Remove(target);
		GetCollisionList(ProximityType.INSTRUMENT_PROXIMITY, SixenseHands.RIGHT).Remove(target);
	}

	
	
	/*
	 * Adds a proximity target to a list of active colliders with a hand 
	 */
	public void AddCollision(GameObject proximityTarget, SixenseHands hand, ProximityType proximityType){		
		List<GameObject> targetList = GetCollisionList(proximityType, hand);
		
		if(!targetList.Contains(proximityTarget))
			targetList.Add(proximityTarget);
	}
	
	
	/*
	 * Removes a proximity target from a list of active colliders with a hand 
	 */
	public void RemoveCollision(GameObject proximityTarget, SixenseHands hand, ProximityType proximityType){		
		List<GameObject> targetList = GetCollisionList(proximityType, hand);
		targetList.Remove(proximityTarget);
	}
	
	
	/*
	 * Gets a secific proximity collider list
	 */
	public List<GameObject> GetCollisionList(ProximityType proximityType, SixenseHands hand){
		
		List<GameObject> targetList = null;
		
		switch(proximityType){
			case ProximityType.INSTRUMENT_INTERIOR:
				if(hand == SixenseHands.LEFT)
					targetList = m_leftInstrumentInterior;
				else if(hand == SixenseHands.RIGHT)
					targetList = m_rightInstrumentInterior;
				break;
			case ProximityType.INSTRUMENT_PROXIMITY:
				if(hand == SixenseHands.LEFT)
					targetList = m_leftInstrumentProximity;
				else if(hand == SixenseHands.RIGHT)
					targetList = m_rightInstrumentProximity;
				break;
			case ProximityType.GENERATOR:
				break;
		}
	
		return targetList;
	}
	
	
	
	/*
	 * Updaters
	 */
	void Update () {
		if(m_leftHandController == null)
			m_leftHandController = SixenseInput.GetController( SixenseHands.LEFT );
				
		if(m_rightHandController == null)
			m_rightHandController = SixenseInput.GetController( SixenseHands.RIGHT );

		//Hand velocities
		m_leftHandVelocity = m_leftHand.transform.position - m_lastLeftHandPos;
		m_rightHandVelocity = m_rightHand.transform.position - m_lastRightHandPos;
		m_lastLeftHandPos = m_leftHand.transform.position;
		m_lastRightHandPos = m_rightHand.transform.position;
		
		SetCommonTools(BaseTool.ToolHand.LEFT);
		SetIndividualToolsRight(BaseTool.ToolHand.LEFT);
	}
	
	
	/*
	 * Sets tools for specifically th right controler (currently the only one being used. Will be changed)
	 */
	public void SetIndividualToolsRight(BaseTool.ToolHand hand){
		//if(m_rightHandController != null)
		//{	
			//Hand calibration
			//----------------
			if(Input.GetKeyDown(KeyCode.P)){
			//if(m_rightHandController.GetButton( SixenseButtons.START ) || Input.GetKeyDown(KeyCode.P)){
				//GetComponent<SixenseInput>().RebindHands();
				m_leftHandHydra.SetEnabled(false);
				m_rightHandHydra.SetEnabled(false);
			}
			
			if(Input.GetKeyUp(KeyCode.P)){
			//if ( m_rightHandController.GetButtonUp( SixenseButtons.START ) || Input.GetKeyUp(KeyCode.P)){
				m_leftHandHydra.ActivateHand(m_leftHandController);
				m_rightHandHydra.ActivateHand(m_rightHandController);
			} 
			
			/*else if(m_rightHandController.GetButton(SixenseButtons.START) && m_rightHandController.GetButtonUp(SixenseButtons.BUMPER)){
				gameObject.GetComponent<SixenseInput>().RebindHands();
			} */
		//}
	}
	
	
	/*
	 * Common tools for each hand
	 */
	public void SetCommonTools(BaseTool.ToolHand hand){
		
		GloveController m_glove = GetGloveController(hand);
		HydraHand hydraHand = GetHydraHand(hand);
					
		//Physics selector
		//------------
		if(m_glove.GetGestureDown("CLOSED_HAND") || Input.GetKeyDown(KeyCode.Space)){
			m_toolControlRef.PushTool(typeof(PhysGrabberTool), hand, BaseTool.ToolMode.PRIMARY);
			hydraHand.animator.SetBool( "Fist", true );
			hydraHand.animator.SetFloat("FistAmount", 1.0f);
		} 
		
		//Physics pull
		//------------
		else if(m_glove.GetGestureDown("PINKY") || Input.GetKeyDown(KeyCode.LeftShift)){
			m_toolControlRef.PushTool(typeof(InstrumentGestureTool), hand, BaseTool.ToolMode.TERTIARY);
		}

		else if(m_glove.GetGestureDown("THREE_SWIPE") || Input.GetKeyDown(KeyCode.LeftShift)){
			m_toolControlRef.PushTool(typeof(InstrumentGestureTool), hand, BaseTool.ToolMode.TERTIARY);
			hydraHand.animator.SetBool( "GripBall", true );
		}
		
		//Gesture Selector Primary
		//--------------------
		else if(m_glove.GetGestureDown("INDEX_POINT") || Input.GetKeyDown(KeyCode.W)){
			m_toolControlRef.PushTool(typeof(InstrumentGestureTool), hand, BaseTool.ToolMode.PRIMARY);
			hydraHand.animator.SetBool( "Point", true );
		}
		
					//Gesture selector secondary
		//--------------------
		else if(m_glove.GetGestureDown("INDEX_MIDDLE") || Input.GetKeyDown(KeyCode.E)){
			m_toolControlRef.PushTool(typeof(InstrumentGestureTool), hand, BaseTool.ToolMode.SECONDARY);	//Secondary mode does a full reset
			hydraHand.animator.SetBool( "HoldBook", true );
		}

		else if(m_glove.GetGestureDown("ROCK_ON") || Input.GetKeyDown(KeyCode.S)){
			m_toolControlRef.PushTool(typeof(InstrumentGestureTool), hand, BaseTool.ToolMode.TERTIARY);	//Secondary mode does a full reset
			hydraHand.animator.SetBool( "GripBall", true );
		}
	
		//Normal reset
		//--------------------
		/*else if(m_leftGlove.GetGestureDown("INDEX_POINT") || Input.GetKeyDown(KeyCode.W)){
			m_toolControlRef.PushTool(typeof(ResetTool), hand);
		}
		
		
		//Full instrument reset
		//---------------------
		else if(Input.GetKeyDown(KeyCode.D)){  
			m_toolControlRef.PushTool(typeof(ResetTool), hand, BaseTool.ToolMode.SECONDARY);
		}*/
		
		//Return to idle
		//--------------
		
		bool openHand = m_glove.GetGestureDown("IDLE_HAND");
		
		if(Input.GetKeyUp (KeyCode.Space) ||
			Input.GetKeyUp(KeyCode.W) ||
		    Input.GetKeyUp(KeyCode.LeftShift) ||
			Input.GetKeyUp(KeyCode.E) ||
		    Input.GetKeyUp(KeyCode.S) ||
			openHand )
		{
			m_toolControlRef.PopTool(hand);
			hydraHand.animator.SetBool( "Fist", false );
			hydraHand.animator.SetFloat("FistAmount", 0.0f);
			hydraHand.animator.SetBool( "Point", false );
			hydraHand.animator.SetBool( "HoldBook", false );
			hydraHand.animator.SetBool("Idle", true);
		}
	}
	
}
