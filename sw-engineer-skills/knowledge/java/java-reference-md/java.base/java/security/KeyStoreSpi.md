Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class KeyStoreSpi

[java.lang.Object](../lang/Object.md "class in java.lang")

java.security.KeyStoreSpi

---

public abstract class KeyStoreSpi
extends [Object](../lang/Object.md "class in java.lang")

This class defines the *Service Provider Interface* (**SPI**)
for the `KeyStore` class.
All the abstract methods in this class must be implemented by each
cryptographic service provider who wishes to supply the implementation
of a keystore for a particular keystore type.

Since:
:   1.2

See Also:
:   * [`KeyStore`](KeyStore.md "class in java.security")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `KeyStoreSpi()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract Enumeration<String>`

  `engineAliases()`

  Lists all the alias names of this keystore.

  `abstract boolean`

  `engineContainsAlias(String alias)`

  Checks if the given alias exists in this keystore.

  `abstract void`

  `engineDeleteEntry(String alias)`

  Deletes the entry identified by the given alias from this keystore.

  `boolean`

  `engineEntryInstanceOf(String alias,
  Class<? extends KeyStore.Entry> entryClass)`

  Determines if the keystore `Entry` for the specified
  `alias` is an instance or subclass of the specified
  `entryClass`.

  `Set<KeyStore.Entry.Attribute>`

  `engineGetAttributes(String alias)`

  Retrieves the attributes associated with the given alias.

  `abstract Certificate`

  `engineGetCertificate(String alias)`

  Returns the certificate associated with the given alias.

  `abstract String`

  `engineGetCertificateAlias(Certificate cert)`

  Returns the (alias) name of the first keystore entry whose certificate
  matches the given certificate.

  `abstract Certificate[]`

  `engineGetCertificateChain(String alias)`

  Returns the certificate chain associated with the given alias.

  `abstract Date`

  `engineGetCreationDate(String alias)`

  Returns the creation date of the entry identified by the given alias.

  `KeyStore.Entry`

  `engineGetEntry(String alias,
  KeyStore.ProtectionParameter protParam)`

  Gets a `KeyStore.Entry` for the specified alias
  with the specified protection parameter.

  `abstract Key`

  `engineGetKey(String alias,
  char[] password)`

  Returns the key associated with the given alias, using the given
  password to recover it.

  `abstract boolean`

  `engineIsCertificateEntry(String alias)`

  Returns `true` if the entry identified by the given alias
  was created by a call to `setCertificateEntry`,
  or created by a call to `setEntry` with a
  `TrustedCertificateEntry`.

  `abstract boolean`

  `engineIsKeyEntry(String alias)`

  Returns `true` if the entry identified by the given alias
  was created by a call to `setKeyEntry`,
  or created by a call to `setEntry` with a
  `PrivateKeyEntry` or a `SecretKeyEntry`.

  `abstract void`

  `engineLoad(InputStream stream,
  char[] password)`

  Loads the keystore from the given input stream.

  `void`

  `engineLoad(KeyStore.LoadStoreParameter param)`

  Loads the keystore using the given
  `KeyStore.LoadStoreParameter`.

  `boolean`

  `engineProbe(InputStream stream)`

  Probes the specified input stream to determine whether it contains a
  keystore that is supported by this implementation, or not.

  `abstract void`

  `engineSetCertificateEntry(String alias,
  Certificate cert)`

  Assigns the given certificate to the given alias.

  `void`

  `engineSetEntry(String alias,
  KeyStore.Entry entry,
  KeyStore.ProtectionParameter protParam)`

  Saves a `KeyStore.Entry` under the specified alias.

  `abstract void`

  `engineSetKeyEntry(String alias,
  byte[] key,
  Certificate[] chain)`

  Assigns the given key (that has already been protected) to the given
  alias.

  `abstract void`

  `engineSetKeyEntry(String alias,
  Key key,
  char[] password,
  Certificate[] chain)`

  Assigns the given key to the given alias, protecting it with the given
  password.

  `abstract int`

  `engineSize()`

  Retrieves the number of entries in this keystore.

  `abstract void`

  `engineStore(OutputStream stream,
  char[] password)`

  Stores this keystore to the given output stream, and protects its
  integrity with the given password.

  `void`

  `engineStore(KeyStore.LoadStoreParameter param)`

  Stores this keystore using the given
  `KeyStore.LoadStoreParameter`.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### KeyStoreSpi

    public KeyStoreSpi()

    Constructor for subclasses to call.
