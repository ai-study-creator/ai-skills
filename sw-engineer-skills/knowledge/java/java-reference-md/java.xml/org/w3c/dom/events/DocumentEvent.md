Module [java.xml](../../../../module-summary.md)

Package [org.w3c.dom.events](package-summary.md)

# Interface DocumentEvent

---

public interface DocumentEvent

The `DocumentEvent` interface provides a mechanism by which the
user can create an Event of a type supported by the implementation. It is
expected that the `DocumentEvent` interface will be
implemented on the same object which implements the `Document`
interface in an implementation which supports the Event model.

See also the [Document Object Model (DOM) Level 2 Events Specification](http://www.w3.org/TR/2000/REC-DOM-Level-2-Events-20001113).

Since:
:   1.5, DOM Level 2

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Event`

  `createEvent(String eventType)`

* ## Method Details

  + ### createEvent

    [Event](Event.md "interface in org.w3c.dom.events") createEvent([String](../../../../../java.base/java/lang/String.md "class in java.lang") eventType)
    throws [DOMException](../DOMException.md "class in org.w3c.dom")

    Parameters:
    :   `eventType` - The `eventType` parameter specifies the
        type of `Event` interface to be created. If the
        `Event` interface specified is supported by the
        implementation this method will return a new `Event` of
        the interface type requested. If the `Event` is to be
        dispatched via the `dispatchEvent` method the
        appropriate event init method must be called after creation in
        order to initialize the `Event`'s values. As an example,
        a user wishing to synthesize some kind of `UIEvent`
        would call `createEvent` with the parameter "UIEvents".
        The `initUIEvent` method could then be called on the
        newly created `UIEvent` to set the specific type of
        UIEvent to be dispatched and set its context information.The
        `createEvent` method is used in creating
        `Event`s when it is either inconvenient or unnecessary
        for the user to create an `Event` themselves. In cases
        where the implementation provided `Event` is
        insufficient, users may supply their own `Event`
        implementations for use with the `dispatchEvent` method.

    Returns:
    :   The newly created `Event`

    Throws:
    :   `DOMException` - NOT\_SUPPORTED\_ERR: Raised if the implementation does not support the
        type of `Event` interface requested