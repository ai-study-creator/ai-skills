Module [java.desktop](../../module-summary.md)

Package [javax.accessibility](package-summary.md)

# Interface AccessibleIcon

All Known Implementing Classes:
:   `ImageIcon.AccessibleImageIcon`

---

public interface AccessibleIcon

The `AccessibleIcon` interface should be supported by any object that
has an associated icon (e.g., buttons). This interface provides the standard
mechanism for an assistive technology to get descriptive information about
icons. Applications can determine if an object supports the
`AccessibleIcon` interface by first obtaining its
`AccessibleContext` (see [`Accessible`](Accessible.md "interface in javax.accessibility")) and then calling the
[`AccessibleContext.getAccessibleIcon()`](AccessibleContext.md#getAccessibleIcon()) method. If the return value is
not `null`, the object supports this interface.

Since:
:   1.3

See Also:
:   * [`Accessible`](Accessible.md "interface in javax.accessibility")
    * [`AccessibleContext`](AccessibleContext.md "class in javax.accessibility")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `getAccessibleIconDescription()`

  Gets the description of the icon.

  `int`

  `getAccessibleIconHeight()`

  Gets the height of the icon.

  `int`

  `getAccessibleIconWidth()`

  Gets the width of the icon.

  `void`

  `setAccessibleIconDescription(String description)`

  Sets the description of the icon.

* ## Method Details

  + ### getAccessibleIconDescription

    [String](../../../java.base/java/lang/String.md "class in java.lang") getAccessibleIconDescription()

    Gets the description of the icon. This is meant to be a brief textual
    description of the object. For example, it might be presented to a blind
    user to give an indication of the purpose of the icon.

    Returns:
    :   the description of the icon
  + ### setAccessibleIconDescription

    void setAccessibleIconDescription([String](../../../java.base/java/lang/String.md "class in java.lang") description)

    Sets the description of the icon. This is meant to be a brief textual
    description of the object. For example, it might be presented to a blind
    user to give an indication of the purpose of the icon.

    Parameters:
    :   `description` - the description of the icon
  + ### getAccessibleIconWidth

    int getAccessibleIconWidth()

    Gets the width of the icon.

    Returns:
    :   the width of the icon
  + ### getAccessibleIconHeight

    int getAccessibleIconHeight()

    Gets the height of the icon.

    Returns:
    :   the height of the icon