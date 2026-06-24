Module [java.base](../../../module-summary.md)

# Package javax.crypto.interfaces

---

package javax.crypto.interfaces

Provides interfaces for Diffie-Hellman keys as defined in RSA
Laboratories' PKCS #3.

Note that these interfaces are intended only for key
implementations whose key material is accessible and
available. These interfaces are not intended for key implementations
whose key material resides in inaccessible, protected storage (such
as in a hardware device).

For more developer information on how to use these interfaces,
including information on how to design `Key` classes for
hardware devices, please refer to the cryptographic provider
developer guide:





## Package Specification

* PKCS #3: Diffie-Hellman Key-Agreement Standard, Version 1.4,
  November 1993.

## Related Documentation

For further documentation, please see:

Since:
:   1.4

* Related Packages

  Package

  Description

  [javax.crypto](../package-summary.md)

  Provides the classes and interfaces for cryptographic
  operations.

  [javax.crypto.spec](../spec/package-summary.md)

  Provides classes and interfaces for key specifications and
  algorithm parameter specifications.
* Interfaces

  Class

  Description

  [DHKey](DHKey.md "interface in javax.crypto.interfaces")

  The interface to a Diffie-Hellman key.

  [DHPrivateKey](DHPrivateKey.md "interface in javax.crypto.interfaces")

  The interface to a Diffie-Hellman private key.

  [DHPublicKey](DHPublicKey.md "interface in javax.crypto.interfaces")

  The interface to a Diffie-Hellman public key.

  [PBEKey](PBEKey.md "interface in javax.crypto.interfaces")

  The interface to a PBE key.