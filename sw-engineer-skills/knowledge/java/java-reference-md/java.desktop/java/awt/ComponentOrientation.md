Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class ComponentOrientation

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.ComponentOrientation

All Implemented Interfaces:
:   `Serializable`

---

public final class ComponentOrientation
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

The ComponentOrientation class encapsulates the language-sensitive
orientation that is to be used to order the elements of a component
or of text. It is used to reflect the differences in this ordering
between Western alphabets, Middle Eastern (such as Hebrew), and Far
Eastern (such as Japanese).

Fundamentally, this governs items (such as characters) which are laid out
in lines, with the lines then laid out in a block. This also applies
to items in a widget: for example, in a check box where the box is
positioned relative to the text.

There are four different orientations used in modern languages
as in the following table.  

```
 LT          RT          TL          TR
 A B C       C B A       A D G       G D A
 D E F       F E D       B E H       H E B
 G H I       I H G       C F I       I F C
```

  
(In the header, the two-letter abbreviation represents the item direction
in the first letter, and the line direction in the second. For example,
LT means "items left-to-right, lines top-to-bottom",
TL means "items top-to-bottom, lines left-to-right", and so on.)

The orientations are:

* LT - Western Europe (optional for Japanese, Chinese, Korean)* RT - Middle East (Arabic, Hebrew)* TR - Japanese, Chinese, Korean* TL - Mongolian

Components whose view and controller code depends on orientation
should use the `isLeftToRight()` and
`isHorizontal()` methods to
determine their behavior. They should not include switch-like
code that keys off of the constants, such as:

```
 if (orientation == LEFT_TO_RIGHT) {
   ...
 } else if (orientation == RIGHT_TO_LEFT) {
   ...
 } else {
   // Oops
 }
```

This is unsafe, since more constants may be added in the future and
since it is not guaranteed that orientation objects will be unique.

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.awt.ComponentOrientation)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final ComponentOrientation`

  `LEFT_TO_RIGHT`

  Items run left to right and lines flow top to bottom
  Examples: English, French.

  `static final ComponentOrientation`

  `RIGHT_TO_LEFT`

  Items run right to left and lines flow top to bottom
  Examples: Arabic, Hebrew.

  `static final ComponentOrientation`

  `UNKNOWN`

  Indicates that a component's orientation has not been set.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `static ComponentOrientation`

  `getOrientation(Locale locale)`

  Returns the orientation that is appropriate for the given locale.

  `static ComponentOrientation`

  `getOrientation(ResourceBundle bdl)`

  Deprecated.

  As of J2SE 1.4, use [`getOrientation(java.util.Locale)`](#getOrientation(java.util.Locale)).

  `boolean`

  `isHorizontal()`

  Are lines horizontal?
  This will return true for horizontal, left-to-right writing
  systems such as Roman.

  `boolean`

  `isLeftToRight()`

  HorizontalLines: Do items run left-to-right?  
  Vertical Lines: Do lines run left-to-right?  
  This will return true for horizontal, left-to-right writing
  systems such as Roman.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### LEFT\_TO\_RIGHT

    public static final [ComponentOrientation](ComponentOrientation.md "class in java.awt") LEFT\_TO\_RIGHT

    Items run left to right and lines flow top to bottom
    Examples: English, French.
  + ### RIGHT\_TO\_LEFT

    public static final [ComponentOrientation](ComponentOrientation.md "class in java.awt") RIGHT\_TO\_LEFT

    Items run right to left and lines flow top to bottom
    Examples: Arabic, Hebrew.
  + ### UNKNOWN

    public static final [ComponentOrientation](ComponentOrientation.md "class in java.awt") UNKNOWN

    Indicates that a component's orientation has not been set.
    To preserve the behavior of existing applications,
    isLeftToRight will return true for this value.
* ## Method Details

  + ### isHorizontal

    public boolean isHorizontal()

    Are lines horizontal?
    This will return true for horizontal, left-to-right writing
    systems such as Roman.

    Returns:
    :   `true` if this orientation has horizontal lines
  + ### isLeftToRight

    public boolean isLeftToRight()

    HorizontalLines: Do items run left-to-right?  
    Vertical Lines: Do lines run left-to-right?  
    This will return true for horizontal, left-to-right writing
    systems such as Roman.

    Returns:
    :   `true` if this orientation is left-to-right
  + ### getOrientation

    public static [ComponentOrientation](ComponentOrientation.md "class in java.awt") getOrientation([Locale](../../../java.base/java/util/Locale.md "class in java.util") locale)

    Returns the orientation that is appropriate for the given locale.

    Parameters:
    :   `locale` - the specified locale

    Returns:
    :   the orientation for the locale
  + ### getOrientation

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public static [ComponentOrientation](ComponentOrientation.md "class in java.awt") getOrientation([ResourceBundle](../../../java.base/java/util/ResourceBundle.md "class in java.util") bdl)

    Deprecated.

    As of J2SE 1.4, use [`getOrientation(java.util.Locale)`](#getOrientation(java.util.Locale)).

    Returns the orientation appropriate for the given ResourceBundle's
    localization. Three approaches are tried, in the following order:
    1. Retrieve a ComponentOrientation object from the ResourceBundle
       using the string "Orientation" as the key.+ Use the ResourceBundle.getLocale to determine the bundle's
         locale, then return the orientation for that locale.+ Return the default locale's orientation.

    Parameters:
    :   `bdl` - the bundle to use

    Returns:
    :   the orientation