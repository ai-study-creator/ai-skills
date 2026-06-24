Module [java.xml](../../../module-summary.md)

Package [org.w3c.dom](package-summary.md)

# Interface TypeInfo

---

public interface TypeInfo

The `TypeInfo` interface represents a type referenced from
`Element` or `Attr` nodes, specified in the schemas
associated with the document. The type is a pair of a namespace URI and
name properties, and depends on the document's schema.

If the document's schema is an XML DTD [[XML 1.0](http://www.w3.org/TR/2004/REC-xml-20040204)], the values
are computed as follows:

* If this type is referenced from an
  `Attr` node, `typeNamespace` is
  `"http://www.w3.org/TR/REC-xml"` and `typeName`
  represents the **[attribute type]** property in the [[XML Information Set](http://www.w3.org/TR/2004/REC-xml-infoset-20040204/)]
  . If there is no declaration for the attribute, `typeNamespace`
  and `typeName` are `null`.
* If this type is
  referenced from an `Element` node, `typeNamespace`
  and `typeName` are `null`.

If the document's schema is an XML Schema [[XML Schema Part 1](http://www.w3.org/TR/2001/REC-xmlschema-1-20010502/)]
, the values are computed as follows using the post-schema-validation
infoset contributions (also called PSVI contributions):

* If the **[validity]** property exists AND is *"invalid"* or *"notKnown"*: the {target namespace} and {name} properties of the declared type if
  available, otherwise `null`.

  **Note:** At the time of writing, the XML Schema specification does
  not require exposing the declared type. Thus, DOM implementations might
  choose not to provide type information if validity is not valid.
* If the **[validity]** property exists and is *"valid"*:
  1. If **[member type definition]** exists:
     1. If {name} is not absent, then expose {name} and {target
        namespace} properties of the **[member type definition]** property;
     2. Otherwise, expose the namespace and local name of the
        corresponding anonymous type name.
  2. If the **[type definition]** property exists:
     1. If {name} is not absent, then expose {name} and {target
        namespace} properties of the **[type definition]** property;
     2. Otherwise, expose the namespace and local name of the
        corresponding anonymous type name.
  3. If the **[member type definition anonymous]** exists:
     1. If it is false, then expose **[member type definition name]** and **[member type definition namespace]** properties;
     2. Otherwise, expose the namespace and local name of the
        corresponding anonymous type name.
  4. If the **[type definition anonymous]** exists:
     1. If it is false, then expose **[type definition name]** and **[type definition namespace]** properties;
     2. Otherwise, expose the namespace and local name of the
        corresponding anonymous type name.

**Note:** Other schema languages are outside the scope of the W3C
and therefore should define how to represent their type systems using
`TypeInfo`.

See also the [Document Object Model (DOM) Level 3 Core Specification](http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407).

Since:
:   1.5, DOM Level 3

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `DERIVATION_EXTENSION`

  If the document's schema is an XML Schema [[XML Schema Part 1](http://www.w3.org/TR/2001/REC-xmlschema-1-20010502/)]
  , this constant represents the derivation by [extension](http://www.w3.org/TR/2001/REC-xmlschema-1-20010502/#key-typeExtension).

  `static final int`

  `DERIVATION_LIST`

  If the document's schema is an XML Schema [[XML Schema Part 1](http://www.w3.org/TR/2001/REC-xmlschema-1-20010502/)]
  , this constant represents the [list](http://www.w3.org/TR/2001/REC-xmlschema-1-20010502/#element-list).

  `static final int`

  `DERIVATION_RESTRICTION`

  If the document's schema is an XML Schema [[XML Schema Part 1](http://www.w3.org/TR/2001/REC-xmlschema-1-20010502/)]
  , this constant represents the derivation by [restriction](http://www.w3.org/TR/2001/REC-xmlschema-1-20010502/#key-typeRestriction) if complex types are involved, or a [restriction](http://www.w3.org/TR/2001/REC-xmlschema-1-20010502/#element-restriction) if simple types are involved.

  `static final int`

  `DERIVATION_UNION`

  If the document's schema is an XML Schema [[XML Schema Part 1](http://www.w3.org/TR/2001/REC-xmlschema-1-20010502/)]
  , this constant represents the [union](http://www.w3.org/TR/2001/REC-xmlschema-1-20010502/#element-union) if simple types are involved.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `getTypeName()`

  The name of a type declared for the associated element or attribute,
  or `null` if unknown.

  `String`

  `getTypeNamespace()`

  The namespace of the type declared for the associated element or
  attribute or `null` if the element does not have
  declaration or if no namespace information is available.

  `boolean`

  `isDerivedFrom(String typeNamespaceArg,
  String typeNameArg,
  int derivationMethod)`

  This method returns if there is a derivation between the reference
  type definition, i.e.

* ## Field Details

  + ### DERIVATION\_RESTRICTION

    static final int DERIVATION\_RESTRICTION

    If the document's schema is an XML Schema [[XML Schema Part 1](http://www.w3.org/TR/2001/REC-xmlschema-1-20010502/)]
    , this constant represents the derivation by [restriction](http://www.w3.org/TR/2001/REC-xmlschema-1-20010502/#key-typeRestriction) if complex types are involved, or a [restriction](http://www.w3.org/TR/2001/REC-xmlschema-1-20010502/#element-restriction) if simple types are involved.
      
     The reference type definition is derived by restriction from the
    other type definition if the other type definition is the same as the
    reference type definition, or if the other type definition can be
    reached recursively following the {base type definition} property
    from the reference type definition, and all the *derivation methods* involved are restriction.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.w3c.dom.TypeInfo.DERIVATION_RESTRICTION)
  + ### DERIVATION\_EXTENSION

    static final int DERIVATION\_EXTENSION

    If the document's schema is an XML Schema [[XML Schema Part 1](http://www.w3.org/TR/2001/REC-xmlschema-1-20010502/)]
    , this constant represents the derivation by [extension](http://www.w3.org/TR/2001/REC-xmlschema-1-20010502/#key-typeExtension).
      
     The reference type definition is derived by extension from the
    other type definition if the other type definition can be reached
    recursively following the {base type definition} property from the
    reference type definition, and at least one of the *derivation methods* involved is an extension.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.w3c.dom.TypeInfo.DERIVATION_EXTENSION)
  + ### DERIVATION\_UNION

    static final int DERIVATION\_UNION

    If the document's schema is an XML Schema [[XML Schema Part 1](http://www.w3.org/TR/2001/REC-xmlschema-1-20010502/)]
    , this constant represents the [union](http://www.w3.org/TR/2001/REC-xmlschema-1-20010502/#element-union) if simple types are involved.
      
     The reference type definition is derived by union from the other
    type definition if there exists two type definitions T1 and T2 such
    as the reference type definition is derived from T1 by
    `DERIVATION_RESTRICTION` or
    `DERIVATION_EXTENSION`, T2 is derived from the other type
    definition by `DERIVATION_RESTRICTION`, T1 has {variety} *union*, and one of the {member type definitions} is T2. Note that T1 could be
    the same as the reference type definition, and T2 could be the same
    as the other type definition.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.w3c.dom.TypeInfo.DERIVATION_UNION)
  + ### DERIVATION\_LIST

    static final int DERIVATION\_LIST

    If the document's schema is an XML Schema [[XML Schema Part 1](http://www.w3.org/TR/2001/REC-xmlschema-1-20010502/)]
    , this constant represents the [list](http://www.w3.org/TR/2001/REC-xmlschema-1-20010502/#element-list).
      
     The reference type definition is derived by list from the other
    type definition if there exists two type definitions T1 and T2 such
    as the reference type definition is derived from T1 by
    `DERIVATION_RESTRICTION` or
    `DERIVATION_EXTENSION`, T2 is derived from the other type
    definition by `DERIVATION_RESTRICTION`, T1 has {variety} *list*, and T2 is the {item type definition}. Note that T1 could be the same as
    the reference type definition, and T2 could be the same as the other
    type definition.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.w3c.dom.TypeInfo.DERIVATION_LIST)
* ## Method Details

  + ### getTypeName

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getTypeName()

    The name of a type declared for the associated element or attribute,
    or `null` if unknown.
  + ### getTypeNamespace

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getTypeNamespace()

    The namespace of the type declared for the associated element or
    attribute or `null` if the element does not have
    declaration or if no namespace information is available.
  + ### isDerivedFrom

    boolean isDerivedFrom([String](../../../../java.base/java/lang/String.md "class in java.lang") typeNamespaceArg,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") typeNameArg,
    int derivationMethod)

    This method returns if there is a derivation between the reference
    type definition, i.e. the `TypeInfo` on which the method
    is being called, and the other type definition, i.e. the one passed
    as parameters.

    Parameters:
    :   `typeNamespaceArg` - the namespace of the other type definition.
    :   `typeNameArg` - the name of the other type definition.
    :   `derivationMethod` - the type of derivation and conditions applied
        between two types, as described in the list of constants provided
        in this interface.

    Returns:
    :   If the document's schema is a DTD or no schema is associated
        with the document, this method will always return `false`
        . If the document's schema is an XML Schema, the method will return
        `true` if the reference type definition is derived from
        the other type definition according to the derivation parameter. If
        the value of the parameter is `0` (no bit is set to
        `1` for the `derivationMethod` parameter),
        the method will return `true` if the other type
        definition can be reached by recursing any combination of {base
        type definition}, {item type definition}, or {member type
        definitions} from the reference type definition.