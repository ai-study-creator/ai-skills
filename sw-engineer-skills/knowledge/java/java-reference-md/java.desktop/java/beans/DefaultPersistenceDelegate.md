Module [java.desktop](../../module-summary.md)

Package [java.beans](package-summary.md)

# Class DefaultPersistenceDelegate

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.beans.PersistenceDelegate](PersistenceDelegate.md "class in java.beans")

java.beans.DefaultPersistenceDelegate

---

public class DefaultPersistenceDelegate
extends [PersistenceDelegate](PersistenceDelegate.md "class in java.beans")

The `DefaultPersistenceDelegate` is a concrete implementation of
the abstract `PersistenceDelegate` class and
is the delegate used by default for classes about
which no information is available. The `DefaultPersistenceDelegate`
provides, version resilient, public API-based persistence for
classes that follow the JavaBeans conventions without any class specific
configuration.

The key assumptions are that the class has a nullary constructor
and that its state is accurately represented by matching pairs
of "setter" and "getter" methods in the order they are returned
by the Introspector.
In addition to providing code-free persistence for JavaBeans,
the `DefaultPersistenceDelegate` provides a convenient means
to effect persistent storage for classes that have a constructor
that, while not nullary, simply requires some property values
as arguments.

Since:
:   1.4

See Also:
:   * [`DefaultPersistenceDelegate(String[])`](#%3Cinit%3E(java.lang.String%5B%5D))
    * [`Introspector`](Introspector.md "class in java.beans")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DefaultPersistenceDelegate()`

  Creates a persistence delegate for a class with a nullary constructor.

  `DefaultPersistenceDelegate(String[] constructorPropertyNames)`

  Creates a default persistence delegate for a class with a
  constructor whose arguments are the values of the property
  names as specified by `constructorPropertyNames`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `initialize(Class<?> type,
  Object oldInstance,
  Object newInstance,
  Encoder out)`

  This default implementation of the `initialize` method assumes
  all state held in objects of this type is exposed via the
  matching pairs of "setter" and "getter" methods in the order
  they are returned by the Introspector.

  `protected Expression`

  `instantiate(Object oldInstance,
  Encoder out)`

  This default implementation of the `instantiate` method returns
  an expression containing the predefined method name "new" which denotes a
  call to a constructor with the arguments as specified in
  the `DefaultPersistenceDelegate`'s constructor.

  `protected boolean`

  `mutatesTo(Object oldInstance,
  Object newInstance)`

  If the number of arguments in the specified constructor is non-zero and
  the class of `oldInstance` explicitly declares an "equals" method
  this method returns the value of `oldInstance.equals(newInstance)`.

  ### Methods inherited from class java.beans.[PersistenceDelegate](PersistenceDelegate.md "class in java.beans")

  `writeObject`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DefaultPersistenceDelegate

    public DefaultPersistenceDelegate()

    Creates a persistence delegate for a class with a nullary constructor.

    See Also:
    :   - [`DefaultPersistenceDelegate(java.lang.String[])`](#%3Cinit%3E(java.lang.String%5B%5D))
  + ### DefaultPersistenceDelegate

    public DefaultPersistenceDelegate([String](../../../java.base/java/lang/String.md "class in java.lang")[] constructorPropertyNames)

    Creates a default persistence delegate for a class with a
    constructor whose arguments are the values of the property
    names as specified by `constructorPropertyNames`.
    The constructor arguments are created by
    evaluating the property names in the order they are supplied.
    To use this class to specify a single preferred constructor for use
    in the serialization of a particular type, we state the
    names of the properties that make up the constructor's
    arguments. For example, the `Font` class which
    does not define a nullary constructor can be handled
    with the following persistence delegate:

    ```
         new DefaultPersistenceDelegate(new String[]{"name", "style", "size"});
    ```

    Parameters:
    :   `constructorPropertyNames` - The property names for the arguments of this constructor.

    See Also:
    :   - [`instantiate(java.lang.Object, java.beans.Encoder)`](#instantiate(java.lang.Object,java.beans.Encoder))
* ## Method Details

  + ### mutatesTo

    protected boolean mutatesTo([Object](../../../java.base/java/lang/Object.md "class in java.lang") oldInstance,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") newInstance)

    If the number of arguments in the specified constructor is non-zero and
    the class of `oldInstance` explicitly declares an "equals" method
    this method returns the value of `oldInstance.equals(newInstance)`.
    Otherwise, this method uses the superclass's definition which returns true if the
    classes of the two instances are equal.

    Overrides:
    :   `mutatesTo` in class `PersistenceDelegate`

    Parameters:
    :   `oldInstance` - The instance to be copied.
    :   `newInstance` - The instance that is to be modified.

    Returns:
    :   True if an equivalent copy of `newInstance` may be
        created by applying a series of mutations to `oldInstance`.

    See Also:
    :   - [`DefaultPersistenceDelegate(String[])`](#%3Cinit%3E(java.lang.String%5B%5D))
  + ### instantiate

    protected [Expression](Expression.md "class in java.beans") instantiate([Object](../../../java.base/java/lang/Object.md "class in java.lang") oldInstance,
    [Encoder](Encoder.md "class in java.beans") out)

    This default implementation of the `instantiate` method returns
    an expression containing the predefined method name "new" which denotes a
    call to a constructor with the arguments as specified in
    the `DefaultPersistenceDelegate`'s constructor.

    Specified by:
    :   `instantiate` in class `PersistenceDelegate`

    Parameters:
    :   `oldInstance` - The instance to be instantiated.
    :   `out` - The code output stream.

    Returns:
    :   An expression whose value is `oldInstance`.

    Throws:
    :   `NullPointerException` - if `out` is `null`
        and this value is used in the method

    See Also:
    :   - [`DefaultPersistenceDelegate(String[])`](#%3Cinit%3E(java.lang.String%5B%5D))
  + ### initialize

    protected void initialize([Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> type,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") oldInstance,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") newInstance,
    [Encoder](Encoder.md "class in java.beans") out)

    This default implementation of the `initialize` method assumes
    all state held in objects of this type is exposed via the
    matching pairs of "setter" and "getter" methods in the order
    they are returned by the Introspector. If a property descriptor
    defines a "transient" attribute with a value equal to
    `Boolean.TRUE` the property is ignored by this
    default implementation. Note that this use of the word
    "transient" is quite independent of the field modifier
    that is used by the `ObjectOutputStream`.

    For each non-transient property, an expression is created
    in which the nullary "getter" method is applied
    to the `oldInstance`. The value of this
    expression is the value of the property in the instance that is
    being serialized. If the value of this expression
    in the cloned environment `mutatesTo` the
    target value, the new value is initialized to make it
    equivalent to the old value. In this case, because
    the property value has not changed there is no need to
    call the corresponding "setter" method and no statement
    is emitted. If not however, the expression for this value
    is replaced with another expression (normally a constructor)
    and the corresponding "setter" method is called to install
    the new property value in the object. This scheme removes
    default information from the output produced by streams
    using this delegate.

    In passing these statements to the output stream, where they
    will be executed, side effects are made to the `newInstance`.
    In most cases this allows the problem of properties
    whose values depend on each other to actually help the
    serialization process by making the number of statements
    that need to be written to the output smaller. In general,
    the problem of handling interdependent properties is reduced to
    that of finding an order for the properties in
    a class such that no property value depends on the value of
    a subsequent property.

    Overrides:
    :   `initialize` in class `PersistenceDelegate`

    Parameters:
    :   `type` - the type of the instances
    :   `oldInstance` - The instance to be copied.
    :   `newInstance` - The instance that is to be modified.
    :   `out` - The stream to which any initialization statements should be written.

    Throws:
    :   `NullPointerException` - if `out` is `null`

    See Also:
    :   - [`Introspector.getBeanInfo(java.lang.Class<?>)`](Introspector.md#getBeanInfo(java.lang.Class))
        - [`PropertyDescriptor`](PropertyDescriptor.md "class in java.beans")