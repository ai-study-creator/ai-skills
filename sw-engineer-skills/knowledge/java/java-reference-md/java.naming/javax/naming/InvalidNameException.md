Module [java.naming](../../module-summary.md)

Package [javax.naming](package-summary.md)

# Class InvalidNameException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.naming.NamingException](NamingException.md "class in javax.naming")

javax.naming.InvalidNameException

All Implemented Interfaces:
:   `Serializable`

---

public class InvalidNameException
extends [NamingException](NamingException.md "class in javax.naming")

This exception indicates that the name being specified does
not conform to the naming syntax of a naming system.
This exception is thrown by any of the methods that does name
parsing (such as those in Context, DirContext, CompositeName and CompoundName).

Synchronization and serialization issues that apply to NamingException
apply directly here.

Since:
:   1.3

See Also:
:   * [`Context`](Context.md "interface in javax.naming")
    * [`DirContext`](directory/DirContext.md "interface in javax.naming.directory")
    * [`CompositeName`](CompositeName.md "class in javax.naming")
    * [`CompoundName`](CompoundName.md "class in javax.naming")
    * [`NameParser`](NameParser.md "interface in javax.naming")
    * [Serialized Form](../../../serialized-form.md#javax.naming.InvalidNameException)

* ## Field Summary

  ### Fields inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `remainingName, resolvedName, resolvedObj, rootException`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InvalidNameException()`

  Constructs an instance of InvalidNameException with
  all fields set to null.

  `InvalidNameException(String explanation)`

  Constructs an instance of InvalidNameException using an
  explanation of the problem.
* ## Method Summary

  ### Methods inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `appendRemainingComponent, appendRemainingName, getCause, getExplanation, getRemainingName, getResolvedName, getResolvedObj, getRootCause, initCause, setRemainingName, setResolvedName, setResolvedObj, setRootCause, toString, toString`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InvalidNameException

    public InvalidNameException([String](../../../java.base/java/lang/String.md "class in java.lang") explanation)

    Constructs an instance of InvalidNameException using an
    explanation of the problem.
    All other fields are initialized to null.

    Parameters:
    :   `explanation` - A possibly null message explaining the problem.

    See Also:
    :   - [`Throwable.getMessage()`](../../../java.base/java/lang/Throwable.md#getMessage())
  + ### InvalidNameException

    public InvalidNameException()

    Constructs an instance of InvalidNameException with
    all fields set to null.