Module [java.naming](../../module-summary.md)

Package [javax.naming](package-summary.md)

# Class ReferralException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.naming.NamingException](NamingException.md "class in javax.naming")

javax.naming.ReferralException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `LdapReferralException`

---

public abstract class ReferralException
extends [NamingException](NamingException.md "class in javax.naming")

This abstract class is used to represent a referral exception,
which is generated in response to a *referral*
such as that returned by LDAP v3 servers.

A service provider provides
a subclass of `ReferralException` by providing implementations
for `getReferralInfo()` and `getReferralContext()` (and appropriate
constructors and/or corresponding "set" methods).

The following code sample shows how `ReferralException` can be used.
> ```
>       while (true) {
>           try {
>               bindings = ctx.listBindings(name);
>               while (bindings.hasMore()) {
>                   b = bindings.next();
>                   ...
>               }
>               break;
>           } catch (ReferralException e) {
>               ctx = e.getReferralContext();
>           }
>       }
> ```

`ReferralException` is an abstract class. Concrete implementations
determine its synchronization and serialization properties.

An environment parameter passed to the `getReferralContext()`
method is owned by the caller.
The service provider will not modify the object or keep a reference to it,
but may keep a reference to a clone of it.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.naming.ReferralException)

* ## Field Summary

  ### Fields inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `remainingName, resolvedName, resolvedObj, rootException`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ReferralException()`

  Constructs a new instance of ReferralException.

  `protected`

  `ReferralException(String explanation)`

  Constructs a new instance of ReferralException using the
  explanation supplied.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract Context`

  `getReferralContext()`

  Retrieves the context at which to continue the method.

  `abstract Context`

  `getReferralContext(Hashtable<?,?> env)`

  Retrieves the context at which to continue the method using
  environment properties.

  `abstract Object`

  `getReferralInfo()`

  Retrieves information (such as URLs) related to this referral.

  `abstract void`

  `retryReferral()`

  Retries the referral currently being processed.

  `abstract boolean`

  `skipReferral()`

  Discards the referral about to be processed.

  ### Methods inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `appendRemainingComponent, appendRemainingName, getCause, getExplanation, getRemainingName, getResolvedName, getResolvedObj, getRootCause, initCause, setRemainingName, setResolvedName, setResolvedObj, setRootCause, toString, toString`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ReferralException

    protected ReferralException([String](../../../java.base/java/lang/String.md "class in java.lang") explanation)

    Constructs a new instance of ReferralException using the
    explanation supplied. All other fields are set to null.

    Parameters:
    :   `explanation` - Additional detail about this exception. Can be null.

    See Also:
    :   - [`Throwable.getMessage()`](../../../java.base/java/lang/Throwable.md#getMessage())
  + ### ReferralException

    protected ReferralException()

    Constructs a new instance of ReferralException.
    All fields are set to null.
* ## Method Details

  + ### getReferralInfo

    public abstract [Object](../../../java.base/java/lang/Object.md "class in java.lang") getReferralInfo()

    Retrieves information (such as URLs) related to this referral.
    The program may examine or display this information
    to the user to determine whether to continue with the referral,
    or to determine additional information needs to be supplied in order
    to continue with the referral.

    Returns:
    :   Non-null referral information related to this referral.
  + ### getReferralContext

    public abstract [Context](Context.md "interface in javax.naming") getReferralContext()
    throws [NamingException](NamingException.md "class in javax.naming")

    Retrieves the context at which to continue the method.
    Regardless of whether a referral is encountered directly during a
    context operation, or indirectly, for example, during a search
    enumeration, the referral exception should provide a context
    at which to continue the operation. The referral context is
    created using the environment properties of the context
    that threw the ReferralException.

    To continue the operation, the client program should re-invoke
    the method using the same arguments as the original invocation.

    Returns:
    :   The non-null context at which to continue the method.

    Throws:
    :   `NamingException` - If a naming exception was encountered.
        Call either `retryReferral()` or `skipReferral()`
        to continue processing referrals.
  + ### getReferralContext

    public abstract [Context](Context.md "interface in javax.naming") getReferralContext([Hashtable](../../../java.base/java/util/Hashtable.md "class in java.util")<?,?> env)
    throws [NamingException](NamingException.md "class in javax.naming")

    Retrieves the context at which to continue the method using
    environment properties.
    Regardless of whether a referral is encountered directly during a
    context operation, or indirectly, for example, during a search
    enumeration, the referral exception should provide a context
    at which to continue the operation.

    The referral context is created using `env` as its environment
    properties.
    This method should be used instead of the no-arg overloaded form
    when the caller needs to use different environment properties for
    the referral context. It might need to do this, for example, when
    it needs to supply different authentication information to the referred
    server in order to create the referral context.

    To continue the operation, the client program should re-invoke
    the method using the same arguments as the original invocation.

    Parameters:
    :   `env` - The possibly null environment to use when retrieving the
        referral context. If null, no environment properties will be used.

    Returns:
    :   The non-null context at which to continue the method.

    Throws:
    :   `NamingException` - If a naming exception was encountered.
        Call either `retryReferral()` or `skipReferral()`
        to continue processing referrals.
  + ### skipReferral

    public abstract boolean skipReferral()

    Discards the referral about to be processed.
    A call to this method should be followed by a call to
    `getReferralContext` to allow the processing of
    other referrals to continue.
    The following code fragment shows a typical usage pattern.
    > ```
    >   } catch (ReferralException e) {
    >       if (!shallIFollow(e.getReferralInfo())) {
    >           if (!e.skipReferral()) {
    >               return;
    >           }
    >       }
    >       ctx = e.getReferralContext();
    >   }
    > ```

    Returns:
    :   true If more referral processing is pending; false otherwise.
  + ### retryReferral

    public abstract void retryReferral()

    Retries the referral currently being processed.
    A call to this method should be followed by a call to
    `getReferralContext` to allow the current
    referral to be retried.
    The following code fragment shows a typical usage pattern.
    > ```
    >   } catch (ReferralException e) {
    >       while (true) {
    >           try {
    >               ctx = e.getReferralContext(env);
    >               break;
    >           } catch (NamingException ne) {
    >               if (! shallIRetry()) {
    >                   return;
    >               }
    >               // modify environment properties (env), if necessary
    >               e.retryReferral();
    >           }
    >       }
    >   }
    > ```