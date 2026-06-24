Module [java.xml.crypto](../../../../../module-summary.md)

Package [javax.xml.crypto.dsig.spec](package-summary.md)

# Class ExcC14NParameterSpec

[java.lang.Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.crypto.dsig.spec.ExcC14NParameterSpec

All Implemented Interfaces:
:   `AlgorithmParameterSpec`, `C14NMethodParameterSpec`, `TransformParameterSpec`

---

public final class ExcC14NParameterSpec
extends [Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [C14NMethodParameterSpec](C14NMethodParameterSpec.md "interface in javax.xml.crypto.dsig.spec")

Parameters for the W3C Recommendation:
[Exclusive XML Canonicalization (C14N) algorithm](http://www.w3.org/TR/xml-exc-c14n/). The
parameters include an optional inclusive namespace prefix list. The XML
Schema Definition of the Exclusive XML Canonicalization parameters is
defined as:

```
 <schema xmlns="http://www.w3.org/2001/XMLSchema"
         xmlns:ec="http://www.w3.org/2001/10/xml-exc-c14n#"
         targetNamespace="http://www.w3.org/2001/10/xml-exc-c14n#"
         version="0.1" elementFormDefault="qualified">

 <element name="InclusiveNamespaces" type="ec:InclusiveNamespaces"/>
 <complexType name="InclusiveNamespaces">
   <attribute name="PrefixList" type="xsd:string"/>
 </complexType>
 </schema>
```

Since:
:   1.6

See Also:
:   * [`CanonicalizationMethod`](../CanonicalizationMethod.md "interface in javax.xml.crypto.dsig")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `DEFAULT`

  Indicates the default namespace ("#default").
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ExcC14NParameterSpec()`

  Creates a `ExcC14NParameterSpec` with an empty prefix
  list.

  `ExcC14NParameterSpec(List<String> prefixList)`

  Creates a `ExcC14NParameterSpec` with the specified list
  of prefixes.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `List<String>`

  `getPrefixList()`

  Returns the inclusive namespace prefix list.

  ### Methods inherited from class java.lang.[Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### DEFAULT

    public static final [String](../../../../../../java.base/java/lang/String.md "class in java.lang") DEFAULT

    Indicates the default namespace ("#default").

    See Also:
    :   - [Constant Field Values](../../../../../../constant-values.md#javax.xml.crypto.dsig.spec.ExcC14NParameterSpec.DEFAULT)
* ## Constructor Details

  + ### ExcC14NParameterSpec

    public ExcC14NParameterSpec()

    Creates a `ExcC14NParameterSpec` with an empty prefix
    list.
  + ### ExcC14NParameterSpec

    public ExcC14NParameterSpec([List](../../../../../../java.base/java/util/List.md "interface in java.util")<[String](../../../../../../java.base/java/lang/String.md "class in java.lang")> prefixList)

    Creates a `ExcC14NParameterSpec` with the specified list
    of prefixes. The list is copied to protect against subsequent
    modification.

    Parameters:
    :   `prefixList` - the inclusive namespace prefix list. Each entry in
        the list is a `String` that represents a namespace prefix.

    Throws:
    :   `NullPointerException` - if `prefixList` is
        `null`
    :   `ClassCastException` - if any of the entries in the list are not
        of type `String`
* ## Method Details

  + ### getPrefixList

    public [List](../../../../../../java.base/java/util/List.md "interface in java.util")<[String](../../../../../../java.base/java/lang/String.md "class in java.lang")> getPrefixList()

    Returns the inclusive namespace prefix list. Each entry in the list
    is a `String` that represents a namespace prefix.

    This implementation returns an [`unmodifiable list`](../../../../../../java.base/java/util/Collections.md#unmodifiableList(java.util.List)).

    Returns:
    :   the inclusive namespace prefix list (may be empty but never
        `null`)