Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.element](package-summary.md)

# Class UnknownElementException

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

[javax.lang.model.UnknownEntityException](../UnknownEntityException.md "class in javax.lang.model")

javax.lang.model.element.UnknownElementException

All Implemented Interfaces:
:   `Serializable`

---

public class UnknownElementException
extends [UnknownEntityException](../UnknownEntityException.md "class in javax.lang.model")

Indicates that an unknown kind of element was encountered. This
can occur if the language evolves and new kinds of elements are
added to the `Element` hierarchy. May be thrown by an
[element visitor](ElementVisitor.md "interface in javax.lang.model.element") to indicate that the
visitor was created for a prior version of the language.

Since:
:   1.6

See Also:
:   * [`ElementVisitor.visitUnknown(javax.lang.model.element.Element, P)`](ElementVisitor.md#visitUnknown(javax.lang.model.element.Element,P))
    * [Serialized Form](../../../../../serialized-form.md#javax.lang.model.element.UnknownElementException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UnknownElementException(Element e,
  Object p)`

  Creates a new `UnknownElementException`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `getArgument()`

  Returns the additional argument.

  `Element`

  `getUnknownElement()`

  Returns the unknown element.

  ### Methods inherited from class java.lang.[Throwable](../../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### UnknownElementException

    public UnknownElementException([Element](Element.md "interface in javax.lang.model.element") e,
    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") p)

    Creates a new `UnknownElementException`. The `p`
    parameter may be used to pass in an additional argument with
    information about the context in which the unknown element was
    encountered; for example, the visit methods of [`ElementVisitor`](ElementVisitor.md "interface in javax.lang.model.element") may pass in their additional parameter.

    Parameters:
    :   `e` - the unknown element, may be `null`
    :   `p` - an additional parameter, may be `null`
* ## Method Details

  + ### getUnknownElement

    public [Element](Element.md "interface in javax.lang.model.element") getUnknownElement()

    Returns the unknown element.
    The value may be unavailable if this exception has been
    serialized and then read back in.

    Returns:
    :   the unknown element, or `null` if unavailable
  + ### getArgument

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") getArgument()

    Returns the additional argument.

    Returns:
    :   the additional argument, or `null` if unavailable