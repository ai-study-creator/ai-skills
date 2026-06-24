Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.element](package-summary.md)

# Interface ModuleElement.DirectiveVisitor<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods. Use [`Void`](../../../../../java.base/java/lang/Void.md "class in java.lang") for visitors that do not need to return results.
:   `P` - the type of the additional parameter to this visitor's
    methods. Use `Void` for visitors that do not need an
    additional parameter.

Enclosing interface:
:   `ModuleElement`

---

public static interface ModuleElement.DirectiveVisitor<R,P>

A visitor of module directives, in the style of the visitor design
pattern. Classes implementing this interface are used to operate
on a directive when the kind of directive is unknown at compile time.
When a visitor is passed to a directive's [`accept`](ModuleElement.Directive.md#accept(javax.lang.model.element.ModuleElement.DirectiveVisitor,P)) method, the `visitXyz` method applicable
to that directive is invoked.

Classes implementing this interface may or may not throw a
`NullPointerException` if the additional parameter `p`
is `null`; see documentation of the implementing class for
details.

**WARNING:** It is possible that methods will be added to
this interface to accommodate new, currently unknown, language
structures added to future versions of the Java programming
language. Methods to accommodate new language constructs will
be added in a source *compatible* way using
*default methods*.

Since:
:   9

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default R`

  `visit(ModuleElement.Directive d)`

  Visits any directive as if by passing itself to that
  directive's [`accept`](ModuleElement.Directive.md#accept(javax.lang.model.element.ModuleElement.DirectiveVisitor,P)) method and passing
  `null` for the additional parameter.

  `default R`

  `visit(ModuleElement.Directive d,
  P p)`

  Visits any directive as if by passing itself to that
  directive's [`accept`](ModuleElement.Directive.md#accept(javax.lang.model.element.ModuleElement.DirectiveVisitor,P)) method.

  `R`

  `visitExports(ModuleElement.ExportsDirective d,
  P p)`

  Visits an `exports` directive.

  `R`

  `visitOpens(ModuleElement.OpensDirective d,
  P p)`

  Visits an `opens` directive.

  `R`

  `visitProvides(ModuleElement.ProvidesDirective d,
  P p)`

  Visits a `provides` directive.

  `R`

  `visitRequires(ModuleElement.RequiresDirective d,
  P p)`

  Visits a `requires` directive.

  `default R`

  `visitUnknown(ModuleElement.Directive d,
  P p)`

  Visits an unknown directive.

  `R`

  `visitUses(ModuleElement.UsesDirective d,
  P p)`

  Visits a `uses` directive.

* ## Method Details

  + ### visit

    default [R](ModuleElement.DirectiveVisitor.md "type parameter in ModuleElement.DirectiveVisitor") visit([ModuleElement.Directive](ModuleElement.Directive.md "interface in javax.lang.model.element") d)

    Visits any directive as if by passing itself to that
    directive's [`accept`](ModuleElement.Directive.md#accept(javax.lang.model.element.ModuleElement.DirectiveVisitor,P)) method and passing
    `null` for the additional parameter.

    Parameters:
    :   `d` - the directive to visit

    Returns:
    :   a visitor-specified result
  + ### visit

    default [R](ModuleElement.DirectiveVisitor.md "type parameter in ModuleElement.DirectiveVisitor") visit([ModuleElement.Directive](ModuleElement.Directive.md "interface in javax.lang.model.element") d,
    [P](ModuleElement.DirectiveVisitor.md "type parameter in ModuleElement.DirectiveVisitor") p)

    Visits any directive as if by passing itself to that
    directive's [`accept`](ModuleElement.Directive.md#accept(javax.lang.model.element.ModuleElement.DirectiveVisitor,P)) method.

    Parameters:
    :   `d` - the directive to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result
  + ### visitRequires

    [R](ModuleElement.DirectiveVisitor.md "type parameter in ModuleElement.DirectiveVisitor") visitRequires([ModuleElement.RequiresDirective](ModuleElement.RequiresDirective.md "interface in javax.lang.model.element") d,
    [P](ModuleElement.DirectiveVisitor.md "type parameter in ModuleElement.DirectiveVisitor") p)

    Visits a `requires` directive.

    Parameters:
    :   `d` - the directive to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result
  + ### visitExports

    [R](ModuleElement.DirectiveVisitor.md "type parameter in ModuleElement.DirectiveVisitor") visitExports([ModuleElement.ExportsDirective](ModuleElement.ExportsDirective.md "interface in javax.lang.model.element") d,
    [P](ModuleElement.DirectiveVisitor.md "type parameter in ModuleElement.DirectiveVisitor") p)

    Visits an `exports` directive.

    Parameters:
    :   `d` - the directive to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result
  + ### visitOpens

    [R](ModuleElement.DirectiveVisitor.md "type parameter in ModuleElement.DirectiveVisitor") visitOpens([ModuleElement.OpensDirective](ModuleElement.OpensDirective.md "interface in javax.lang.model.element") d,
    [P](ModuleElement.DirectiveVisitor.md "type parameter in ModuleElement.DirectiveVisitor") p)

    Visits an `opens` directive.

    Parameters:
    :   `d` - the directive to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result
  + ### visitUses

    [R](ModuleElement.DirectiveVisitor.md "type parameter in ModuleElement.DirectiveVisitor") visitUses([ModuleElement.UsesDirective](ModuleElement.UsesDirective.md "interface in javax.lang.model.element") d,
    [P](ModuleElement.DirectiveVisitor.md "type parameter in ModuleElement.DirectiveVisitor") p)

    Visits a `uses` directive.

    Parameters:
    :   `d` - the directive to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result
  + ### visitProvides

    [R](ModuleElement.DirectiveVisitor.md "type parameter in ModuleElement.DirectiveVisitor") visitProvides([ModuleElement.ProvidesDirective](ModuleElement.ProvidesDirective.md "interface in javax.lang.model.element") d,
    [P](ModuleElement.DirectiveVisitor.md "type parameter in ModuleElement.DirectiveVisitor") p)

    Visits a `provides` directive.

    Parameters:
    :   `d` - the directive to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result
  + ### visitUnknown

    default [R](ModuleElement.DirectiveVisitor.md "type parameter in ModuleElement.DirectiveVisitor") visitUnknown([ModuleElement.Directive](ModuleElement.Directive.md "interface in javax.lang.model.element") d,
    [P](ModuleElement.DirectiveVisitor.md "type parameter in ModuleElement.DirectiveVisitor") p)

    Visits an unknown directive.
    This can occur if the language evolves and new kinds of directive are added.

    Parameters:
    :   `d` - the directive to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result

    Throws:
    :   `UnknownDirectiveException` - a visitor implementation may optionally throw this exception