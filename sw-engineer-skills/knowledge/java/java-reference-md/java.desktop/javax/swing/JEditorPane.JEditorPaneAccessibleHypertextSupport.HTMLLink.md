Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JEditorPane.JEditorPaneAccessibleHypertextSupport.HTMLLink

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.accessibility.AccessibleHyperlink](../accessibility/AccessibleHyperlink.md "class in javax.accessibility")

javax.swing.JEditorPane.JEditorPaneAccessibleHypertextSupport.HTMLLink

All Implemented Interfaces:
:   `AccessibleAction`

Enclosing class:
:   `JEditorPane.JEditorPaneAccessibleHypertextSupport`

---

public class JEditorPane.JEditorPaneAccessibleHypertextSupport.HTMLLink
extends [AccessibleHyperlink](../accessibility/AccessibleHyperlink.md "class in javax.accessibility")

An HTML link.

* ## Field Summary

  ### Fields inherited from interface javax.accessibility.[AccessibleAction](../accessibility/AccessibleAction.md "interface in javax.accessibility")

  `CLICK, DECREMENT, INCREMENT, TOGGLE_EXPAND, TOGGLE_POPUP`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `HTMLLink(Element e)`

  Constructs a `HTMLLink`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `doAccessibleAction(int i)`

  Perform the specified Action on the object

  `Object`

  `getAccessibleActionAnchor(int i)`

  Return an object that represents the link anchor,
  as appropriate for that link.

  `int`

  `getAccessibleActionCount()`

  Returns the number of accessible actions available in this Link
  If there are more than one, the first one is NOT considered the
  "default" action of this LINK object (e.g.

  `String`

  `getAccessibleActionDescription(int i)`

  Return a String description of this particular
  link action.

  `Object`

  `getAccessibleActionObject(int i)`

  Returns a URL object that represents the link.

  `int`

  `getEndIndex()`

  Get the index with the hypertext document at which this
  link ends

  `int`

  `getStartIndex()`

  Get the index with the hypertext document at which this
  link begins

  `boolean`

  `isValid()`

  Since the document a link is associated with may have
  changed, this method returns whether this Link is valid
  anymore (with respect to the document it references).

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### HTMLLink

    public HTMLLink([Element](text/Element.md "interface in javax.swing.text") e)

    Constructs a `HTMLLink`.

    Parameters:
    :   `e` - the element
* ## Method Details

  + ### isValid

    public boolean isValid()

    Since the document a link is associated with may have
    changed, this method returns whether this Link is valid
    anymore (with respect to the document it references).

    Specified by:
    :   `isValid` in class `AccessibleHyperlink`

    Returns:
    :   a flag indicating whether this link is still valid with
        respect to the AccessibleHypertext it belongs to
  + ### getAccessibleActionCount

    public int getAccessibleActionCount()

    Returns the number of accessible actions available in this Link
    If there are more than one, the first one is NOT considered the
    "default" action of this LINK object (e.g. in an HTML imagemap).
    In general, links will have only one AccessibleAction in them.

    Specified by:
    :   `getAccessibleActionCount` in interface `AccessibleAction`

    Specified by:
    :   `getAccessibleActionCount` in class `AccessibleHyperlink`

    Returns:
    :   the zero-based number of Actions in this object
  + ### doAccessibleAction

    public boolean doAccessibleAction(int i)

    Perform the specified Action on the object

    Specified by:
    :   `doAccessibleAction` in interface `AccessibleAction`

    Specified by:
    :   `doAccessibleAction` in class `AccessibleHyperlink`

    Parameters:
    :   `i` - zero-based index of actions

    Returns:
    :   true if the action was performed; else false.

    See Also:
    :   - [`getAccessibleActionCount()`](#getAccessibleActionCount())
  + ### getAccessibleActionDescription

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getAccessibleActionDescription(int i)

    Return a String description of this particular
    link action. The string returned is the text
    within the document associated with the element
    which contains this link.

    Specified by:
    :   `getAccessibleActionDescription` in interface `AccessibleAction`

    Specified by:
    :   `getAccessibleActionDescription` in class `AccessibleHyperlink`

    Parameters:
    :   `i` - zero-based index of the actions

    Returns:
    :   a String description of the action

    See Also:
    :   - [`getAccessibleActionCount()`](#getAccessibleActionCount())
  + ### getAccessibleActionObject

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getAccessibleActionObject(int i)

    Returns a URL object that represents the link.

    Specified by:
    :   `getAccessibleActionObject` in class `AccessibleHyperlink`

    Parameters:
    :   `i` - zero-based index of the actions

    Returns:
    :   an URL representing the HTML link itself

    See Also:
    :   - [`getAccessibleActionCount()`](#getAccessibleActionCount())
  + ### getAccessibleActionAnchor

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getAccessibleActionAnchor(int i)

    Return an object that represents the link anchor,
    as appropriate for that link.

    E.g. from HTML:
    <a href="https://openjdk.org">OpenJDK</a>
    this method would return a String containing the text:
    'OpenJDK'.

    Similarly, from this HTML:
    <a HREF="#top"><img src="top-hat.gif" alt="top hat"></a>
    this might return the object ImageIcon("top-hat.gif", "top hat");

    Specified by:
    :   `getAccessibleActionAnchor` in class `AccessibleHyperlink`

    Parameters:
    :   `i` - zero-based index of the actions

    Returns:
    :   an Object representing the hypertext anchor

    See Also:
    :   - [`getAccessibleActionCount()`](#getAccessibleActionCount())
  + ### getStartIndex

    public int getStartIndex()

    Get the index with the hypertext document at which this
    link begins

    Specified by:
    :   `getStartIndex` in class `AccessibleHyperlink`

    Returns:
    :   index of start of link
  + ### getEndIndex

    public int getEndIndex()

    Get the index with the hypertext document at which this
    link ends

    Specified by:
    :   `getEndIndex` in class `AccessibleHyperlink`

    Returns:
    :   index of end of link