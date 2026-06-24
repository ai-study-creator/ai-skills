Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Class HyperlinkEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

javax.swing.event.HyperlinkEvent

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `HTMLFrameHyperlinkEvent`

---

public class HyperlinkEvent
extends [EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

HyperlinkEvent is used to notify interested parties that
something has happened with respect to a hypertext link.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static final class`

  `HyperlinkEvent.EventType`

  Defines the ENTERED, EXITED, and ACTIVATED event types, along
  with their string representations, returned by toString().
* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `HyperlinkEvent(Object source,
  HyperlinkEvent.EventType type,
  URL u)`

  Creates a new object representing a hypertext link event.

  `HyperlinkEvent(Object source,
  HyperlinkEvent.EventType type,
  URL u,
  String desc)`

  Creates a new object representing a hypertext link event.

  `HyperlinkEvent(Object source,
  HyperlinkEvent.EventType type,
  URL u,
  String desc,
  Element sourceElement)`

  Creates a new object representing a hypertext link event.

  `HyperlinkEvent(Object source,
  HyperlinkEvent.EventType type,
  URL u,
  String desc,
  Element sourceElement,
  InputEvent inputEvent)`

  Creates a new object representing a hypertext link event.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getDescription()`

  Get the description of the link as a string.

  `HyperlinkEvent.EventType`

  `getEventType()`

  Gets the type of event.

  `InputEvent`

  `getInputEvent()`

  Returns the `InputEvent` that triggered the hyperlink event.

  `Element`

  `getSourceElement()`

  Returns the `Element` that corresponds to the source of the
  event.

  `URL`

  `getURL()`

  Gets the URL that the link refers to.

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### HyperlinkEvent

    public HyperlinkEvent([Object](../../../../java.base/java/lang/Object.md "class in java.lang") source,
    [HyperlinkEvent.EventType](HyperlinkEvent.EventType.md "class in javax.swing.event") type,
    [URL](../../../../java.base/java/net/URL.md "class in java.net") u)

    Creates a new object representing a hypertext link event.
    The other constructor is preferred, as it provides more
    information if a URL could not be formed. This constructor
    is primarily for backward compatibility.

    Parameters:
    :   `source` - the object responsible for the event
    :   `type` - the event type
    :   `u` - the affected URL
  + ### HyperlinkEvent

    public HyperlinkEvent([Object](../../../../java.base/java/lang/Object.md "class in java.lang") source,
    [HyperlinkEvent.EventType](HyperlinkEvent.EventType.md "class in javax.swing.event") type,
    [URL](../../../../java.base/java/net/URL.md "class in java.net") u,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") desc)

    Creates a new object representing a hypertext link event.

    Parameters:
    :   `source` - the object responsible for the event
    :   `type` - the event type
    :   `u` - the affected URL. This may be null if a valid URL
        could not be created.
    :   `desc` - the description of the link. This may be useful
        when attempting to form a URL resulted in a MalformedURLException.
        The description provides the text used when attempting to form the
        URL.
  + ### HyperlinkEvent

    public HyperlinkEvent([Object](../../../../java.base/java/lang/Object.md "class in java.lang") source,
    [HyperlinkEvent.EventType](HyperlinkEvent.EventType.md "class in javax.swing.event") type,
    [URL](../../../../java.base/java/net/URL.md "class in java.net") u,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") desc,
    [Element](../text/Element.md "interface in javax.swing.text") sourceElement)

    Creates a new object representing a hypertext link event.

    Parameters:
    :   `source` - the object responsible for the event
    :   `type` - the event type
    :   `u` - the affected URL. This may be null if a valid URL
        could not be created.
    :   `desc` - the description of the link. This may be useful
        when attempting to form a URL resulted in a MalformedURLException.
        The description provides the text used when attempting to form the
        URL.
    :   `sourceElement` - Element in the Document representing the
        anchor

    Since:
    :   1.4
  + ### HyperlinkEvent

    public HyperlinkEvent([Object](../../../../java.base/java/lang/Object.md "class in java.lang") source,
    [HyperlinkEvent.EventType](HyperlinkEvent.EventType.md "class in javax.swing.event") type,
    [URL](../../../../java.base/java/net/URL.md "class in java.net") u,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") desc,
    [Element](../text/Element.md "interface in javax.swing.text") sourceElement,
    [InputEvent](../../../java/awt/event/InputEvent.md "class in java.awt.event") inputEvent)

    Creates a new object representing a hypertext link event.

    Parameters:
    :   `source` - the object responsible for the event
    :   `type` - the event type
    :   `u` - the affected URL. This may be null if a valid URL
        could not be created.
    :   `desc` - the description of the link. This may be useful
        when attempting to form a URL resulted in a MalformedURLException.
        The description provides the text used when attempting to form the
        URL.
    :   `sourceElement` - Element in the Document representing the
        anchor
    :   `inputEvent` - InputEvent that triggered the hyperlink event

    Since:
    :   1.7
* ## Method Details

  + ### getEventType

    public [HyperlinkEvent.EventType](HyperlinkEvent.EventType.md "class in javax.swing.event") getEventType()

    Gets the type of event.

    Returns:
    :   the type
  + ### getDescription

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getDescription()

    Get the description of the link as a string.
    This may be useful if a URL can't be formed
    from the description, in which case the associated
    URL would be null.

    Returns:
    :   the description of this link as a `String`
  + ### getURL

    public [URL](../../../../java.base/java/net/URL.md "class in java.net") getURL()

    Gets the URL that the link refers to.

    Returns:
    :   the URL
  + ### getSourceElement

    public [Element](../text/Element.md "interface in javax.swing.text") getSourceElement()

    Returns the `Element` that corresponds to the source of the
    event. This will typically be an `Element` representing
    an anchor. If a constructor that is used that does not specify a source
    `Element`, or null was specified as the source
    `Element`, this will return null.

    Returns:
    :   Element indicating source of event, or null

    Since:
    :   1.4
  + ### getInputEvent

    public [InputEvent](../../../java/awt/event/InputEvent.md "class in java.awt.event") getInputEvent()

    Returns the `InputEvent` that triggered the hyperlink event.
    This will typically be a `MouseEvent`. If a constructor is used
    that does not specify an `InputEvent`, or `null`
    was specified as the `InputEvent`, this returns `null`.

    Returns:
    :   InputEvent that triggered the hyperlink event, or null

    Since:
    :   1.7