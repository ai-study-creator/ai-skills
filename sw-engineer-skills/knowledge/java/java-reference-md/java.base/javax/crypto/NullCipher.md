Module [java.base](../../module-summary.md)

Package [javax.crypto](package-summary.md)

# Class NullCipher

[java.lang.Object](../../java/lang/Object.md "class in java.lang")

[javax.crypto.Cipher](Cipher.md "class in javax.crypto")

javax.crypto.NullCipher

---

public class NullCipher
extends [Cipher](Cipher.md "class in javax.crypto")

The `NullCipher` class is a class that provides an
"identity cipher" -- one that does not transform the plain text. As
a consequence, the ciphertext is identical to the plaintext. All
initialization methods do nothing, while the blocksize is set to 1
byte.

Since:
:   1.4

* ## Field Summary

  ### Fields inherited from class javax.crypto.[Cipher](Cipher.md "class in javax.crypto")

  `DECRYPT_MODE, ENCRYPT_MODE, PRIVATE_KEY, PUBLIC_KEY, SECRET_KEY, UNWRAP_MODE, WRAP_MODE`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NullCipher()`

  Creates a `NullCipher` object.
* ## Method Summary

  ### Methods inherited from class javax.crypto.[Cipher](Cipher.md "class in javax.crypto")

  `doFinal, doFinal, doFinal, doFinal, doFinal, doFinal, doFinal, getAlgorithm, getBlockSize, getExemptionMechanism, getInstance, getInstance, getInstance, getIV, getMaxAllowedKeyLength, getMaxAllowedParameterSpec, getOutputSize, getParameters, getProvider, init, init, init, init, init, init, init, init, toString, unwrap, update, update, update, update, update, updateAAD, updateAAD, updateAAD, wrap`

  ### Methods inherited from class java.lang.[Object](../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NullCipher

    public NullCipher()

    Creates a `NullCipher` object.