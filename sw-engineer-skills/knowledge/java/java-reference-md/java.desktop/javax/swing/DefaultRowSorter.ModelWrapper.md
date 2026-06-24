Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class DefaultRowSorter.ModelWrapper<M,I>

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.DefaultRowSorter.ModelWrapper<M,I>

Type Parameters:
:   `M` - the type of the underlying model
:   `I` - the identifier supplied to the filter

Enclosing class:
:   `DefaultRowSorter<M,I>`

---

protected abstract static class DefaultRowSorter.ModelWrapper<M,I>
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

`DefaultRowSorter.ModelWrapper` is responsible for providing
the data that gets sorted by `DefaultRowSorter`. You
normally do not interact directly with `ModelWrapper`.
Subclasses of `DefaultRowSorter` provide an
implementation of `ModelWrapper` wrapping another model.
For example,
`TableRowSorter` provides a `ModelWrapper` that
wraps a `TableModel`.

`ModelWrapper` makes a distinction between values as
`Object`s and `String`s. This allows
implementations to provide a custom string
converter to be used instead of invoking `toString` on the
object.

Since:
:   1.6

See Also:
:   * [`RowFilter`](RowFilter.md "class in javax.swing")
    * [`RowFilter.Entry`](RowFilter.Entry.md "class in javax.swing")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ModelWrapper()`

  Creates a new `ModelWrapper`.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract int`

  `getColumnCount()`

  Returns the number of columns in the model.

  `abstract I`

  `getIdentifier(int row)`

  Returns the identifier for the specified row.

  `abstract M`

  `getModel()`

  Returns the underlying model that this `Model` is
  wrapping.

  `abstract int`

  `getRowCount()`

  Returns the number of rows in the model.

  `String`

  `getStringValueAt(int row,
  int column)`

  Returns the value as a `String` at the specified
  index.

  `abstract Object`

  `getValueAt(int row,
  int column)`

  Returns the value at the specified index.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ModelWrapper

    protected ModelWrapper()

    Creates a new `ModelWrapper`.
* ## Method Details

  + ### getModel

    public abstract [M](DefaultRowSorter.ModelWrapper.md "type parameter in DefaultRowSorter.ModelWrapper") getModel()

    Returns the underlying model that this `Model` is
    wrapping.

    Returns:
    :   the underlying model
  + ### getColumnCount

    public abstract int getColumnCount()

    Returns the number of columns in the model.

    Returns:
    :   the number of columns in the model
  + ### getRowCount

    public abstract int getRowCount()

    Returns the number of rows in the model.

    Returns:
    :   the number of rows in the model
  + ### getValueAt

    public abstract [Object](../../../java.base/java/lang/Object.md "class in java.lang") getValueAt(int row,
    int column)

    Returns the value at the specified index.

    Parameters:
    :   `row` - the row index
    :   `column` - the column index

    Returns:
    :   the value at the specified index

    Throws:
    :   `IndexOutOfBoundsException` - if the indices are outside
        the range of the model
  + ### getStringValueAt

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getStringValueAt(int row,
    int column)

    Returns the value as a `String` at the specified
    index. This implementation uses `toString` on
    the result from `getValueAt` (making sure
    to return an empty string for null values). Subclasses that
    override this method should never return null.

    Parameters:
    :   `row` - the row index
    :   `column` - the column index

    Returns:
    :   the value at the specified index as a `String`

    Throws:
    :   `IndexOutOfBoundsException` - if the indices are outside
        the range of the model
  + ### getIdentifier

    public abstract [I](DefaultRowSorter.ModelWrapper.md "type parameter in DefaultRowSorter.ModelWrapper") getIdentifier(int row)

    Returns the identifier for the specified row. The return value
    of this is used as the identifier for the
    `RowFilter.Entry` that is passed to the
    `RowFilter`.

    Parameters:
    :   `row` - the row to return the identifier for, in terms of
        the underlying model

    Returns:
    :   the identifier

    See Also:
    :   - [`RowFilter.Entry.getIdentifier()`](RowFilter.Entry.md#getIdentifier())