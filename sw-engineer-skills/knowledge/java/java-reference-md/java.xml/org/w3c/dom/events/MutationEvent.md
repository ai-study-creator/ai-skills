Module [java.xml](../../../../module-summary.md)

Package [org.w3c.dom.events](package-summary.md)

# Interface MutationEvent

All Superinterfaces:
:   `Event`

---

public interface MutationEvent
extends [Event](Event.md "interface in org.w3c.dom.events")

The `MutationEvent` interface provides specific contextual
information associated with Mutation events.

See also the [Document Object Model (DOM) Level 2 Events Specification](http://www.w3.org/TR/2000/REC-DOM-Level-2-Events-20001113).

Since:
:   1.5, DOM Level 2

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final short`

  `ADDITION`

  The `Attr` was just added.

  `static final short`

  `MODIFICATION`

  The `Attr` was modified in place.

  `static final short`

  `REMOVAL`

  The `Attr` was just removed.

  ### Fields inherited from interface org.w3c.dom.events.[Event](Event.md "interface in org.w3c.dom.events")

  `AT_TARGET, BUBBLING_PHASE, CAPTURING_PHASE`
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `short`

  `getAttrChange()`

  `attrChange` indicates the type of change which triggered
  the DOMAttrModified event.

  `String`

  `getAttrName()`

  `attrName` indicates the name of the changed
  `Attr` node in a DOMAttrModified event.

  `String`

  `getNewValue()`

  `newValue` indicates the new value of the `Attr`
  node in DOMAttrModified events, and of the `CharacterData`
  node in DOMCharacterDataModified events.

  `String`

  `getPrevValue()`

  `prevValue` indicates the previous value of the
  `Attr` node in DOMAttrModified events, and of the
  `CharacterData` node in DOMCharacterDataModified events.

  `Node`

  `getRelatedNode()`

  `relatedNode` is used to identify a secondary node related
  to a mutation event.

  `void`

  `initMutationEvent(String typeArg,
  boolean canBubbleArg,
  boolean cancelableArg,
  Node relatedNodeArg,
  String prevValueArg,
  String newValueArg,
  String attrNameArg,
  short attrChangeArg)`

  The `initMutationEvent` method is used to initialize the
  value of a `MutationEvent` created through the
  `DocumentEvent` interface.

  ### Methods inherited from interface org.w3c.dom.events.[Event](Event.md "interface in org.w3c.dom.events")

  `getBubbles, getCancelable, getCurrentTarget, getEventPhase, getTarget, getTimeStamp, getType, initEvent, preventDefault, stopPropagation`

* ## Field Details

  + ### MODIFICATION

    static final short MODIFICATION

    The `Attr` was modified in place.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#org.w3c.dom.events.MutationEvent.MODIFICATION)
  + ### ADDITION

    static final short ADDITION

    The `Attr` was just added.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#org.w3c.dom.events.MutationEvent.ADDITION)
  + ### REMOVAL

    static final short REMOVAL

    The `Attr` was just removed.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#org.w3c.dom.events.MutationEvent.REMOVAL)
* ## Method Details

  + ### getRelatedNode

    [Node](../Node.md "interface in org.w3c.dom") getRelatedNode()

    `relatedNode` is used to identify a secondary node related
    to a mutation event. For example, if a mutation event is dispatched
    to a node indicating that its parent has changed, the
    `relatedNode` is the changed parent. If an event is
    instead dispatched to a subtree indicating a node was changed within
    it, the `relatedNode` is the changed node. In the case of
    the DOMAttrModified event it indicates the `Attr` node
    which was modified, added, or removed.
  + ### getPrevValue

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getPrevValue()

    `prevValue` indicates the previous value of the
    `Attr` node in DOMAttrModified events, and of the
    `CharacterData` node in DOMCharacterDataModified events.
  + ### getNewValue

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getNewValue()

    `newValue` indicates the new value of the `Attr`
    node in DOMAttrModified events, and of the `CharacterData`
    node in DOMCharacterDataModified events.
  + ### getAttrName

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getAttrName()

    `attrName` indicates the name of the changed
    `Attr` node in a DOMAttrModified event.
  + ### getAttrChange

    short getAttrChange()

    `attrChange` indicates the type of change which triggered
    the DOMAttrModified event. The values can be `MODIFICATION`
    , `ADDITION`, or `REMOVAL`.
  + ### initMutationEvent

    void initMutationEvent([String](../../../../../java.base/java/lang/String.md "class in java.lang") typeArg,
    boolean canBubbleArg,
    boolean cancelableArg,
    [Node](../Node.md "interface in org.w3c.dom") relatedNodeArg,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") prevValueArg,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") newValueArg,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") attrNameArg,
    short attrChangeArg)

    The `initMutationEvent` method is used to initialize the
    value of a `MutationEvent` created through the
    `DocumentEvent` interface. This method may only be called
    before the `MutationEvent` has been dispatched via the
    `dispatchEvent` method, though it may be called multiple
    times during that phase if necessary. If called multiple times, the
    final invocation takes precedence.

    Parameters:
    :   `typeArg` - Specifies the event type.
    :   `canBubbleArg` - Specifies whether or not the event can bubble.
    :   `cancelableArg` - Specifies whether or not the event's default
        action can be prevented.
    :   `relatedNodeArg` - Specifies the `Event`'s related Node.
    :   `prevValueArg` - Specifies the `Event`'s
        `prevValue` attribute. This value may be null.
    :   `newValueArg` - Specifies the `Event`'s
        `newValue` attribute. This value may be null.
    :   `attrNameArg` - Specifies the `Event`'s
        `attrName` attribute. This value may be null.
    :   `attrChangeArg` - Specifies the `Event`'s
        `attrChange` attribute