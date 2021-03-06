﻿using UnityEngine;
using System.Collections;
using MusicIO;

public class ClipCubeAttachment : ClipButtonAttachment {

    protected BarSlider m_barSlider;
    protected SliderAttachment m_sliderAttach;
	
    public override void Awake()
    {
        base.Awake();
        m_barSlider = GetComponent<BarSlider>();
    }

	public override void Update ()
	{
		base.Update ();
		UpdatePlayingState();
	}

	public override void UpdatePlayingState ()
	{
		if(musicRef != null){
		    switch (musicRef.clipState)
		    {
		        case InstrumentClip.ClipState.IS_DISABLED:
		            renderer.materials[1].SetColor("_Color", Color.grey);
		            break;
		        case InstrumentClip.ClipState.IS_QUEUED:
                    Color trans = musicRef.owner.color;
                    trans.a = 0.5f;
                    renderer.materials[1].SetColor("_Color", trans);

		            break;
		        case InstrumentClip.ClipState.IS_PLAYING:
                    renderer.materials[1].SetColor("_Color", musicRef.owner.color);

		            break;
		    }
		}
	}

    public void SetColour(Color color)
    {
        renderer.materials[1].SetColor("_Color", color);
    }
}
