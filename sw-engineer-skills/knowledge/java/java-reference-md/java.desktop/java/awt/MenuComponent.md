Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class MenuComponent

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.MenuComponent

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `MenuBar`, `MenuItem`

---

public abstract class MenuComponent
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

The abstract class `MenuComponent` is the superclass
of all menu-related components. In this respect, the class
`MenuComponent` is analogous to the abstract superclass
`Component` for AWT components.

Menu components receive and process AWT events, just as components do,
through the method `processEvent`.

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.awt.MenuComponent)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `MenuComponent.AccessibleAWTMenuComponent`

  Inner class of `MenuComponent` used to provide
  default support for accessibility.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MenuComponent()`

  Creates a `MenuComponent`.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `final void`

  `dispatchEvent(AWTEvent e)`

  Delivers an event to this component or one of its sub components.

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the `AccessibleContext` associated with
  this `MenuComponent`.

  `Font`

  `getFont()`

  Gets the font used for this menu component.

  `String`

  `getName()`

  Gets the name of the menu component.

  `MenuContainer`

  `getParent()`

  Returns the parent container for this menu component.

  `protected final Object`

  `getTreeLock()`

  Gets this component's locking object (the object that owns the thread
  synchronization monitor) for AWT component-tree and layout
  operations.

  `protected String`

  `paramString()`

  Returns a string representing the state of this
  `MenuComponent`.

  `boolean`

  `postEvent(Event evt)`

  Deprecated.

  As of JDK version 1.1, replaced by [`dispatchEvent`](#dispatchEvent(java.awt.AWTEvent)).

  `protected void`

  `processEvent(AWTEvent e)`

  Processes events occurring on this menu component.

  `void`

  `removeNotify()`

  Removes the menu component's peer.

  `void`

  `setFont(Font f)`

  Sets the font to be used for this menu component to the specified
  font.

  `void`

  `setName(String name)`

  Sets the name of the component to the specified string.

  `String`

  `toString()`

  Returns a representation of this menu component as a string.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### MenuComponent

    public MenuComponent()
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Creates a `MenuComponent`.

    Throws:
    :   `HeadlessException` - if
        `GraphicsEnvironment.isHeadless`
        returns `true`

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
* ## Method Details

  + ### getName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getName()

    Gets the name of the menu component.

    Returns:
    :   the name of the menu component

    Since:
    :   1.1

    See Also:
    :   - [`setName(java.lang.String)`](#setName(java.lang.String))
  + ### setName

    public void setName([String](../../../java.base/java/lang/String.md "class in java.lang") name)

    Sets the name of the component to the specified string.

    Parameters:
    :   `name` - the name of the menu component

    Since:
    :   1.1

    See Also:
    :   - [`getName()`](#getName())
  + ### getParent

    public [MenuContainer](MenuContainer.md "interface in java.awt") getParent()

    Returns the parent container for this menu component.

    Returns:
    :   the menu component containing this menu component,
        or `null` if this menu component
        is the outermost component, the menu bar itself
  + ### getFont

    public [Font](Font.md "class in java.awt") getFont()

    Gets the font used for this menu component.

    Returns:
    :   the font used in this menu component, if there is one;
        `null` otherwise

    See Also:
    :   - [`setFont(java.awt.Font)`](#setFont(java.awt.Font))
  + ### setFont

    public void setFont([Font](Font.md "class in java.awt") f)

    Sets the font to be used for this menu component to the specified
    font. This font is also used by all subcomponents of this menu
    component, unless those subcomponents specify a different font.

    Some platforms may not support setting of all font attributes
    of a menu component; in such cases, calling `setFont`
    will have no effect on the unsupported font attributes of this
    menu component. Unless subcomponents of this menu component
    specify a different font, this font will be used by those
    subcomponents if supported by the underlying platform.

    Parameters:
    :   `f` - the font to be set

    See Also:
    :   - [`getFont()`](#getFont())
        - [`Font.getAttributes()`](Font.md#getAttributes())
        - [`TextAttribute`](font/TextAttribute.md "class in java.awt.font")
  + ### removeNotify

    public void removeNotify()

    Removes the menu component's peer. The peer allows us to modify the
    appearance of the menu component without changing the functionality of
    the menu component.
  + ### postEvent

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public boolean postEvent([Event](Event.md "class in java.awt") evt)

    Deprecated.

    As of JDK version 1.1, replaced by [`dispatchEvent`](#dispatchEvent(java.awt.AWTEvent)).

    Posts the specified event to the menu.
    This method is part of the Java 1.0 event system
    and it is maintained only for backwards compatibility.
    Its use is discouraged, and it may not be supported
    in the future.

    Parameters:
    :   `evt` - the event which is to take place

    Returns:
    :   unconditionally returns false
  + ### dispatchEvent

    public final void dispatchEvent([AWTEvent](AWTEvent.md "class in java.awt") e)

    Delivers an event to this component or one of its sub components.

    Parameters:
    :   `e` - the event
  + ### processEvent

    protected void processEvent([AWTEvent](AWTEvent.md "class in java.awt") e)

    Processes events occurring on this menu component.

    Note that if the event parameter is `null`
    the behavior is unspecified and may result in an
    exception.

    Parameters:
    :   `e` - the event

    Since:
    :   1.1
  + ### paramString

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns a string representing the state of this
    `MenuComponent`. This method is intended to be used
    only for debugging purposes, and the content and format of the
    returned string may vary between implementations. The returned
    string may be empty but may not be `null`.

    Returns:
    :   the parameter string of this menu component
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a representation of this menu component as a string.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this menu component
  + ### getTreeLock

    protected final [Object](../../../java.base/java/lang/Object.md "class in java.lang") getTreeLock()

    Gets this component's locking object (the object that owns the thread
    synchronization monitor) for AWT component-tree and layout
    operations.

    Returns:
    :   this component's locking object
  + ### getAccessibleContext

    public [AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the `AccessibleContext` associated with
    this `MenuComponent`.
    The method implemented by this base class returns `null`.
    Classes that extend `MenuComponent`
    should implement this method to return the
    `AccessibleContext` associated with the subclass.

    Returns:
    :   the `AccessibleContext` of this
        `MenuComponent`

    Since:
    :   1.3