Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.synth](package-summary.md)

# Class SynthContext

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.synth.SynthContext

---

public class SynthContext
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

An immutable transient object containing contextual information about
a `Region`. A `SynthContext` should only be
considered valid for the duration
of the method it is passed to. In other words you should not cache
a `SynthContext` that is passed to you and expect it to
remain valid.

Since:
:   1.5

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SynthContext(JComponent component,
  Region region,
  SynthStyle style,
  int state)`

  Creates a SynthContext with the specified values.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `JComponent`

  `getComponent()`

  Returns the hosting component containing the region.

  `int`

  `getComponentState()`

  Returns the state of the widget, which is a bitmask of the
  values defined in `SynthConstants`.

  `Region`

  `getRegion()`

  Returns the Region identifying this state.

  `SynthStyle`

  `getStyle()`

  Returns the style associated with this Region.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SynthContext

    public SynthContext([JComponent](../../JComponent.md "class in javax.swing") component,
    [Region](Region.md "class in javax.swing.plaf.synth") region,
    [SynthStyle](SynthStyle.md "class in javax.swing.plaf.synth") style,
    int state)

    Creates a SynthContext with the specified values. This is meant
    for subclasses and custom UI implementors. You very rarely need to
    construct a SynthContext, though some methods will take one.

    Parameters:
    :   `component` - JComponent
    :   `region` - Identifies the portion of the JComponent
    :   `style` - Style associated with the component
    :   `state` - State of the component as defined in SynthConstants.

    Throws:
    :   `NullPointerException` - if component, region of style is null.
* ## Method Details

  + ### getComponent

    public [JComponent](../../JComponent.md "class in javax.swing") getComponent()

    Returns the hosting component containing the region.

    Returns:
    :   Hosting Component
  + ### getRegion

    public [Region](Region.md "class in javax.swing.plaf.synth") getRegion()

    Returns the Region identifying this state.

    Returns:
    :   Region of the hosting component
  + ### getStyle

    public [SynthStyle](SynthStyle.md "class in javax.swing.plaf.synth") getStyle()

    Returns the style associated with this Region.

    Returns:
    :   SynthStyle associated with the region.
  + ### getComponentState

    public int getComponentState()

    Returns the state of the widget, which is a bitmask of the
    values defined in `SynthConstants`. A region will at least
    be in one of
    `ENABLED`, `MOUSE_OVER`, `PRESSED`
    or `DISABLED`.

    Returns:
    :   State of Component

    See Also:
    :   - [`SynthConstants`](SynthConstants.md "interface in javax.swing.plaf.synth")