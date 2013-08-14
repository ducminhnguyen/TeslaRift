﻿using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class InstrumentController : MonoBehaviour {
	
	protected List<BaseInstrument> m_instruments;
	protected BaseInstrument m_selectedInstrument;

	// Use this for initialization
	void Start () {
		m_instruments = new List<BaseInstrument>();
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	public BaseInstrument SelectedInstrument{ get { return m_selectedInstrument; } }
	
	public void SelectInstrument(BaseInstrument instrument){ 
		m_selectedInstrument = instrument; 
		Debug.Log ("Selected " + m_selectedInstrument.Name);
	}
	
	public void SelectInstrument(string instrument){ 
		m_selectedInstrument = GetInstrumentByName(instrument); 
		Debug.Log("Selected " + m_selectedInstrument.Name);
	}
	
	public void AddInstrument(BaseInstrument instrument){
		m_instruments.Add(instrument);
	}
	
	public BaseInstrument GetInstrumentByName(string targetInstrument){
		foreach(BaseInstrument instrument in m_instruments){
			if(instrument.Name == targetInstrument)
				return instrument;
		}
			
		return null;
	}
}
