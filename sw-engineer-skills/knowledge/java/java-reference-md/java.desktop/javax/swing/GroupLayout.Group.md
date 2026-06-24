Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class GroupLayout.Group

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.GroupLayout.Group

Direct Known Subclasses:
:   `GroupLayout.ParallelGroup`, `GroupLayout.SequentialGroup`

Enclosing class:
:   `GroupLayout`

---

public abstract sealed class GroupLayout.Group
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
permits [GroupLayout.ParallelGroup](GroupLayout.ParallelGroup.md "class in javax.swing"), [GroupLayout.SequentialGroup](GroupLayout.SequentialGroup.md "class in javax.swing")

`Group` provides the basis for the two types of
operations supported by `GroupLayout`: laying out
components one after another ([`SequentialGroup`](GroupLayout.SequentialGroup.md "class in javax.swing"))
or aligned ([`ParallelGroup`](GroupLayout.ParallelGroup.md "class in javax.swing")). `Group` and
its subclasses have no public constructor; to create one use
one of `createSequentialGroup` or
`createParallelGroup`. Additionally, taking a `Group`
created from one `GroupLayout` and using it with another
will produce undefined results.

Various methods in `Group` and its subclasses allow you
to explicitly specify the range. The arguments to these methods
can take two forms, either a value greater than or equal to 0,
or one of `DEFAULT_SIZE` or `PREFERRED_SIZE`. A
value greater than or equal to `0` indicates a specific
size. `DEFAULT_SIZE` indicates the corresponding size
from the component should be used. For example, if `DEFAULT_SIZE` is passed as the minimum size argument, the
minimum size is obtained from invoking `getMinimumSize`
on the component. Likewise, `PREFERRED_SIZE` indicates
the value from `getPreferredSize` should be used.
The following example adds `myComponent` to `group`
with specific values for the range. That is, the minimum is
explicitly specified as 100, preferred as 200, and maximum as
300.

```
   group.addComponent(myComponent, 100, 200, 300);
```

The following example adds `myComponent` to `group` using
a combination of the forms. The minimum size is forced to be the
same as the preferred size, the preferred size is determined by
using `myComponent.getPreferredSize` and the maximum is
determined by invoking `getMaximumSize` on the component.

```
   group.addComponent(myComponent, GroupLayout.PREFERRED_SIZE,
             GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE);
```

Unless otherwise specified all the methods of `Group` and
its subclasses that allow you to specify a range throw an
`IllegalArgumentException` if passed an invalid range. An
invalid range is one in which any of the values are < 0 and
not one of `PREFERRED_SIZE` or `DEFAULT_SIZE`, or
the following is not met (for specific values): `min`
<= `pref` <= `max`.

Similarly any methods that take a `Component` throw a
`IllegalArgumentException` if passed `null` and any methods
that take a `Group` throw an `NullPointerException` if
passed `null`.

Since:
:   1.6

See Also:
:   * [`GroupLayout.createSequentialGroup()`](GroupLayout.md#createSequentialGroup())
    * [`GroupLayout.createParallelGroup()`](GroupLayout.md#createParallelGroup())

* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `GroupLayout.Group`

  `addComponent(Component component)`

  Adds a `Component` to this `Group`.

  `GroupLayout.Group`

  `addComponent(Component component,
  int min,
  int pref,
  int max)`

  Adds a `Component` to this `Group`
  with the specified size.

  `GroupLayout.Group`

  `addGap(int size)`

  Adds a rigid gap to this `Group`.

  `GroupLayout.Group`

  `addGap(int min,
  int pref,
  int max)`

  Adds a gap to this `Group` with the specified size.

  `GroupLayout.Group`

  `addGroup(GroupLayout.Group group)`

  Adds a `Group` to this `Group`.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### addGroup

    public [GroupLayout.Group](GroupLayout.Group.md "class in javax.swing") addGroup([GroupLayout.Group](GroupLayout.Group.md "class in javax.swing") group)

    Adds a `Group` to this `Group`.

    Parameters:
    :   `group` - the `Group` to add

    Returns:
    :   this `Group`
  + ### addComponent

    public [GroupLayout.Group](GroupLayout.Group.md "class in javax.swing") addComponent([Component](../../java/awt/Component.md "class in java.awt") component)

    Adds a `Component` to this `Group`.

    Parameters:
    :   `component` - the `Component` to add

    Returns:
    :   this `Group`
  + ### addComponent

    public [GroupLayout.Group](GroupLayout.Group.md "class in javax.swing") addComponent([Component](../../java/awt/Component.md "class in java.awt") component,
    int min,
    int pref,
    int max)

    Adds a `Component` to this `Group`
    with the specified size.

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
  + ### addGap

    public [GroupLayout.Group](GroupLayout.Group.md "class in javax.swing") addGap(int size)

    Adds a rigid gap to this `Group`.

    Parameters:
    :   `size` - the size of the gap

    Returns:
    :   this `Group`

    Throws:
    :   `IllegalArgumentException` - if `size` is less than
        `0`
  + ### addGap

    public [GroupLayout.Group](GroupLayout.Group.md "class in javax.swing") addGap(int min,
    int pref,
    int max)

    Adds a gap to this `Group` with the specified size.

    Parameters:
    :   `min` - the minimum size of the gap
    :   `pref` - the preferred size of the gap
    :   `max` - the maximum size of the gap

    Returns:
    :   this `Group`

    Throws:
    :   `IllegalArgumentException` - if any of the values are
        less than `0`