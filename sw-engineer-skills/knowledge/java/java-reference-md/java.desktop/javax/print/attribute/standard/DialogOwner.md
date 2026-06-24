Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class DialogOwner

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.print.attribute.standard.DialogOwner

All Implemented Interfaces:
:   `Serializable`, `Attribute`, `PrintRequestAttribute`

---

public final class DialogOwner
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [PrintRequestAttribute](../PrintRequestAttribute.md "interface in javax.print.attribute")

An attribute class used to support requesting a print or page setup dialog
be kept displayed on top of all windows or some specific window.

Constructed without any arguments it will request that a print or page
setup dialog be configured as if the application directly was to specify
`java.awt.Window.setAlwaysOnTop(true)`, subject to permission checks.

Constructed with a [`Window`](../../../../java/awt/Window.md "class in java.awt") parameter, it requests that
the dialog be owned by the specified window.

Since:
:   11

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.DialogOwner)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DialogOwner()`

  Constructs an instance which can be used to request
  `java.awt.Window.setAlwaysOnTop(true)` behaviour.

  `DialogOwner(Window owner)`

  Constructs an instance which can be used to request that the
  specified [`Window`](../../../../java/awt/Window.md "class in java.awt") be the owner of the dialog.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final Class<? extends Attribute>`

  `getCategory()`

  Get the printing attribute class which is to be used as the "category"
  for this printing attribute value.

  `final String`

  `getName()`

  Get the name of the category of which this attribute value is an
  instance.

  `Window`

  `getOwner()`

  Returns a `Window owner`, if one was specified,
  otherwise `null`.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DialogOwner

    public DialogOwner()

    Constructs an instance which can be used to request
    `java.awt.Window.setAlwaysOnTop(true)` behaviour.
    This should be used where there is no application preferred owner window.
    Whether this has any effect depends on if always on top is supported
    for this platform and the particular dialog to be displayed.
  + ### DialogOwner

    public DialogOwner([Window](../../../../java/awt/Window.md "class in java.awt") owner)

    Constructs an instance which can be used to request that the
    specified [`Window`](../../../../java/awt/Window.md "class in java.awt") be the owner of the dialog.

    Parameters:
    :   `owner` - window.
* ## Method Details

  + ### getOwner

    public [Window](../../../../java/awt/Window.md "class in java.awt") getOwner()

    Returns a `Window owner`, if one was specified,
    otherwise `null`.

    Returns:
    :   an owner window.
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `DialogOwner`, the category is class
    `DialogOwner` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `DialogOwner`, the category name is
    `"dialog-owner"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name