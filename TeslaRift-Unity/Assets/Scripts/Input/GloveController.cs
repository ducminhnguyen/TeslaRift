﻿using UnityEngine;
using System.Collections;
using Uniduino;
using RBF;
using System;
 
public class GloveController : MonoBehaviour {
 	
	//Arduino
	private int[] m_bendPins = {1,0,3,2};
	private int m_bendCalibratePin = 18;
	private double[] m_bendValues;
	private Arduino m_arduino;

	//Calibration state
	private enum CalibrationState{
		AWAITING_CALIBRATION = 0,
		CALIBRATING,
		CALIBRATED
	}
	private CalibrationState m_calibrationState = CalibrationState.AWAITING_CALIBRATION;
	
	//RBF
	private RBFCore m_rbf;
	private string m_currentGesture;
	private string m_lastGesture;
	private string m_lastGestureDown;
	private int m_currentGestureTimer = 0;
	public string m_activeGesture;
	private string m_activeGestureDown;
	private bool m_isDirty = true;

	//Gesture change speeds
	private double[] m_lastGestureOutput;
	private double[] m_gestureVelocity;
	public double activeGestureVelocity;

	private int m_calibratingGestureIndex;
	private bool bIsCalibrateButtonDown = false;
	private bool bIsCalibrateButtonLast = false;
	
	public string[] m_gestures;
	public bool m_toggleCalibration = false;
	public bool m_toggleNextGestureCalibration = false;
	public double m_sigma = 0.5;
	public int m_gestureSwitchDelay = 0;
		
    void Start( )
    {	
		m_arduino = GetComponent<Arduino>();
		if(m_arduino == null)
			throw new Exception("No arduino component found on glove!");
		
		m_arduino.Setup(ConfigurePins);
		m_rbf = new RBFCore(m_bendPins.Length, m_gestures.Length);
		m_rbf.setSigma(m_sigma);
		m_bendValues = new double[m_bendPins.Length];
		m_gestureVelocity = new double[m_gestures.Length];
		m_lastGestureOutput = new double[m_gestures.Length];
    }
	
	
	/*
	 * Set up pins
	 */
	protected void ConfigurePins( )
    {
		for(int i = 0; i < m_bendPins.Length; i++){
			m_arduino.pinMode(m_bendPins[i], PinMode.ANALOG);
			m_arduino.reportAnalog(m_bendPins[i], 1);
		}
    }
	
	
	void Update () 
	{       
		if(m_arduino.Connected){
			bIsCalibrateButtonDown = Convert.ToBoolean( m_arduino.digitalRead(m_bendCalibratePin) );
			
			for(int i = 0; i < m_bendValues.Length; i++)
				m_bendValues[i] = (double)m_arduino.analogRead(m_bendPins[i]);
			
			if(m_toggleCalibration){
				m_toggleCalibration = false;
				m_calibrationState = CalibrationState.CALIBRATING;
				m_calibratingGestureIndex = 0;
				Debug.Log("Glove calibration start:");
				Debug.Log("Calibrate " + m_gestures[m_calibratingGestureIndex]);
			}
				
			//Calibration
			switch(m_calibrationState){
			
			case CalibrationState.AWAITING_CALIBRATION:
				if( Convert.ToBoolean( m_arduino.digitalRead(m_bendCalibratePin ) ) || Input.GetKeyDown(KeyCode.RightArrow) ){
					m_calibrationState = CalibrationState.CALIBRATING;
				}
				break;
			
			case CalibrationState.CALIBRATING:
				if(m_toggleNextGestureCalibration || Input.GetKeyDown(KeyCode.RightArrow))					//Keyboard calibration trigger
				//if(bIsCalibrateButtonDown = false && bIsCalibrateButtonLast != bIsCalibrateButtonDown)	//Arduino calibration trigger
				{					
					m_toggleNextGestureCalibration = false;
					
					m_rbf.addTrainingPoint(m_bendValues, GetRBFCalibrationArray( m_calibratingGestureIndex));
					m_calibratingGestureIndex++;
	
					if(m_calibratingGestureIndex < m_gestures.Length){
						
						Debug.Log("Calibrate " + m_gestures[m_calibratingGestureIndex]);
						//Need some sort of gui text display for the current finger gesture to calibrate.
						//Best way would be to show the gesture on the model for the performer to imitate before calibrating
					} else {
						m_calibrationState = CalibrationState.CALIBRATED;
						m_rbf.calculateWeights();
						Debug.Log("Calibration complete!");
					}
				}
				break;			
			
			case CalibrationState.CALIBRATED:	
				
				double[] gestureOutput = m_rbf.calculateOutput(m_bendValues);

				//Calculate gesture change velocities
				for(int i = 0; i < m_gestures.Length; i++){
					m_gestureVelocity[i] = gestureOutput[i] - m_lastGestureOutput[i];
					if(m_gestureVelocity[i] < 0) m_gestureVelocity[i] *= -1.0;
				}

				m_lastGestureOutput = gestureOutput;
				
				double largestVal = 0.0;
				int activeIndex = 0;
				
				for(int i = 0; i < gestureOutput.Length; i++){
					if(gestureOutput[i] > largestVal){
						largestVal = gestureOutput[i];
						activeIndex = i;
					}
				}

				m_currentGesture = m_gestures[activeIndex];
				
				//Delay the reported gesture change by a frame count to let the RBF settle
				if(m_currentGesture != m_lastGesture)
					m_currentGestureTimer = 0;
				else 
					m_currentGestureTimer++;
				
				if(m_currentGestureTimer > m_gestureSwitchDelay){
					m_activeGesture = m_currentGesture;
					
					if(m_activeGesture != m_lastGestureDown){
						m_activeGestureDown = m_activeGesture;
						activeGestureVelocity = m_gestureVelocity[activeIndex];
						SetDirty();
					} else {
						m_activeGestureDown = "";
						SetClean();
					}
					
					m_lastGestureDown = m_currentGesture;
				}
				
				m_lastGesture = m_currentGesture;
				
				break;
			}
			
			bIsCalibrateButtonLast = bIsCalibrateButtonDown;
		}
	}
	
	
		
	/*
	 * Getters
	 */
	public string activeGesture{ get { return m_activeGesture; }}
	public string[] gestureTypes{ get { return m_gestures; }}
	public bool GetGestureDown(string gesture){ 
		if(m_activeGestureDown == gesture && m_activeGestureDown != "")
			return true;
		return false;
	}

	/*
	 * GestureState notifiers
	 */
	private void SetDirty(){ m_isDirty = true; }
	private void SetClean(){ m_isDirty = false; }
	public bool IsGestureClean(){ return m_isDirty; }

	/*
	 * Gets an array with the chosen gesture index set to 1.0. Used for finger RBF gesture matching
	 */
	protected double[] GetRBFCalibrationArray(int gestureIndex){
		double[] calibrationArr = new double[m_gestures.Length];
		calibrationArr[gestureIndex] = 100.0;
		return calibrationArr;
	}
}