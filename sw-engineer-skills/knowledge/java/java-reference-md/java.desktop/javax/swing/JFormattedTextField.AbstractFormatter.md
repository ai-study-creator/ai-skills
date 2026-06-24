Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JFormattedTextField.AbstractFormatter

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.JFormattedTextField.AbstractFormatter

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `DefaultFormatter`

Enclosing class:
:   `JFormattedTextField`

---

public abstract static class JFormattedTextField.AbstractFormatter
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

Instances of `AbstractFormatter` are used by
`JFormattedTextField` to handle the conversion both
from an Object to a String, and back from a String to an Object.
`AbstractFormatter`s can also enforce editing policies,
or navigation policies, or manipulate the
`JFormattedTextField` in any way it sees fit to
enforce the desired policy.

An `AbstractFormatter` can only be active in
one `JFormattedTextField` at a time.
`JFormattedTextField` invokes
`install` when it is ready to use it followed
by `uninstall` when done. Subclasses
that wish to install additional state should override
`install` and message super appropriately.

Subclasses must override the conversion methods
`stringToValue` and `valueToString`. Optionally
they can override `getActions`,
`getNavigationFilter` and `getDocumentFilter`
to restrict the `JFormattedTextField` in a particular
way.

Subclasses that allow the `JFormattedTextField` to be in
a temporarily invalid state should invoke `setEditValid`
at the appropriate times.

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AbstractFormatter()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected Object`

  `clone()`

  Clones the `AbstractFormatter`.

  `protected Action[]`

  `getActions()`

  Subclass and override if you wish to provide a custom set of
  `Action`s.

  `protected DocumentFilter`

  `getDocumentFilter()`

  Subclass and override if you wish to provide a
  `DocumentFilter` to restrict what can be input.

  `protected JFormattedTextField`

  `getFormattedTextField()`

  Returns the current `JFormattedTextField` the
  `AbstractFormatter` is installed on.

  `protected NavigationFilter`

  `getNavigationFilter()`

  Subclass and override if you wish to provide a filter to restrict
  where the user can navigate to.

  `void`

  `install(JFormattedTextField ftf)`

  Installs the `AbstractFormatter` onto a particular
  `JFormattedTextField`.

  `protected void`

  `invalidEdit()`

  This should be invoked when the user types an invalid character.

  `protected void`

  `setEditValid(boolean valid)`

  Invoke this to update the `editValid` property of the
  `JFormattedTextField`.

  `abstract Object`

  `stringToValue(String text)`

  Parses `text` returning an arbitrary Object.

  `void`

  `uninstall()`

  Uninstalls any state the `AbstractFormatter` may have
  installed on the `JFormattedTextField`.

  `abstract String`

  `valueToString(Object value)`

  Returns the string value to display for `value`.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AbstractFormatter

    protected AbstractFormatter()

    Constructor for subclasses to call.
* ## Method Details

  + ### install

    public void install([JFormattedTextField](JFormattedTextField.md "class in javax.swing") ftf)

    Installs the `AbstractFormatter` onto a particular
    `JFormattedTextField`.
    This will invoke `valueToString` to convert the
    current value from the `JFormattedTextField` to
    a String. This will then install the `Action`s from
    `getActions`, the `DocumentFilter`
    returned from `getDocumentFilter` and the
    `NavigationFilter` returned from
    `getNavigationFilter` onto the
    `JFormattedTextField`.

    Subclasses will typically only need to override this if they
    wish to install additional listeners on the
    `JFormattedTextField`.

    If there is a `ParseException` in converting the
    current value to a String, this will set the text to an empty
    String, and mark the `JFormattedTextField` as being
    in an invalid state.

    While this is a public method, this is typically only useful
    for subclassers of `JFormattedTextField`.
    `JFormattedTextField` will invoke this method at
    the appropriate times when the value changes, or its internal
    state changes. You will only need to invoke this yourself if
    you are subclassing `JFormattedTextField` and
    installing/uninstalling `AbstractFormatter` at a
    different time than `JFormattedTextField` does.

    Parameters:
    :   `ftf` - JFormattedTextField to format for, may be null indicating
        uninstall from current JFormattedTextField.
  + ### uninstall

    public void uninstall()

    Uninstalls any state the `AbstractFormatter` may have
    installed on the `JFormattedTextField`. This resets the
    `DocumentFilter`, `NavigationFilter`
    and additional `Action`s installed on the
    `JFormattedTextField`.
  + ### stringToValue

    public abstract [Object](../../../java.base/java/lang/Object.md "class in java.lang") stringToValue([String](../../../java.base/java/lang/String.md "class in java.lang") text)
    throws [ParseException](../../../java.base/java/text/ParseException.md "class in java.text")

    Parses `text` returning an arbitrary Object. Some
    formatters may return null.

    Parameters:
    :   `text` - String to convert

    Returns:
    :   Object representation of text

    Throws:
    :   `ParseException` - if there is an error in the conversion
  + ### valueToString

    public abstract [String](../../../java.base/java/lang/String.md "class in java.lang") valueToString([Object](../../../java.base/java/lang/Object.md "class in java.lang") value)
    throws [ParseException](../../../java.base/java/text/ParseException.md "class in java.text")

    Returns the string value to display for `value`.

    Parameters:
    :   `value` - Value to convert

    Returns:
    :   String representation of value

    Throws:
    :   `ParseException` - if there is an error in the conversion
  + ### getFormattedTextField

    protected [JFormattedTextField](JFormattedTextField.md "class in javax.swing") getFormattedTextField()

    Returns the current `JFormattedTextField` the
    `AbstractFormatter` is installed on.

    Returns:
    :   JFormattedTextField formatting for.
  + ### invalidEdit

    protected void invalidEdit()

    This should be invoked when the user types an invalid character.
    This forwards the call to the current JFormattedTextField.
  + ### setEditValid

    protected void setEditValid(boolean valid)

    Invoke this to update the `editValid` property of the
    `JFormattedTextField`. If you an enforce a policy
    such that the `JFormattedTextField` is always in a
    valid state, you will never need to invoke this.

    Parameters:
    :   `valid` - Valid state of the JFormattedTextField
  + ### getActions

    protected [Action](Action.md "interface in javax.swing")[] getActions()

    Subclass and override if you wish to provide a custom set of
    `Action`s. `install` will install these
    on the `JFormattedTextField`'s `ActionMap`.

    Returns:
    :   Array of Actions to install on JFormattedTextField
  + ### getDocumentFilter

    protected [DocumentFilter](text/DocumentFilter.md "class in javax.swing.text") getDocumentFilter()

    Subclass and override if you wish to provide a
    `DocumentFilter` to restrict what can be input.
    `install` will install the returned value onto
    the `JFormattedTextField`.

    Returns:
    :   DocumentFilter to restrict edits
  + ### getNavigationFilter

    protected [NavigationFilter](text/NavigationFilter.md "class in javax.swing.text") getNavigationFilter()

    Subclass and override if you wish to provide a filter to restrict
    where the user can navigate to.
    `install` will install the returned value onto
    the `JFormattedTextField`.

    Returns:
    :   NavigationFilter to restrict navigation
  + ### clone

    protected [Object](../../../java.base/java/lang/Object.md "class in java.lang") clone()
    throws [CloneNotSupportedException](../../../java.base/java/lang/CloneNotSupportedException.md "class in java.lang")

    Clones the `AbstractFormatter`. The returned instance
    is not associated with a `JFormattedTextField`.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   Copy of the AbstractFormatter

    Throws:
    :   `CloneNotSupportedException` - if the object's class does not
        support the `Cloneable` interface. Subclasses
        that override the `clone` method can also
        throw this exception to indicate that an instance cannot
        be cloned.

    See Also:
    :   - [`Cloneable`](../../../java.base/java/lang/Cloneable.md "interface in java.lang")