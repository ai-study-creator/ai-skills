Module [java.desktop](../../module-summary.md)

Package [javax.print](package-summary.md)

# Interface AttributeException

---

public interface AttributeException

Interface `AttributeException` is a mixin interface which a subclass of
[`PrintException`](PrintException.md "class in javax.print") can implement to report an error
condition involving one or more printing attributes that a particular Print
Service instance does not support. Either the attribute is not supported at
all, or the attribute is supported but the particular specified value is not
supported. The Print Service API does not define any print exception classes
that implement interface `AttributeException`, that being left to the
Print Service implementor's discretion.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Class<?>[]`

  `getUnsupportedAttributes()`

  Returns the array of printing attribute classes for which the Print
  Service instance does not support the attribute at all, or `null`
  if there are no such attributes.

  `Attribute[]`

  `getUnsupportedValues()`

  Returns the array of printing attributes for which the Print Service
  instance supports the attribute but does not support that particular
  value of the attribute, or `null` if there are no such attribute
  values.

* ## Method Details

  + ### getUnsupportedAttributes

    [Class](../../../java.base/java/lang/Class.md "class in java.lang")<?>[] getUnsupportedAttributes()

    Returns the array of printing attribute classes for which the Print
    Service instance does not support the attribute at all, or `null`
    if there are no such attributes. The objects in the returned array are
    classes that extend the base interface [`Attribute`](attribute/Attribute.md "interface in javax.print.attribute").

    Returns:
    :   unsupported attribute classes
  + ### getUnsupportedValues

    [Attribute](attribute/Attribute.md "interface in javax.print.attribute")[] getUnsupportedValues()

    Returns the array of printing attributes for which the Print Service
    instance supports the attribute but does not support that particular
    value of the attribute, or `null` if there are no such attribute
    values.

    Returns:
    :   unsupported attribute values