Module [java.xml](../../../module-summary.md)

Package [javax.xml.validation](package-summary.md)

# Class SchemaFactoryLoader

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.validation.SchemaFactoryLoader

---

public abstract class SchemaFactoryLoader
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

Factory that creates [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation").

**DO NOT USE THIS CLASS**

This class was introduced as a part of an early proposal during the
JSR-206 standardization process. The proposal was eventually abandoned
but this class accidentally remained in the source tree, and made its
way into the final version.

This class does not participate in any JAXP 1.3 or JAXP 1.4 processing.
It must not be used by users or JAXP implementations.

Since:
:   1.5

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `SchemaFactoryLoader()`

  A do-nothing constructor.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract SchemaFactory`

  `newFactory(String schemaLanguage)`

  Creates a new [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation") object for the specified
  schema language.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SchemaFactoryLoader

    protected SchemaFactoryLoader()

    A do-nothing constructor.
* ## Method Details

  + ### newFactory

    public abstract [SchemaFactory](SchemaFactory.md "class in javax.xml.validation") newFactory([String](../../../../java.base/java/lang/String.md "class in java.lang") schemaLanguage)

    Creates a new [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation") object for the specified
    schema language.

    Parameters:
    :   `schemaLanguage` - See [the list of available schema languages](SchemaFactory.md#schemaLanguage).

    Returns:
    :   `null` if the callee fails to create one.

    Throws:
    :   `NullPointerException` - If the `schemaLanguage` parameter is null.