Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class DateFormatter

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.JFormattedTextField.AbstractFormatter](../JFormattedTextField.AbstractFormatter.md "class in javax.swing")

[javax.swing.text.DefaultFormatter](DefaultFormatter.md "class in javax.swing.text")

[javax.swing.text.InternationalFormatter](InternationalFormatter.md "class in javax.swing.text")

javax.swing.text.DateFormatter

All Implemented Interfaces:
:   `Serializable`, `Cloneable`

---

public class DateFormatter
extends [InternationalFormatter](InternationalFormatter.md "class in javax.swing.text")

DateFormatter is an `InternationalFormatter` that does its
formatting by way of an instance of `java.text.DateFormat`.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

Since:
:   1.4

See Also:
:   * [`DateFormat`](../../../../java.base/java/text/DateFormat.md "class in java.text")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DateFormatter()`

  This is shorthand for
  `new DateFormatter(DateFormat.getDateInstance())`.

  `DateFormatter(DateFormat format)`

  Returns a DateFormatter configured with the specified
  `Format` instance.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `setFormat(DateFormat format)`

  Sets the format that dictates the legal values that can be edited
  and displayed.

  ### Methods inherited from class javax.swing.text.[InternationalFormatter](InternationalFormatter.md "class in javax.swing.text")

  `clone, getActions, getFields, getFormat, getMaximum, getMinimum, install, setFormat, setMaximum, setMinimum, stringToValue, valueToString`

  ### Methods inherited from class javax.swing.text.[DefaultFormatter](DefaultFormatter.md "class in javax.swing.text")

  `getAllowsInvalid, getCommitsOnValidEdit, getDocumentFilter, getNavigationFilter, getOverwriteMode, getValueClass, setAllowsInvalid, setCommitsOnValidEdit, setOverwriteMode, setValueClass`

  ### Methods inherited from class javax.swing.[JFormattedTextField.AbstractFormatter](../JFormattedTextField.AbstractFormatter.md "class in javax.swing")

  `getFormattedTextField, invalidEdit, setEditValid, uninstall`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DateFormatter

    public DateFormatter()

    This is shorthand for
    `new DateFormatter(DateFormat.getDateInstance())`.
  + ### DateFormatter

    public DateFormatter([DateFormat](../../../../java.base/java/text/DateFormat.md "class in java.text") format)

    Returns a DateFormatter configured with the specified
    `Format` instance.

    Parameters:
    :   `format` - Format used to dictate legal values
* ## Method Details

  + ### setFormat

    public void setFormat([DateFormat](../../../../java.base/java/text/DateFormat.md "class in java.text") format)

    Sets the format that dictates the legal values that can be edited
    and displayed.

    If you have used the nullary constructor the value of this property
    will be determined for the current locale by way of the
    `Dateformat.getDateInstance()` method.

    Parameters:
    :   `format` - DateFormat instance used for converting from/to Strings