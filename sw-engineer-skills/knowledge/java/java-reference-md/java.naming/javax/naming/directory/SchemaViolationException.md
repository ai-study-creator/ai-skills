Module [java.naming](../../../module-summary.md)

Package [javax.naming.directory](package-summary.md)

# Class SchemaViolationException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.naming.NamingException](../NamingException.md "class in javax.naming")

javax.naming.directory.SchemaViolationException

All Implemented Interfaces:
:   `Serializable`

---

public class SchemaViolationException
extends [NamingException](../NamingException.md "class in javax.naming")

This exception is thrown when a method
in some ways violates the schema. An example of schema violation
is modifying attributes of an object that violates the object's
schema definition. Another example is renaming or moving an object
to a part of the namespace that violates the namespace's
schema definition.

Synchronization and serialization issues that apply to NamingException
apply directly here.

Since:
:   1.3

See Also:
:   * [`Context.bind(javax.naming.Name, java.lang.Object)`](../Context.md#bind(javax.naming.Name,java.lang.Object))
    * [`DirContext.bind(javax.naming.Name, java.lang.Object, javax.naming.directory.Attributes)`](DirContext.md#bind(javax.naming.Name,java.lang.Object,javax.naming.directory.Attributes))
    * [`Context.rebind(javax.naming.Name, java.lang.Object)`](../Context.md#rebind(javax.naming.Name,java.lang.Object))
    * [`DirContext.rebind(javax.naming.Name, java.lang.Object, javax.naming.directory.Attributes)`](DirContext.md#rebind(javax.naming.Name,java.lang.Object,javax.naming.directory.Attributes))
    * [`DirContext.createSubcontext(javax.naming.Name, javax.naming.directory.Attributes)`](DirContext.md#createSubcontext(javax.naming.Name,javax.naming.directory.Attributes))
    * [`Context.createSubcontext(javax.naming.Name)`](../Context.md#createSubcontext(javax.naming.Name))
    * [`DirContext.modifyAttributes(javax.naming.Name, int, javax.naming.directory.Attributes)`](DirContext.md#modifyAttributes(javax.naming.Name,int,javax.naming.directory.Attributes))
    * [Serialized Form](../../../../serialized-form.md#javax.naming.directory.SchemaViolationException)

* ## Field Summary

  ### Fields inherited from class javax.naming.[NamingException](../NamingException.md "class in javax.naming")

  `remainingName, resolvedName, resolvedObj, rootException`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SchemaViolationException()`

  Constructs a new instance of SchemaViolationException.

  `SchemaViolationException(String explanation)`

  Constructs a new instance of SchemaViolationException
  using the explanation supplied.
* ## Method Summary

  ### Methods inherited from class javax.naming.[NamingException](../NamingException.md "class in javax.naming")

  `appendRemainingComponent, appendRemainingName, getCause, getExplanation, getRemainingName, getResolvedName, getResolvedObj, getRootCause, initCause, setRemainingName, setResolvedName, setResolvedObj, setRootCause, toString, toString`

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SchemaViolationException

    public SchemaViolationException()

    Constructs a new instance of SchemaViolationException.
    All fields are set to null.
  + ### SchemaViolationException

    public SchemaViolationException([String](../../../../java.base/java/lang/String.md "class in java.lang") explanation)

    Constructs a new instance of SchemaViolationException
    using the explanation supplied. All other fields are set to null.

    Parameters:
    :   `explanation` - Detail about this exception. Can be null.

    See Also:
    :   - [`Throwable.getMessage()`](../../../../java.base/java/lang/Throwable.md#getMessage())