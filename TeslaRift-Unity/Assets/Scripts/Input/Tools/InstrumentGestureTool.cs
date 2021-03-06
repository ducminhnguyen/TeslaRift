using UnityEngine;
using System.Collections;
using System.Collections.Generic;

using MusicIO;

public class InstrumentGestureTool : BaseTool {
	
	/*
	 * Object we are interacting with
	 */
	protected GameObject m_heldObject;
	protected BaseAttachment m_attachment;
	
	/*
	 * Current position of tool relative to held object
	 */
	public enum GestureState{
		INTERIOR = 0,
		INTERIOR_TO_PROXIMITY,
		INTERIOR_TO_EXTERIOR,
		PROXIMITY,
		PROXIMITY_TO_INTERIOR,
		PROXIMITY_TO_EXTERIOR,
		EXTERIOR,
		EXTERIOR_TO_PROXIMITY,
		EXTERIOR_TO_INTERIOR
	}
	
	/*
	 * Gesture state and timers
	 */
	public float m_betweenGestureDelay = 0.5f;
	protected float m_gestureTimer;
	protected GestureState m_gestureState;
	protected GestureState m_lastGestureState;
	public GestureState GetGestureState{ get { return m_gestureState; }}
	
	
	public override void Awake ()
	{
		base.Awake ();
	}
	

	public override void Update ()
	{
		CheckProximityStatus();
		base.Update();
	}
	
		
	/*
	 * Tool enter state
	 */
	public override void TransitionIn ()
	{
		m_toolHandState = BaseTool.HandState.SEARCHING;
		m_gestureState = GestureState.EXTERIOR;
		m_lastGestureState = GestureState.EXTERIOR;
		m_gestureTimer = m_betweenGestureDelay;
	}
	
	
	/*
	 * Checks for position of tool relative to interacting object. 
	 */
	protected void CheckProximityStatus(){
		
		switch(m_toolHandState){
		case HandState.SEARCHING:
			CheckForObjectCollision();
			break;
		case HandState.HOLDING:
			//Closest proximity triggers
			//--------------------------
			GameObject activeInterior = HydraController.Instance.HandTarget(m_hand, ProximityType.INSTRUMENT_INTERIOR, m_mode);
			GameObject activeProximity = HydraController.Instance.HandTarget(m_hand, ProximityType.INSTRUMENT_PROXIMITY, m_mode);
			
			//Set proximity state based on last state and current position
			//--------------------------
			if(activeProximity == m_heldObject){
				if(activeInterior == m_heldObject){
					//Inside interior
					if(m_gestureState == GestureState.PROXIMITY)
						m_gestureState = GestureState.PROXIMITY_TO_INTERIOR;
					else if(m_gestureState == GestureState.EXTERIOR)
						m_gestureState = GestureState.EXTERIOR_TO_INTERIOR;
				} else {
					//Inside proximity
					if(m_gestureState == GestureState.INTERIOR)
						m_gestureState = GestureState.INTERIOR_TO_PROXIMITY;
					else if(m_gestureState == GestureState.EXTERIOR)
						m_gestureState = GestureState.EXTERIOR_TO_PROXIMITY;
				}
			} else {
				//Outside exterior
				if(m_gestureState == GestureState.PROXIMITY)
					m_gestureState = GestureState.PROXIMITY_TO_EXTERIOR;
				else if(m_gestureState == GestureState.INTERIOR)
					m_gestureState = GestureState.INTERIOR_TO_EXTERIOR;
			}
			
			ProcessGestures();
			break;
		}
	}
	
	
	protected void ProcessGestures(){
		//Trigger gesture actions for the held attachment
		//--------------------------
		switch(m_gestureState){

		case GestureState.INTERIOR:
			m_attachment.Gesture_IdleInterior();
			if(m_attachment.IsFirstGesture){
				m_attachment.Gesture_First();
				m_lastGestureState = GestureState.INTERIOR;
			}
			break;
			
		case GestureState.INTERIOR_TO_PROXIMITY:
			m_gestureTimer = m_betweenGestureDelay;
			m_gestureState = GestureState.PROXIMITY;
			m_lastGestureState = GestureState.INTERIOR_TO_PROXIMITY;
			break;

		case GestureState.INTERIOR_TO_EXTERIOR:
			m_gestureTimer = m_betweenGestureDelay;
			m_gestureState = GestureState.EXTERIOR;
			m_lastGestureState = GestureState.INTERIOR;
			LeavingProximity();
			break;

		case GestureState.PROXIMITY:
			m_attachment.Gesture_IdleProximity();
			break;
			
		case GestureState.PROXIMITY_TO_INTERIOR:
			m_gestureTimer = m_betweenGestureDelay;
			m_gestureState = GestureState.INTERIOR;
			m_lastGestureState = GestureState.PROXIMITY_TO_INTERIOR;
			break;
			
		case GestureState.PROXIMITY_TO_EXTERIOR:
			m_gestureTimer = m_betweenGestureDelay;
			m_gestureState = GestureState.EXTERIOR;
			m_lastGestureState = GestureState.PROXIMITY_TO_EXTERIOR;
			LeavingProximity();
			break;
			
		case GestureState.EXTERIOR:
			m_attachment.Gesture_IdleExterior();
			break;
			
		case GestureState.EXTERIOR_TO_PROXIMITY:
			m_gestureTimer = m_betweenGestureDelay;
			m_gestureState = GestureState.PROXIMITY;
			m_lastGestureState = GestureState.EXTERIOR_TO_PROXIMITY;
			break;

		case GestureState.EXTERIOR_TO_INTERIOR:
			m_gestureTimer = m_betweenGestureDelay;
			m_gestureState = GestureState.INTERIOR;
			m_lastGestureState = GestureState.EXTERIOR;
			break;
		}
			
		m_gestureTimer -= Time.deltaTime;
		if(m_gestureTimer <= 0){
			m_gestureTimer = 0;
			m_lastGestureState = m_gestureState;
		}	 
	}
	
	
	/*
	 * Check if we're inside an object
	 */
	protected void CheckForObjectCollision(){
		m_heldObject = HydraController.Instance.HandTarget(m_hand, ProximityType.INSTRUMENT_INTERIOR, m_mode);
		
		if(m_heldObject != null){
			BaseAttachment attach = m_heldObject.GetComponent<BaseAttachment>();
			
			if(attach != null){
				if( attach.respondsToToolMode( m_mode ) ){
					//m_gestureState = GestureState.INTERIOR;
					m_attachment = attach;
					m_toolHandState = BaseTool.HandState.HOLDING;
					m_attachment.SetToolMode( m_mode);
					m_attachment.SetActiveHand( m_hand);

                    if (mode == ToolMode.IDLE)
                        m_attachment.StartHover();
				}
			}
		}
	}


