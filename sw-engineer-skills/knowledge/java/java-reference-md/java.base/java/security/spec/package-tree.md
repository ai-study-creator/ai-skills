# Hierarchy For Package java.security.spec

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../lang/Object.md "class in java.lang")
  + java.security.spec.[DSAGenParameterSpec](DSAGenParameterSpec.md "class in java.security.spec") (implements java.security.spec.[AlgorithmParameterSpec](AlgorithmParameterSpec.md "interface in java.security.spec"))
  + java.security.spec.[DSAParameterSpec](DSAParameterSpec.md "class in java.security.spec") (implements java.security.spec.[AlgorithmParameterSpec](AlgorithmParameterSpec.md "interface in java.security.spec"), java.security.interfaces.[DSAParams](../interfaces/DSAParams.md "interface in java.security.interfaces"))
  + java.security.spec.[DSAPrivateKeySpec](DSAPrivateKeySpec.md "class in java.security.spec") (implements java.security.spec.[KeySpec](KeySpec.md "interface in java.security.spec"))
  + java.security.spec.[DSAPublicKeySpec](DSAPublicKeySpec.md "class in java.security.spec") (implements java.security.spec.[KeySpec](KeySpec.md "interface in java.security.spec"))
  + java.security.spec.[ECFieldF2m](ECFieldF2m.md "class in java.security.spec") (implements java.security.spec.[ECField](ECField.md "interface in java.security.spec"))
  + java.security.spec.[ECFieldFp](ECFieldFp.md "class in java.security.spec") (implements java.security.spec.[ECField](ECField.md "interface in java.security.spec"))
  + java.security.spec.[ECParameterSpec](ECParameterSpec.md "class in java.security.spec") (implements java.security.spec.[AlgorithmParameterSpec](AlgorithmParameterSpec.md "interface in java.security.spec"))
  + java.security.spec.[ECPoint](ECPoint.md "class in java.security.spec")
  + java.security.spec.[ECPrivateKeySpec](ECPrivateKeySpec.md "class in java.security.spec") (implements java.security.spec.[KeySpec](KeySpec.md "interface in java.security.spec"))
  + java.security.spec.[ECPublicKeySpec](ECPublicKeySpec.md "class in java.security.spec") (implements java.security.spec.[KeySpec](KeySpec.md "interface in java.security.spec"))
  + java.security.spec.[EdDSAParameterSpec](EdDSAParameterSpec.md "class in java.security.spec") (implements java.security.spec.[AlgorithmParameterSpec](AlgorithmParameterSpec.md "interface in java.security.spec"))
  + java.security.spec.[EdECPoint](EdECPoint.md "class in java.security.spec")
  + java.security.spec.[EdECPrivateKeySpec](EdECPrivateKeySpec.md "class in java.security.spec") (implements java.security.spec.[KeySpec](KeySpec.md "interface in java.security.spec"))
  + java.security.spec.[EdECPublicKeySpec](EdECPublicKeySpec.md "class in java.security.spec") (implements java.security.spec.[KeySpec](KeySpec.md "interface in java.security.spec"))
  + java.security.spec.[EllipticCurve](EllipticCurve.md "class in java.security.spec")
  + java.security.spec.[EncodedKeySpec](EncodedKeySpec.md "class in java.security.spec") (implements java.security.spec.[KeySpec](KeySpec.md "interface in java.security.spec"))
    - java.security.spec.[PKCS8EncodedKeySpec](PKCS8EncodedKeySpec.md "class in java.security.spec")
    - java.security.spec.[X509EncodedKeySpec](X509EncodedKeySpec.md "class in java.security.spec")
  + java.security.spec.[MGF1ParameterSpec](MGF1ParameterSpec.md "class in java.security.spec") (implements java.security.spec.[AlgorithmParameterSpec](AlgorithmParameterSpec.md "interface in java.security.spec"))
  + java.security.spec.[NamedParameterSpec](NamedParameterSpec.md "class in java.security.spec") (implements java.security.spec.[AlgorithmParameterSpec](AlgorithmParameterSpec.md "interface in java.security.spec"))
    - java.security.spec.[ECGenParameterSpec](ECGenParameterSpec.md "class in java.security.spec")
  + java.security.spec.[PSSParameterSpec](PSSParameterSpec.md "class in java.security.spec") (implements java.security.spec.[AlgorithmParameterSpec](AlgorithmParameterSpec.md "interface in java.security.spec"))
  + java.security.spec.[RSAKeyGenParameterSpec](RSAKeyGenParameterSpec.md "class in java.security.spec") (implements java.security.spec.[AlgorithmParameterSpec](AlgorithmParameterSpec.md "interface in java.security.spec"))
  + java.security.spec.[RSAOtherPrimeInfo](RSAOtherPrimeInfo.md "class in java.security.spec")
  + java.security.spec.[RSAPrivateKeySpec](RSAPrivateKeySpec.md "class in java.security.spec") (implements java.security.spec.[KeySpec](KeySpec.md "interface in java.security.spec"))
    - java.security.spec.[RSAMultiPrimePrivateCrtKeySpec](RSAMultiPrimePrivateCrtKeySpec.md "class in java.security.spec")
    - java.security.spec.[RSAPrivateCrtKeySpec](RSAPrivateCrtKeySpec.md "class in java.security.spec")
  + java.security.spec.[RSAPublicKeySpec](RSAPublicKeySpec.md "class in java.security.spec") (implements java.security.spec.[KeySpec](KeySpec.md "interface in java.security.spec"))
  + java.lang.[Throwable](../../lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../../lang/Exception.md "class in java.lang")
      * java.security.[GeneralSecurityException](../GeneralSecurityException.md "class in java.security")
        + java.security.spec.[InvalidKeySpecException](InvalidKeySpecException.md "class in java.security.spec")
        + java.security.spec.[InvalidParameterSpecException](InvalidParameterSpecException.md "class in java.security.spec")
  + java.security.spec.[XECPrivateKeySpec](XECPrivateKeySpec.md "class in java.security.spec") (implements java.security.spec.[KeySpec](KeySpec.md "interface in java.security.spec"))
  + java.security.spec.[XECPublicKeySpec](XECPublicKeySpec.md "class in java.security.spec") (implements java.security.spec.[KeySpec](KeySpec.md "interface in java.security.spec"))

## Interface Hierarchy

* java.security.spec.[AlgorithmParameterSpec](AlgorithmParameterSpec.md "interface in java.security.spec")
* java.security.spec.[ECField](ECField.md "interface in java.security.spec")
* java.security.spec.[KeySpec](KeySpec.md "interface in java.security.spec")