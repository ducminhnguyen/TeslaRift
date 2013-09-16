﻿using UnityEngine;
using System.Collections;

public class GlobalConfig : MonoBehaviour {
	
	public bool IsClient = false;

	// Use this for initialization
	void Start () {
		if(IsClient){
			GameObject.Find("__HydraController").SetActive(false);
			GameObject.Find("__InstrumentSpawner").SetActive(false);
			GameObject.Find("OVRPlayerController").SetActive(false);
			GameObject.Find("__IOController").GetComponent<OSCcontroller>().isServer = false;
			GameObject.Find("__IOController").GetComponent<OSCcontroller>().loopback = false;
		} else {
			GameObject.Find("ClientCamera").SetActive(false);
		}
		
		GameObject.Find("OVRPlayerController").GetComponent<OVRPlayerController>().SetAllowMouseRotation(false);
	}
	
	// Update is called once per frame
	void Update () {
		if(Input.GetKeyDown(KeyCode.Escape))
			Application.Quit();
		
		if(Input.GetKeyDown(KeyCode.R)){
			Application.LoadLevel(Application.loadedLevel);
		}
	}
}