    public override void LeavingProximity()
	{
		base.LeavingProximity ();

		//Trigger gesture actions upon tool exit
		//--------------------------
		if(m_attachment != null){
			switch(m_lastGestureState){

				//Idle gestures
			case GestureState.INTERIOR:
				m_attachment.Gesture_ExitIdleInterior();
				break;
			case GestureState.PROXIMITY:			
				m_attachment.Gesture_ExitIdleProximity();
				break;
			case GestureState.EXTERIOR:				
				m_attachment.Gesture_ExitIdleExterior();
				break;
			case GestureState.INTERIOR_TO_EXTERIOR:
				//Check if we're pulling towards or away from the performer
				if(m_heldObject != null){
					if( HydraController.Instance.IsHandCloserThanObject(m_heldObject.transform, m_hand) )
						m_attachment.Gesture_PullOut();
					else
						m_attachment.Gesture_PushIn();
				}
				break;
			case GestureState.EXTERIOR_TO_PROXIMITY:
				break;
			case GestureState.INTERIOR_TO_PROXIMITY:
				break;
			case GestureState.PROXIMITY_TO_EXTERIOR:
				if(m_heldObject != null){
					if( HydraController.Instance.IsHandCloserThanObject(m_heldObject.transform, m_hand) )
						m_attachment.Gesture_PullOut();
					else
						m_attachment.Gesture_PushIn();
				}
				break;
			case GestureState.PROXIMITY_TO_INTERIOR:
				//m_attachment.Gesture_PushIn();
				break;
			case GestureState.EXTERIOR_TO_INTERIOR:
				//m_attachment.Gesture_PushIn();
				break;
			}
			m_attachment.StopHover();
		}
		m_toolHandState = BaseTool.HandState.SEARCHING;
	}

	
	/*
	 * Tool exit state
	 */
	public override void TransitionOut ()
	{		
		if(m_attachment != null){
			LeavingProximity();
			if(HydraController.Instance.IsHandDragging(m_hand))
				HydraController.Instance.GetHandDragging(m_hand).StopDragging();
			m_attachment.Gesture_Exit();
		}
        
		m_heldObject = null;
		m_attachment = null;
	}
}
