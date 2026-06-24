Module [java.management](../../../module-summary.md)

Package [javax.management.openmbean](package-summary.md)

# Class CompositeDataInvocationHandler

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.openmbean.CompositeDataInvocationHandler

All Implemented Interfaces:
:   `InvocationHandler`

---

public class CompositeDataInvocationHandler
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [InvocationHandler](../../../../java.base/java/lang/reflect/InvocationHandler.md "interface in java.lang.reflect")

An [`InvocationHandler`](../../../../java.base/java/lang/reflect/InvocationHandler.md "interface in java.lang.reflect") that forwards getter methods to a
[`CompositeData`](CompositeData.md "interface in javax.management.openmbean"). If you have an interface that contains
only getter methods (such as `String getName()` or
`boolean isActive()`) then you can use this class in
conjunction with the [`Proxy`](../../../../java.base/java/lang/reflect/Proxy.md "class in java.lang.reflect") class to produce an implementation
of the interface where each getter returns the value of the
corresponding item in a `CompositeData`.

For example, suppose you have an interface like this:
> ```
>    public interface NamedNumber {
>        public int getNumber();
>        public String getName();
>    }
> ```

and a `CompositeData` constructed like this:
> ```
>    CompositeData cd =
>        new CompositeDataSupport(
>            someCompositeType,
>            new String[] {"number", "name"},
>            new Object[] {5, "five"}
>        );
> ```

then you can construct an object implementing `NamedNumber`
and backed by the object `cd` like this:
> ```
>    InvocationHandler handler =
>        new CompositeDataInvocationHandler(cd);
>    NamedNumber nn = (NamedNumber)
>        Proxy.newProxyInstance(NamedNumber.class.getClassLoader(),
>                               new Class[] {NamedNumber.class},
>                               handler);
> ```

A call to `nn.getNumber()` will then return **5**.

If the first letter of the property defined by a getter is a
capital, then this handler will look first for an item in the
`CompositeData` beginning with a capital, then, if that is
not found, for an item beginning with the corresponding lowercase
letter or code point. For a getter called `getNumber()`, the
handler will first look for an item called `Number`, then for
`number`. If the getter is called `getnumber()`, then
the item must be called `number`.

If the method given to [`invoke`](#invoke(java.lang.Object,java.lang.reflect.Method,java.lang.Object%5B%5D)) is the method
`boolean equals(Object)` inherited from `Object`, then
it will return true if and only if the argument is a `Proxy`
whose `InvocationHandler` is also a `CompositeDataInvocationHandler` and whose backing `CompositeData` is equal (not necessarily identical) to this
object's. If the method given to `invoke` is the method
`int hashCode()` inherited from `Object`, then it will
return a value that is consistent with this definition of `equals`: if two objects are equal according to `equals`, then
they will have the same `hashCode`.

Since:
:   1.6

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CompositeDataInvocationHandler(CompositeData compositeData)`

  Construct a handler backed by the given `CompositeData`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `CompositeData`

  `getCompositeData()`

  Return the `CompositeData` that was supplied to the
  constructor.

  `Object`

  `invoke(Object proxy,
  Method method,
  Object[] args)`

  Processes a method invocation on a proxy instance and returns
  the result.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### CompositeDataInvocationHandler

    public CompositeDataInvocationHandler([CompositeData](CompositeData.md "interface in javax.management.openmbean") compositeData)

    Construct a handler backed by the given `CompositeData`.

    Parameters:
    :   `compositeData` - the `CompositeData` that will supply
        information to getters.

    Throws:
    :   `IllegalArgumentException` - if `compositeData`
        is null.
* ## Method Details

  + ### getCompositeData

    public [CompositeData](CompositeData.md "interface in javax.management.openmbean") getCompositeData()

    Return the `CompositeData` that was supplied to the
    constructor.

    Returns:
    :   the `CompositeData` that this handler is backed
        by. This is never null.
  + ### invoke

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") invoke([Object](../../../../java.base/java/lang/Object.md "class in java.lang") proxy,
    [Method](../../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") method,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang")[] args)
    throws [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

    Description copied from interface: `InvocationHandler`

    Processes a method invocation on a proxy instance and returns
    the result. This method will be invoked on an invocation handler
    when a method is invoked on a proxy instance that it is
    associated with.

    Specified by:
    :   `invoke` in interface `InvocationHandler`

    Parameters:
    :   `proxy` - the proxy instance that the method was invoked on
    :   `method` - the `Method` instance corresponding to
        the interface method invoked on the proxy instance. The declaring
        class of the `Method` object will be the interface that
        the method was declared in, which may be a superinterface of the
        proxy interface that the proxy class inherits the method through.
    :   `args` - an array of objects containing the values of the
        arguments passed in the method invocation on the proxy instance,
        or `null` if interface method takes no arguments.
        Arguments of primitive types are wrapped in instances of the
        appropriate primitive wrapper class, such as
        `java.lang.Integer` or `java.lang.Boolean`.

    Returns:
    :   the value to return from the method invocation on the
        proxy instance. If the declared return type of the interface
        method is a primitive type, then the value returned by
        this method must be an instance of the corresponding primitive
        wrapper class; otherwise, it must be a type assignable to the
        declared return type. If the value returned by this method is
        `null` and the interface method's return type is
        primitive, then a `NullPointerException` will be
        thrown by the method invocation on the proxy instance. If the
        value returned by this method is otherwise not compatible with
        the interface method's declared return type as described above,
        a `ClassCastException` will be thrown by the method
        invocation on the proxy instance.

    Throws:
    :   `Throwable` - the exception to throw from the method
        invocation on the proxy instance. The exception's type must be
        assignable either to any of the exception types declared in the
        `throws` clause of the interface method or to the
        unchecked exception types `java.lang.RuntimeException`
        or `java.lang.Error`. If a checked exception is
        thrown by this method that is not assignable to any of the
        exception types declared in the `throws` clause of
        the interface method, then an
        [`UndeclaredThrowableException`](../../../../java.base/java/lang/reflect/UndeclaredThrowableException.md "class in java.lang.reflect") containing the
        exception that was thrown by this method will be thrown by the
        method invocation on the proxy instance.

    See Also:
    :   - [`UndeclaredThrowableException`](../../../../java.base/java/lang/reflect/UndeclaredThrowableException.md "class in java.lang.reflect")