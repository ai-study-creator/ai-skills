Module [java.naming](../../module-summary.md)

Package [javax.naming](package-summary.md)

# Class LinkLoopException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.naming.NamingException](NamingException.md "class in javax.naming")

[javax.naming.LinkException](LinkException.md "class in javax.naming")

javax.naming.LinkLoopException

All Implemented Interfaces:
:   `Serializable`

---

public class LinkLoopException
extends [LinkException](LinkException.md "class in javax.naming")

This exception is thrown when
a loop was detected while attempting to resolve a link, or an implementation
specific limit on link counts has been reached.

Synchronization and serialization issues that apply to LinkException
apply directly here.

Since:
:   1.3

See Also:
:   * [`LinkRef`](LinkRef.md "class in javax.naming")
    * [Serialized Form](../../../serialized-form.md#javax.naming.LinkLoopException)

* ## Field Summary

  ### Fields inherited from class javax.naming.[LinkException](LinkException.md "class in javax.naming")

  `linkExplanation, linkRemainingName, linkResolvedName, linkResolvedObj`

  ### Fields inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `remainingName, resolvedName, resolvedObj, rootException`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `LinkLoopException()`

  Constructs a new instance of LinkLoopException.

  `LinkLoopException(String explanation)`

  Constructs a new instance of LinkLoopException with an explanation.
* ## Method Summary

  ### Methods inherited from class javax.naming.[LinkException](LinkException.md "class in javax.naming")

  `getLinkExplanation, getLinkRemainingName, getLinkResolvedName, getLinkResolvedObj, setLinkExplanation, setLinkRemainingName, setLinkResolvedName, setLinkResolvedObj, toString, toString`

  ### Methods inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `appendRemainingComponent, appendRemainingName, getCause, getExplanation, getRemainingName, getResolvedName, getResolvedObj, getRootCause, initCause, setRemainingName, setResolvedName, setResolvedObj, setRootCause`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### LinkLoopException

    public LinkLoopException([String](../../../java.base/java/lang/String.md "class in java.lang") explanation)

    Constructs a new instance of LinkLoopException with an explanation.
    All the other fields are initialized to null.

    Parameters:
    :   `explanation` - A possibly null string containing additional
        detail about this exception.

    See Also:
    :   - [`Throwable.getMessage()`](../../../java.base/java/lang/Throwable.md#getMessage())
  + ### LinkLoopException

    public LinkLoopException()

    Constructs a new instance of LinkLoopException.
    All the non-link-related and link-related fields are initialized to null.