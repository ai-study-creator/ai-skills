Module [java.security.jgss](../../../../module-summary.md)

Package [javax.security.auth.kerberos](package-summary.md)

# Class KeyTab

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.security.auth.kerberos.KeyTab

---

public final class KeyTab
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

This class encapsulates a keytab file.

A Kerberos JAAS login module that obtains long term secret keys from a
keytab file should use this class. The login module will store
an instance of this class in the private credential set of a
[`Subject`](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") during the commit phase of the
authentication process.

If a `KeyTab` object is obtained from [`getUnboundInstance()`](#getUnboundInstance())
or [`getUnboundInstance(java.io.File)`](#getUnboundInstance(java.io.File)), it is unbound and thus can be
used by any service principal. Otherwise, if it's obtained from
[`getInstance(KerberosPrincipal)`](#getInstance(javax.security.auth.kerberos.KerberosPrincipal)) or
[`getInstance(KerberosPrincipal, java.io.File)`](#getInstance(javax.security.auth.kerberos.KerberosPrincipal,java.io.File)), it is bound to the
specific service principal and can only be used by it.

Please note the constructors [`getInstance()`](#getInstance()) and
[`getInstance(java.io.File)`](#getInstance(java.io.File)) were created when there was no support
for unbound keytabs. These methods should not be used anymore. An object
created with either of these methods are considered to be bound to an
unknown principal, which means, its [`isBound()`](#isBound()) returns true and
[`getPrincipal()`](#getPrincipal()) returns null.

It might be necessary for the application to be granted a
[`PrivateCredentialPermission`](../../../../../java.base/javax/security/auth/PrivateCredentialPermission.md "class in javax.security.auth") if it needs to access the `KeyTab`
instance from a `Subject`. This permission is not needed when the
application depends on the default JGSS Kerberos mechanism to access the
`KeyTab`. In that case, however, the application will need an appropriate
[`ServicePermission`](ServicePermission.md "class in javax.security.auth.kerberos").

The keytab file format is described at
<http://www.ioplex.com/utilities/keytab.txt>.

Since:
:   1.7

* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object other)`

  Compares the specified object with this `KeyTab` for equality.

  `boolean`

  `exists()`

  Checks if the keytab file exists.

  `static KeyTab`

  `getInstance()`

  Returns the default `KeyTab` instance that is bound
  to an unknown service principal.

  `static KeyTab`

  `getInstance(File file)`

  Returns a `KeyTab` instance from a `File` object
  that is bound to an unknown service principal.

  `static KeyTab`

  `getInstance(KerberosPrincipal princ)`

  Returns the default `KeyTab` instance that is bound
  to the specified service principal.

  `static KeyTab`

  `getInstance(KerberosPrincipal princ,
  File file)`

  Returns a `KeyTab` instance from a `File` object
  that is bound to the specified service principal.

  `KerberosKey[]`

  `getKeys(KerberosPrincipal principal)`

  Returns fresh keys for the given Kerberos principal.

  `KerberosPrincipal`

  `getPrincipal()`

  Returns the service principal this `KeyTab` object
  is bound to.

  `static KeyTab`

  `getUnboundInstance()`

  Returns the default unbound `KeyTab` instance.

  `static KeyTab`

  `getUnboundInstance(File file)`

  Returns an unbound `KeyTab` instance from a `File`
  object.

  `int`

  `hashCode()`

  Returns a hash code for this `KeyTab`.

  `boolean`

  `isBound()`

  Returns if the keytab is bound to a principal

  `String`

  `toString()`

  Returns an informative textual representation of this `KeyTab`.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Method Details

  + ### getInstance

    public static [KeyTab](KeyTab.md "class in javax.security.auth.kerberos") getInstance([File](../../../../../java.base/java/io/File.md "class in java.io") file)

    Returns a `KeyTab` instance from a `File` object
    that is bound to an unknown service principal.

    The result of this method is never null. This method only associates
    the returned `KeyTab` object with the file and does not read it.

    Developers should call [`getInstance(KerberosPrincipal,File)`](#getInstance(javax.security.auth.kerberos.KerberosPrincipal,java.io.File))
    when the bound service principal is known.

    Parameters:
    :   `file` - the keytab `File` object, must not be null

    Returns:
    :   the keytab instance

    Throws:
    :   `NullPointerException` - if the `file` argument is null
  + ### getUnboundInstance

    public static [KeyTab](KeyTab.md "class in javax.security.auth.kerberos") getUnboundInstance([File](../../../../../java.base/java/io/File.md "class in java.io") file)

    Returns an unbound `KeyTab` instance from a `File`
    object.

    The result of this method is never null. This method only associates
    the returned `KeyTab` object with the file and does not read it.

    Parameters:
    :   `file` - the keytab `File` object, must not be null

    Returns:
    :   the keytab instance

    Throws:
    :   `NullPointerException` - if the file argument is null

    Since:
    :   1.8
  + ### getInstance

    public static [KeyTab](KeyTab.md "class in javax.security.auth.kerberos") getInstance([KerberosPrincipal](KerberosPrincipal.md "class in javax.security.auth.kerberos") princ,
    [File](../../../../../java.base/java/io/File.md "class in java.io") file)

    Returns a `KeyTab` instance from a `File` object
    that is bound to the specified service principal.

    The result of this method is never null. This method only associates
    the returned `KeyTab` object with the file and does not read it.

    Parameters:
    :   `princ` - the bound service principal, must not be null
    :   `file` - the keytab `File` object, must not be null

    Returns:
    :   the keytab instance

    Throws:
    :   `NullPointerException` - if either of the arguments is null

    Since:
    :   1.8
  + ### getInstance

    public static [KeyTab](KeyTab.md "class in javax.security.auth.kerberos") getInstance()

    Returns the default `KeyTab` instance that is bound
    to an unknown service principal.

    The result of this method is never null. This method only associates
    the returned `KeyTab` object with the default keytab file and
    does not read it.

    Developers should call [`getInstance(KerberosPrincipal)`](#getInstance(javax.security.auth.kerberos.KerberosPrincipal))
    when the bound service principal is known.

    Returns:
    :   the default keytab instance.
  + ### getUnboundInstance

    public static [KeyTab](KeyTab.md "class in javax.security.auth.kerberos") getUnboundInstance()

    Returns the default unbound `KeyTab` instance.

    The result of this method is never null. This method only associates
    the returned `KeyTab` object with the default keytab file and
    does not read it.

    Returns:
    :   the default keytab instance

    Since:
    :   1.8
  + ### getInstance

    public static [KeyTab](KeyTab.md "class in javax.security.auth.kerberos") getInstance([KerberosPrincipal](KerberosPrincipal.md "class in javax.security.auth.kerberos") princ)

    Returns the default `KeyTab` instance that is bound
    to the specified service principal.

    The result of this method is never null. This method only associates
    the returned `KeyTab` object with the default keytab file and
    does not read it.

    Parameters:
    :   `princ` - the bound service principal, must not be null

    Returns:
    :   the default keytab instance

    Throws:
    :   `NullPointerException` - if `princ` is null

    Since:
    :   1.8
  + ### getKeys

    public [KerberosKey](KerberosKey.md "class in javax.security.auth.kerberos")[] getKeys([KerberosPrincipal](KerberosPrincipal.md "class in javax.security.auth.kerberos") principal)

    Returns fresh keys for the given Kerberos principal.

    Implementation of this method should make sure the returned keys match
    the latest content of the keytab file. The result is a newly created
    copy that can be modified by the caller without modifying the keytab
    object. The caller should [`destroy`](KerberosKey.md#destroy()) the
    result keys after they are used.

    Please note that the keytab file can be created after the
    `KeyTab` object is instantiated and its content may change over
    time. Therefore, an application should call this method only when it
    needs to use the keys. Any previous result from an earlier invocation
    could potentially be expired.

    If there is any error (say, I/O error or format error)
    during the reading process of the keytab file, a saved result should be
    returned. If there is no saved result (say, this is the first time this
    method is called, or, all previous read attempts failed), an empty array
    should be returned. This can make sure the result is not drastically
    changed during the (probably slow) update of the keytab file.

    Each time this method is called and the reading of the file succeeds
    with no exception (say, I/O error or file format error),
    the result should be saved for `principal`. The implementation can
    also save keys for other principals having keys in the same keytab object
    if convenient.

    Any unsupported key read from the keytab is ignored and not included
    in the result.

    If this keytab is bound to a specific principal, calling this method on
    another principal will return an empty array.

    Parameters:
    :   `principal` - the Kerberos principal, must not be null.

    Returns:
    :   the keys (never null, may be empty)

    Throws:
    :   `NullPointerException` - if the `principal`
        argument is null
    :   `SecurityException` - if a security manager exists and the read
        access to the keytab file is not permitted
  + ### exists

    public boolean exists()

    Checks if the keytab file exists. Implementation of this method
    should make sure that the result matches the latest status of the
    keytab file.

    Returns:
    :   true if the keytab file exists; false otherwise.

    Throws:
    :   `SecurityException` - if a security manager exists and the read
        access to the keytab file is not permitted
  + ### toString

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns an informative textual representation of this `KeyTab`.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   an informative textual representation of this `KeyTab`.
  + ### hashCode

    public int hashCode()

    Returns a hash code for this `KeyTab`.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code for this `KeyTab`.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") other)

    Compares the specified object with this `KeyTab` for equality.
    Returns true if the given object is also a
    `KeyTab` and the two
    `KeyTab` instances are equivalent.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `other` - the object to compare to

    Returns:
    :   true if the specified object is equal to this `KeyTab`

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### getPrincipal

    public [KerberosPrincipal](KerberosPrincipal.md "class in javax.security.auth.kerberos") getPrincipal()

    Returns the service principal this `KeyTab` object
    is bound to. Returns `null` if it's not bound.

    Please note the deprecated constructors create a `KeyTab` object
    bound for some unknown principal. In this case, this method also returns
    null. User can call [`isBound()`](#isBound()) to verify this case.

    Returns:
    :   the service principal

    Since:
    :   1.8
  + ### isBound

    public boolean isBound()

    Returns if the keytab is bound to a principal

    Returns:
    :   if the keytab is bound to a principal

    Since:
    :   1.8