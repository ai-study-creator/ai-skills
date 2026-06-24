Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.text.html](package-summary.md)

# Class HTMLFrameHyperlinkEvent

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../../java.base/java/util/EventObject.md "class in java.util")

[javax.swing.event.HyperlinkEvent](../../event/HyperlinkEvent.md "class in javax.swing.event")

javax.swing.text.html.HTMLFrameHyperlinkEvent

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `FormSubmitEvent`

---

public class HTMLFrameHyperlinkEvent
extends [HyperlinkEvent](../../event/HyperlinkEvent.md "class in javax.swing.event")

HTMLFrameHyperlinkEvent is used to notify interested
parties that link was activated in a frame.

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.event.[HyperlinkEvent](../../event/HyperlinkEvent.md "class in javax.swing.event")

  `HyperlinkEvent.EventType`
* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `HTMLFrameHyperlinkEvent(Object source,
  HyperlinkEvent.EventType type,
  URL targetURL,
  String targetFrame)`

  Creates a new object representing a html frame
  hypertext link event.

  `HTMLFrameHyperlinkEvent(Object source,
  HyperlinkEvent.EventType type,
  URL targetURL,
  String desc,
  String targetFrame)`

  Creates a new object representing a hypertext link event.

  `HTMLFrameHyperlinkEvent(Object source,
  HyperlinkEvent.EventType type,
  URL targetURL,
  String desc,
  Element sourceElement,
  InputEvent inputEvent,
  String targetFrame)`

  Creates a new object representing a hypertext link event.

  `HTMLFrameHyperlinkEvent(Object source,
  HyperlinkEvent.EventType type,
  URL targetURL,
  String desc,
  Element sourceElement,
  String targetFrame)`

  Creates a new object representing a hypertext link event.

  `HTMLFrameHyperlinkEvent(Object source,
  HyperlinkEvent.EventType type,
  URL targetURL,
  Element sourceElement,
  String targetFrame)`

  Creates a new object representing a hypertext link event.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getTarget()`

  returns the target for the link.

  ### Methods inherited from class javax.swing.event.[HyperlinkEvent](../../event/HyperlinkEvent.md "class in javax.swing.event")

  `getDescription, getEventType, getInputEvent, getSourceElement, getURL`

  ### Methods inherited from class java.util.[EventObject](../../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### HTMLFrameHyperlinkEvent

    public HTMLFrameHyperlinkEvent([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") source,
    [HyperlinkEvent.EventType](../../event/HyperlinkEvent.EventType.md "class in javax.swing.event") type,
    [URL](../../../../../java.base/java/net/URL.md "class in java.net") targetURL,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") targetFrame)

    Creates a new object representing a html frame
    hypertext link event.

    Parameters:
    :   `source` - the object responsible for the event
    :   `type` - the event type
    :   `targetURL` - the affected URL
    :   `targetFrame` - the Frame to display the document in
  + ### HTMLFrameHyperlinkEvent

    public HTMLFrameHyperlinkEvent([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") source,
    [HyperlinkEvent.EventType](../../event/HyperlinkEvent.EventType.md "class in javax.swing.event") type,
    [URL](../../../../../java.base/java/net/URL.md "class in java.net") targetURL,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") desc,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") targetFrame)

    Creates a new object representing a hypertext link event.

    Parameters:
    :   `source` - the object responsible for the event
    :   `type` - the event type
    :   `targetURL` - the affected URL
    :   `desc` - a description
    :   `targetFrame` - the Frame to display the document in
  + ### HTMLFrameHyperlinkEvent

    public HTMLFrameHyperlinkEvent([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") source,
    [HyperlinkEvent.EventType](../../event/HyperlinkEvent.EventType.md "class in javax.swing.event") type,
    [URL](../../../../../java.base/java/net/URL.md "class in java.net") targetURL,
    [Element](../Element.md "interface in javax.swing.text") sourceElement,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") targetFrame)

    Creates a new object representing a hypertext link event.

    Parameters:
    :   `source` - the object responsible for the event
    :   `type` - the event type
    :   `targetURL` - the affected URL
    :   `sourceElement` - the element that corresponds to the source
        of the event
    :   `targetFrame` - the Frame to display the document in
  + ### HTMLFrameHyperlinkEvent

    public HTMLFrameHyperlinkEvent([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") source,
    [HyperlinkEvent.EventType](../../event/HyperlinkEvent.EventType.md "class in javax.swing.event") type,
    [URL](../../../../../java.base/java/net/URL.md "class in java.net") targetURL,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") desc,
    [Element](../Element.md "interface in javax.swing.text") sourceElement,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") targetFrame)

    Creates a new object representing a hypertext link event.

    Parameters:
    :   `source` - the object responsible for the event
    :   `type` - the event type
    :   `targetURL` - the affected URL
    :   `desc` - a description
    :   `sourceElement` - the element that corresponds to the source
        of the event
    :   `targetFrame` - the Frame to display the document in
  + ### HTMLFrameHyperlinkEvent

    public HTMLFrameHyperlinkEvent([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") source,
    [HyperlinkEvent.EventType](../../event/HyperlinkEvent.EventType.md "class in javax.swing.event") type,
    [URL](../../../../../java.base/java/net/URL.md "class in java.net") targetURL,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") desc,
    [Element](../Element.md "interface in javax.swing.text") sourceElement,
    [InputEvent](../../../../java/awt/event/InputEvent.md "class in java.awt.event") inputEvent,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") targetFrame)

    Creates a new object representing a hypertext link event.

    Parameters:
    :   `source` - the object responsible for the event
    :   `type` - the event type
    :   `targetURL` - the affected URL
    :   `desc` - a description
    :   `sourceElement` - the element that corresponds to the source
        of the event
    :   `inputEvent` - InputEvent that triggered the hyperlink event
    :   `targetFrame` - the Frame to display the document in

    Since:
    :   1.7
* ## Method Details

  + ### getTarget

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getTarget()

    returns the target for the link.

    Returns:
    :   the target for the link