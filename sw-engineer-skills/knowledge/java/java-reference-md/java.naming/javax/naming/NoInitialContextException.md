Module [java.naming](../../module-summary.md)

Package [javax.naming](package-summary.md)

# Class NoInitialContextException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.naming.NamingException](NamingException.md "class in javax.naming")

javax.naming.NoInitialContextException

All Implemented Interfaces:
:   `Serializable`

---

public class NoInitialContextException
extends [NamingException](NamingException.md "class in javax.naming")

This exception is thrown when no initial context implementation
can be created. The policy of how an initial context implementation
is selected is described in the documentation of the InitialContext class.

This exception can be thrown during any interaction with the
InitialContext, not only when the InitialContext is constructed.
For example, the implementation of the initial context might lazily
retrieve the context only when actual methods are invoked on it.
The application should not have any dependency on when the existence
of an initial context is determined.

Synchronization and serialization issues that apply to NamingException
apply directly here.

Since:
:   1.3

See Also:
:   * [`InitialContext`](InitialContext.md "class in javax.naming")
    * [`InitialDirContext`](directory/InitialDirContext.md "class in javax.naming.directory")
    * [`NamingManager.getInitialContext(java.util.Hashtable<?, ?>)`](spi/NamingManager.md#getInitialContext(java.util.Hashtable))
    * [`NamingManager.setInitialContextFactoryBuilder(javax.naming.spi.InitialContextFactoryBuilder)`](spi/NamingManager.md#setInitialContextFactoryBuilder(javax.naming.spi.InitialContextFactoryBuilder))
    * [Serialized Form](../../../serialized-form.md#javax.naming.NoInitialContextException)

* ## Field Summary

  ### Fields inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `remainingName, resolvedName, resolvedObj, rootException`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NoInitialContextException()`

  Constructs an instance of NoInitialContextException.

  `NoInitialContextException(String explanation)`

  Constructs an instance of NoInitialContextException with an
  explanation.
* ## Method Summary

  ### Methods inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `appendRemainingComponent, appendRemainingName, getCause, getExplanation, getRemainingName, getResolvedName, getResolvedObj, getRootCause, initCause, setRemainingName, setResolvedName, setResolvedObj, setRootCause, toString, toString`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NoInitialContextException

    public NoInitialContextException()

    Constructs an instance of NoInitialContextException.
    All fields are initialized to null.
  + ### NoInitialContextException

    public NoInitialContextException([String](../../../java.base/java/lang/String.md "class in java.lang") explanation)

    Constructs an instance of NoInitialContextException with an
    explanation. All other fields are initialized to null.

    Parameters:
    :   `explanation` - Possibly null additional detail about this exception.

    See Also:
    :   - [`Throwable.getMessage()`](../../../java.base/java/lang/Throwable.md#getMessage())