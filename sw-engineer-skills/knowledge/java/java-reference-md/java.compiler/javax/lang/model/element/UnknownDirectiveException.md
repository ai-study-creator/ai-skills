Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.element](package-summary.md)

# Class UnknownDirectiveException

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

[javax.lang.model.UnknownEntityException](../UnknownEntityException.md "class in javax.lang.model")

javax.lang.model.element.UnknownDirectiveException

All Implemented Interfaces:
:   `Serializable`

---

public class UnknownDirectiveException
extends [UnknownEntityException](../UnknownEntityException.md "class in javax.lang.model")

Indicates that an unknown kind of module directive was encountered.
This can occur if the language evolves and new kinds of directives are
added to the `Directive` hierarchy. May be thrown by a
[directive visitor](ModuleElement.DirectiveVisitor.md "interface in javax.lang.model.element") to
indicate that the visitor was created for a prior version of the language.

Since:
:   9

See Also:
:   * [`ModuleElement.DirectiveVisitor.visitUnknown(javax.lang.model.element.ModuleElement.Directive, P)`](ModuleElement.DirectiveVisitor.md#visitUnknown(javax.lang.model.element.ModuleElement.Directive,P))
    * [Serialized Form](../../../../../serialized-form.md#javax.lang.model.element.UnknownDirectiveException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UnknownDirectiveException(ModuleElement.Directive d,
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

  `ModuleElement.Directive`

  `getUnknownDirective()`

  Returns the unknown directive.

  ### Methods inherited from class java.lang.[Throwable](../../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### UnknownDirectiveException

    public UnknownDirectiveException([ModuleElement.Directive](ModuleElement.Directive.md "interface in javax.lang.model.element") d,
    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") p)

    Creates a new `UnknownElementException`. The `p`
    parameter may be used to pass in an additional argument with
    information about the context in which the unknown directive was
    encountered; for example, the visit methods of [`DirectiveVisitor`](ModuleElement.DirectiveVisitor.md "interface in javax.lang.model.element") may pass in
    their additional parameter.

    Parameters:
    :   `d` - the unknown directive, may be `null`
    :   `p` - an additional parameter, may be `null`
* ## Method Details

  + ### getUnknownDirective

    public [ModuleElement.Directive](ModuleElement.Directive.md "interface in javax.lang.model.element") getUnknownDirective()

    Returns the unknown directive.
    The value may be unavailable if this exception has been
    serialized and then read back in.

    Returns:
    :   the unknown directive, or `null` if unavailable
  + ### getArgument

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") getArgument()

    Returns the additional argument.

    Returns:
    :   the additional argument, or `null` if unavailable