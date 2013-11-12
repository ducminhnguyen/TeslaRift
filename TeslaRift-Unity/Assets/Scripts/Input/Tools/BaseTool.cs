﻿using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using MusicIO;

public class BaseTool : MonoBehaviour {
		
	protected HydraController m_hydraRef = null;
	protected InstrumentController m_instrumentControlRef = null;
	protected ToolController m_toolControlRef = null;

	
	//Variables
	protected List<object> m_targets = null;
	protected BaseInstrument m_instrumentRef = null;
	
	public enum ToolHand {BOTH = 0, LEFT, RIGHT };
	protected ToolHand m_hand;
	public ToolHand Hand{get { return m_hand; }}
	
	//Tool modes
	public enum ToolMode{PRIMARY = 0, SECONDARY, TERTIARY};
	protected ToolMode m_mode = ToolMode.PRIMARY;
	public ToolMode Mode{ get { return m_mode; }}

	//Hand states
	public enum HandState{ IDLE = 0, SEARCHING, HOLDING, RELEASING};
	protected HandState m_toolHandState = HandState.IDLE;
	public HandState handState{ get { return m_toolHandState; }}
	
	//Constructor
	public BaseTool(){
	}
	
	public static SixenseHands ToolHandToSixenseHand(BaseTool.ToolHand hand){
		if(hand == ToolHand.LEFT)
			return SixenseHands.LEFT;
		if(hand == ToolHand.RIGHT)
			return SixenseHands.RIGHT;
		return SixenseHands.UNKNOWN;
	}
	
	public virtual void Awake(){
		m_hydraRef = HydraController.Instance;
		m_instrumentControlRef = InstrumentController.Instance;
		m_toolControlRef = ToolController.Instance;
		m_targets = new List<object>();	
		
	}
	

	
	public virtual void Update () {
	}
	
	//Initializer
	public virtual void Init(ToolHand hand, BaseTool.ToolMode mode){
		m_hand = hand;
		m_mode = mode;
		TransitionIn();
	}
	
	//Instrument tools
	public void setInstrument(BaseInstrument instrument){
		m_instrumentRef = instrument;
	}
	
	//Transitions
	public virtual void TransitionIn(){
	}
	
	public virtual void TransitionOut(){
	}
	
	//Accessors
	public List<object> targets { get { return m_targets; }}
	
	public void setTargets<T>(T target){
		List<object> valueList = new List<object>();
		valueList.Add(target);
		this.setTargets(valueList);
	}
	
	public void setTargets(List<object> targets){
		m_targets = targets;
	}
}


/*
 * String enum class defining interactable tag types
 */
public static class InteractableTypes
{
    public const string  GENERATOR = "Generator"; 
    public const string INSTRUMENT = "Instrument"; 
    public const string RBFPOINT = "RBFPoint";
}