﻿using UnityEngine;
using UI;
using MusicIO;
using System.Collections;

public class InstrumentPickerAttachment : BaseAttachment {

	public ScrollerAttachment m_instrumentScroller;
    public GameObject m_sphere;
    public Vector3 m_scrollerOffset;
    public Color m_defaultColor;
    public Color m_activeColor;

	public override void Awake ()
	{
		//m_instrumentScroller.SetActive(false);
		base.Awake ();
        m_instrumentScroller.SetOffset(m_scrollerOffset);
		m_instrumentScroller.AddAcceptedDocktype(typeof(InstrumentAttachment));
        //HideControls();
	}

	public override void Gesture_First ()
	{
		if(m_instrumentScroller != null)
            ToggleControls();

        base.Gesture_First();
	}

    public override void ShowControls()
    {
        base.ShowControls();
        m_instrumentScroller.ShowControls();
        m_sphere.renderer.materials[1].SetColor("_Color", m_activeColor);
        //iTween.ColorTo(m_sphere, iTween.Hash("color", m_activeColor, "time", 0.2f));
    }

    public override void HideControls()
    {
        base.HideControls();
        m_instrumentScroller.HideControls();
        m_sphere.renderer.materials[1].SetColor("_Color", m_defaultColor);
        //iTween.ColorTo(m_sphere, iTween.Hash("color", m_defaultColor, "time", 0.2f));
    }
}
