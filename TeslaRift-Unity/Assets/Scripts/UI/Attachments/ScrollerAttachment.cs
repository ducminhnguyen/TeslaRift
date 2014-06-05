﻿using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UI;
using MusicIO;

public class ScrollerAttachment : BaseAttachment
{
    //Accepted dockable objects for this ui control
    public enum ScrollerDockTypes { INSTRUMENT, SLIDER, CLIP };
    public ScrollerDockTypes[] m_acceptedDockTypes;

    //Colliders
    public float m_faceDampening;
    public bool m_facePerformer;

    public float m_collisionWidth = 0.5f;
    public float m_collisionDepth = 0.5f;

    public float m_overflow = 2.0f;
    public float m_dampening = 0.95f;
    public float m_scrollMultiplier = 1.2f;
    public float m_speedCutoff = 0.01f;

    public void SetItemScale(float scale) { m_itemScale = scale; }
    public float m_itemScale = 1.0f;

    public void SetItemSpacing(float spacing) { m_itemSpacing = spacing; }
    public float m_itemSpacing = 0.0f;

    public float upperVisibleBounds { get { return m_upperVisibleBounds; } }
    public float m_upperVisibleBounds = 1.2f;

    public float lowerVisibleBounds { get { return m_lowerVisibleBounds; } }
    public float m_lowerVisibleBounds = 0.0f;

    public void SetNumDisplayedAttachments(int numAttachments){ m_numDisplayedAttachments = numAttachments; }
	public int numDisplayedAttachments{ get { return m_numDisplayedAttachments; }}
    public int m_numDisplayedAttachments = 6;


    protected float m_scrollVel;		//Current scrolling velocity
    protected Vector3 m_offset;
    protected Vector3 m_lastPosition;
    protected float m_lastAttachHeight;
    protected bool bIsDragging;

    protected Transform m_controlHolder;
  
    // Use this for initialization
    public override void Awake()
    {
        base.Awake();
        m_childDockables = new List<BaseAttachment>();
        m_controlHolder = transform.Find("paramHolder");
        SetAsDock(true);

        for (int i = 0; i < m_acceptedDockTypes.Length; i++)
        {
            if (m_acceptedDockTypes[i] == ScrollerDockTypes.INSTRUMENT)
                AddAcceptedDocktype(typeof(InstrumentAttachment));

            if (m_acceptedDockTypes[i] == ScrollerDockTypes.SLIDER)
                AddAcceptedDocktype(typeof(SliderAttachment));

            if (m_acceptedDockTypes[i] == ScrollerDockTypes.CLIP)
                AddAcceptedDocktype(typeof(ClipButtonAttachment));
        }

        UpdateColliders( Vector3.zero, new Vector3(1.0f, m_upperVisibleBounds - m_lowerVisibleBounds, m_collisionDepth));
    }

    public override bool AddDockableAttachment(BaseAttachment attach)
    {
        if (base.AddDockableAttachment(attach))
        {
            attach.transform.parent = m_controlHolder.transform;
			//attach.transform.localPosition = new Vector3(0.0f, m_childDockables.Count * attach.interiorTrigger.GetSize().y, 0.0f);
			PlaceObjects();
            m_lastAttachHeight = attach.interiorTrigger.GetSize().y + m_itemSpacing;
            UpdateColliders(Vector3.zero, new Vector3(m_collisionWidth, m_upperVisibleBounds - m_lowerVisibleBounds, m_collisionDepth));
            attach.transform.localScale = new Vector3(m_itemScale, m_itemScale, m_itemScale);
            return true;
        }
        return false;
    }

	public override void RemoveDockableAttachment (BaseAttachment attach)
	{
		base.RemoveDockableAttachment (attach);
		attach.rigidbody.isKinematic = false;
		PlaceObjects();
	}

	public void PlaceObjects(){
		for(int i =0; i < m_childDockables.Count; i++){
            iTween tween = m_childDockables[i].GetComponent<iTween>();
            if (tween != null)
                Destroy(tween);
            Vector3 pos = new Vector3(0.0f, i * (m_childDockables[i].interiorTrigger.GetSize().y + m_itemSpacing), 0.0f);
			iTween.MoveTo(m_childDockables[i].gameObject, iTween.Hash("position", pos, "time", 0.3f, "islocal", true));
		}
	}

    public void SetCollisionWidth(float width) 
    { 
        m_collisionWidth = width;
        UpdateColliders(Vector3.zero, new Vector3(m_collisionWidth, m_upperVisibleBounds - m_lowerVisibleBounds, m_collisionDepth));
    }

    public void SetCollisionDepth(float depth) 
    { 
        m_collisionDepth = depth;
        UpdateColliders(Vector3.zero, new Vector3(m_collisionWidth, m_upperVisibleBounds - m_lowerVisibleBounds, m_collisionDepth));
    }

