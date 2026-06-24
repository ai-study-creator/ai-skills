Module [java.desktop](../../../module-summary.md)

Package [javax.swing.table](package-summary.md)

# Class TableStringConverter

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.table.TableStringConverter

---

public abstract class TableStringConverter
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

TableStringConverter is used to convert objects from the model into
strings. This is useful in filtering and searching when the model returns
objects that do not have meaningful `toString` implementations.

Since:
:   1.6

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `TableStringConverter()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract String`

  `toString(TableModel model,
  int row,
  int column)`

  Returns the string representation of the value at the specified
  location.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### TableStringConverter

    protected TableStringConverter()

    Constructor for subclasses to call.
* ## Method Details

  + ### toString

    public abstract [String](../../../../java.base/java/lang/String.md "class in java.lang") toString([TableModel](TableModel.md "interface in javax.swing.table") model,
    int row,
    int column)

    Returns the string representation of the value at the specified
    location.

    Parameters:
    :   `model` - the `TableModel` to fetch the value from
    :   `row` - the row the string is being requested for
    :   `column` - the column the string is being requested for

    Returns:
    :   the string representation. This should never return null.

    Throws:
    :   `NullPointerException` - if `model` is null
    :   `IndexOutOfBoundsException` - if the arguments are outside the
        bounds of the model