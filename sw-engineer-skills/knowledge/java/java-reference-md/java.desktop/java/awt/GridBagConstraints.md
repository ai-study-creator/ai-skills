Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class GridBagConstraints

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.GridBagConstraints

All Implemented Interfaces:
:   `Serializable`, `Cloneable`

---

public class GridBagConstraints
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Cloneable](../../../java.base/java/lang/Cloneable.md "interface in java.lang"), [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

The `GridBagConstraints` class specifies constraints
for components that are laid out using the
`GridBagLayout` class.

Since:
:   1.0

See Also:
:   * [`GridBagLayout`](GridBagLayout.md "class in java.awt")
    * [Serialized Form](../../../serialized-form.md#java.awt.GridBagConstraints)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `ABOVE_BASELINE`

  Possible value for the `anchor` field.

  `static final int`

  `ABOVE_BASELINE_LEADING`

  Possible value for the `anchor` field.

  `static final int`

  `ABOVE_BASELINE_TRAILING`

  Possible value for the `anchor` field.

  `int`

  `anchor`

  This field is used when the component is smaller than its
  display area.

  `static final int`

  `BASELINE`

  Possible value for the `anchor` field.

  `static final int`

  `BASELINE_LEADING`

  Possible value for the `anchor` field.

  `static final int`

  `BASELINE_TRAILING`

  Possible value for the `anchor` field.

  `static final int`

  `BELOW_BASELINE`

  Possible value for the `anchor` field.

  `static final int`

  `BELOW_BASELINE_LEADING`

  Possible value for the `anchor` field.

  `static final int`

  `BELOW_BASELINE_TRAILING`

  Possible value for the `anchor` field.

  `static final int`

  `BOTH`

  Resize the component both horizontally and vertically.

  `static final int`

  `CENTER`

  Put the component in the center of its display area.

  `static final int`

  `EAST`

  Put the component on the right side of its display area,
  centered vertically.

  `int`

  `fill`

  This field is used when the component's display area is larger
  than the component's requested size.

  `static final int`

  `FIRST_LINE_END`

  Place the component in the corner of its display area where
  the first line of text on a page would normally end for the current
  `ComponentOrientation`.

  `static final int`

  `FIRST_LINE_START`

  Place the component in the corner of its display area where
  the first line of text on a page would normally begin for the current
  `ComponentOrientation`.

  `int`

  `gridheight`

  Specifies the number of cells in a column for the component's
  display area.

  `int`

  `gridwidth`

  Specifies the number of cells in a row for the component's
  display area.

  `int`

  `gridx`

  Specifies the cell containing the leading edge of the component's
  display area, where the first cell in a row has `gridx=0`.

  `int`

  `gridy`

  Specifies the cell at the top of the component's display area,
  where the topmost cell has `gridy=0`.

  `static final int`

  `HORIZONTAL`

  Resize the component horizontally but not vertically.

  `Insets`

  `insets`

  This field specifies the external padding of the component, the
  minimum amount of space between the component and the edges of its
  display area.

  `int`

  `ipadx`

  This field specifies the internal padding of the component, how much
  space to add to the minimum width of the component.

  `int`

  `ipady`

  This field specifies the internal padding, that is, how much
  space to add to the minimum height of the component.

  `static final int`

  `LAST_LINE_END`

  Place the component in the corner of its display area where
  the last line of text on a page would normally end for the current
  `ComponentOrientation`.

  `static final int`

  `LAST_LINE_START`

  Place the component in the corner of its display area where
  the last line of text on a page would normally start for the current
  `ComponentOrientation`.

  `static final int`

  `LINE_END`

  Place the component centered along the edge of its display area where
  lines of text would normally end for the current
  `ComponentOrientation`.

  `static final int`

  `LINE_START`

  Place the component centered along the edge of its display area where
  lines of text would normally begin for the current
  `ComponentOrientation`.

  `static final int`

  `NONE`

  Do not resize the component.

  `static final int`

  `NORTH`

  Put the component at the top of its display area,
  centered horizontally.

  `static final int`

  `NORTHEAST`

  Put the component at the top-right corner of its display area.

  `static final int`

  `NORTHWEST`

  Put the component at the top-left corner of its display area.

  `static final int`

  `PAGE_END`

  Place the component centered along the edge of its display area
  associated with the end of a page for the current
  `ComponentOrientation`.

  `static final int`

  `PAGE_START`

  Place the component centered along the edge of its display area
  associated with the start of a page for the current
  `ComponentOrientation`.

  `static final int`

  `RELATIVE`

  Specifies that this component is the next-to-last component in its
  column or row (`gridwidth`, `gridheight`),
  or that this component be placed next to the previously added
  component (`gridx`, `gridy`).

  `static final int`

  `REMAINDER`

  Specifies that this component is the
  last component in its column or row.

  `static final int`

  `SOUTH`

  Put the component at the bottom of its display area, centered
  horizontally.

  `static final int`

  `SOUTHEAST`

  Put the component at the bottom-right corner of its display area.

  `static final int`

  `SOUTHWEST`

  Put the component at the bottom-left corner of its display area.

  `static final int`

  `VERTICAL`

  Resize the component vertically but not horizontally.

  `double`

  `weightx`

  Specifies how to distribute extra horizontal space.

  `double`

  `weighty`

  Specifies how to distribute extra vertical space.

  `static final int`

  `WEST`

  Put the component on the left side of its display area,
  centered vertically.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `GridBagConstraints()`

  Creates a `GridBagConstraint` object with
  all of its fields set to their default value.

  `GridBagConstraints(int gridx,
  int gridy,
  int gridwidth,
  int gridheight,
  double weightx,
  double weighty,
  int anchor,
  int fill,
  Insets insets,
  int ipadx,
  int ipady)`

  Creates a `GridBagConstraints` object with
  all of its fields set to the passed-in arguments.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Creates a copy of this grid bag constraint.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### RELATIVE

    public static final int RELATIVE

    Specifies that this component is the next-to-last component in its
    column or row (`gridwidth`, `gridheight`),
    or that this component be placed next to the previously added
    component (`gridx`, `gridy`).

    See Also:
    :   - [`gridwidth`](#gridwidth)
        - [`gridheight`](#gridheight)
        - [`gridx`](#gridx)
        - [`gridy`](#gridy)
        - [Constant Field Values](../../../constant-values.md#java.awt.GridBagConstraints.RELATIVE)
  + ### REMAINDER

    public static final int REMAINDER

    Specifies that this component is the
    last component in its column or row.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.GridBagConstraints.REMAINDER)
  + ### NONE

    public static final int NONE

    Do not resize the component.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.GridBagConstraints.NONE)
  + ### BOTH

    public static final int BOTH

    Resize the component both horizontally and vertically.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.GridBagConstraints.BOTH)
  + ### HORIZONTAL

    public static final int HORIZONTAL

    Resize the component horizontally but not vertically.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.GridBagConstraints.HORIZONTAL)
  + ### VERTICAL

    public static final int VERTICAL

    Resize the component vertically but not horizontally.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.GridBagConstraints.VERTICAL)
  + ### CENTER

    public static final int CENTER

    Put the component in the center of its display area.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.GridBagConstraints.CENTER)
  + ### NORTH

    public static final int NORTH

    Put the component at the top of its display area,
    centered horizontally.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.GridBagConstraints.NORTH)
  + ### NORTHEAST

    public static final int NORTHEAST

    Put the component at the top-right corner of its display area.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.GridBagConstraints.NORTHEAST)
  + ### EAST

    public static final int EAST

    Put the component on the right side of its display area,
    centered vertically.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.GridBagConstraints.EAST)
  + ### SOUTHEAST

    public static final int SOUTHEAST

    Put the component at the bottom-right corner of its display area.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.GridBagConstraints.SOUTHEAST)
  + ### SOUTH

    public static final int SOUTH

    Put the component at the bottom of its display area, centered
    horizontally.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.GridBagConstraints.SOUTH)
  + ### SOUTHWEST

    public static final int SOUTHWEST

    Put the component at the bottom-left corner of its display area.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.GridBagConstraints.SOUTHWEST)
  + ### WEST

    public static final int WEST

    Put the component on the left side of its display area,
    centered vertically.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.GridBagConstraints.WEST)
  + ### NORTHWEST

    public static final int NORTHWEST

    Put the component at the top-left corner of its display area.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.GridBagConstraints.NORTHWEST)
  + ### PAGE\_START

    public static final int PAGE\_START

    Place the component centered along the edge of its display area
    associated with the start of a page for the current
    `ComponentOrientation`. Equal to NORTH for horizontal
    orientations.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.GridBagConstraints.PAGE_START)
  + ### PAGE\_END

    public static final int PAGE\_END

    Place the component centered along the edge of its display area
    associated with the end of a page for the current
    `ComponentOrientation`. Equal to SOUTH for horizontal
    orientations.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.GridBagConstraints.PAGE_END)
  + ### LINE\_START

    public static final int LINE\_START

    Place the component centered along the edge of its display area where
    lines of text would normally begin for the current
    `ComponentOrientation`. Equal to WEST for horizontal,
    left-to-right orientations and EAST for horizontal, right-to-left
    orientations.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.GridBagConstraints.LINE_START)
  + ### LINE\_END

    public static final int LINE\_END

    Place the component centered along the edge of its display area where
    lines of text would normally end for the current
    `ComponentOrientation`. Equal to EAST for horizontal,
    left-to-right orientations and WEST for horizontal, right-to-left
    orientations.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.GridBagConstraints.LINE_END)
  + ### FIRST\_LINE\_START

    public static final int FIRST\_LINE\_START

    Place the component in the corner of its display area where
    the first line of text on a page would normally begin for the current
    `ComponentOrientation`. Equal to NORTHWEST for horizontal,
    left-to-right orientations and NORTHEAST for horizontal, right-to-left
    orientations.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.GridBagConstraints.FIRST_LINE_START)
  + ### FIRST\_LINE\_END

    public static final int FIRST\_LINE\_END

    Place the component in the corner of its display area where
    the first line of text on a page would normally end for the current
    `ComponentOrientation`. Equal to NORTHEAST for horizontal,
    left-to-right orientations and NORTHWEST for horizontal, right-to-left
    orientations.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.GridBagConstraints.FIRST_LINE_END)
  + ### LAST\_LINE\_START

    public static final int LAST\_LINE\_START

    Place the component in the corner of its display area where
    the last line of text on a page would normally start for the current
    `ComponentOrientation`. Equal to SOUTHWEST for horizontal,
    left-to-right orientations and SOUTHEAST for horizontal, right-to-left
    orientations.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.GridBagConstraints.LAST_LINE_START)
  + ### LAST\_LINE\_END

    public static final int LAST\_LINE\_END

    Place the component in the corner of its display area where
    the last line of text on a page would normally end for the current
    `ComponentOrientation`. Equal to SOUTHEAST for horizontal,
    left-to-right orientations and SOUTHWEST for horizontal, right-to-left
    orientations.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.GridBagConstraints.LAST_LINE_END)
  + ### BASELINE

    public static final int BASELINE

    Possible value for the `anchor` field. Specifies
    that the component should be horizontally centered and
    vertically aligned along the baseline of the prevailing row.
    If the component does not have a baseline it will be vertically
    centered.

    Since:
    :   1.6

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.GridBagConstraints.BASELINE)
  + ### BASELINE\_LEADING

    public static final int BASELINE\_LEADING

    Possible value for the `anchor` field. Specifies
    that the component should be horizontally placed along the
    leading edge. For components with a left-to-right orientation,
    the leading edge is the left edge. Vertically the component is
    aligned along the baseline of the prevailing row. If the
    component does not have a baseline it will be vertically
    centered.

    Since:
    :   1.6

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.GridBagConstraints.BASELINE_LEADING)
  + ### BASELINE\_TRAILING

    public static final int BASELINE\_TRAILING

    Possible value for the `anchor` field. Specifies
    that the component should be horizontally placed along the
    trailing edge. For components with a left-to-right
    orientation, the trailing edge is the right edge. Vertically
    the component is aligned along the baseline of the prevailing
    row. If the component does not have a baseline it will be
    vertically centered.

    Since:
    :   1.6

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.GridBagConstraints.BASELINE_TRAILING)
  + ### ABOVE\_BASELINE

    public static final int ABOVE\_BASELINE

    Possible value for the `anchor` field. Specifies
    that the component should be horizontally centered. Vertically
    the component is positioned so that its bottom edge touches
    the baseline of the starting row. If the starting row does not
    have a baseline it will be vertically centered.

    Since:
    :   1.6

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.GridBagConstraints.ABOVE_BASELINE)
  + ### ABOVE\_BASELINE\_LEADING

    public static final int ABOVE\_BASELINE\_LEADING

    Possible value for the `anchor` field. Specifies
    that the component should be horizontally placed along the
    leading edge. For components with a left-to-right orientation,
    the leading edge is the left edge. Vertically the component is
    positioned so that its bottom edge touches the baseline of the
    starting row. If the starting row does not have a baseline it
    will be vertically centered.

    Since:
    :   1.6

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.GridBagConstraints.ABOVE_BASELINE_LEADING)
  + ### ABOVE\_BASELINE\_TRAILING

    public static final int ABOVE\_BASELINE\_TRAILING

    Possible value for the `anchor` field. Specifies
    that the component should be horizontally placed along the
    trailing edge. For components with a left-to-right
    orientation, the trailing edge is the right edge. Vertically
    the component is positioned so that its bottom edge touches
    the baseline of the starting row. If the starting row does not
    have a baseline it will be vertically centered.

    Since:
    :   1.6

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.GridBagConstraints.ABOVE_BASELINE_TRAILING)
  + ### BELOW\_BASELINE

    public static final int BELOW\_BASELINE

    Possible value for the `anchor` field. Specifies
    that the component should be horizontally centered. Vertically
    the component is positioned so that its top edge touches the
    baseline of the starting row. If the starting row does not
    have a baseline it will be vertically centered.

    Since:
    :   1.6

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.GridBagConstraints.BELOW_BASELINE)
  + ### BELOW\_BASELINE\_LEADING

    public static final int BELOW\_BASELINE\_LEADING

    Possible value for the `anchor` field. Specifies
    that the component should be horizontally placed along the
    leading edge. For components with a left-to-right orientation,
    the leading edge is the left edge. Vertically the component is
    positioned so that its top edge touches the baseline of the
    starting row. If the starting row does not have a baseline it
    will be vertically centered.

    Since:
    :   1.6

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.GridBagConstraints.BELOW_BASELINE_LEADING)
  + ### BELOW\_BASELINE\_TRAILING

    public static final int BELOW\_BASELINE\_TRAILING

    Possible value for the `anchor` field. Specifies
    that the component should be horizontally placed along the
    trailing edge. For components with a left-to-right
    orientation, the trailing edge is the right edge. Vertically
    the component is positioned so that its top edge touches the
    baseline of the starting row. If the starting row does not
    have a baseline it will be vertically centered.

    Since:
    :   1.6

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.GridBagConstraints.BELOW_BASELINE_TRAILING)
  + ### gridx

    public int gridx

    Specifies the cell containing the leading edge of the component's
    display area, where the first cell in a row has `gridx=0`.
    The leading edge of a component's display area is its left edge for
    a horizontal, left-to-right container and its right edge for a
    horizontal, right-to-left container.
    The value
    `RELATIVE` specifies that the component be placed
    immediately following the component that was added to the container
    just before this component was added.

    The default value is `RELATIVE`.
    `gridx` should be a non-negative value.

    See Also:
    :   - [`clone()`](#clone())
        - [`gridy`](#gridy)
        - [`ComponentOrientation`](ComponentOrientation.md "class in java.awt")
  + ### gridy

    public int gridy

    Specifies the cell at the top of the component's display area,
    where the topmost cell has `gridy=0`. The value
    `RELATIVE` specifies that the component be placed just
    below the component that was added to the container just before
    this component was added.

    The default value is `RELATIVE`.
    `gridy` should be a non-negative value.

    See Also:
    :   - [`clone()`](#clone())
        - [`gridx`](#gridx)
  + ### gridwidth

    public int gridwidth

    Specifies the number of cells in a row for the component's
    display area.

    Use `REMAINDER` to specify that the component's
    display area will be from `gridx` to the last
    cell in the row.
    Use `RELATIVE` to specify that the component's
    display area will be from `gridx` to the next
    to the last one in its row.

    `gridwidth` should be non-negative and the default
    value is 1.

    See Also:
    :   - [`clone()`](#clone())
        - [`gridheight`](#gridheight)
  + ### gridheight

    public int gridheight

    Specifies the number of cells in a column for the component's
    display area.

    Use `REMAINDER` to specify that the component's
    display area will be from `gridy` to the last
    cell in the column.
    Use `RELATIVE` to specify that the component's
    display area will be from `gridy` to the next
    to the last one in its column.

    `gridheight` should be a non-negative value and the
    default value is 1.

    See Also:
    :   - [`clone()`](#clone())
        - [`gridwidth`](#gridwidth)
  + ### weightx

    public double weightx

    Specifies how to distribute extra horizontal space.

    The grid bag layout manager calculates the weight of a column to
    be the maximum `weightx` of all the components in a
    column. If the resulting layout is smaller horizontally than the area
    it needs to fill, the extra space is distributed to each column in
    proportion to its weight. A column that has a weight of zero receives
    no extra space.

    If all the weights are zero, all the extra space appears between
    the grids of the cell and the left and right edges.

    The default value of this field is `0`.
    `weightx` should be a non-negative value.

    See Also:
    :   - [`clone()`](#clone())
        - [`weighty`](#weighty)
  + ### weighty

    public double weighty

    Specifies how to distribute extra vertical space.

    The grid bag layout manager calculates the weight of a row to be
    the maximum `weighty` of all the components in a row.
    If the resulting layout is smaller vertically than the area it
    needs to fill, the extra space is distributed to each row in
    proportion to its weight. A row that has a weight of zero receives no
    extra space.

    If all the weights are zero, all the extra space appears between
    the grids of the cell and the top and bottom edges.

    The default value of this field is `0`.
    `weighty` should be a non-negative value.

    See Also:
    :   - [`clone()`](#clone())
        - [`weightx`](#weightx)
  + ### anchor

    public int anchor

    This field is used when the component is smaller than its
    display area. It determines where, within the display area, to
    place the component.

    There are three kinds of possible values: orientation
    relative, baseline relative and absolute. Orientation relative
    values are interpreted relative to the container's component
    orientation property, baseline relative values are interpreted
    relative to the baseline and absolute values are not. The
    absolute values are:
    `CENTER`, `NORTH`, `NORTHEAST`,
    `EAST`, `SOUTHEAST`, `SOUTH`,
    `SOUTHWEST`, `WEST`, and `NORTHWEST`.
    The orientation relative values are: `PAGE_START`,
    `PAGE_END`,
    `LINE_START`, `LINE_END`,
    `FIRST_LINE_START`, `FIRST_LINE_END`,
    `LAST_LINE_START` and `LAST_LINE_END`. The
    baseline relative values are:
    `BASELINE`, `BASELINE_LEADING`,
    `BASELINE_TRAILING`,
    `ABOVE_BASELINE`, `ABOVE_BASELINE_LEADING`,
    `ABOVE_BASELINE_TRAILING`,
    `BELOW_BASELINE`, `BELOW_BASELINE_LEADING`,
    and `BELOW_BASELINE_TRAILING`.
    The default value is `CENTER`.

    See Also:
    :   - [`clone()`](#clone())
        - [`ComponentOrientation`](ComponentOrientation.md "class in java.awt")
  + ### fill

    public int fill

    This field is used when the component's display area is larger
    than the component's requested size. It determines whether to
    resize the component, and if so, how.

    The following values are valid for `fill`:
    - `NONE`: Do not resize the component.- `HORIZONTAL`: Make the component wide enough to fill
        its display area horizontally, but do not change its height.- `VERTICAL`: Make the component tall enough to fill its
          display area vertically, but do not change its width.- `BOTH`: Make the component fill its display area
            entirely.

    The default value is `NONE`.

    See Also:
    :   - [`clone()`](#clone())
  + ### insets

    public [Insets](Insets.md "class in java.awt") insets

    This field specifies the external padding of the component, the
    minimum amount of space between the component and the edges of its
    display area.

    The default value is `new Insets(0, 0, 0, 0)`.

    See Also:
    :   - [`clone()`](#clone())
  + ### ipadx

    public int ipadx

    This field specifies the internal padding of the component, how much
    space to add to the minimum width of the component. The width of
    the component is at least its minimum width plus
    `ipadx` pixels.

    The default value is `0`.

    See Also:
    :   - [`clone()`](#clone())
        - [`ipady`](#ipady)
  + ### ipady

    public int ipady

    This field specifies the internal padding, that is, how much
    space to add to the minimum height of the component. The height of
    the component is at least its minimum height plus
    `ipady` pixels.

    The default value is 0.

    See Also:
    :   - [`clone()`](#clone())
        - [`ipadx`](#ipadx)
* ## Constructor Details

  + ### GridBagConstraints

    public GridBagConstraints()

    Creates a `GridBagConstraint` object with
    all of its fields set to their default value.
  + ### GridBagConstraints

    public GridBagConstraints(int gridx,
    int gridy,
    int gridwidth,
    int gridheight,
    double weightx,
    double weighty,
    int anchor,
    int fill,
    [Insets](Insets.md "class in java.awt") insets,
    int ipadx,
    int ipady)

    Creates a `GridBagConstraints` object with
    all of its fields set to the passed-in arguments.
    Note: Because the use of this constructor hinders readability
    of source code, this constructor should only be used by
    automatic source code generation tools.

    Parameters:
    :   `gridx` - The initial gridx value.
    :   `gridy` - The initial gridy value.
    :   `gridwidth` - The initial gridwidth value.
    :   `gridheight` - The initial gridheight value.
    :   `weightx` - The initial weightx value.
    :   `weighty` - The initial weighty value.
    :   `anchor` - The initial anchor value.
    :   `fill` - The initial fill value.
    :   `insets` - The initial insets value.
    :   `ipadx` - The initial ipadx value.
    :   `ipady` - The initial ipady value.

    Since:
    :   1.2

    See Also:
    :   - [`gridx`](#gridx)
        - [`gridy`](#gridy)
        - [`gridwidth`](#gridwidth)
        - [`gridheight`](#gridheight)
        - [`weightx`](#weightx)
        - [`weighty`](#weighty)
        - [`anchor`](#anchor)
        - [`fill`](#fill)
        - [`insets`](#insets)
        - [`ipadx`](#ipadx)
        - [`ipady`](#ipady)
* ## Method Details

  + ### clone

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") clone()

    Creates a copy of this grid bag constraint.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   a copy of this grid bag constraint

    See Also:
    :   - [`Cloneable`](../../../java.base/java/lang/Cloneable.md "interface in java.lang")