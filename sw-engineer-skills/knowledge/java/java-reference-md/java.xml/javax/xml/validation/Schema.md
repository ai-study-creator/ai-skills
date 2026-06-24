Module [java.xml](../../../module-summary.md)

Package [javax.xml.validation](package-summary.md)

# Class Schema

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.validation.Schema

---

public abstract class Schema
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

Immutable in-memory representation of grammar.

This object represents a set of constraints that can be checked/
enforced against an XML document.

A [`Schema`](Schema.md "class in javax.xml.validation") object is thread safe and applications are
encouraged to share it across many parsers in many threads.

A [`Schema`](Schema.md "class in javax.xml.validation") object is immutable in the sense that it shouldn't
change the set of constraints once it is created. In other words,
if an application validates the same document twice against the same
[`Schema`](Schema.md "class in javax.xml.validation"), it must always produce the same result.

A [`Schema`](Schema.md "class in javax.xml.validation") object is usually created from [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation").

Two kinds of validators can be created from a [`Schema`](Schema.md "class in javax.xml.validation") object.
One is [`Validator`](Validator.md "class in javax.xml.validation"), which provides highly-level validation
operations that cover typical use cases. The other is
[`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation"), which works on top of SAX for better
modularity.

This specification does not refine
the [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object)) method.
In other words, if you parse the same schema twice, you may
still get `!schemaA.equals(schemaB)`.

Since:
:   1.5

See Also:
:   * [XML Schema Part 1: Structures](http://www.w3.org/TR/xmlschema-1/)
    * [Extensible Markup Language (XML) 1.1](http://www.w3.org/TR/xml11/)
    * [Extensible Markup Language (XML) 1.0 (Second Edition)](http://www.w3.org/TR/REC-xml)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Schema()`

  Constructor for the derived class.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract Validator`

  `newValidator()`

  Creates a new [`Validator`](Validator.md "class in javax.xml.validation") for this [`Schema`](Schema.md "class in javax.xml.validation").

  `abstract ValidatorHandler`

  `newValidatorHandler()`

  Creates a new [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation") for this [`Schema`](Schema.md "class in javax.xml.validation").

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### Schema

    protected Schema()

    Constructor for the derived class.

    The constructor does nothing.
* ## Method Details

  + ### newValidator

    public abstract [Validator](Validator.md "class in javax.xml.validation") newValidator()

    Creates a new [`Validator`](Validator.md "class in javax.xml.validation") for this [`Schema`](Schema.md "class in javax.xml.validation").

    A validator enforces/checks the set of constraints this object
    represents.

    Implementors should assure that the properties set on the
    [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation") that created this [`Schema`](Schema.md "class in javax.xml.validation") are also
    set on the [`Validator`](Validator.md "class in javax.xml.validation") constructed.

    Returns:
    :   Always return a non-null valid object.
  + ### newValidatorHandler

    public abstract [ValidatorHandler](ValidatorHandler.md "class in javax.xml.validation") newValidatorHandler()

    Creates a new [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation") for this [`Schema`](Schema.md "class in javax.xml.validation").

    Implementors should assure that the properties set on the
    [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation") that created this [`Schema`](Schema.md "class in javax.xml.validation") are also
    set on the [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation") constructed.

    Returns:
    :   Always return a non-null valid object.