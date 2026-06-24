Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Interface Renderer

---

public interface Renderer

Defines the requirements for an object responsible for
"rendering" (displaying) a value.

Since:
:   1.2

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Component`

  `getComponent()`

  Returns the component used to render the value.

  `void`

  `setValue(Object aValue,
  boolean isSelected)`

  Specifies the value to display and whether or not the
  value should be portrayed as "currently selected".

* ## Method Details

  + ### setValue

    void setValue([Object](../../../java.base/java/lang/Object.md "class in java.lang") aValue,
    boolean isSelected)

    Specifies the value to display and whether or not the
    value should be portrayed as "currently selected".

    Parameters:
    :   `aValue` - an Object object
    :   `isSelected` - a boolean
  + ### getComponent

    [Component](../../java/awt/Component.md "class in java.awt") getComponent()

    Returns the component used to render the value.

    Returns:
    :   the Component responsible for displaying the value