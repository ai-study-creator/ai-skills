Module [java.naming](../../../module-summary.md)

Package [javax.naming.directory](package-summary.md)

# Class AttributeModificationException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.naming.NamingException](../NamingException.md "class in javax.naming")

javax.naming.directory.AttributeModificationException

All Implemented Interfaces:
:   `Serializable`

---

public class AttributeModificationException
extends [NamingException](../NamingException.md "class in javax.naming")

This exception is thrown when an attempt is
made to add, or remove, or modify an attribute, its identifier,
or its values that conflicts with the attribute's (schema) definition
or the attribute's state.
It is thrown in response to DirContext.modifyAttributes().
It contains a list of modifications that have not been performed, in the
order that they were supplied to modifyAttributes().
If the list is null, none of the modifications were performed successfully.

An AttributeModificationException instance is not synchronized
against concurrent multithreaded access. Multiple threads trying
to access and modify a single AttributeModification instance
should lock the object.

Since:
:   1.3

See Also:
:   * [`DirContext.modifyAttributes(javax.naming.Name, int, javax.naming.directory.Attributes)`](DirContext.md#modifyAttributes(javax.naming.Name,int,javax.naming.directory.Attributes))
    * [Serialized Form](../../../../serialized-form.md#javax.naming.directory.AttributeModificationException)

* ## Field Summary

  ### Fields inherited from class javax.naming.[NamingException](../NamingException.md "class in javax.naming")

  `remainingName, resolvedName, resolvedObj, rootException`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AttributeModificationException()`

  Constructs a new instance of AttributeModificationException.

  `AttributeModificationException(String explanation)`

  Constructs a new instance of AttributeModificationException using
  an explanation.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `ModificationItem[]`

  `getUnexecutedModifications()`

  Retrieves the unexecuted modification list.

  `void`

  `setUnexecutedModifications(ModificationItem[] e)`

  Sets the unexecuted modification list to be e.

  `String`

  `toString()`

  The string representation of this exception consists of
  information about where the error occurred, and
  the first unexecuted modification.

  ### Methods inherited from class javax.naming.[NamingException](../NamingException.md "class in javax.naming")

  `appendRemainingComponent, appendRemainingName, getCause, getExplanation, getRemainingName, getResolvedName, getResolvedObj, getRootCause, initCause, setRemainingName, setResolvedName, setResolvedObj, setRootCause, toString`

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AttributeModificationException

    public AttributeModificationException([String](../../../../java.base/java/lang/String.md "class in java.lang") explanation)

    Constructs a new instance of AttributeModificationException using
    an explanation. All other fields are set to null.

    Parameters:
    :   `explanation` - Possibly null additional detail about this exception.
        If null, this exception has no detail message.

    See Also:
    :   - [`Throwable.getMessage()`](../../../../java.base/java/lang/Throwable.md#getMessage())
  + ### AttributeModificationException

    public AttributeModificationException()

    Constructs a new instance of AttributeModificationException.
    All fields are set to null.
* ## Method Details

  + ### setUnexecutedModifications

    public void setUnexecutedModifications([ModificationItem](ModificationItem.md "class in javax.naming.directory")[] e)

    Sets the unexecuted modification list to be e.
    Items in the list must appear in the same order in which they were
    originally supplied in DirContext.modifyAttributes().
    The first item in the list is the first one that was not executed.
    If this list is null, none of the operations originally submitted
    to modifyAttributes() were executed.

    Parameters:
    :   `e` - The possibly null list of unexecuted modifications.

    See Also:
    :   - [`getUnexecutedModifications()`](#getUnexecutedModifications())
  + ### getUnexecutedModifications

    public [ModificationItem](ModificationItem.md "class in javax.naming.directory")[] getUnexecutedModifications()

    Retrieves the unexecuted modification list.
    Items in the list appear in the same order in which they were
    originally supplied in DirContext.modifyAttributes().
    The first item in the list is the first one that was not executed.
    If this list is null, none of the operations originally submitted
    to modifyAttributes() were executed.

    Returns:
    :   The possibly null unexecuted modification list.

    See Also:
    :   - [`setUnexecutedModifications(javax.naming.directory.ModificationItem[])`](#setUnexecutedModifications(javax.naming.directory.ModificationItem%5B%5D))
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    The string representation of this exception consists of
    information about where the error occurred, and
    the first unexecuted modification.
    This string is meant for debugging and not mean to be interpreted
    programmatically.

    Overrides:
    :   `toString` in class `NamingException`

    Returns:
    :   The non-null string representation of this exception.