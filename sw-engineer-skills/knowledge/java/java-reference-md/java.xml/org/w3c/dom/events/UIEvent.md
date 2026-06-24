Module [java.xml](../../../../module-summary.md)

Package [org.w3c.dom.events](package-summary.md)

# Interface UIEvent

All Superinterfaces:
:   `Event`

All Known Subinterfaces:
:   `MouseEvent`

---

public interface UIEvent
extends [Event](Event.md "interface in org.w3c.dom.events")

The `UIEvent` interface provides specific contextual information
associated with User Interface events.

See also the [Document Object Model (DOM) Level 2 Events Specification](http://www.w3.org/TR/2000/REC-DOM-Level-2-Events-20001113).

Since:
:   1.5, DOM Level 2

* ## Field Summary

  ### Fields inherited from interface org.w3c.dom.events.[Event](Event.md "interface in org.w3c.dom.events")

  `AT_TARGET, BUBBLING_PHASE, CAPTURING_PHASE`
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `int`

  `getDetail()`

  Specifies some detail information about the `Event`,
  depending on the type of event.

  `AbstractView`

  `getView()`

  The `view` attribute identifies the `AbstractView`
  from which the event was generated.

  `void`

  `initUIEvent(String typeArg,
  boolean canBubbleArg,
  boolean cancelableArg,
  AbstractView viewArg,
  int detailArg)`

  The `initUIEvent` method is used to initialize the value of
  a `UIEvent` created through the `DocumentEvent`
  interface.

  ### Methods inherited from interface org.w3c.dom.events.[Event](Event.md "interface in org.w3c.dom.events")

  `getBubbles, getCancelable, getCurrentTarget, getEventPhase, getTarget, getTimeStamp, getType, initEvent, preventDefault, stopPropagation`

* ## Method Details

  + ### getView

    [AbstractView](../views/AbstractView.md "interface in org.w3c.dom.views") getView()

    The `view` attribute identifies the `AbstractView`
    from which the event was generated.
  + ### getDetail

    int getDetail()

    Specifies some detail information about the `Event`,
    depending on the type of event.
  + ### initUIEvent

    void initUIEvent([String](../../../../../java.base/java/lang/String.md "class in java.lang") typeArg,
    boolean canBubbleArg,
    boolean cancelableArg,
    [AbstractView](../views/AbstractView.md "interface in org.w3c.dom.views") viewArg,
    int detailArg)

    The `initUIEvent` method is used to initialize the value of
    a `UIEvent` created through the `DocumentEvent`
    interface. This method may only be called before the
    `UIEvent` has been dispatched via the
    `dispatchEvent` method, though it may be called multiple
    times during that phase if necessary. If called multiple times, the
    final invocation takes precedence.

    Parameters:
    :   `typeArg` - Specifies the event type.
    :   `canBubbleArg` - Specifies whether or not the event can bubble.
    :   `cancelableArg` - Specifies whether or not the event's default
        action can be prevented.
    :   `viewArg` - Specifies the `Event`'s
        `AbstractView`.
    :   `detailArg` - Specifies the `Event`'s detail.