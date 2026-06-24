Module [java.xml](../../../../module-summary.md)

Package [org.w3c.dom.ls](package-summary.md)

# Interface LSProgressEvent

All Superinterfaces:
:   `Event`

---

public interface LSProgressEvent
extends [Event](../events/Event.md "interface in org.w3c.dom.events")

This interface represents a progress event object that notifies the
application about progress as a document is parsed. It extends the
`Event` interface defined in [[DOM Level 3 Events](http://www.w3.org/TR/2003/NOTE-DOM-Level-3-Events-20031107)]
.

The units used for the attributes `position` and
`totalSize` are not specified and can be implementation and
input dependent.

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

  The input source that is being parsed.

  `int`

  `getPosition()`

  The current position in the input source, including all external
  entities and other resources that have been read.

  `int`

  `getTotalSize()`

  The total size of the document including all external resources, this
  number might change as a document is being parsed if references to
  more external resources are seen.

  ### Methods inherited from interface org.w3c.dom.events.[Event](../events/Event.md "interface in org.w3c.dom.events")

  `getBubbles, getCancelable, getCurrentTarget, getEventPhase, getTarget, getTimeStamp, getType, initEvent, preventDefault, stopPropagation`

* ## Method Details

  + ### getInput

    [LSInput](LSInput.md "interface in org.w3c.dom.ls") getInput()

    The input source that is being parsed.
  + ### getPosition

    int getPosition()

    The current position in the input source, including all external
    entities and other resources that have been read.
  + ### getTotalSize

    int getTotalSize()

    The total size of the document including all external resources, this
    number might change as a document is being parsed if references to
    more external resources are seen. A value of `0` is
    returned if the total size cannot be determined or estimated.