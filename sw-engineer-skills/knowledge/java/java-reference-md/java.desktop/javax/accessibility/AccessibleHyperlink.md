Module [java.desktop](../../module-summary.md)

Package [javax.accessibility](package-summary.md)

# Class AccessibleHyperlink

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.accessibility.AccessibleHyperlink

All Implemented Interfaces:
:   `AccessibleAction`

Direct Known Subclasses:
:   `JEditorPane.JEditorPaneAccessibleHypertextSupport.HTMLLink`

---

public abstract class AccessibleHyperlink
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [AccessibleAction](AccessibleAction.md "interface in javax.accessibility")

Encapsulation of a link, or set of links (e.g. client side imagemap) in a
Hypertext document

See Also:
:   * [`Accessible`](Accessible.md "interface in javax.accessibility")
    * [`Accessible.getAccessibleContext()`](Accessible.md#getAccessibleContext())
    * [`AccessibleContext`](AccessibleContext.md "class in javax.accessibility")
    * [`AccessibleText`](AccessibleText.md "interface in javax.accessibility")
    * [`AccessibleContext.getAccessibleText()`](AccessibleContext.md#getAccessibleText())

* ## Field Summary

  ### Fields inherited from interface javax.accessibility.[AccessibleAction](AccessibleAction.md "interface in javax.accessibility")

  `CLICK, DECREMENT, INCREMENT, TOGGLE_EXPAND, TOGGLE_POPUP`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AccessibleHyperlink()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract boolean`

  `doAccessibleAction(int i)`

  Performs the specified action on the object.

  `abstract Object`

  `getAccessibleActionAnchor(int i)`

  Returns an object that represents the link anchor, as appropriate for
  that link.

  `abstract int`

  `getAccessibleActionCount()`

  Returns the number of accessible actions available in this Link If there
  are more than one, the first one is NOT considered the "default" action
  of this LINK object (e.g.

  `abstract String`

  `getAccessibleActionDescription(int i)`

  Returns a string description of this particular link action.

  `abstract Object`

  `getAccessibleActionObject(int i)`

  Returns an object that represents the link action, as appropriate for
  that link.

  `abstract int`

  `getEndIndex()`

  Gets the index with the hypertext document at which this link ends.

  `abstract int`

  `getStartIndex()`

  Gets the index with the hypertext document at which this link begins.

  `abstract boolean`

  `isValid()`

  Since the document a link is associated with may have changed, this
  method returns whether or not this Link is still valid (with respect to
  the document it references).

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AccessibleHyperlink

    protected AccessibleHyperlink()

    Constructor for subclasses to call.
* ## Method Details

  + ### isValid

    public abstract boolean isValid()

    Since the document a link is associated with may have changed, this
    method returns whether or not this Link is still valid (with respect to
    the document it references).

    Returns:
    :   a flag indicating whether this link is still valid with respect
        to the `AccessibleHypertext` it belongs to
  + ### getAccessibleActionCount

    public abstract int getAccessibleActionCount()

    Returns the number of accessible actions available in this Link If there
    are more than one, the first one is NOT considered the "default" action
    of this LINK object (e.g. in an HTML imagemap). In general, links will
    have only one `AccessibleAction` in them.

    Specified by:
    :   `getAccessibleActionCount` in interface `AccessibleAction`

    Returns:
    :   the zero-based number of actions in this object
  + ### doAccessibleAction

    public abstract boolean doAccessibleAction(int i)

    Performs the specified action on the object.

    Specified by:
    :   `doAccessibleAction` in interface `AccessibleAction`

    Parameters:
    :   `i` - zero-based index of actions

    Returns:
    :   `true` if the action was performed; otherwise `false`

    See Also:
    :   - [`getAccessibleActionCount()`](#getAccessibleActionCount())
  + ### getAccessibleActionDescription

    public abstract [String](../../../java.base/java/lang/String.md "class in java.lang") getAccessibleActionDescription(int i)

    Returns a string description of this particular link action. This should
    be a text string associated with anchoring text, this should be the
    anchor text. E.g. from HTML: <a
    HREF="http://www.sun.com/access">Accessibility</a> this method
    would return "Accessibility".

    Similarly, from this HTML: <a HREF="#top"><img src="top-hat.gif"
    alt="top hat"></a> this method would return "top hat"

    Specified by:
    :   `getAccessibleActionDescription` in interface `AccessibleAction`

    Parameters:
    :   `i` - zero-based index of the actions

    Returns:
    :   a string description of the action

    See Also:
    :   - [`getAccessibleActionCount()`](#getAccessibleActionCount())
  + ### getAccessibleActionObject

    public abstract [Object](../../../java.base/java/lang/Object.md "class in java.lang") getAccessibleActionObject(int i)

    Returns an object that represents the link action, as appropriate for
    that link. E.g. from HTML: <a
    HREF="http://www.sun.com/access">Accessibility</a> this method
    would return a java.net.URL("http://www.sun.com/access.html");

    Parameters:
    :   `i` - zero-based index of the actions

    Returns:
    :   an object representing the hypertext link itself

    See Also:
    :   - [`getAccessibleActionCount()`](#getAccessibleActionCount())
  + ### getAccessibleActionAnchor

    public abstract [Object](../../../java.base/java/lang/Object.md "class in java.lang") getAccessibleActionAnchor(int i)

    Returns an object that represents the link anchor, as appropriate for
    that link. E.g. from HTML: <a
    href="http://www.sun.com/access">Accessibility</a> this method
    would return a `String` containing the text: "Accessibility".

    Similarly, from this HTML: <a HREF="#top"><img src="top-hat.gif"
    alt="top hat"></a> this might return the object
    ImageIcon("top-hat.gif", "top hat");

    Parameters:
    :   `i` - zero-based index of the actions

    Returns:
    :   an object representing the hypertext anchor

    See Also:
    :   - [`getAccessibleActionCount()`](#getAccessibleActionCount())
  + ### getStartIndex

    public abstract int getStartIndex()

    Gets the index with the hypertext document at which this link begins.

    Returns:
    :   index of start of link
  + ### getEndIndex

    public abstract int getEndIndex()

    Gets the index with the hypertext document at which this link ends.

    Returns:
    :   index of end of link