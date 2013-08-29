﻿using UnityEngine;
using System.Collections;

public class ParamSelectTool : BaseTool {
	
	public GameObject m_heldObject = null;
	
	public ParamSelectTool() {
	}
	
	public override void Start(){
		base.Start();
		m_toolHandState = BaseTool.HandState.SEARCHING;
	}
	
	public override void Update(){
		CheckForSelection();
		base.Update();
	}
	
	public override void TransitionOut ()
	{
		base.TransitionOut ();
	}
	
	public void CheckForSelection(){
		if(m_hydraRef != null){
			
			RaycastHit hit;
			int mask = ~LayerMask.NameToLayer("ParamSelectable");
			Vector3 dir = m_instrumentControlRef.LastSelectedGameInstrument.transform.position - m_hydraRef.GetHand(m_hand).transform.position;
			if(Physics.Raycast(m_hydraRef.GetHand(m_hand).transform.position, dir, out hit, dir.magnitude, mask )){
				Debug.Log("Ray hit " + hit.collider);
				
				ParamAttachment attach = hit.collider.gameObject.GetComponent<ParamAttachment>();
				if(attach != null)
					attach.ToggleSelected();
				
				hit.collider.gameObject.renderer.material.SetColor("_Color", Color.blue);
				m_toolHandState = BaseTool.HandState.HOLDING;
			}
			
			Debug.DrawRay(m_hydraRef.GetHand(m_hand).transform.position, dir, Color.red);

			//Select parameter
			switch(m_toolHandState){
			case HandState.SEARCHING:
				//if(m_hydraRef.HandTarget(m_hand)){
					//if(m_hydraRef.HandTarget(m_hand) != m_heldObject){
						
						//if(m_hydraRef.HandTarget(m_hand).CompareTag("ParamPanel")){
							//m_heldObject = m_hydraRef.HandTarget(m_hand);
							//m_heldObject.GetComponent<ParamAttachment>().ToggleSelected();
							//m_toolHandState = BaseTool.HandState.HOLDING;
						//}
					//}
				//}
				break;
			case HandState.RELEASING:	
				if(m_heldObject != null){
					m_heldObject = null;
				}
				break;
			case HandState.HOLDING:
				break;
			}
		}
	}
}
