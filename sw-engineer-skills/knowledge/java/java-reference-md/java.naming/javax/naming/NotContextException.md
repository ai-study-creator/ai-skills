Module [java.naming](../../module-summary.md)

Package [javax.naming](package-summary.md)

# Class NotContextException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.naming.NamingException](NamingException.md "class in javax.naming")

javax.naming.NotContextException

All Implemented Interfaces:
:   `Serializable`

---

public class NotContextException
extends [NamingException](NamingException.md "class in javax.naming")

This exception is thrown when a naming operation proceeds to a point
where a context is required to continue the operation, but the
resolved object is not a context. For example, Context.destroy() requires
that the named object be a context. If it is not, NotContextException
is thrown. Another example is a non-context being encountered during
the resolution phase of the Context methods.

It is also thrown when a particular subtype of context is required,
such as a DirContext, and the resolved object is a context but not of
the required subtype.

Synchronization and serialization issues that apply to NamingException
apply directly here.

Since:
:   1.3

See Also:
:   * [`Context.destroySubcontext(javax.naming.Name)`](Context.md#destroySubcontext(javax.naming.Name))
    * [Serialized Form](../../../serialized-form.md#javax.naming.NotContextException)

* ## Field Summary

  ### Fields inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `remainingName, resolvedName, resolvedObj, rootException`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NotContextException()`

  Constructs a new instance of NotContextException.

  `NotContextException(String explanation)`

  Constructs a new instance of NotContextException using an
  explanation.
* ## Method Summary

  ### Methods inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `appendRemainingComponent, appendRemainingName, getCause, getExplanation, getRemainingName, getResolvedName, getResolvedObj, getRootCause, initCause, setRemainingName, setResolvedName, setResolvedObj, setRootCause, toString, toString`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NotContextException

    public NotContextException([String](../../../java.base/java/lang/String.md "class in java.lang") explanation)

    Constructs a new instance of NotContextException using an
    explanation. All other fields default to null.

    Parameters:
    :   `explanation` - Possibly null additional detail about this exception.

    See Also:
    :   - [`Throwable.getMessage()`](../../../java.base/java/lang/Throwable.md#getMessage())
  + ### NotContextException

    public NotContextException()

    Constructs a new instance of NotContextException.
    All fields default to null.