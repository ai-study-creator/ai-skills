Module [java.naming](../../../module-summary.md)

Package [javax.naming.spi](package-summary.md)

# Class DirectoryManager

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.naming.spi.NamingManager](NamingManager.md "class in javax.naming.spi")

javax.naming.spi.DirectoryManager

---

public class DirectoryManager
extends [NamingManager](NamingManager.md "class in javax.naming.spi")

This class contains methods for supporting `DirContext`
implementations.

This class is an extension of `NamingManager`. It contains methods
for use by service providers for accessing object factories and
state factories, and for getting continuation contexts for
supporting federation.

`DirectoryManager` is safe for concurrent access by multiple threads.

Except as otherwise noted,
a `Name`, `Attributes`, or environment parameter
passed to any method is owned by the caller.
The implementation will not modify the object or keep a reference
to it, although it may keep a reference to a clone or copy.

Since:
:   1.3

See Also:
:   * [`DirObjectFactory`](DirObjectFactory.md "interface in javax.naming.spi")
    * [`DirStateFactory`](DirStateFactory.md "interface in javax.naming.spi")

* ## Field Summary

  ### Fields inherited from class javax.naming.spi.[NamingManager](NamingManager.md "class in javax.naming.spi")

  `CPE`
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static DirContext`

  `getContinuationDirContext(CannotProceedException cpe)`

  Creates a context in which to continue a `DirContext` operation.

  `static Object`

  `getObjectInstance(Object refInfo,
  Name name,
  Context nameCtx,
  Hashtable<?,?> environment,
  Attributes attrs)`

  Creates an instance of an object for the specified object,
  attributes, and environment.

  `static DirStateFactory.Result`

  `getStateToBind(Object obj,
  Name name,
  Context nameCtx,
  Hashtable<?,?> environment,
  Attributes attrs)`

  Retrieves the state of an object for binding when given the original
  object and its attributes.

  ### Methods inherited from class javax.naming.spi.[NamingManager](NamingManager.md "class in javax.naming.spi")

  `getContinuationContext, getInitialContext, getObjectInstance, getStateToBind, getURLContext, hasInitialContextFactoryBuilder, setInitialContextFactoryBuilder, setObjectFactoryBuilder`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### getContinuationDirContext

    public static [DirContext](../directory/DirContext.md "interface in javax.naming.directory") getContinuationDirContext([CannotProceedException](../CannotProceedException.md "class in javax.naming") cpe)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Creates a context in which to continue a `DirContext` operation.
    Operates just like `NamingManager.getContinuationContext()`,
    only the continuation context returned is a `DirContext`.

    Parameters:
    :   `cpe` - The non-null exception that triggered this continuation.

    Returns:
    :   A non-null `DirContext` object for continuing the operation.

    Throws:
    :   `NamingException` - If a naming exception occurred.

    See Also:
    :   - [`NamingManager.getContinuationContext(CannotProceedException)`](NamingManager.md#getContinuationContext(javax.naming.CannotProceedException))
  + ### getObjectInstance

    public static [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getObjectInstance([Object](../../../../java.base/java/lang/Object.md "class in java.lang") refInfo,
    [Name](../Name.md "interface in javax.naming") name,
    [Context](../Context.md "interface in javax.naming") nameCtx,
    [Hashtable](../../../../java.base/java/util/Hashtable.md "class in java.util")<?,?> environment,
    [Attributes](../directory/Attributes.md "interface in javax.naming.directory") attrs)
    throws [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

    Creates an instance of an object for the specified object,
    attributes, and environment.

    This method is the same as `NamingManager.getObjectInstance`
    except for the following differences:
    - It accepts an `Attributes` parameter that contains attributes
      associated with the object. The `DirObjectFactory` might use these
      attributes to save having to look them up from the directory.- The object factories tried must implement either
        `ObjectFactory` or `DirObjectFactory`.
        If it implements `DirObjectFactory`,
        `DirObjectFactory.getObjectInstance()` is used, otherwise,
        `ObjectFactory.getObjectInstance()` is used.Service providers that implement the `DirContext` interface
    should use this method, not `NamingManager.getObjectInstance()`.

    Parameters:
    :   `refInfo` - The possibly null object for which to create an object.
    :   `name` - The name of this object relative to `nameCtx`.
        Specifying a name is optional; if it is
        omitted, `name` should be null.
    :   `nameCtx` - The context relative to which the `name`
        parameter is specified. If null, `name` is
        relative to the default initial context.
    :   `environment` - The possibly null environment to
        be used in the creation of the object factory and the object.
    :   `attrs` - The possibly null attributes associated with refInfo.
        This might not be the complete set of attributes for refInfo;
        you might be able to read more attributes from the directory.

    Returns:
    :   An object created using `refInfo` and `attrs`; or
        `refInfo` if an object cannot be created by
        a factory.

    Throws:
    :   `NamingException` - If a naming exception was encountered
        while attempting to get a URL context, or if one of the
        factories accessed throws a NamingException.
    :   `Exception` - If one of the factories accessed throws an
        exception, or if an error was encountered while loading
        and instantiating the factory and object classes.
        A factory should only throw an exception if it does not want
        other factories to be used in an attempt to create an object.
        See `DirObjectFactory.getObjectInstance()`.

    Since:
    :   1.3

    See Also:
    :   - [`NamingManager.getURLContext(java.lang.String, java.util.Hashtable<?, ?>)`](NamingManager.md#getURLContext(java.lang.String,java.util.Hashtable))
        - [`DirObjectFactory`](DirObjectFactory.md "interface in javax.naming.spi")
        - [`DirObjectFactory.getObjectInstance(java.lang.Object, javax.naming.Name, javax.naming.Context, java.util.Hashtable<?, ?>, javax.naming.directory.Attributes)`](DirObjectFactory.md#getObjectInstance(java.lang.Object,javax.naming.Name,javax.naming.Context,java.util.Hashtable,javax.naming.directory.Attributes))
  + ### getStateToBind

    public static [DirStateFactory.Result](DirStateFactory.Result.md "class in javax.naming.spi") getStateToBind([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj,
    [Name](../Name.md "interface in javax.naming") name,
    [Context](../Context.md "interface in javax.naming") nameCtx,
    [Hashtable](../../../../java.base/java/util/Hashtable.md "class in java.util")<?,?> environment,
    [Attributes](../directory/Attributes.md "interface in javax.naming.directory") attrs)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Retrieves the state of an object for binding when given the original
    object and its attributes.

    This method is like `NamingManager.getStateToBind` except
    for the following differences:
    - It accepts an `Attributes` parameter containing attributes
      that were passed to the `DirContext.bind()` method.- It returns a non-null `DirStateFactory.Result` instance
        containing the object to be bound, and the attributes to
        accompany the binding. Either the object or the attributes may be null.- The state factories tried must each implement either
          `StateFactory` or `DirStateFactory`.
          If it implements `DirStateFactory`, then
          `DirStateFactory.getStateToBind()` is called; otherwise,
          `StateFactory.getStateToBind()` is called.Service providers that implement the `DirContext` interface
    should use this method, not `NamingManager.getStateToBind()`.

    See NamingManager.getStateToBind() for a description of how
    the list of state factories to be tried is determined.

    The object returned by this method is owned by the caller.
    The implementation will not subsequently modify it.
    It will contain either a new `Attributes` object that is
    likewise owned by the caller, or a reference to the original
    `attrs` parameter.

    Parameters:
    :   `obj` - The non-null object for which to get state to bind.
    :   `name` - The name of this object relative to `nameCtx`,
        or null if no name is specified.
    :   `nameCtx` - The context relative to which the `name`
        parameter is specified, or null if `name` is
        relative to the default initial context.
    :   `environment` - The possibly null environment to
        be used in the creation of the state factory and
        the object's state.
    :   `attrs` - The possibly null Attributes that is to be bound with the
        object.

    Returns:
    :   A non-null DirStateFactory.Result containing
        the object and attributes to be bound.
        If no state factory returns a non-null answer, the result will contain
        the object (`obj`) itself with the original attributes.

    Throws:
    :   `NamingException` - If a naming exception was encountered
        while using the factories.
        A factory should only throw an exception if it does not want
        other factories to be used in an attempt to create an object.
        See `DirStateFactory.getStateToBind()`.

    Since:
    :   1.3

    See Also:
    :   - [`DirStateFactory`](DirStateFactory.md "interface in javax.naming.spi")
        - [`DirStateFactory.getStateToBind(java.lang.Object, javax.naming.Name, javax.naming.Context, java.util.Hashtable<?, ?>, javax.naming.directory.Attributes)`](DirStateFactory.md#getStateToBind(java.lang.Object,javax.naming.Name,javax.naming.Context,java.util.Hashtable,javax.naming.directory.Attributes))
        - [`NamingManager.getStateToBind(java.lang.Object, javax.naming.Name, javax.naming.Context, java.util.Hashtable<?, ?>)`](NamingManager.md#getStateToBind(java.lang.Object,javax.naming.Name,javax.naming.Context,java.util.Hashtable))