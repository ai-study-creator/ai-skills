Module [java.xml](../../../../module-summary.md)

# Package org.w3c.dom.events

---

package org.w3c.dom.events

Provides interfaces for DOM Level 2 Events. Refer to the
[Document Object Model (DOM) Level 2 Events Specification](http://www.w3.org/TR/2000/REC-DOM-Level-2-Events-20001113), the DOM Events module builds on
[DOM Level 2 Core Specification](http://www.w3.org/TR/DOM-Level-2-Core/) and
[DOM Level 2 Views Specification](http://www.w3.org/TR/2000/REC-DOM-Level-2-Views-20001113)
that gives to programs and scripts a generic event system.

Since:
:   1.5

* Related Packages

  Package

  Description

  [org.w3c.dom](../package-summary.md)

  Provides the interfaces for the Document Object Model (DOM).

  [org.w3c.dom.bootstrap](../bootstrap/package-summary.md)

  Provides a factory for obtaining instances of `DOMImplementation`.

  [org.w3c.dom.ls](../ls/package-summary.md)

  Provides interfaces for DOM Level 3 Load and Save.

  [org.w3c.dom.ranges](../ranges/package-summary.md)

  Provides interfaces for DOM Level 2 Range.

  [org.w3c.dom.traversal](../traversal/package-summary.md)

  Provides interfaces for DOM Level 2 Traversal.

  [org.w3c.dom.views](../views/package-summary.md)

  Provides interfaces for DOM Level 2 Views.
* All Classes and InterfacesInterfacesException Classes

  Class

  Description

  [DocumentEvent](DocumentEvent.md "interface in org.w3c.dom.events")

  The `DocumentEvent` interface provides a mechanism by which the
  user can create an Event of a type supported by the implementation.

  [Event](Event.md "interface in org.w3c.dom.events")

  The `Event` interface is used to provide contextual information
  about an event to the handler processing the event.

  [EventException](EventException.md "class in org.w3c.dom.events")

  Event operations may throw an `EventException` as specified in
  their method descriptions.

  [EventListener](EventListener.md "interface in org.w3c.dom.events")

  The `EventListener` interface is the primary method for
  handling events.

  [EventTarget](EventTarget.md "interface in org.w3c.dom.events")

  The `EventTarget` interface is implemented by all
  `Nodes` in an implementation which supports the DOM Event
  Model.

  [MouseEvent](MouseEvent.md "interface in org.w3c.dom.events")

  The `MouseEvent` interface provides specific contextual
  information associated with Mouse events.

  [MutationEvent](MutationEvent.md "interface in org.w3c.dom.events")

  The `MutationEvent` interface provides specific contextual
  information associated with Mutation events.

  [UIEvent](UIEvent.md "interface in org.w3c.dom.events")

  The `UIEvent` interface provides specific contextual information
  associated with User Interface events.