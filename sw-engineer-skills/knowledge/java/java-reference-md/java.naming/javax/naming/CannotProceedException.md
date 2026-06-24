Module [java.naming](../../module-summary.md)

Package [javax.naming](package-summary.md)

# Class CannotProceedException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.naming.NamingException](NamingException.md "class in javax.naming")

javax.naming.CannotProceedException

All Implemented Interfaces:
:   `Serializable`

---

public class CannotProceedException
extends [NamingException](NamingException.md "class in javax.naming")

This exception is thrown to indicate that the operation reached
a point in the name where the operation cannot proceed any further.
When performing an operation on a composite name, a naming service
provider may reach a part of the name that does not belong to its
namespace. At that point, it can construct a
CannotProceedException and then invoke methods provided by
javax.naming.spi.NamingManager (such as getContinuationContext())
to locate another provider to continue the operation. If this is
not possible, this exception is raised to the caller of the
context operation.

If the program wants to handle this exception in particular, it
should catch CannotProceedException explicitly before attempting to
catch NamingException.

A CannotProceedException instance is not synchronized against concurrent
multithreaded access. Multiple threads trying to access and modify
CannotProceedException should lock the object.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.naming.CannotProceedException)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Name`

  `altName`

  Contains the name of the resolved object, relative
  to the context `altNameCtx`.

  `protected Context`

  `altNameCtx`

  Contains the context relative to which
  `altName` is specified.

  `protected Hashtable<?,?>`

  `environment`

  Contains the environment
  relevant for the Context or DirContext method that cannot proceed.

  `protected Name`

  `remainingNewName`

  Contains the remaining unresolved part of the second
  "name" argument to Context.rename().

  ### Fields inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `remainingName, resolvedName, resolvedObj, rootException`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CannotProceedException()`

  Constructs a new instance of CannotProceedException.

  `CannotProceedException(String explanation)`

  Constructs a new instance of CannotProceedException using an
  explanation.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Name`

  `getAltName()`

  Retrieves the `altName` field of this exception.

  `Context`

  `getAltNameCtx()`

  Retrieves the `altNameCtx` field of this exception.

  `Hashtable<?,?>`

  `getEnvironment()`

  Retrieves the environment that was in effect when this exception
  was created.

  `Name`

  `getRemainingNewName()`

  Retrieves the "remaining new name" field of this exception, which is
  used when this exception is thrown during a rename() operation.

  `void`

  `setAltName(Name altName)`

  Sets the `altName` field of this exception.

  `void`

  `setAltNameCtx(Context altNameCtx)`

  Sets the `altNameCtx` field of this exception.

  `void`

  `setEnvironment(Hashtable<?,?> environment)`

  Sets the environment that will be returned when getEnvironment()
  is called.

  `void`

  `setRemainingNewName(Name newName)`

  Sets the "remaining new name" field of this exception.

  ### Methods inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `appendRemainingComponent, appendRemainingName, getCause, getExplanation, getRemainingName, getResolvedName, getResolvedObj, getRootCause, initCause, setRemainingName, setResolvedName, setResolvedObj, setRootCause, toString, toString`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### remainingNewName

    protected [Name](Name.md "interface in javax.naming") remainingNewName

    Contains the remaining unresolved part of the second
    "name" argument to Context.rename().
    This information is necessary for
    continuing the Context.rename() operation.

    This field is initialized to null.
    It should not be manipulated directly: it should
    be accessed and updated using getRemainingName() and setRemainingName().

    See Also:
    :   - [`getRemainingNewName()`](#getRemainingNewName())
        - [`setRemainingNewName(javax.naming.Name)`](#setRemainingNewName(javax.naming.Name))
  + ### environment

    protected [Hashtable](../../../java.base/java/util/Hashtable.md "class in java.util")<?,?> environment

    Contains the environment
    relevant for the Context or DirContext method that cannot proceed.

    This field is initialized to null.
    It should not be manipulated directly: it should be accessed
    and updated using getEnvironment() and setEnvironment().

    See Also:
    :   - [`getEnvironment()`](#getEnvironment())
        - [`setEnvironment(java.util.Hashtable<?, ?>)`](#setEnvironment(java.util.Hashtable))
  + ### altName

    protected [Name](Name.md "interface in javax.naming") altName

    Contains the name of the resolved object, relative
    to the context `altNameCtx`. It is a composite name.
    If null, then no name is specified.
    See the `javax.naming.spi.ObjectFactory.getObjectInstance`
    method for details on how this is used.

    This field is initialized to null.
    It should not be manipulated directly: it should
    be accessed and updated using getAltName() and setAltName().

    See Also:
    :   - [`getAltName()`](#getAltName())
        - [`setAltName(javax.naming.Name)`](#setAltName(javax.naming.Name))
        - [`altNameCtx`](#altNameCtx)
        - [`ObjectFactory.getObjectInstance(java.lang.Object, javax.naming.Name, javax.naming.Context, java.util.Hashtable<?, ?>)`](spi/ObjectFactory.md#getObjectInstance(java.lang.Object,javax.naming.Name,javax.naming.Context,java.util.Hashtable))
  + ### altNameCtx

    protected [Context](Context.md "interface in javax.naming") altNameCtx

    Contains the context relative to which
    `altName` is specified. If null, then the default initial
    context is implied.
    See the `javax.naming.spi.ObjectFactory.getObjectInstance`
    method for details on how this is used.

    This field is initialized to null.
    It should not be manipulated directly: it should
    be accessed and updated using getAltNameCtx() and setAltNameCtx().

    See Also:
    :   - [`getAltNameCtx()`](#getAltNameCtx())
        - [`setAltNameCtx(javax.naming.Context)`](#setAltNameCtx(javax.naming.Context))
        - [`altName`](#altName)
        - [`ObjectFactory.getObjectInstance(java.lang.Object, javax.naming.Name, javax.naming.Context, java.util.Hashtable<?, ?>)`](spi/ObjectFactory.md#getObjectInstance(java.lang.Object,javax.naming.Name,javax.naming.Context,java.util.Hashtable))
* ## Constructor Details

  + ### CannotProceedException

    public CannotProceedException([String](../../../java.base/java/lang/String.md "class in java.lang") explanation)

    Constructs a new instance of CannotProceedException using an
    explanation. All unspecified fields default to null.

    Parameters:
    :   `explanation` - A possibly null string containing additional
        detail about this exception.
        If null, this exception has no detail message.

    See Also:
    :   - [`Throwable.getMessage()`](../../../java.base/java/lang/Throwable.md#getMessage())
  + ### CannotProceedException

    public CannotProceedException()

    Constructs a new instance of CannotProceedException.
    All fields default to null.
* ## Method Details

  + ### getEnvironment

    public [Hashtable](../../../java.base/java/util/Hashtable.md "class in java.util")<?,?> getEnvironment()

    Retrieves the environment that was in effect when this exception
    was created.

    Returns:
    :   Possibly null environment property set.
        null means no environment was recorded for this exception.

    See Also:
    :   - [`setEnvironment(java.util.Hashtable<?, ?>)`](#setEnvironment(java.util.Hashtable))
  + ### setEnvironment

    public void setEnvironment([Hashtable](../../../java.base/java/util/Hashtable.md "class in java.util")<?,?> environment)

    Sets the environment that will be returned when getEnvironment()
    is called.

    Parameters:
    :   `environment` - A possibly null environment property set.
        null means no environment is being recorded for
        this exception.

    See Also:
    :   - [`getEnvironment()`](#getEnvironment())
  + ### getRemainingNewName

    public [Name](Name.md "interface in javax.naming") getRemainingNewName()

    Retrieves the "remaining new name" field of this exception, which is
    used when this exception is thrown during a rename() operation.

    Returns:
    :   The possibly null part of the new name that has not been resolved.
        It is a composite name. It can be null, which means
        the remaining new name field has not been set.

    See Also:
    :   - [`setRemainingNewName(javax.naming.Name)`](#setRemainingNewName(javax.naming.Name))
  + ### setRemainingNewName

    public void setRemainingNewName([Name](Name.md "interface in javax.naming") newName)

    Sets the "remaining new name" field of this exception.
    This is the value returned by `getRemainingNewName()`.

    `newName` is a composite name. If the intent is to set
    this field using a compound name or string, you must
    "stringify" the compound name, and create a composite
    name with a single component using the string. You can then
    invoke this method using the resulting composite name.

    A copy of `newName` is made and stored.
    Subsequent changes to `name` does not
    affect the copy in this NamingException and vice versa.

    Parameters:
    :   `newName` - The possibly null name to set the "remaining new name" to.
        If null, it sets the remaining name field to null.

    See Also:
    :   - [`getRemainingNewName()`](#getRemainingNewName())
  + ### getAltName

    public [Name](Name.md "interface in javax.naming") getAltName()

    Retrieves the `altName` field of this exception.
    This is the name of the resolved object, relative to the context
    `altNameCtx`. It will be used during a subsequent call to the
    `javax.naming.spi.ObjectFactory.getObjectInstance` method.

    Returns:
    :   The name of the resolved object, relative to
        `altNameCtx`.
        It is a composite name. If null, then no name is specified.

    See Also:
    :   - [`setAltName(javax.naming.Name)`](#setAltName(javax.naming.Name))
        - [`getAltNameCtx()`](#getAltNameCtx())
        - [`ObjectFactory.getObjectInstance(java.lang.Object, javax.naming.Name, javax.naming.Context, java.util.Hashtable<?, ?>)`](spi/ObjectFactory.md#getObjectInstance(java.lang.Object,javax.naming.Name,javax.naming.Context,java.util.Hashtable))
  + ### setAltName

    public void setAltName([Name](Name.md "interface in javax.naming") altName)

    Sets the `altName` field of this exception.

    Parameters:
    :   `altName` - The name of the resolved object, relative to
        `altNameCtx`.
        It is a composite name.
        If null, then no name is specified.

    See Also:
    :   - [`getAltName()`](#getAltName())
        - [`setAltNameCtx(javax.naming.Context)`](#setAltNameCtx(javax.naming.Context))
  + ### getAltNameCtx

    public [Context](Context.md "interface in javax.naming") getAltNameCtx()

    Retrieves the `altNameCtx` field of this exception.
    This is the context relative to which `altName` is named.
    It will be used during a subsequent call to the
    `javax.naming.spi.ObjectFactory.getObjectInstance` method.

    Returns:
    :   The context relative to which `altName` is named.
        If null, then the default initial context is implied.

    See Also:
    :   - [`setAltNameCtx(javax.naming.Context)`](#setAltNameCtx(javax.naming.Context))
        - [`getAltName()`](#getAltName())
        - [`ObjectFactory.getObjectInstance(java.lang.Object, javax.naming.Name, javax.naming.Context, java.util.Hashtable<?, ?>)`](spi/ObjectFactory.md#getObjectInstance(java.lang.Object,javax.naming.Name,javax.naming.Context,java.util.Hashtable))
  + ### setAltNameCtx

    public void setAltNameCtx([Context](Context.md "interface in javax.naming") altNameCtx)

    Sets the `altNameCtx` field of this exception.

    Parameters:
    :   `altNameCtx` - The context relative to which `altName`
        is named. If null, then the default initial context
        is implied.

    See Also:
    :   - [`getAltNameCtx()`](#getAltNameCtx())
        - [`setAltName(javax.naming.Name)`](#setAltName(javax.naming.Name))