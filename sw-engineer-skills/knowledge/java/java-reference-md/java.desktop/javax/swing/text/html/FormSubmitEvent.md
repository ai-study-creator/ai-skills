Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.text.html](package-summary.md)

# Class FormSubmitEvent

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../../java.base/java/util/EventObject.md "class in java.util")

[javax.swing.event.HyperlinkEvent](../../event/HyperlinkEvent.md "class in javax.swing.event")

[javax.swing.text.html.HTMLFrameHyperlinkEvent](HTMLFrameHyperlinkEvent.md "class in javax.swing.text.html")

javax.swing.text.html.FormSubmitEvent

All Implemented Interfaces:
:   `Serializable`

---

public final class FormSubmitEvent
extends [HTMLFrameHyperlinkEvent](HTMLFrameHyperlinkEvent.md "class in javax.swing.text.html")

FormSubmitEvent is used to notify interested
parties that a form was submitted.

Since:
:   1.5

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static enum`

  `FormSubmitEvent.MethodType`

  Represents an HTML form method type.

  ## Nested classes/interfaces inherited from class javax.swing.event.[HyperlinkEvent](../../event/HyperlinkEvent.md "class in javax.swing.event")

  `HyperlinkEvent.EventType`
* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getData()`

  Gets the form submission data.

  `FormSubmitEvent.MethodType`

  `getMethod()`

  Gets the form method type.

  ### Methods inherited from class javax.swing.text.html.[HTMLFrameHyperlinkEvent](HTMLFrameHyperlinkEvent.md "class in javax.swing.text.html")

  `getTarget`

  ### Methods inherited from class javax.swing.event.[HyperlinkEvent](../../event/HyperlinkEvent.md "class in javax.swing.event")

  `getDescription, getEventType, getInputEvent, getSourceElement, getURL`

  ### Methods inherited from class java.util.[EventObject](../../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Method Details

  + ### getMethod

    public [FormSubmitEvent.MethodType](FormSubmitEvent.MethodType.md "enum class in javax.swing.text.html") getMethod()

    Gets the form method type.

    Returns:
    :   the form method type, either
        `Method.GET` or `Method.POST`.
  + ### getData

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getData()

    Gets the form submission data.

    Returns:
    :   the string representing the form submission data.