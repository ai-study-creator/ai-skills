Module [java.xml](../../../../module-summary.md)

Package [org.w3c.dom.ls](package-summary.md)

# Interface LSLoadEvent

All Superinterfaces:
:   `Event`

---

public interface LSLoadEvent
extends [Event](../events/Event.md "interface in org.w3c.dom.events")

This interface represents a load event object that signals the completion
of a document load.

See also the [Document Object Model (DOM) Level 3 Load
and Save Specification](http://www.w3.org/TR/2004/REC-DOM-Level-3-LS-20040407).

Since:
:   1.5

* ## Field Summary

  ### Fields inherited from interface org.w3c.dom.events.[Event](../events/Event.md "interface in org.w3c.dom.events")

  `AT_TARGET, BUBBLING_PHASE, CAPTURING_PHASE`
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `LSInput`

  `getInput()`

  The input source that was parsed.

  `Document`

  `getNewDocument()`

  The document that finished loading.

  ### Methods inherited from interface org.w3c.dom.events.[Event](../events/Event.md "interface in org.w3c.dom.events")

  `getBubbles, getCancelable, getCurrentTarget, getEventPhase, getTarget, getTimeStamp, getType, initEvent, preventDefault, stopPropagation`

* ## Method Details

  + ### getNewDocument

    [Document](../Document.md "interface in org.w3c.dom") getNewDocument()

    The document that finished loading.
  + ### getInput

    [LSInput](LSInput.md "interface in org.w3c.dom.ls") getInput()

    The input source that was parsed.