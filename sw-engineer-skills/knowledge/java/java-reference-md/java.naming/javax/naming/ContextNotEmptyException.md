Module [java.naming](../../module-summary.md)

Package [javax.naming](package-summary.md)

# Class ContextNotEmptyException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.naming.NamingException](NamingException.md "class in javax.naming")

javax.naming.ContextNotEmptyException

All Implemented Interfaces:
:   `Serializable`

---

public class ContextNotEmptyException
extends [NamingException](NamingException.md "class in javax.naming")

This exception is thrown when attempting to destroy a context that
is not empty.

If the program wants to handle this exception in particular, it
should catch ContextNotEmptyException explicitly before attempting to
catch NamingException. For example, after catching ContextNotEmptyException,
the program might try to remove the contents of the context before
reattempting the destroy.

Synchronization and serialization issues that apply to NamingException
apply directly here.

Since:
:   1.3

See Also:
:   * [`Context.destroySubcontext(javax.naming.Name)`](Context.md#destroySubcontext(javax.naming.Name))
    * [Serialized Form](../../../serialized-form.md#javax.naming.ContextNotEmptyException)

* ## Field Summary

  ### Fields inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `remainingName, resolvedName, resolvedObj, rootException`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ContextNotEmptyException()`

  Constructs a new instance of ContextNotEmptyException with
  all name resolution fields and explanation initialized to null.

  `ContextNotEmptyException(String explanation)`

  Constructs a new instance of ContextNotEmptyException using an
  explanation.
* ## Method Summary

  ### Methods inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `appendRemainingComponent, appendRemainingName, getCause, getExplanation, getRemainingName, getResolvedName, getResolvedObj, getRootCause, initCause, setRemainingName, setResolvedName, setResolvedObj, setRootCause, toString, toString`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ContextNotEmptyException

    public ContextNotEmptyException([String](../../../java.base/java/lang/String.md "class in java.lang") explanation)

    Constructs a new instance of ContextNotEmptyException using an
    explanation. All other fields default to null.

    Parameters:
    :   `explanation` - Possibly null string containing
        additional detail about this exception.

    See Also:
    :   - [`Throwable.getMessage()`](../../../java.base/java/lang/Throwable.md#getMessage())
  + ### ContextNotEmptyException

    public ContextNotEmptyException()

    Constructs a new instance of ContextNotEmptyException with
    all name resolution fields and explanation initialized to null.