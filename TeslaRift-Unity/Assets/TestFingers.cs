﻿using UnityEngine;
using System.Collections;
using Uniduino;

public class TestFingers : MonoBehaviour {
	
	public GameObject[] fingers;
	private int[] m_analogPins = {1,0,3,2};
	private Arduino arduino;

	// Use this for initialization
	void Start () {
		arduino = Arduino.global;
		
		for(int i = 0; i < m_analogPins.Length; i++){
			arduino.pinMode(m_analogPins[i], PinMode.ANALOG);
			arduino.reportAnalog(m_analogPins[i], 1);
		}
	}
	
	// Update is called once per frame
	void Update () {
		for(int i = 0; i < m_analogPins.Length; i++){
			GameObject finger = fingers[i];
			finger.transform.localScale = new Vector3(1.0f, arduino.analogRead(m_analogPins[i]) * 0.01f, 1.0f);
		}
	}
}
