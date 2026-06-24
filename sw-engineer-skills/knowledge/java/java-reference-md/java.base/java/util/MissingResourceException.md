Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class MissingResourceException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../lang/RuntimeException.md "class in java.lang")

java.util.MissingResourceException

All Implemented Interfaces:
:   `Serializable`

---

public class MissingResourceException
extends [RuntimeException](../lang/RuntimeException.md "class in java.lang")

Signals that a resource is missing.

Since:
:   1.1

See Also:
:   * [`Exception`](../lang/Exception.md "class in java.lang")
    * [`ResourceBundle`](ResourceBundle.md "class in java.util")
    * [Serialized Form](../../../serialized-form.md#java.util.MissingResourceException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MissingResourceException(String s,
  String className,
  String key)`

  Constructs a MissingResourceException with the specified information.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getClassName()`

  Gets parameter passed by constructor.

  `String`

  `getKey()`

  Gets parameter passed by constructor.

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### MissingResourceException

    public MissingResourceException([String](../lang/String.md "class in java.lang") s,
    [String](../lang/String.md "class in java.lang") className,
    [String](../lang/String.md "class in java.lang") key)

    Constructs a MissingResourceException with the specified information.
    A detail message is a String that describes this particular exception.

    Parameters:
    :   `s` - the detail message
    :   `className` - the name of the resource class
    :   `key` - the key for the missing resource.
* ## Method Details

  + ### getClassName

    public [String](../lang/String.md "class in java.lang") getClassName()

    Gets parameter passed by constructor.

    Returns:
    :   the name of the resource class
  + ### getKey

    public [String](../lang/String.md "class in java.lang") getKey()

    Gets parameter passed by constructor.

    Returns:
    :   the key for the missing resource