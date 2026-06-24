Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Class KeyStoreBuilderParameters

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

javax.net.ssl.KeyStoreBuilderParameters

All Implemented Interfaces:
:   `ManagerFactoryParameters`

---

public class KeyStoreBuilderParameters
extends [Object](../../../java/lang/Object.md "class in java.lang")
implements [ManagerFactoryParameters](ManagerFactoryParameters.md "interface in javax.net.ssl")

A parameters object for X509KeyManagers that encapsulates a List
of KeyStore.Builders.

Since:
:   1.5

See Also:
:   * [`KeyStore.Builder`](../../../java/security/KeyStore.Builder.md "class in java.security")
    * [`X509KeyManager`](X509KeyManager.md "interface in javax.net.ssl")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `KeyStoreBuilderParameters(KeyStore.Builder builder)`

  Construct new KeyStoreBuilderParameters from the specified
  [KeyStore.Builder](../../../java/security/KeyStore.Builder.md "class in java.security").

  `KeyStoreBuilderParameters(List<KeyStore.Builder> parameters)`

  Construct new KeyStoreBuilderParameters from a List
  of [KeyStore.Builder](../../../java/security/KeyStore.Builder.md "class in java.security")s.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `List<KeyStore.Builder>`

  `getParameters()`

  Return the unmodifiable List of the
  [KeyStore.Builder](../../../java/security/KeyStore.Builder.md "class in java.security")s
  encapsulated by this object.

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### KeyStoreBuilderParameters

    public KeyStoreBuilderParameters([KeyStore.Builder](../../../java/security/KeyStore.Builder.md "class in java.security") builder)

    Construct new KeyStoreBuilderParameters from the specified
    [KeyStore.Builder](../../../java/security/KeyStore.Builder.md "class in java.security").

    Parameters:
    :   `builder` - the Builder object

    Throws:
    :   `NullPointerException` - if builder is null
  + ### KeyStoreBuilderParameters

    public KeyStoreBuilderParameters([List](../../../java/util/List.md "interface in java.util")<[KeyStore.Builder](../../../java/security/KeyStore.Builder.md "class in java.security")> parameters)

    Construct new KeyStoreBuilderParameters from a List
    of [KeyStore.Builder](../../../java/security/KeyStore.Builder.md "class in java.security")s. Note that the list
    is cloned to protect against subsequent modification.

    Parameters:
    :   `parameters` - the List of Builder objects

    Throws:
    :   `NullPointerException` - if parameters is null
    :   `IllegalArgumentException` - if parameters is an empty list
* ## Method Details

  + ### getParameters

    public [List](../../../java/util/List.md "interface in java.util")<[KeyStore.Builder](../../../java/security/KeyStore.Builder.md "class in java.security")> getParameters()

    Return the unmodifiable List of the
    [KeyStore.Builder](../../../java/security/KeyStore.Builder.md "class in java.security")s
    encapsulated by this object.

    Returns:
    :   the unmodifiable List of the
        [KeyStore.Builder](../../../java/security/KeyStore.Builder.md "class in java.security")s
        encapsulated by this object.