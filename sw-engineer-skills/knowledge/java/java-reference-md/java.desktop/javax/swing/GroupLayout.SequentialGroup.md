Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class GroupLayout.SequentialGroup

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.GroupLayout.Group](GroupLayout.Group.md "class in javax.swing")

javax.swing.GroupLayout.SequentialGroup

Enclosing class:
:   `GroupLayout`

---

public final class GroupLayout.SequentialGroup
extends [GroupLayout.Group](GroupLayout.Group.md "class in javax.swing")

A `Group` that positions and sizes its elements
sequentially, one after another. This class has no public
constructor, use the `createSequentialGroup` method
to create one.

In order to align a `SequentialGroup` along the baseline
of a baseline aligned `ParallelGroup` you need to specify
which of the elements of the `SequentialGroup` is used to
determine the baseline. The element used to calculate the
baseline is specified using one of the `add` methods that
take a `boolean`. The last element added with a value of
`true` for `useAsBaseline` is used to calculate the
baseline.

Since:
:   1.6

See Also:
:   * [`GroupLayout.createSequentialGroup()`](GroupLayout.md#createSequentialGroup())

* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `GroupLayout.SequentialGroup`

  `addComponent(boolean useAsBaseline,
  Component component)`

  Adds a `Component` to this `Group`.

  `GroupLayout.SequentialGroup`

  `addComponent(boolean useAsBaseline,
  Component component,
  int min,
  int pref,
  int max)`

  Adds a `Component` to this `Group`
  with the specified size.

  `GroupLayout.SequentialGroup`

  `addComponent(Component component)`

  Adds a `Component` to this `Group`.

  `GroupLayout.SequentialGroup`

  `addComponent(Component component,
  int min,
  int pref,
  int max)`

  Adds a `Component` to this `Group`
  with the specified size.

  `GroupLayout.SequentialGroup`

  `addContainerGap()`

  Adds an element representing the preferred gap between an edge
  the container and components that touch the border of the
  container.

  `GroupLayout.SequentialGroup`

  `addContainerGap(int pref,
  int max)`

  Adds an element representing the preferred gap between one
  edge of the container and the next or previous `Component` with the specified size.

  `GroupLayout.SequentialGroup`

  `addGap(int size)`

  Adds a rigid gap to this `Group`.

  `GroupLayout.SequentialGroup`

  `addGap(int min,
  int pref,
  int max)`

  Adds a gap to this `Group` with the specified size.

  `GroupLayout.SequentialGroup`

  `addGroup(boolean useAsBaseline,
  GroupLayout.Group group)`

  Adds a `Group` to this `Group`.

  `GroupLayout.SequentialGroup`

  `addGroup(GroupLayout.Group group)`

  Adds a `Group` to this `Group`.

  `GroupLayout.SequentialGroup`

  `addPreferredGap(JComponent comp1,
  JComponent comp2,
  LayoutStyle.ComponentPlacement type)`

  Adds an element representing the preferred gap between two
  components.

  `GroupLayout.SequentialGroup`

  `addPreferredGap(JComponent comp1,
  JComponent comp2,
  LayoutStyle.ComponentPlacement type,
  int pref,
  int max)`

  Adds an element representing the preferred gap between two
  components.

  `GroupLayout.SequentialGroup`

  `addPreferredGap(LayoutStyle.ComponentPlacement type)`

  Adds an element representing the preferred gap between the
  nearest components.

  `GroupLayout.SequentialGroup`

  `addPreferredGap(LayoutStyle.ComponentPlacement type,
  int pref,
  int max)`

  Adds an element representing the preferred gap between the
  nearest components.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### addGroup

    public [GroupLayout.SequentialGroup](GroupLayout.SequentialGroup.md "class in javax.swing") addGroup([GroupLayout.Group](GroupLayout.Group.md "class in javax.swing") group)

    Adds a `Group` to this `Group`.

    Overrides:
    :   `addGroup` in class `GroupLayout.Group`

    Parameters:
    :   `group` - the `Group` to add

    Returns:
    :   this `Group`
  + ### addGroup

    public [GroupLayout.SequentialGroup](GroupLayout.SequentialGroup.md "class in javax.swing") addGroup(boolean useAsBaseline,
    [GroupLayout.Group](GroupLayout.Group.md "class in javax.swing") group)

    Adds a `Group` to this `Group`.

    Parameters:
    :   `useAsBaseline` - whether the specified `Group` should
        be used to calculate the baseline for this `Group`
    :   `group` - the `Group` to add

    Returns:
    :   this `Group`
  + ### addComponent

    public [GroupLayout.SequentialGroup](GroupLayout.SequentialGroup.md "class in javax.swing") addComponent([Component](../../java/awt/Component.md "class in java.awt") component)

    Adds a `Component` to this `Group`.

    Overrides:
    :   `addComponent` in class `GroupLayout.Group`

    Parameters:
    :   `component` - the `Component` to add

    Returns:
    :   this `Group`
  + ### addComponent

    public [GroupLayout.SequentialGroup](GroupLayout.SequentialGroup.md "class in javax.swing") addComponent(boolean useAsBaseline,
    [Component](../../java/awt/Component.md "class in java.awt") component)

    Adds a `Component` to this `Group`.

    Parameters:
    :   `useAsBaseline` - whether the specified `Component` should
        be used to calculate the baseline for this `Group`
    :   `component` - the `Component` to add

    Returns:
    :   this `Group`
  + ### addComponent

    public [GroupLayout.SequentialGroup](GroupLayout.SequentialGroup.md "class in javax.swing") addComponent([Component](../../java/awt/Component.md "class in java.awt") component,
    int min,
    int pref,
    int max)

    Adds a `Component` to this `Group`
    with the specified size.

    Overrides:
    :   `addComponent` in class `GroupLayout.Group`

    Parameters:
    :   `component` - the `Component` to add
    :   `min` - the minimum size or one of `DEFAULT_SIZE` or
        `PREFERRED_SIZE`
    :   `pref` - the preferred size or one of `DEFAULT_SIZE` or
        `PREFERRED_SIZE`
    :   `max` - the maximum size or one of `DEFAULT_SIZE` or
        `PREFERRED_SIZE`

    Returns:
    :   this `Group`
  + ### addComponent

    public [GroupLayout.SequentialGroup](GroupLayout.SequentialGroup.md "class in javax.swing") addComponent(boolean useAsBaseline,
    [Component](../../java/awt/Component.md "class in java.awt") component,
    int min,
    int pref,
    int max)

    Adds a `Component` to this `Group`
    with the specified size.

    Parameters:
    :   `useAsBaseline` - whether the specified `Component` should
        be used to calculate the baseline for this `Group`
    :   `component` - the `Component` to add
    :   `min` - the minimum size or one of `DEFAULT_SIZE` or
        `PREFERRED_SIZE`
    :   `pref` - the preferred size or one of `DEFAULT_SIZE` or
        `PREFERRED_SIZE`
    :   `max` - the maximum size or one of `DEFAULT_SIZE` or
        `PREFERRED_SIZE`

    Returns:
    :   this `Group`
  + ### addGap

    public [GroupLayout.SequentialGroup](GroupLayout.SequentialGroup.md "class in javax.swing") addGap(int size)

    Adds a rigid gap to this `Group`.

    Overrides:
    :   `addGap` in class `GroupLayout.Group`

    Parameters:
    :   `size` - the size of the gap

    Returns:
    :   this `Group`
  + ### addGap

    public [GroupLayout.SequentialGroup](GroupLayout.SequentialGroup.md "class in javax.swing") addGap(int min,
    int pref,
    int max)

    Adds a gap to this `Group` with the specified size.

    Overrides:
    :   `addGap` in class `GroupLayout.Group`

    Parameters:
    :   `min` - the minimum size of the gap
    :   `pref` - the preferred size of the gap
    :   `max` - the maximum size of the gap

    Returns:
    :   this `Group`
  + ### addPreferredGap

    public [GroupLayout.SequentialGroup](GroupLayout.SequentialGroup.md "class in javax.swing") addPreferredGap([JComponent](JComponent.md "class in javax.swing") comp1,
    [JComponent](JComponent.md "class in javax.swing") comp2,
    [LayoutStyle.ComponentPlacement](LayoutStyle.ComponentPlacement.md "enum class in javax.swing") type)

    Adds an element representing the preferred gap between two
    components. The element created to represent the gap is not
    resizable.

    Parameters:
    :   `comp1` - the first component
    :   `comp2` - the second component
    :   `type` - the type of gap; one of the constants defined by
        `LayoutStyle`

    Returns:
    :   this `SequentialGroup`

    Throws:
    :   `IllegalArgumentException` - if `type`, `comp1` or
        `comp2` is `null`

    See Also:
    :   - [`LayoutStyle`](LayoutStyle.md "class in javax.swing")
  + ### addPreferredGap

    public [GroupLayout.SequentialGroup](GroupLayout.SequentialGroup.md "class in javax.swing") addPreferredGap([JComponent](JComponent.md "class in javax.swing") comp1,
    [JComponent](JComponent.md "class in javax.swing") comp2,
    [LayoutStyle.ComponentPlacement](LayoutStyle.ComponentPlacement.md "enum class in javax.swing") type,
    int pref,
    int max)

    Adds an element representing the preferred gap between two
    components.

    Parameters:
    :   `comp1` - the first component
    :   `comp2` - the second component
    :   `type` - the type of gap
    :   `pref` - the preferred size of the gap; one of
        `DEFAULT_SIZE` or a value >= 0
    :   `max` - the maximum size of the gap; one of
        `DEFAULT_SIZE`, `PREFERRED_SIZE`
        or a value >= 0

    Returns:
    :   this `SequentialGroup`

    Throws:
    :   `IllegalArgumentException` - if `type`, `comp1` or
        `comp2` is `null`

    See Also:
    :   - [`LayoutStyle`](LayoutStyle.md "class in javax.swing")
  + ### addPreferredGap

    public [GroupLayout.SequentialGroup](GroupLayout.SequentialGroup.md "class in javax.swing") addPreferredGap([LayoutStyle.ComponentPlacement](LayoutStyle.ComponentPlacement.md "enum class in javax.swing") type)

    Adds an element representing the preferred gap between the
    nearest components. During layout, neighboring
    components are found, and the size of the added gap is set
    based on the preferred gap between the components. If no
    neighboring components are found the gap has a size of `0`.

    The element created to represent the gap is not
    resizable.

    Parameters:
    :   `type` - the type of gap; one of
        `LayoutStyle.ComponentPlacement.RELATED` or
        `LayoutStyle.ComponentPlacement.UNRELATED`

    Returns:
    :   this `SequentialGroup`

    Throws:
    :   `IllegalArgumentException` - if `type` is not one of
        `LayoutStyle.ComponentPlacement.RELATED` or
        `LayoutStyle.ComponentPlacement.UNRELATED`

    See Also:
    :   - [`LayoutStyle`](LayoutStyle.md "class in javax.swing")
  + ### addPreferredGap

    public [GroupLayout.SequentialGroup](GroupLayout.SequentialGroup.md "class in javax.swing") addPreferredGap([LayoutStyle.ComponentPlacement](LayoutStyle.ComponentPlacement.md "enum class in javax.swing") type,
    int pref,
    int max)

    Adds an element representing the preferred gap between the
    nearest components. During layout, neighboring
    components are found, and the minimum of this
    gap is set based on the size of the preferred gap between the
    neighboring components. If no neighboring components are found the
    minimum size is set to 0.

    Parameters:
    :   `type` - the type of gap; one of
        `LayoutStyle.ComponentPlacement.RELATED` or
        `LayoutStyle.ComponentPlacement.UNRELATED`
    :   `pref` - the preferred size of the gap; one of
        `DEFAULT_SIZE` or a value >= 0
    :   `max` - the maximum size of the gap; one of
        `DEFAULT_SIZE`, `PREFERRED_SIZE`
        or a value >= 0

    Returns:
    :   this `SequentialGroup`

    Throws:
    :   `IllegalArgumentException` - if `type` is not one of
        `LayoutStyle.ComponentPlacement.RELATED` or
        `LayoutStyle.ComponentPlacement.UNRELATED`

    See Also:
    :   - [`LayoutStyle`](LayoutStyle.md "class in javax.swing")
  + ### addContainerGap

    public [GroupLayout.SequentialGroup](GroupLayout.SequentialGroup.md "class in javax.swing") addContainerGap()

    Adds an element representing the preferred gap between an edge
    the container and components that touch the border of the
    container. This has no effect if the added gap does not
    touch an edge of the parent container.

    The element created to represent the gap is not
    resizable.

    Returns:
    :   this `SequentialGroup`
  + ### addContainerGap

    public [GroupLayout.SequentialGroup](GroupLayout.SequentialGroup.md "class in javax.swing") addContainerGap(int pref,
    int max)

    Adds an element representing the preferred gap between one
    edge of the container and the next or previous `Component` with the specified size. This has no
    effect if the next or previous element is not a `Component` and does not touch one edge of the parent
    container.

    Parameters:
    :   `pref` - the preferred size; one of `DEFAULT_SIZE` or a
        value >= 0
    :   `max` - the maximum size; one of `DEFAULT_SIZE`,
        `PREFERRED_SIZE` or a value >= 0

    Returns:
    :   this `SequentialGroup`