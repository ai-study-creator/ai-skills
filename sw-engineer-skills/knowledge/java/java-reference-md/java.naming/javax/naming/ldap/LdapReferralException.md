Module [java.naming](../../../module-summary.md)

Package [javax.naming.ldap](package-summary.md)

# Class LdapReferralException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.naming.NamingException](../NamingException.md "class in javax.naming")

[javax.naming.ReferralException](../ReferralException.md "class in javax.naming")

javax.naming.ldap.LdapReferralException

All Implemented Interfaces:
:   `Serializable`

---

public abstract class LdapReferralException
extends [ReferralException](../ReferralException.md "class in javax.naming")

This abstract class is used to represent an LDAP referral exception.
It extends the base `ReferralException` by providing a
`getReferralContext()` method that accepts request controls.
LdapReferralException is an abstract class. Concrete implementations of it
determine its synchronization and serialization properties.

A `Control[]` array passed as a parameter to
the `getReferralContext()` method is owned by the caller.
The service provider will not modify the array or keep a reference to it,
although it may keep references to the individual `Control` objects
in the array.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.naming.ldap.LdapReferralException)

* ## Field Summary

  ### Fields inherited from class javax.naming.[NamingException](../NamingException.md "class in javax.naming")

  `remainingName, resolvedName, resolvedObj, rootException`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `LdapReferralException()`

  Constructs a new instance of LdapReferralException.

  `protected`

  `LdapReferralException(String explanation)`

  Constructs a new instance of LdapReferralException using the
  explanation supplied.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract Context`

  `getReferralContext()`

  Retrieves the context at which to continue the method using the
  context's environment and no controls.

  `abstract Context`

  `getReferralContext(Hashtable<?,?> env)`

  Retrieves the context at which to continue the method using
  environment properties and no controls.

  `abstract Context`

  `getReferralContext(Hashtable<?,?> env,
  Control[] reqCtls)`

  Retrieves the context at which to continue the method using
  request controls and environment properties.

  ### Methods inherited from class javax.naming.[ReferralException](../ReferralException.md "class in javax.naming")

  `getReferralInfo, retryReferral, skipReferral`

  ### Methods inherited from class javax.naming.[NamingException](../NamingException.md "class in javax.naming")

  `appendRemainingComponent, appendRemainingName, getCause, getExplanation, getRemainingName, getResolvedName, getResolvedObj, getRootCause, initCause, setRemainingName, setResolvedName, setResolvedObj, setRootCause, toString, toString`

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### LdapReferralException

    protected LdapReferralException([String](../../../../java.base/java/lang/String.md "class in java.lang") explanation)

    Constructs a new instance of LdapReferralException using the
    explanation supplied. All other fields are set to null.

    Parameters:
    :   `explanation` - Additional detail about this exception. Can be null.

    See Also:
    :   - [`Throwable.getMessage()`](../../../../java.base/java/lang/Throwable.md#getMessage())
  + ### LdapReferralException

    protected LdapReferralException()

    Constructs a new instance of LdapReferralException.
    All fields are set to null.
* ## Method Details

  + ### getReferralContext

    public abstract [Context](../Context.md "interface in javax.naming") getReferralContext()
    throws [NamingException](../NamingException.md "class in javax.naming")

    Retrieves the context at which to continue the method using the
    context's environment and no controls.
    The referral context is created using the environment properties of
    the context that threw the `ReferralException` and no controls.

    This method is equivalent to
    > ```
    >  getReferralContext(ctx.getEnvironment(), null);
    > ```

    where `ctx` is the context that threw the `ReferralException.`

    It is overridden in this class for documentation purposes only.
    See `ReferralException` for how to use this method.

    Specified by:
    :   `getReferralContext` in class `ReferralException`

    Returns:
    :   The non-null context at which to continue the method.

    Throws:
    :   `NamingException` - If a naming exception was encountered.
        Call either `retryReferral()` or `skipReferral()`
        to continue processing referrals.
  + ### getReferralContext

    public abstract [Context](../Context.md "interface in javax.naming") getReferralContext([Hashtable](../../../../java.base/java/util/Hashtable.md "class in java.util")<?,?> env)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Retrieves the context at which to continue the method using
    environment properties and no controls.
    The referral context is created using `env` as its environment
    properties and no controls.

    This method is equivalent to
    > ```
    >  getReferralContext(env, null);
    > ```

    It is overridden in this class for documentation purposes only.
    See `ReferralException` for how to use this method.

    Specified by:
    :   `getReferralContext` in class `ReferralException`

    Parameters:
    :   `env` - The possibly null environment to use when retrieving the
        referral context. If null, no environment properties will be used.

    Returns:
    :   The non-null context at which to continue the method.

    Throws:
    :   `NamingException` - If a naming exception was encountered.
        Call either `retryReferral()` or `skipReferral()`
        to continue processing referrals.
  + ### getReferralContext

    public abstract [Context](../Context.md "interface in javax.naming") getReferralContext([Hashtable](../../../../java.base/java/util/Hashtable.md "class in java.util")<?,?> env,
    [Control](Control.md "interface in javax.naming.ldap")[] reqCtls)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Retrieves the context at which to continue the method using
    request controls and environment properties.
    Regardless of whether a referral is encountered directly during a
    context operation, or indirectly, for example, during a search
    enumeration, the referral exception should provide a context
    at which to continue the operation.
    To continue the operation, the client program should re-invoke
    the method using the same arguments as the original invocation.

    `reqCtls` is used when creating the connection to the referred
    server. These controls will be used as the connection request controls for
    the context and context instances
    derived from the context.
    `reqCtls` will also be the context's request controls for
    subsequent context operations. See the `LdapContext` class
    description for details.

    This method should be used instead of the other two overloaded forms
    when the caller needs to supply request controls for creating
    the referral context. It might need to do this, for example, when
    it needs to supply special controls relating to authentication.

    Service provider implementors should read the "Service Provider" section
    in the `LdapContext` class description for implementation details.

    Parameters:
    :   `env` - The possibly null environment properties to use when
        for the new context. If null, the context is initialized with no environment
        properties.
    :   `reqCtls` - The possibly null request controls to use for the new context.
        If null or the empty array means use no request controls.

    Returns:
    :   The non-null context at which to continue the method.

    Throws:
    :   `NamingException` - If a naming exception was encountered.
        Call either `retryReferral()` or `skipReferral()`
        to continue processing referrals.