* ## Method Details

  + ### engineGetKey

    public abstract [Key](Key.md "interface in java.security") engineGetKey([String](../lang/String.md "class in java.lang") alias,
    char[] password)
    throws [NoSuchAlgorithmException](NoSuchAlgorithmException.md "class in java.security"),
    [UnrecoverableKeyException](UnrecoverableKeyException.md "class in java.security")

    Returns the key associated with the given alias, using the given
    password to recover it. The key must have been associated with
    the alias by a call to `setKeyEntry`,
    or by a call to `setEntry` with a
    `PrivateKeyEntry` or `SecretKeyEntry`.

    Parameters:
    :   `alias` - the alias name
    :   `password` - the password for recovering the key

    Returns:
    :   the requested key, or `null` if the given alias
        does not exist or does not identify a key-related entry.

    Throws:
    :   `NoSuchAlgorithmException` - if the algorithm for recovering the
        key cannot be found
    :   `UnrecoverableKeyException` - if the key cannot be recovered
        (e.g., the given password is wrong).
  + ### engineGetCertificateChain

    public abstract [Certificate](cert/Certificate.md "class in java.security.cert")[] engineGetCertificateChain([String](../lang/String.md "class in java.lang") alias)

    Returns the certificate chain associated with the given alias.
    The certificate chain must have been associated with the alias
    by a call to `setKeyEntry`,
    or by a call to `setEntry` with a
    `PrivateKeyEntry`.

    Parameters:
    :   `alias` - the alias name

    Returns:
    :   the certificate chain (ordered with the user's certificate first
        and the root certificate authority last), or `null` if the
        given alias \* does not exist or does not contain a certificate chain
  + ### engineGetCertificate

    public abstract [Certificate](cert/Certificate.md "class in java.security.cert") engineGetCertificate([String](../lang/String.md "class in java.lang") alias)

    Returns the certificate associated with the given alias.

    If the given alias name identifies an entry
    created by a call to `setCertificateEntry`,
    or created by a call to `setEntry` with a
    `TrustedCertificateEntry`,
    then the trusted certificate contained in that entry is returned.

    If the given alias name identifies an entry
    created by a call to `setKeyEntry`,
    or created by a call to `setEntry` with a
    `PrivateKeyEntry`,
    then the first element of the certificate chain in that entry
    (if a chain exists) is returned.

    Parameters:
    :   `alias` - the alias name

    Returns:
    :   the certificate, or `null` if the given alias does not
        exist or does not contain a certificate.
  + ### engineGetCreationDate

    public abstract [Date](../util/Date.md "class in java.util") engineGetCreationDate([String](../lang/String.md "class in java.lang") alias)

    Returns the creation date of the entry identified by the given alias.

    Parameters:
    :   `alias` - the alias name

    Returns:
    :   the creation date of this entry, or `null`
        if the given alias does not exist
  + ### engineSetKeyEntry

    public abstract void engineSetKeyEntry([String](../lang/String.md "class in java.lang") alias,
    [Key](Key.md "interface in java.security") key,
    char[] password,
    [Certificate](cert/Certificate.md "class in java.security.cert")[] chain)
    throws [KeyStoreException](KeyStoreException.md "class in java.security")

    Assigns the given key to the given alias, protecting it with the given
    password.

    If the given key is of type `java.security.PrivateKey`,
    it must be accompanied by a certificate chain certifying the
    corresponding public key.

    If the given alias already exists, the keystore information
    associated with it is overridden by the given key (and possibly
    certificate chain).

    Parameters:
    :   `alias` - the alias name
    :   `key` - the key to be associated with the alias
    :   `password` - the password to protect the key
    :   `chain` - the certificate chain for the corresponding public
        key (only required if the given key is of type
        `java.security.PrivateKey`).

    Throws:
    :   `KeyStoreException` - if the given key cannot be protected, or
        this operation fails for some other reason
  + ### engineSetKeyEntry

    public abstract void engineSetKeyEntry([String](../lang/String.md "class in java.lang") alias,
    byte[] key,
    [Certificate](cert/Certificate.md "class in java.security.cert")[] chain)
    throws [KeyStoreException](KeyStoreException.md "class in java.security")

    Assigns the given key (that has already been protected) to the given
    alias.

    If the protected key is of type
    `java.security.PrivateKey`,
    it must be accompanied by a certificate chain certifying the
    corresponding public key.

    If the given alias already exists, the keystore information
    associated with it is overridden by the given key (and possibly
    certificate chain).

    Parameters:
    :   `alias` - the alias name
    :   `key` - the key (in protected format) to be associated with the alias
    :   `chain` - the certificate chain for the corresponding public
        key (only useful if the protected key is of type
        `java.security.PrivateKey`).

    Throws:
    :   `KeyStoreException` - if this operation fails.
  + ### engineSetCertificateEntry

    public abstract void engineSetCertificateEntry([String](../lang/String.md "class in java.lang") alias,
    [Certificate](cert/Certificate.md "class in java.security.cert") cert)
    throws [KeyStoreException](KeyStoreException.md "class in java.security")

    Assigns the given certificate to the given alias.

    If the given alias identifies an existing entry
    created by a call to `setCertificateEntry`,
    or created by a call to `setEntry` with a
    `TrustedCertificateEntry`,
    the trusted certificate in the existing entry
    is overridden by the given certificate.

    Parameters:
    :   `alias` - the alias name
    :   `cert` - the certificate

    Throws:
    :   `KeyStoreException` - if the given alias already exists and does
        not identify an entry containing a trusted certificate,
        or this operation fails for some other reason.
  + ### engineDeleteEntry

    public abstract void engineDeleteEntry([String](../lang/String.md "class in java.lang") alias)
    throws [KeyStoreException](KeyStoreException.md "class in java.security")

    Deletes the entry identified by the given alias from this keystore.

    Parameters:
    :   `alias` - the alias name

    Throws:
    :   `KeyStoreException` - if the entry cannot be removed.
  + ### engineAliases

    public abstract [Enumeration](../util/Enumeration.md "interface in java.util")<[String](../lang/String.md "class in java.lang")> engineAliases()

    Lists all the alias names of this keystore.

    Returns:
    :   enumeration of the alias names
  + ### engineContainsAlias

    public abstract boolean engineContainsAlias([String](../lang/String.md "class in java.lang") alias)

    Checks if the given alias exists in this keystore.

    Parameters:
    :   `alias` - the alias name

    Returns:
    :   `true` if the alias exists, `false` otherwise
  + ### engineSize

    public abstract int engineSize()

    Retrieves the number of entries in this keystore.

    Returns:
    :   the number of entries in this keystore
  + ### engineIsKeyEntry

    public abstract boolean engineIsKeyEntry([String](../lang/String.md "class in java.lang") alias)

    Returns `true` if the entry identified by the given alias
    was created by a call to `setKeyEntry`,
    or created by a call to `setEntry` with a
    `PrivateKeyEntry` or a `SecretKeyEntry`.

    Parameters:
    :   `alias` - the alias for the keystore entry to be checked

    Returns:
    :   `true` if the entry identified by the given alias is a
        key-related, `false` otherwise.
  + ### engineIsCertificateEntry

    public abstract boolean engineIsCertificateEntry([String](../lang/String.md "class in java.lang") alias)

    Returns `true` if the entry identified by the given alias
    was created by a call to `setCertificateEntry`,
    or created by a call to `setEntry` with a
    `TrustedCertificateEntry`.

    Parameters:
    :   `alias` - the alias for the keystore entry to be checked

    Returns:
    :   `true` if the entry identified by the given alias
        contains a trusted certificate, `false` otherwise.
  + ### engineGetCertificateAlias

    public abstract [String](../lang/String.md "class in java.lang") engineGetCertificateAlias([Certificate](cert/Certificate.md "class in java.security.cert") cert)

    Returns the (alias) name of the first keystore entry whose certificate
    matches the given certificate.

    This method attempts to match the given certificate with each
    keystore entry. If the entry being considered was
    created by a call to `setCertificateEntry`,
    or created by a call to `setEntry` with a
    `TrustedCertificateEntry`,
    then the given certificate is compared to that entry's certificate.

    If the entry being considered was
    created by a call to `setKeyEntry`,
    or created by a call to `setEntry` with a
    `PrivateKeyEntry`,
    then the given certificate is compared to the first
    element of that entry's certificate chain.

    Parameters:
    :   `cert` - the certificate to match with.

    Returns:
    :   the alias name of the first entry with matching certificate,
        or `null` if no such entry exists in this keystore.
  + ### engineStore

    public abstract void engineStore([OutputStream](../io/OutputStream.md "class in java.io") stream,
    char[] password)
    throws [IOException](../io/IOException.md "class in java.io"),
    [NoSuchAlgorithmException](NoSuchAlgorithmException.md "class in java.security"),
    [CertificateException](cert/CertificateException.md "class in java.security.cert")

    Stores this keystore to the given output stream, and protects its
    integrity with the given password.

    Parameters:
    :   `stream` - the output stream to which this keystore is written.
    :   `password` - the password to generate the keystore integrity check.
        May be `null` if the keystore does not support
        or require an integrity check.

    Throws:
    :   `IOException` - if there was an I/O problem with data
    :   `NoSuchAlgorithmException` - if the appropriate data integrity
        algorithm could not be found
    :   `CertificateException` - if any of the certificates included in
        the keystore data could not be stored
  + ### engineStore

    public void engineStore([KeyStore.LoadStoreParameter](KeyStore.LoadStoreParameter.md "interface in java.security") param)
    throws [IOException](../io/IOException.md "class in java.io"),
    [NoSuchAlgorithmException](NoSuchAlgorithmException.md "class in java.security"),
    [CertificateException](cert/CertificateException.md "class in java.security.cert")

    Stores this keystore using the given
    `KeyStore.LoadStoreParameter`.

    Parameters:
    :   `param` - the `KeyStore.LoadStoreParameter`
        that specifies how to store the keystore,
        which may be `null`

    Throws:
    :   `IllegalArgumentException` - if the given
        `KeyStore.LoadStoreParameter`
        input is not recognized
    :   `IOException` - if there was an I/O problem with data
    :   `NoSuchAlgorithmException` - if the appropriate data integrity
        algorithm could not be found
    :   `CertificateException` - if any of the certificates included in
        the keystore data could not be stored
    :   `UnsupportedOperationException` - if the implementation does
        not support this operation

    Since:
    :   1.5
  + ### engineLoad

    public abstract void engineLoad([InputStream](../io/InputStream.md "class in java.io") stream,
    char[] password)
    throws [IOException](../io/IOException.md "class in java.io"),
    [NoSuchAlgorithmException](NoSuchAlgorithmException.md "class in java.security"),
    [CertificateException](cert/CertificateException.md "class in java.security.cert")

    Loads the keystore from the given input stream.

    A password may be given to unlock the keystore
    (e.g. the keystore resides on a hardware token device),
    or to check the integrity of the keystore data.
    If a password is not given for integrity checking,
    then integrity checking is not performed.

    Parameters:
    :   `stream` - the input stream from which the keystore is loaded,
        or `null`
    :   `password` - the password used to check the integrity of
        the keystore, the password used to unlock the keystore,
        or `null`

    Throws:
    :   `IOException` - if there is an I/O or format problem with the
        keystore data, if a password is required but not given,
        or if the given password was incorrect. If the error is due to a
        wrong password, the [`cause`](../lang/Throwable.md#getCause()) of the
        `IOException` should be an
        `UnrecoverableKeyException`
    :   `NoSuchAlgorithmException` - if the algorithm used to check
        the integrity of the keystore cannot be found
    :   `CertificateException` - if any of the certificates in the
        keystore could not be loaded
  + ### engineLoad

    public void engineLoad([KeyStore.LoadStoreParameter](KeyStore.LoadStoreParameter.md "interface in java.security") param)
    throws [IOException](../io/IOException.md "class in java.io"),
    [NoSuchAlgorithmException](NoSuchAlgorithmException.md "class in java.security"),
    [CertificateException](cert/CertificateException.md "class in java.security.cert")

    Loads the keystore using the given
    `KeyStore.LoadStoreParameter`.

    Note that if this KeyStore has already been loaded, it is
    reinitialized and loaded again from the given parameter.

    Parameters:
    :   `param` - the `KeyStore.LoadStoreParameter`
        that specifies how to load the keystore,
        which may be `null`

    Throws:
    :   `IllegalArgumentException` - if the given
        `KeyStore.LoadStoreParameter`
        input is not recognized
    :   `IOException` - if there is an I/O or format problem with the
        keystore data. If the error is due to an incorrect
        `ProtectionParameter` (e.g. wrong password)
        the [`cause`](../lang/Throwable.md#getCause()) of the
        `IOException` should be an
        `UnrecoverableKeyException`
    :   `NoSuchAlgorithmException` - if the algorithm used to check
        the integrity of the keystore cannot be found
    :   `CertificateException` - if any of the certificates in the
        keystore could not be loaded

    Since:
    :   1.5
  + ### engineGetAttributes

    public [Set](../util/Set.md "interface in java.util")<[KeyStore.Entry.Attribute](KeyStore.Entry.Attribute.md "interface in java.security")> engineGetAttributes([String](../lang/String.md "class in java.lang") alias)

    Retrieves the attributes associated with the given alias.

    Parameters:
    :   `alias` - the alias name

    Returns:
    :   an unmodifiable `Set` of attributes. This set is
        empty if the given alias does not exist or there are no
        attributes associated with the alias. This set may also be
        empty for `PrivateKeyEntry` or `SecretKeyEntry`
        entries that contain protected attributes. These protected
        attributes should be populated into the result returned by
        [`engineGetEntry(java.lang.String, java.security.KeyStore.ProtectionParameter)`](#engineGetEntry(java.lang.String,java.security.KeyStore.ProtectionParameter)) and can be retrieved by calling
        the [`KeyStore.Entry.getAttributes()`](KeyStore.Entry.md#getAttributes()) method.

    Since:
    :   18
  + ### engineGetEntry

    public [KeyStore.Entry](KeyStore.Entry.md "interface in java.security") engineGetEntry([String](../lang/String.md "class in java.lang") alias,
    [KeyStore.ProtectionParameter](KeyStore.ProtectionParameter.md "interface in java.security") protParam)
    throws [KeyStoreException](KeyStoreException.md "class in java.security"),
    [NoSuchAlgorithmException](NoSuchAlgorithmException.md "class in java.security"),
    [UnrecoverableEntryException](UnrecoverableEntryException.md "class in java.security")

    Gets a `KeyStore.Entry` for the specified alias
    with the specified protection parameter.

    Parameters:
    :   `alias` - get the `KeyStore.Entry` for this alias
    :   `protParam` - the `ProtectionParameter`
        used to protect the `Entry`,
        which may be `null`

    Returns:
    :   the `KeyStore.Entry` for the specified alias,
        or `null` if there is no such entry

    Throws:
    :   `KeyStoreException` - if the operation failed
    :   `NoSuchAlgorithmException` - if the algorithm for recovering the
        entry cannot be found
    :   `UnrecoverableEntryException` - if the specified
        `protParam` were insufficient or invalid
    :   `UnrecoverableKeyException` - if the entry is a
        `PrivateKeyEntry` or `SecretKeyEntry`
        and the specified `protParam` does not contain
        the information needed to recover the key (e.g. wrong password)

    Since:
    :   1.5
  + ### engineSetEntry

    public void engineSetEntry([String](../lang/String.md "class in java.lang") alias,
    [KeyStore.Entry](KeyStore.Entry.md "interface in java.security") entry,
    [KeyStore.ProtectionParameter](KeyStore.ProtectionParameter.md "interface in java.security") protParam)
    throws [KeyStoreException](KeyStoreException.md "class in java.security")

    Saves a `KeyStore.Entry` under the specified alias.
    The specified protection parameter is used to protect the
    `Entry`.

    If an entry already exists for the specified alias,
    it is overridden.

    Parameters:
    :   `alias` - save the `KeyStore.Entry` under this alias
    :   `entry` - the `Entry` to save
    :   `protParam` - the `ProtectionParameter`
        used to protect the `Entry`,
        which may be `null`

    Throws:
    :   `KeyStoreException` - if this operation fails

    Since:
    :   1.5
  + ### engineEntryInstanceOf

    public boolean engineEntryInstanceOf([String](../lang/String.md "class in java.lang") alias,
    [Class](../lang/Class.md "class in java.lang")<? extends [KeyStore.Entry](KeyStore.Entry.md "interface in java.security")> entryClass)

    Determines if the keystore `Entry` for the specified
    `alias` is an instance or subclass of the specified
    `entryClass`.

    Parameters:
    :   `alias` - the alias name
    :   `entryClass` - the entry class

    Returns:
    :   `true` if the keystore `Entry` for the specified
        `alias` is an instance or subclass of the
        specified `entryClass`, false otherwise

    Since:
    :   1.5
  + ### engineProbe

    public boolean engineProbe([InputStream](../io/InputStream.md "class in java.io") stream)
    throws [IOException](../io/IOException.md "class in java.io")

    Probes the specified input stream to determine whether it contains a
    keystore that is supported by this implementation, or not.

    Parameters:
    :   `stream` - the keystore data to be probed

    Returns:
    :   `true` if the keystore data is supported,
        otherwise `false`

    Throws:
    :   `IOException` - if there is an I/O problem with the keystore data.
    :   `NullPointerException` - if stream is `null`.

    Since:
    :   9