Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class LayoutStyle

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.LayoutStyle

---

public abstract class LayoutStyle
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

`LayoutStyle` provides information about how to position
components. This class is primarily useful for visual tools and
layout managers. Most developers will not need to use this class.

You typically don't set or create a
`LayoutStyle`. Instead use the static method
`getInstance` to obtain the current instance.

Since:
:   1.6

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static enum`

  `LayoutStyle.ComponentPlacement`

  `ComponentPlacement` is an enumeration of the
  possible ways two components can be placed relative to each
  other.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `LayoutStyle()`

  Creates a new `LayoutStyle`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract int`

  `getContainerGap(JComponent component,
  int position,
  Container parent)`

  Returns the amount of space to place between the component and specified
  edge of its parent.

  `static LayoutStyle`

  `getInstance()`

  Returns the shared instance of `LayoutStyle`.

  `abstract int`

  `getPreferredGap(JComponent component1,
  JComponent component2,
  LayoutStyle.ComponentPlacement type,
  int position,
  Container parent)`

  Returns the amount of space to use between two components.

  `static void`

  `setInstance(LayoutStyle style)`

  Sets the shared instance of `LayoutStyle`.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### LayoutStyle

    public LayoutStyle()

    Creates a new `LayoutStyle`. You generally don't
    create a `LayoutStyle`. Instead use the method
    `getInstance` to obtain the current
    `LayoutStyle`.
* ## Method Details

  + ### setInstance

    public static void setInstance([LayoutStyle](LayoutStyle.md "class in javax.swing") style)

    Sets the shared instance of `LayoutStyle`. Specifying
    `null` results in using the `LayoutStyle` from
    the current `LookAndFeel`.

    Parameters:
    :   `style` - the `LayoutStyle`, or `null`

    See Also:
    :   - [`getInstance()`](#getInstance())
  + ### getInstance

    public static [LayoutStyle](LayoutStyle.md "class in javax.swing") getInstance()

    Returns the shared instance of `LayoutStyle`. If an instance
    has not been specified in `setInstance`, this will return
    the `LayoutStyle` from the current `LookAndFeel`.

    Returns:
    :   the shared instance of `LayoutStyle`

    See Also:
    :   - [`LookAndFeel.getLayoutStyle()`](LookAndFeel.md#getLayoutStyle())
  + ### getPreferredGap

    public abstract int getPreferredGap([JComponent](JComponent.md "class in javax.swing") component1,
    [JComponent](JComponent.md "class in javax.swing") component2,
    [LayoutStyle.ComponentPlacement](LayoutStyle.ComponentPlacement.md "enum class in javax.swing") type,
    int position,
    [Container](../../java/awt/Container.md "class in java.awt") parent)

    Returns the amount of space to use between two components.
    The return value indicates the distance to place
    `component2` relative to `component1`.
    For example, the following returns the amount of space to place
    between `component2` and `component1`
    when `component2` is placed vertically above
    `component1`:

    ```
       int gap = getPreferredGap(component1, component2,
                                 ComponentPlacement.RELATED,
                                 SwingConstants.NORTH, parent);
    ```

    The `type` parameter indicates the relation between
    the two components. If the two components will be contained in
    the same parent and are showing similar logically related
    items, use `RELATED`. If the two components will be
    contained in the same parent but show logically unrelated items
    use `UNRELATED`. Some look and feels may not
    distinguish between the `RELATED` and
    `UNRELATED` types.

    The return value is not intended to take into account the
    current size and position of `component2` or
    `component1`. The return value may take into
    consideration various properties of the components. For
    example, the space may vary based on font size, or the preferred
    size of the component.

    Parameters:
    :   `component1` - the `JComponent`
        `component2` is being placed relative to
    :   `component2` - the `JComponent` being placed
    :   `type` - how the two components are being placed
    :   `position` - the position `component2` is being placed
        relative to `component1`; one of
        `SwingConstants.NORTH`,
        `SwingConstants.SOUTH`,
        `SwingConstants.EAST` or
        `SwingConstants.WEST`
    :   `parent` - the parent of `component2`; this may differ
        from the actual parent and it may be `null`

    Returns:
    :   the amount of space to place between the two components

    Throws:
    :   `NullPointerException` - if `component1`,
        `component2` or `type` is
        `null`
    :   `IllegalArgumentException` - if `position` is not
        one of `SwingConstants.NORTH`,
        `SwingConstants.SOUTH`,
        `SwingConstants.EAST` or
        `SwingConstants.WEST`

    Since:
    :   1.6

    See Also:
    :   - [`LookAndFeel.getLayoutStyle()`](LookAndFeel.md#getLayoutStyle())
  + ### getContainerGap

    public abstract int getContainerGap([JComponent](JComponent.md "class in javax.swing") component,
    int position,
    [Container](../../java/awt/Container.md "class in java.awt") parent)

    Returns the amount of space to place between the component and specified
    edge of its parent.

    Parameters:
    :   `component` - the `JComponent` being positioned
    :   `position` - the position `component` is being placed
        relative to its parent; one of
        `SwingConstants.NORTH`,
        `SwingConstants.SOUTH`,
        `SwingConstants.EAST` or
        `SwingConstants.WEST`
    :   `parent` - the parent of `component`; this may differ
        from the actual parent and may be `null`

    Returns:
    :   the amount of space to place between the component and specified
        edge

    Throws:
    :   `IllegalArgumentException` - if `position` is not
        one of `SwingConstants.NORTH`,
        `SwingConstants.SOUTH`,
        `SwingConstants.EAST` or
        `SwingConstants.WEST`