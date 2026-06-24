Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JFormattedTextField.AbstractFormatterFactory

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.JFormattedTextField.AbstractFormatterFactory

Direct Known Subclasses:
:   `DefaultFormatterFactory`

Enclosing class:
:   `JFormattedTextField`

---

public abstract static class JFormattedTextField.AbstractFormatterFactory
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

Instances of `AbstractFormatterFactory` are used by
`JFormattedTextField` to obtain instances of
`AbstractFormatter` which in turn are used to format values.
`AbstractFormatterFactory` can return different
`AbstractFormatter`s based on the state of the
`JFormattedTextField`, perhaps returning different
`AbstractFormatter`s when the
`JFormattedTextField` has focus vs when it
doesn't have focus.

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AbstractFormatterFactory()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract JFormattedTextField.AbstractFormatter`

  `getFormatter(JFormattedTextField tf)`

  Returns an `AbstractFormatter` that can handle formatting
  of the passed in `JFormattedTextField`.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AbstractFormatterFactory

    protected AbstractFormatterFactory()

    Constructor for subclasses to call.
* ## Method Details

  + ### getFormatter

    public abstract [JFormattedTextField.AbstractFormatter](JFormattedTextField.AbstractFormatter.md "class in javax.swing") getFormatter([JFormattedTextField](JFormattedTextField.md "class in javax.swing") tf)

    Returns an `AbstractFormatter` that can handle formatting
    of the passed in `JFormattedTextField`.

    Parameters:
    :   `tf` - JFormattedTextField requesting AbstractFormatter

    Returns:
    :   AbstractFormatter to handle formatting duties, a null
        return value implies the JFormattedTextField should behave
        like a normal JTextField