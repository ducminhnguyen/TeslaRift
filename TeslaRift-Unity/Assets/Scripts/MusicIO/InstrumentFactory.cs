﻿using UnityEngine;
using System.Collections;
using System.Xml;
using System;

public class InstrumentFactory : MonoBehaviour {
	
	public static string GAMEINSTRUMENT_PREFIX = "GInstr_";
	public GameObject instrumentPrefab = null;
	public TextAsset instrumentDefinitionFile;
	public GameObject paramPanelPrefab;
	public float panelDistance = 1.0f;
	private InstrumentController m_instrumentControllerRef;
	
	// Use this for initialization
	void Start () {
		m_instrumentControllerRef = this.GetComponent<InstrumentController>();
		LoadInstrumentDefinitions();
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	private void LoadInstrumentDefinitions(){
		//Load xml
		XmlDocument instrumentDoc = new XmlDocument ();
		instrumentDoc.LoadXml ( instrumentDefinitionFile.text );
		
		XmlNodeList instrumentList = instrumentDoc.GetElementsByTagName("instrument"); //instrument array
		XmlNode source = instrumentDoc.SelectSingleNode("/instrumentDefinitions/source");
		XmlNode client = instrumentDoc.SelectSingleNode("/instrumentDefinitions/client");

		//Create instrument objects		
		foreach(XmlNode instrument in instrumentList){			
			BaseInstrument instrumentDef = new BaseInstrument( client.InnerText, source.InnerText, instrument.Attributes["name"].Value );
			string[] colorStr = instrument.Attributes["colour"].Value.Split(',');
			Color instrColor = new Color(Convert.ToSingle(colorStr[0]), Convert.ToSingle(colorStr[1]), Convert.ToSingle(colorStr[2]));
			
			//Add params to instrument
			foreach(XmlElement param in instrument.ChildNodes){
				XmlAttribute name = param.Attributes["name"];
				XmlAttribute type = param.Attributes["type"];
				XmlAttribute color = param.Attributes["colour"];
				
				Color paramColor;
				if(color != null){
					string[] paramColorStr = color.Value.Split(',');
					paramColor = new Color(
						Convert.ToSingle(paramColorStr[0]), 
						Convert.ToSingle(paramColorStr[1]), 
						Convert.ToSingle(paramColorStr[2])
					);
				} else {
					paramColor = new Color(1.0f, 1.0f, 1.0f, 1.0f);
				}

				string typeStr = type != null ? type.Value : "";
				
				instrumentDef.addParam(name.Value, typeStr, paramColor);
			}
			
			m_instrumentControllerRef.AddInstrument(instrumentDef);
			
			//Create associated gameobject for instrument
			CreateInstrumentGameObject(instrumentDef, instrColor);
		}
	}
	
	private void CreateInstrumentGameObject(BaseInstrument instrument, Color instrumentColor){
		GameObject instrumentGame = Instantiate(instrumentPrefab, transform.position, Quaternion.identity ) as GameObject;
		instrumentGame.name = GAMEINSTRUMENT_PREFIX + instrument.Name;
		instrumentGame.AddComponent<InstrumentAttachment>().Init(instrument);
		instrumentGame.renderer.material.SetColor("_Color", instrumentColor);
		
		Vector3[] points = Utils.PointsOnSphere(instrument.paramList.Count, (int)instrument.paramList.Count);
		
		for(int i = 0; i < points.Length; i++){
			Vector3 point = points[i];
			Vector3 pos = instrumentGame.transform.position + point * panelDistance;
			GameObject paramPlane = Instantiate(paramPanelPrefab, pos, Quaternion.identity) as GameObject;
			
			paramPlane.transform.parent = instrumentGame.transform;
			paramPlane.transform.LookAt(instrumentGame.transform);
			paramPlane.layer = LayerMask.NameToLayer("ParamSelectable");
			
			paramPlane.GetComponentInChildren<TextMesh>().text = instrument.paramList[i].name;
			
			ParamAttachment attach = paramPlane.AddComponent<ParamAttachment>();
			attach.Init(instrument.paramList[i]);
		}
	}
}
