Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class DefaultFormatterFactory

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.JFormattedTextField.AbstractFormatterFactory](../JFormattedTextField.AbstractFormatterFactory.md "class in javax.swing")

javax.swing.text.DefaultFormatterFactory

All Implemented Interfaces:
:   `Serializable`

---

public class DefaultFormatterFactory
extends [JFormattedTextField.AbstractFormatterFactory](../JFormattedTextField.AbstractFormatterFactory.md "class in javax.swing")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

An implementation of
`JFormattedTextField.AbstractFormatterFactory`.
`DefaultFormatterFactory` allows specifying a number of
different `JFormattedTextField.AbstractFormatter`s that are to
be used.
The most important one is the default one
(`setDefaultFormatter`). The default formatter will be used
if a more specific formatter could not be found. The following process
is used to determine the appropriate formatter to use.

1. Is the passed in value null? Use the null formatter.- Does the `JFormattedTextField` have focus? Use the edit
     formatter.- Otherwise, use the display formatter.- If a non-null `AbstractFormatter` has not been found, use
         the default formatter.

The following code shows how to configure a
`JFormattedTextField` with two
`JFormattedTextField.AbstractFormatter`s, one for display and
one for editing.

```
 JFormattedTextField.AbstractFormatter editFormatter = ...;
 JFormattedTextField.AbstractFormatter displayFormatter = ...;
 DefaultFormatterFactory factory = new DefaultFormatterFactory(
                 displayFormatter, displayFormatter, editFormatter);
 JFormattedTextField tf = new JFormattedTextField(factory);
```

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
:   * [`JFormattedTextField`](../JFormattedTextField.md "class in javax.swing")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DefaultFormatterFactory()`

  Constructs a `DefaultFormatterFactory`.

  `DefaultFormatterFactory(JFormattedTextField.AbstractFormatter defaultFormat)`

  Creates a `DefaultFormatterFactory` with the specified
  `JFormattedTextField.AbstractFormatter`.

  `DefaultFormatterFactory(JFormattedTextField.AbstractFormatter defaultFormat,
  JFormattedTextField.AbstractFormatter displayFormat)`

  Creates a `DefaultFormatterFactory` with the specified
  `JFormattedTextField.AbstractFormatter`s.

  `DefaultFormatterFactory(JFormattedTextField.AbstractFormatter defaultFormat,
  JFormattedTextField.AbstractFormatter displayFormat,
  JFormattedTextField.AbstractFormatter editFormat)`

  Creates a DefaultFormatterFactory with the specified
  JFormattedTextField.AbstractFormatters.

  `DefaultFormatterFactory(JFormattedTextField.AbstractFormatter defaultFormat,
  JFormattedTextField.AbstractFormatter displayFormat,
  JFormattedTextField.AbstractFormatter editFormat,
  JFormattedTextField.AbstractFormatter nullFormat)`

  Creates a DefaultFormatterFactory with the specified
  JFormattedTextField.AbstractFormatters.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `JFormattedTextField.AbstractFormatter`

  `getDefaultFormatter()`

  Returns the `JFormattedTextField.AbstractFormatter` to use
  as a last resort, eg in case a display, edit or null
  `JFormattedTextField.AbstractFormatter`
  has not been specified.

  `JFormattedTextField.AbstractFormatter`

  `getDisplayFormatter()`

  Returns the `JFormattedTextField.AbstractFormatter` to use
  if the `JFormattedTextField` is not being edited and either
  the value is not-null, or the value is null and a null formatter has
  has not been specified.

  `JFormattedTextField.AbstractFormatter`

  `getEditFormatter()`

  Returns the `JFormattedTextField.AbstractFormatter` to use
  if the `JFormattedTextField` is being edited and either
  the value is not-null, or the value is null and a null formatter has
  has not been specified.

  `JFormattedTextField.AbstractFormatter`

  `getFormatter(JFormattedTextField source)`

  Returns either the default formatter, display formatter, editor
  formatter or null formatter based on the state of the
  JFormattedTextField.

  `JFormattedTextField.AbstractFormatter`

  `getNullFormatter()`

  Returns the formatter to use if the value is null.

  `void`

  `setDefaultFormatter(JFormattedTextField.AbstractFormatter atf)`

  Sets the `JFormattedTextField.AbstractFormatter` to use as
  a last resort, eg in case a display, edit or null
  `JFormattedTextField.AbstractFormatter` has not been
  specified.

  `void`

  `setDisplayFormatter(JFormattedTextField.AbstractFormatter atf)`

  Sets the `JFormattedTextField.AbstractFormatter` to use if
  the `JFormattedTextField` is not being edited and either
  the value is not-null, or the value is null and a null formatter has
  has not been specified.

  `void`

  `setEditFormatter(JFormattedTextField.AbstractFormatter atf)`

  Sets the `JFormattedTextField.AbstractFormatter` to use if
  the `JFormattedTextField` is being edited and either
  the value is not-null, or the value is null and a null formatter has
  has not been specified.

  `void`

  `setNullFormatter(JFormattedTextField.AbstractFormatter atf)`

  Sets the formatter to use if the value of the JFormattedTextField is
  null.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DefaultFormatterFactory

    public DefaultFormatterFactory()

    Constructs a `DefaultFormatterFactory`.
  + ### DefaultFormatterFactory

    public DefaultFormatterFactory([JFormattedTextField.AbstractFormatter](../JFormattedTextField.AbstractFormatter.md "class in javax.swing") defaultFormat)

    Creates a `DefaultFormatterFactory` with the specified
    `JFormattedTextField.AbstractFormatter`.

    Parameters:
    :   `defaultFormat` - JFormattedTextField.AbstractFormatter to be used
        if a more specific
        JFormattedTextField.AbstractFormatter can not be
        found.
  + ### DefaultFormatterFactory

    public DefaultFormatterFactory([JFormattedTextField.AbstractFormatter](../JFormattedTextField.AbstractFormatter.md "class in javax.swing") defaultFormat,
    [JFormattedTextField.AbstractFormatter](../JFormattedTextField.AbstractFormatter.md "class in javax.swing") displayFormat)

    Creates a `DefaultFormatterFactory` with the specified
    `JFormattedTextField.AbstractFormatter`s.

    Parameters:
    :   `defaultFormat` - JFormattedTextField.AbstractFormatter to be used
        if a more specific
        JFormattedTextField.AbstractFormatter can not be
        found.
    :   `displayFormat` - JFormattedTextField.AbstractFormatter to be used
        when the JFormattedTextField does not have focus.
  + ### DefaultFormatterFactory

    public DefaultFormatterFactory([JFormattedTextField.AbstractFormatter](../JFormattedTextField.AbstractFormatter.md "class in javax.swing") defaultFormat,
    [JFormattedTextField.AbstractFormatter](../JFormattedTextField.AbstractFormatter.md "class in javax.swing") displayFormat,
    [JFormattedTextField.AbstractFormatter](../JFormattedTextField.AbstractFormatter.md "class in javax.swing") editFormat)

    Creates a DefaultFormatterFactory with the specified
    JFormattedTextField.AbstractFormatters.

    Parameters:
    :   `defaultFormat` - JFormattedTextField.AbstractFormatter to be used
        if a more specific
        JFormattedTextField.AbstractFormatter can not be
        found.
    :   `displayFormat` - JFormattedTextField.AbstractFormatter to be used
        when the JFormattedTextField does not have focus.
    :   `editFormat` - JFormattedTextField.AbstractFormatter to be used
        when the JFormattedTextField has focus.
  + ### DefaultFormatterFactory

    public DefaultFormatterFactory([JFormattedTextField.AbstractFormatter](../JFormattedTextField.AbstractFormatter.md "class in javax.swing") defaultFormat,
    [JFormattedTextField.AbstractFormatter](../JFormattedTextField.AbstractFormatter.md "class in javax.swing") displayFormat,
    [JFormattedTextField.AbstractFormatter](../JFormattedTextField.AbstractFormatter.md "class in javax.swing") editFormat,
    [JFormattedTextField.AbstractFormatter](../JFormattedTextField.AbstractFormatter.md "class in javax.swing") nullFormat)

    Creates a DefaultFormatterFactory with the specified
    JFormattedTextField.AbstractFormatters.

    Parameters:
    :   `defaultFormat` - JFormattedTextField.AbstractFormatter to be used
        if a more specific
        JFormattedTextField.AbstractFormatter can not be
        found.
    :   `displayFormat` - JFormattedTextField.AbstractFormatter to be used
        when the JFormattedTextField does not have focus.
    :   `editFormat` - JFormattedTextField.AbstractFormatter to be used
        when the JFormattedTextField has focus.
    :   `nullFormat` - JFormattedTextField.AbstractFormatter to be used
        when the JFormattedTextField has a null value.
* ## Method Details

  + ### setDefaultFormatter

    public void setDefaultFormatter([JFormattedTextField.AbstractFormatter](../JFormattedTextField.AbstractFormatter.md "class in javax.swing") atf)

    Sets the `JFormattedTextField.AbstractFormatter` to use as
    a last resort, eg in case a display, edit or null
    `JFormattedTextField.AbstractFormatter` has not been
    specified.

    Parameters:
    :   `atf` - JFormattedTextField.AbstractFormatter used if a more
        specific is not specified
  + ### getDefaultFormatter

    public [JFormattedTextField.AbstractFormatter](../JFormattedTextField.AbstractFormatter.md "class in javax.swing") getDefaultFormatter()

    Returns the `JFormattedTextField.AbstractFormatter` to use
    as a last resort, eg in case a display, edit or null
    `JFormattedTextField.AbstractFormatter`
    has not been specified.

    Returns:
    :   JFormattedTextField.AbstractFormatter used if a more specific
        one is not specified.
  + ### setDisplayFormatter

    public void setDisplayFormatter([JFormattedTextField.AbstractFormatter](../JFormattedTextField.AbstractFormatter.md "class in javax.swing") atf)

    Sets the `JFormattedTextField.AbstractFormatter` to use if
    the `JFormattedTextField` is not being edited and either
    the value is not-null, or the value is null and a null formatter has
    has not been specified.

    Parameters:
    :   `atf` - JFormattedTextField.AbstractFormatter to use when the
        JFormattedTextField does not have focus
  + ### getDisplayFormatter

    public [JFormattedTextField.AbstractFormatter](../JFormattedTextField.AbstractFormatter.md "class in javax.swing") getDisplayFormatter()

    Returns the `JFormattedTextField.AbstractFormatter` to use
    if the `JFormattedTextField` is not being edited and either
    the value is not-null, or the value is null and a null formatter has
    has not been specified.

    Returns:
    :   JFormattedTextField.AbstractFormatter to use when the
        JFormattedTextField does not have focus
  + ### setEditFormatter

    public void setEditFormatter([JFormattedTextField.AbstractFormatter](../JFormattedTextField.AbstractFormatter.md "class in javax.swing") atf)

    Sets the `JFormattedTextField.AbstractFormatter` to use if
    the `JFormattedTextField` is being edited and either
    the value is not-null, or the value is null and a null formatter has
    has not been specified.

    Parameters:
    :   `atf` - JFormattedTextField.AbstractFormatter to use when the
        component has focus
  + ### getEditFormatter

    public [JFormattedTextField.AbstractFormatter](../JFormattedTextField.AbstractFormatter.md "class in javax.swing") getEditFormatter()

    Returns the `JFormattedTextField.AbstractFormatter` to use
    if the `JFormattedTextField` is being edited and either
    the value is not-null, or the value is null and a null formatter has
    has not been specified.

    Returns:
    :   JFormattedTextField.AbstractFormatter to use when the
        component has focus
  + ### setNullFormatter

    public void setNullFormatter([JFormattedTextField.AbstractFormatter](../JFormattedTextField.AbstractFormatter.md "class in javax.swing") atf)

    Sets the formatter to use if the value of the JFormattedTextField is
    null.

    Parameters:
    :   `atf` - JFormattedTextField.AbstractFormatter to use when
        the value of the JFormattedTextField is null.
  + ### getNullFormatter

    public [JFormattedTextField.AbstractFormatter](../JFormattedTextField.AbstractFormatter.md "class in javax.swing") getNullFormatter()

    Returns the formatter to use if the value is null.

    Returns:
    :   JFormattedTextField.AbstractFormatter to use when the value is
        null
  + ### getFormatter

    public [JFormattedTextField.AbstractFormatter](../JFormattedTextField.AbstractFormatter.md "class in javax.swing") getFormatter([JFormattedTextField](../JFormattedTextField.md "class in javax.swing") source)

    Returns either the default formatter, display formatter, editor
    formatter or null formatter based on the state of the
    JFormattedTextField.

    Specified by:
    :   `getFormatter` in class `JFormattedTextField.AbstractFormatterFactory`

    Parameters:
    :   `source` - JFormattedTextField requesting
        JFormattedTextField.AbstractFormatter

    Returns:
    :   JFormattedTextField.AbstractFormatter to handle
        formatting duties.