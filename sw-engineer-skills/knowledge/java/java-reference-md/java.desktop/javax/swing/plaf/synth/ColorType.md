Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.synth](package-summary.md)

# Class ColorType

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.synth.ColorType

---

public class ColorType
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

A typesafe enumeration of colors that can be fetched from a style.

Each `SynthStyle` has a set of `ColorType`s that
are accessed by way of the
[`SynthStyle.getColor(SynthContext, ColorType)`](SynthStyle.md#getColor(javax.swing.plaf.synth.SynthContext,javax.swing.plaf.synth.ColorType)) method.
`SynthStyle`'s `installDefaults` will install
the `FOREGROUND` color
as the foreground of
the Component, and the `BACKGROUND` color to the background of
the component (assuming that you have not explicitly specified a
foreground and background color). Some components
support more color based properties, for
example `JList` has the property
`selectionForeground` which will be mapped to
`FOREGROUND` with a component state of
`SynthConstants.SELECTED`.

The following example shows a custom `SynthStyle` that returns
a red Color for the `DISABLED` state, otherwise a black color.

```
 class MyStyle extends SynthStyle {
     private Color disabledColor = new ColorUIResource(Color.RED);
     private Color color = new ColorUIResource(Color.BLACK);
     protected Color getColorForState(SynthContext context, ColorType type){
         if (context.getComponentState() == SynthConstants.DISABLED) {
             return disabledColor;
         }
         return color;
     }
 }
```

Since:
:   1.5

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final ColorType`

  `BACKGROUND`

  ColorType for the background of a region.

  `static final ColorType`

  `FOCUS`

  ColorType for the focus.

  `static final ColorType`

  `FOREGROUND`

  ColorType for the foreground of a region.

  `static final int`

  `MAX_COUNT`

  Maximum number of `ColorType`s.

  `static final ColorType`

  `TEXT_BACKGROUND`

  ColorType for the background of a region.

  `static final ColorType`

  `TEXT_FOREGROUND`

  ColorType for the foreground of a region.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ColorType(String description)`

  Creates a new ColorType with the specified description.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final int`

  `getID()`

  Returns a unique id, as an integer, for this ColorType.

  `String`

  `toString()`

  Returns the textual description of this `ColorType`.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### FOREGROUND

    public static final [ColorType](ColorType.md "class in javax.swing.plaf.synth") FOREGROUND

    ColorType for the foreground of a region.
  + ### BACKGROUND

    public static final [ColorType](ColorType.md "class in javax.swing.plaf.synth") BACKGROUND

    ColorType for the background of a region.
  + ### TEXT\_FOREGROUND

    public static final [ColorType](ColorType.md "class in javax.swing.plaf.synth") TEXT\_FOREGROUND

    ColorType for the foreground of a region.
  + ### TEXT\_BACKGROUND

    public static final [ColorType](ColorType.md "class in javax.swing.plaf.synth") TEXT\_BACKGROUND

    ColorType for the background of a region.
  + ### FOCUS

    public static final [ColorType](ColorType.md "class in javax.swing.plaf.synth") FOCUS

    ColorType for the focus.
  + ### MAX\_COUNT

    public static final int MAX\_COUNT

    Maximum number of `ColorType`s.
* ## Constructor Details

  + ### ColorType

    protected ColorType([String](../../../../../java.base/java/lang/String.md "class in java.lang") description)

    Creates a new ColorType with the specified description.

    Parameters:
    :   `description` - String description of the ColorType.
* ## Method Details

  + ### getID

    public final int getID()

    Returns a unique id, as an integer, for this ColorType.

    Returns:
    :   a unique id, as an integer, for this ColorType.
  + ### toString

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns the textual description of this `ColorType`.
    This is the same value that the `ColorType` was created
    with.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   the description of the string