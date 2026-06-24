Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class RowFilter.Entry<M,I>

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.RowFilter.Entry<M,I>

Type Parameters:
:   `M` - the type of the model; for example `PersonModel`
:   `I` - the type of the identifier; when using
    `TableRowSorter` this will be `Integer`

Enclosing class:
:   `RowFilter<M,I>`

---

public abstract static class RowFilter.Entry<M,I>
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

An `Entry` object is passed to instances of
`RowFilter`, allowing the filter to get the value of the
entry's data, and thus to determine whether the entry should be shown.
An `Entry` object contains information about the model
as well as methods for getting the underlying values from the model.

Since:
:   1.6

See Also:
:   * [`RowFilter`](RowFilter.md "class in javax.swing")
    * [`DefaultRowSorter.setRowFilter(javax.swing.RowFilter)`](DefaultRowSorter.md#setRowFilter(javax.swing.RowFilter))

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Entry()`

  Creates an `Entry`.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract I`

  `getIdentifier()`

  Returns the identifier (in the model) of the entry.

  `abstract M`

  `getModel()`

  Returns the underlying model.

  `String`

  `getStringValue(int index)`

  Returns the string value at the specified index.

  `abstract Object`

  `getValue(int index)`

  Returns the value at the specified index.

  `abstract int`

  `getValueCount()`

  Returns the number of values in the entry.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### Entry

    public Entry()

    Creates an `Entry`.
* ## Method Details

  + ### getModel

    public abstract [M](RowFilter.Entry.md "type parameter in RowFilter.Entry") getModel()

    Returns the underlying model.

    Returns:
    :   the model containing the data that this entry represents
  + ### getValueCount

    public abstract int getValueCount()

    Returns the number of values in the entry. For
    example, when used with a table this corresponds to the
    number of columns.

    Returns:
    :   number of values in the object being filtered
  + ### getValue

    public abstract [Object](../../../java.base/java/lang/Object.md "class in java.lang") getValue(int index)

    Returns the value at the specified index. This may return
    `null`. When used with a table, index
    corresponds to the column number in the model.

    Parameters:
    :   `index` - the index of the value to get

    Returns:
    :   value at the specified index

    Throws:
    :   `IndexOutOfBoundsException` - if index < 0 or
        >= getValueCount
  + ### getStringValue

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getStringValue(int index)

    Returns the string value at the specified index. If
    filtering is being done based on `String` values
    this method is preferred to that of `getValue`
    as `getValue(index).toString()` may return a
    different result than `getStringValue(index)`.

    This implementation calls `getValue(index).toString()`
    after checking for `null`. Subclasses that provide
    different string conversion should override this method if
    necessary.

    Parameters:
    :   `index` - the index of the value to get

    Returns:
    :   `non-null` string at the specified index

    Throws:
    :   `IndexOutOfBoundsException` - if index < 0 ||
        >= getValueCount
  + ### getIdentifier

    public abstract [I](RowFilter.Entry.md "type parameter in RowFilter.Entry") getIdentifier()

    Returns the identifier (in the model) of the entry.
    For a table this corresponds to the index of the row in the model,
    expressed as an `Integer`.

    Returns:
    :   a model-based (not view-based) identifier for
        this entry