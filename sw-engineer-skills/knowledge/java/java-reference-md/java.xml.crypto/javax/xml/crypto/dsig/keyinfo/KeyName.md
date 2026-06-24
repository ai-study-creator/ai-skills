Module [java.xml.crypto](../../../../../module-summary.md)

Package [javax.xml.crypto.dsig.keyinfo](package-summary.md)

# Interface KeyName

All Superinterfaces:
:   `XMLStructure`

---

public interface KeyName
extends [XMLStructure](../../XMLStructure.md "interface in javax.xml.crypto")

A representation of the XML `KeyName` element as
defined in the [W3C Recommendation for XML-Signature Syntax and Processing](http://www.w3.org/TR/xmldsig-core/).
A `KeyName` object contains a string value which may be used
by the signer to communicate a key identifier to the recipient. The
XML Schema Definition is defined as:

```
 <element name="KeyName" type="string"/>
```

A `KeyName` instance may be created by invoking the
[`newKeyName`](KeyInfoFactory.md#newKeyName(java.lang.String)) method of the
[`KeyInfoFactory`](KeyInfoFactory.md "class in javax.xml.crypto.dsig.keyinfo") class, and passing it a `String`
representing the name of the key; for example:

```
 KeyInfoFactory factory = KeyInfoFactory.getInstance("DOM");
 KeyName keyName = factory.newKeyName("Alice");
```

Since:
:   1.6

See Also:
:   * [`KeyInfoFactory.newKeyName(String)`](KeyInfoFactory.md#newKeyName(java.lang.String))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `getName()`

  Returns the name of this `KeyName`.

  ### Methods inherited from interface javax.xml.crypto.[XMLStructure](../../XMLStructure.md "interface in javax.xml.crypto")

  `isFeatureSupported`

* ## Method Details

  + ### getName

    [String](../../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Returns the name of this `KeyName`.

    Returns:
    :   the name of this `KeyName` (never
        `null`)