    // Update is called once per frame
    public override void Update()
    {
        if (!bIsDragging)
        {
            if (m_scrollVel > m_speedCutoff || m_scrollVel < -m_speedCutoff)
            {
                m_scrollVel *= m_dampening;
                Vector3 vel = new Vector3(0.0f, m_scrollVel, 0.0f);
                m_controlHolder.localPosition += vel;

            }
            else
            {
                m_scrollVel = 0.0f;
                m_lastPosition = m_controlHolder.transform.localPosition;
            }
        }
        if (m_controlHolder.localPosition.y > 0.0f)
        {
            m_controlHolder.localPosition = new Vector3(m_controlHolder.transform.localPosition.x, 0.0f, m_controlHolder.transform.localPosition.z);
            m_scrollVel = 0.0f;
            m_lastPosition = m_controlHolder.localPosition;
        }
        else if (m_controlHolder.localPosition.y < (m_childDockables.Count - m_numDisplayedAttachments) * m_lastAttachHeight * -1.0f)
        {
            m_controlHolder.localPosition = new Vector3(m_controlHolder.transform.localPosition.x,
                                                        (m_childDockables.Count - m_numDisplayedAttachments) * m_lastAttachHeight * -1.0f,
                                                        m_controlHolder.transform.localPosition.z);
            m_scrollVel = 0.0f;
            m_lastPosition = m_controlHolder.localPosition;
        }

        MaskControls();
    }

    /*
     * Hide and reveal attatchments to keep them in range
     */
    protected void MaskControls()
    {
        for (int i = 0; i < m_childDockables.Count; i++)
        {
            float attachY = m_childDockables[i].transform.localPosition.y + m_controlHolder.localPosition.y;
            if (attachY < m_lowerVisibleBounds || attachY > m_upperVisibleBounds)
            {
                if (m_childDockables[i].gameObject.GetComponent<iTween>() == null && m_childDockables[i].transform.localScale.x != 0.0f)
                    iTween.ScaleTo(m_childDockables[i].gameObject, iTween.Hash("x", 0.0f, "time", 0.15f, "oncomplete", "SetInactive", "easetype", iTween.EaseType.easeOutQuad));
            }
            else
            {
                if (!m_childDockables[i].gameObject.activeSelf)
                {
					m_childDockables[i].SetActive();
                    iTween.ScaleTo(m_childDockables[i].gameObject, iTween.Hash("x", m_itemScale, "time", 0.15f, "easetype", iTween.EaseType.easeInQuad));
                }
            }
        }
    }

    //void FixedUpdate()
    //{
    //    //Rotate to face player eyes
    //    if (m_facePerformer)
    //    {
    //        // Look at and dampen the rotation
    //        Quaternion rotation = Quaternion.LookRotation(this.interiorCollider.bounds.center - HydraController.Instance.EyeCenter);
    //        transform.rotation = Quaternion.Euler(new Vector3(0.0f, rotation.eulerAngles.y, 0.0f));
    //    }
    //}

    protected void DragScroller()
    {
        Vector3 inversePoint = transform.InverseTransformPoint(HydraController.Instance.GetHandColliderPosition(m_hand));
        float posY = inversePoint.y;
        m_controlHolder.localPosition = m_offset + new Vector3(0.0f, posY, 0.0f);
        m_scrollVel = (m_controlHolder.localPosition - m_lastPosition).y;
        m_lastPosition = m_controlHolder.localPosition;
    }

    /*
     * Gesture overrides
     */
    public override void Gesture_IdleProximity()
    {
        if (m_mode == BaseTool.ToolMode.SECONDARY)
        {
            if (bIsDragging)
                DragScroller();
            else
            {
                Gesture_First();
            }
        }

        base.Gesture_IdleProximity();
    }

    public override void Gesture_IdleInterior()
    {
        if (bIsDragging)
            DragScroller();
        else
        {
            Gesture_First();
        }
        base.Gesture_IdleInterior();
    }

    public override void Gesture_IdleExterior()
    {
        if (!IsFirstGesture)
        {
            Debug.Log("EXITING SCROLLER");
            Gesture_Exit();
        }
        base.Gesture_IdleExterior();
    }

    public override void Gesture_ExitIdleExterior()
    {
        base.Gesture_ExitIdleExterior();
        Gesture_Exit();
    }


    public override void Gesture_First()
    {
        base.Gesture_First();
        if (m_mode == BaseTool.ToolMode.SECONDARY)
        {
            bIsDragging = true;
            m_scrollVel = 0.0f;
            Vector3 handPos = transform.InverseTransformPoint(HydraController.Instance.GetHandColliderPosition(m_hand));
            handPos.x = 0;
            handPos.z = 0;
            m_offset = m_controlHolder.localPosition - handPos;
            
        }
    }

    public override void Gesture_Exit()
    {
		bIsDragging = false;
		base.Gesture_Exit();
    }
}