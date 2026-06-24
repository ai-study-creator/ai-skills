Module [java.desktop](../../../module-summary.md)

Package [javax.print.attribute](package-summary.md)

# Class AttributeSetUtilities

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.print.attribute.AttributeSetUtilities

---

public final class AttributeSetUtilities
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

Class `AttributeSetUtilities` provides static methods for manipulating
`AttributeSets`.

* Methods for creating unmodifiable and synchronized views of attribute
  sets.* operations useful for building implementations of interface
    [`AttributeSet`](AttributeSet.md "interface in javax.print.attribute")

An **unmodifiable view** *U* of an `AttributeSet` *S*
provides a client with "read-only" access to *S*. Query operations on
*U* "read through" to *S*; thus, changes in *S* are reflected
in *U*. However, any attempt to modify *U*, results in an
`UnmodifiableSetException`. The unmodifiable view object *U* will
be serializable if the attribute set object *S* is serializable.

A **synchronized view** *V* of an attribute set *S* provides a
client with synchronized (multiple thread safe) access to *S*. Each
operation of *V* is synchronized using *V* itself as the lock
object and then merely invokes the corresponding operation of *S*. In
order to guarantee mutually exclusive access, it is critical that all access
to *S* is accomplished through *V*. The synchronized view object
*V* will be serializable if the attribute set object *S* is
serializable.

As mentioned in the package description of `javax.print`, a
`null` reference parameter to methods is incorrect unless explicitly
documented on the method as having a meaningful interpretation. Usage to the
contrary is incorrect coding and may result in a run time exception either
immediately or at some later time. `IllegalArgumentException` and
`NullPointerException` are examples of typical and acceptable run time
exceptions for such cases.

* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static AttributeSet`

  `synchronizedView(AttributeSet attributeSet)`

  Creates a synchronized view of the given attribute set.

  `static DocAttributeSet`

  `synchronizedView(DocAttributeSet attributeSet)`

  Creates a synchronized view of the given doc attribute set.

  `static PrintJobAttributeSet`

  `synchronizedView(PrintJobAttributeSet attributeSet)`

  Creates a synchronized view of the given print job attribute set.

  `static PrintRequestAttributeSet`

  `synchronizedView(PrintRequestAttributeSet attributeSet)`

  Creates a synchronized view of the given print request attribute set.

  `static PrintServiceAttributeSet`

  `synchronizedView(PrintServiceAttributeSet attributeSet)`

  Creates a synchronized view of the given print service attribute set.

  `static AttributeSet`

  `unmodifiableView(AttributeSet attributeSet)`

  Creates an unmodifiable view of the given attribute set.

  `static DocAttributeSet`

  `unmodifiableView(DocAttributeSet attributeSet)`

  Creates an unmodifiable view of the given doc attribute set.

  `static PrintJobAttributeSet`

  `unmodifiableView(PrintJobAttributeSet attributeSet)`

  Creates an unmodifiable view of the given print job attribute set.

  `static PrintRequestAttributeSet`

  `unmodifiableView(PrintRequestAttributeSet attributeSet)`

  Creates an unmodifiable view of the given print request attribute set.

  `static PrintServiceAttributeSet`

  `unmodifiableView(PrintServiceAttributeSet attributeSet)`

  Creates an unmodifiable view of the given print service attribute set.

  `static Class<?>`

  `verifyAttributeCategory(Object object,
  Class<?> interfaceName)`

  Verify that the given object is a [`Class`](../../../../java.base/java/lang/Class.md "class in java.lang") that implements the
  given interface, which is assumed to be interface
  [`Attribute`](Attribute.md "interface in javax.print.attribute") or a subinterface thereof.

  `static Attribute`

  `verifyAttributeValue(Object object,
  Class<?> interfaceName)`

  Verify that the given object is an instance of the given interface, which
  is assumed to be interface [`Attribute`](Attribute.md "interface in javax.print.attribute") or a subinterface
  thereof.

  `static void`

  `verifyCategoryForValue(Class<?> category,
  Attribute attribute)`

  Verify that the given attribute category object is equal to the category
  of the given attribute value object.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### unmodifiableView

    public static [AttributeSet](AttributeSet.md "interface in javax.print.attribute") unmodifiableView([AttributeSet](AttributeSet.md "interface in javax.print.attribute") attributeSet)

    Creates an unmodifiable view of the given attribute set.

    Parameters:
    :   `attributeSet` - underlying attribute set

    Returns:
    :   unmodifiable view of `attributeSet`

    Throws:
    :   `NullPointerException` - if `attributeSet` is `null`
  + ### unmodifiableView

    public static [DocAttributeSet](DocAttributeSet.md "interface in javax.print.attribute") unmodifiableView([DocAttributeSet](DocAttributeSet.md "interface in javax.print.attribute") attributeSet)

    Creates an unmodifiable view of the given doc attribute set.

    Parameters:
    :   `attributeSet` - underlying doc attribute set

    Returns:
    :   unmodifiable view of `attributeSet`

    Throws:
    :   `NullPointerException` - if `attributeSet` is `null`
  + ### unmodifiableView

    public static [PrintRequestAttributeSet](PrintRequestAttributeSet.md "interface in javax.print.attribute") unmodifiableView([PrintRequestAttributeSet](PrintRequestAttributeSet.md "interface in javax.print.attribute") attributeSet)

    Creates an unmodifiable view of the given print request attribute set.

    Parameters:
    :   `attributeSet` - underlying print request attribute set

    Returns:
    :   unmodifiable view of `attributeSet`

    Throws:
    :   `NullPointerException` - if `attributeSet` is `null`
  + ### unmodifiableView

    public static [PrintJobAttributeSet](PrintJobAttributeSet.md "interface in javax.print.attribute") unmodifiableView([PrintJobAttributeSet](PrintJobAttributeSet.md "interface in javax.print.attribute") attributeSet)

    Creates an unmodifiable view of the given print job attribute set.

    Parameters:
    :   `attributeSet` - underlying print job attribute set

    Returns:
    :   unmodifiable view of `attributeSet`

    Throws:
    :   `NullPointerException` - if `attributeSet` is `null`
  + ### unmodifiableView

    public static [PrintServiceAttributeSet](PrintServiceAttributeSet.md "interface in javax.print.attribute") unmodifiableView([PrintServiceAttributeSet](PrintServiceAttributeSet.md "interface in javax.print.attribute") attributeSet)

    Creates an unmodifiable view of the given print service attribute set.

    Parameters:
    :   `attributeSet` - underlying print service attribute set

    Returns:
    :   unmodifiable view of `attributeSet`

    Throws:
    :   `NullPointerException` - if `attributeSet` is `null`
  + ### synchronizedView

    public static [AttributeSet](AttributeSet.md "interface in javax.print.attribute") synchronizedView([AttributeSet](AttributeSet.md "interface in javax.print.attribute") attributeSet)

    Creates a synchronized view of the given attribute set.

    Parameters:
    :   `attributeSet` - underlying attribute set

    Returns:
    :   synchronized view of `attributeSet`

    Throws:
    :   `NullPointerException` - if `attributeSet` is `null`
  + ### synchronizedView

    public static [DocAttributeSet](DocAttributeSet.md "interface in javax.print.attribute") synchronizedView([DocAttributeSet](DocAttributeSet.md "interface in javax.print.attribute") attributeSet)

    Creates a synchronized view of the given doc attribute set.

    Parameters:
    :   `attributeSet` - underlying doc attribute set

    Returns:
    :   synchronized view of `attributeSet`

    Throws:
    :   `NullPointerException` - if `attributeSet` is `null`
  + ### synchronizedView

    public static [PrintRequestAttributeSet](PrintRequestAttributeSet.md "interface in javax.print.attribute") synchronizedView([PrintRequestAttributeSet](PrintRequestAttributeSet.md "interface in javax.print.attribute") attributeSet)

    Creates a synchronized view of the given print request attribute set.

    Parameters:
    :   `attributeSet` - underlying print request attribute set

    Returns:
    :   synchronized view of `attributeSet`

    Throws:
    :   `NullPointerException` - if `attributeSet` is `null`
  + ### synchronizedView

    public static [PrintJobAttributeSet](PrintJobAttributeSet.md "interface in javax.print.attribute") synchronizedView([PrintJobAttributeSet](PrintJobAttributeSet.md "interface in javax.print.attribute") attributeSet)

    Creates a synchronized view of the given print job attribute set.

    Parameters:
    :   `attributeSet` - underlying print job attribute set

    Returns:
    :   synchronized view of `attributeSet`

    Throws:
    :   `NullPointerException` - if `attributeSet` is `null`
  + ### synchronizedView

    public static [PrintServiceAttributeSet](PrintServiceAttributeSet.md "interface in javax.print.attribute") synchronizedView([PrintServiceAttributeSet](PrintServiceAttributeSet.md "interface in javax.print.attribute") attributeSet)

    Creates a synchronized view of the given print service attribute set.

    Parameters:
    :   `attributeSet` - underlying print service attribute set

    Returns:
    :   synchronized view of `attributeSet`

    Throws:
    :   `NullPointerException` - if `attributeSet` is `null`
  + ### verifyAttributeCategory

    public static [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> verifyAttributeCategory([Object](../../../../java.base/java/lang/Object.md "class in java.lang") object,
    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> interfaceName)

    Verify that the given object is a [`Class`](../../../../java.base/java/lang/Class.md "class in java.lang") that implements the
    given interface, which is assumed to be interface
    [`Attribute`](Attribute.md "interface in javax.print.attribute") or a subinterface thereof.

    Parameters:
    :   `object` - `Object` to test
    :   `interfaceName` - interface the object must implement

    Returns:
    :   if `object` is a [`Class`](../../../../java.base/java/lang/Class.md "class in java.lang") that implements
        `interfaceName`, `object` is returned downcast to
        type [`Class`](../../../../java.base/java/lang/Class.md "class in java.lang"); otherwise an exception is thrown

    Throws:
    :   `NullPointerException` - if `object` is `null`
    :   `ClassCastException` - if `object` is not a
        [`Class`](../../../../java.base/java/lang/Class.md "class in java.lang") that implements `interfaceName`
  + ### verifyAttributeValue

    public static [Attribute](Attribute.md "interface in javax.print.attribute") verifyAttributeValue([Object](../../../../java.base/java/lang/Object.md "class in java.lang") object,
    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> interfaceName)

    Verify that the given object is an instance of the given interface, which
    is assumed to be interface [`Attribute`](Attribute.md "interface in javax.print.attribute") or a subinterface
    thereof.

    Parameters:
    :   `object` - `Object` to test
    :   `interfaceName` - interface of which the object must be an instance

    Returns:
    :   if `object` is an instance of `interfaceName`,
        `object` is returned downcast to type
        [`Attribute`](Attribute.md "interface in javax.print.attribute"); otherwise an exception is thrown

    Throws:
    :   `NullPointerException` - if `object` is `null`
    :   `ClassCastException` - if `object` is not an instance of
        `interfaceName`
  + ### verifyCategoryForValue

    public static void verifyCategoryForValue([Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> category,
    [Attribute](Attribute.md "interface in javax.print.attribute") attribute)

    Verify that the given attribute category object is equal to the category
    of the given attribute value object. If so, this method returns doing
    nothing. If not, this method throws an exception.

    Parameters:
    :   `category` - attribute category to test
    :   `attribute` - attribute value to test

    Throws:
    :   `NullPointerException` - if the `category` or `attribute`
        are `null`
    :   `IllegalArgumentException` - if the `category` is not equal to
        the category of the `attribute`