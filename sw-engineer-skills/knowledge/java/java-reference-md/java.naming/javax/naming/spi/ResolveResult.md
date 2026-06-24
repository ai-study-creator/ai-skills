Module [java.naming](../../../module-summary.md)

Package [javax.naming.spi](package-summary.md)

# Class ResolveResult

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.naming.spi.ResolveResult

All Implemented Interfaces:
:   `Serializable`

---

public class ResolveResult
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

This class represents the result of resolution of a name.
It contains the object to which name was resolved, and the portion
of the name that has not been resolved.

A ResolveResult instance is not synchronized against concurrent
multithreaded access. Multiple threads trying to access and modify
a single ResolveResult instance should lock the object.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.naming.spi.ResolveResult)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Name`

  `remainingName`

  Field containing the remaining name yet to be resolved.

  `protected Object`

  `resolvedObj`

  Field containing the Object that was resolved to successfully.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ResolveResult()`

  Constructs an instance of ResolveResult with the
  resolved object and remaining name both initialized to null.

  `ResolveResult(Object robj,
  String rcomp)`

  Constructs a new instance of ResolveResult consisting of
  the resolved object and the remaining unresolved component.

  `ResolveResult(Object robj,
  Name rname)`

  Constructs a new instance of ResolveResult consisting of
  the resolved Object and the remaining name.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `appendRemainingComponent(String name)`

  Adds a single component to the end of remaining name.

  `void`

  `appendRemainingName(Name name)`

  Adds components to the end of remaining name.

  `Name`

  `getRemainingName()`

  Retrieves the remaining unresolved portion of the name.

  `Object`

  `getResolvedObj()`

  Retrieves the Object to which resolution was successful.

  `void`

  `setRemainingName(Name name)`

  Sets the remaining name field of this result to name.

  `void`

  `setResolvedObj(Object obj)`

  Sets the resolved Object field of this result to obj.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### resolvedObj

    protected [Object](../../../../java.base/java/lang/Object.md "class in java.lang") resolvedObj

    Field containing the Object that was resolved to successfully.
    It can be null only when constructed using a subclass.
    Constructors should always initialize this.
  + ### remainingName

    protected [Name](../Name.md "interface in javax.naming") remainingName

    Field containing the remaining name yet to be resolved.
    It can be null only when constructed using a subclass.
    Constructors should always initialize this.
* ## Constructor Details

  + ### ResolveResult

    protected ResolveResult()

    Constructs an instance of ResolveResult with the
    resolved object and remaining name both initialized to null.
  + ### ResolveResult

    public ResolveResult([Object](../../../../java.base/java/lang/Object.md "class in java.lang") robj,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") rcomp)

    Constructs a new instance of ResolveResult consisting of
    the resolved object and the remaining unresolved component.

    Parameters:
    :   `robj` - The non-null object resolved to.
    :   `rcomp` - The single remaining name component that has yet to be
        resolved. Cannot be null (but can be empty).
  + ### ResolveResult

    public ResolveResult([Object](../../../../java.base/java/lang/Object.md "class in java.lang") robj,
    [Name](../Name.md "interface in javax.naming") rname)

    Constructs a new instance of ResolveResult consisting of
    the resolved Object and the remaining name.

    Parameters:
    :   `robj` - The non-null Object resolved to.
    :   `rname` - The non-null remaining name that has yet to be resolved.
* ## Method Details

  + ### getRemainingName

    public [Name](../Name.md "interface in javax.naming") getRemainingName()

    Retrieves the remaining unresolved portion of the name.

    Returns:
    :   The remaining unresolved portion of the name.
        Cannot be null but empty OK.

    See Also:
    :   - [`appendRemainingName(javax.naming.Name)`](#appendRemainingName(javax.naming.Name))
        - [`appendRemainingComponent(java.lang.String)`](#appendRemainingComponent(java.lang.String))
        - [`setRemainingName(javax.naming.Name)`](#setRemainingName(javax.naming.Name))
  + ### getResolvedObj

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getResolvedObj()

    Retrieves the Object to which resolution was successful.

    Returns:
    :   The Object to which resolution was successful. Cannot be null.

    See Also:
    :   - [`setResolvedObj(java.lang.Object)`](#setResolvedObj(java.lang.Object))
  + ### setRemainingName

    public void setRemainingName([Name](../Name.md "interface in javax.naming") name)

    Sets the remaining name field of this result to name.
    A copy of name is made so that modifying the copy within
    this ResolveResult does not affect `name` and
    vice versa.

    Parameters:
    :   `name` - The name to set remaining name to. Cannot be null.

    See Also:
    :   - [`getRemainingName()`](#getRemainingName())
        - [`appendRemainingName(javax.naming.Name)`](#appendRemainingName(javax.naming.Name))
        - [`appendRemainingComponent(java.lang.String)`](#appendRemainingComponent(java.lang.String))
  + ### appendRemainingName

    public void appendRemainingName([Name](../Name.md "interface in javax.naming") name)

    Adds components to the end of remaining name.

    Parameters:
    :   `name` - The components to add. Can be null.

    See Also:
    :   - [`getRemainingName()`](#getRemainingName())
        - [`setRemainingName(javax.naming.Name)`](#setRemainingName(javax.naming.Name))
        - [`appendRemainingComponent(java.lang.String)`](#appendRemainingComponent(java.lang.String))
  + ### appendRemainingComponent

    public void appendRemainingComponent([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Adds a single component to the end of remaining name.

    Parameters:
    :   `name` - The component to add. Can be null.

    See Also:
    :   - [`getRemainingName()`](#getRemainingName())
        - [`appendRemainingName(javax.naming.Name)`](#appendRemainingName(javax.naming.Name))
  + ### setResolvedObj

    public void setResolvedObj([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Sets the resolved Object field of this result to obj.

    Parameters:
    :   `obj` - The object to use for setting the resolved obj field.
        Cannot be null.

    See Also:
    :   - [`getResolvedObj()`](#getResolvedObj())