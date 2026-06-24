Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class KeyRep

[java.lang.Object](../lang/Object.md "class in java.lang")

java.security.KeyRep

All Implemented Interfaces:
:   `Serializable`

---

public class KeyRep
extends [Object](../lang/Object.md "class in java.lang")
implements [Serializable](../io/Serializable.md "interface in java.io")

Standardized representation for serialized Key objects.

Note that a serialized Key may contain sensitive information
which should not be exposed in untrusted environments. See the
[Security Appendix](../../../../specs/serialization/security.md)
of the Java Object Serialization Specification for more information.

Since:
:   1.5

See Also:
:   * [`Key`](Key.md "interface in java.security")
    * [`KeyFactory`](KeyFactory.md "class in java.security")
    * [`SecretKeySpec`](../../javax/crypto/spec/SecretKeySpec.md "class in javax.crypto.spec")
    * [`X509EncodedKeySpec`](spec/X509EncodedKeySpec.md "class in java.security.spec")
    * [`PKCS8EncodedKeySpec`](spec/PKCS8EncodedKeySpec.md "class in java.security.spec")
    * [Serialized Form](../../../serialized-form.md#java.security.KeyRep)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static enum`

  `KeyRep.Type`

  Key type.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `KeyRep(KeyRep.Type type,
  String algorithm,
  String format,
  byte[] encoded)`

  Construct the alternate Key class.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected Object`

  `readResolve()`

  Resolve the Key object.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### KeyRep

    public KeyRep([KeyRep.Type](KeyRep.Type.md "enum class in java.security") type,
    [String](../lang/String.md "class in java.lang") algorithm,
    [String](../lang/String.md "class in java.lang") format,
    byte[] encoded)

    Construct the alternate Key class.

    Parameters:
    :   `type` - either one of Type.SECRET, Type.PUBLIC, or Type.PRIVATE
    :   `algorithm` - the algorithm returned from
        `Key.getAlgorithm()`
    :   `format` - the encoding format returned from
        `Key.getFormat()`
    :   `encoded` - the encoded bytes returned from
        `Key.getEncoded()`

    Throws:
    :   `NullPointerException` - if type is `null`,
        if algorithm is `null`,
        if format is `null`,
        or if encoded is `null`
* ## Method Details

  + ### readResolve

    protected [Object](../lang/Object.md "class in java.lang") readResolve()
    throws [ObjectStreamException](../io/ObjectStreamException.md "class in java.io")

    Resolve the Key object.

    This method supports three Type/format combinations:
    - Type.SECRET/"RAW" - returns a SecretKeySpec object
      constructed using encoded key bytes and algorithm- Type.PUBLIC/"X.509" - gets a KeyFactory instance for
        the key algorithm, constructs an X509EncodedKeySpec with the
        encoded key bytes, and generates a public key from the spec- Type.PRIVATE/"PKCS#8" - gets a KeyFactory instance for
          the key algorithm, constructs a PKCS8EncodedKeySpec with the
          encoded key bytes, and generates a private key from the spec

    Returns:
    :   the resolved Key object

    Throws:
    :   `ObjectStreamException` - if the Type/format
        combination is unrecognized, if the algorithm, key format, or
        encoded key bytes are unrecognized/invalid, of if the
        resolution of the key fails for any reason