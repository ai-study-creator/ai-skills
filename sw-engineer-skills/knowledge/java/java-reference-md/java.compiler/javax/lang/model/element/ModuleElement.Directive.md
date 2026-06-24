Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.element](package-summary.md)

# Interface ModuleElement.Directive

All Known Subinterfaces:
:   `ModuleElement.ExportsDirective`, `ModuleElement.OpensDirective`, `ModuleElement.ProvidesDirective`, `ModuleElement.RequiresDirective`, `ModuleElement.UsesDirective`

Enclosing interface:
:   `ModuleElement`

---

public static interface ModuleElement.Directive

Represents a directive within the declaration of this
module. The directives of a module declaration configure the
module in the Java Platform Module System.

Since:
:   9

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `<R,
  P> R`

  `accept(ModuleElement.DirectiveVisitor<R,P> v,
  P p)`

  Applies a visitor to this directive.

  `ModuleElement.DirectiveKind`

  `getKind()`

  Returns the `kind` of this directive.

* ## Method Details

  + ### getKind

    [ModuleElement.DirectiveKind](ModuleElement.DirectiveKind.md "enum class in javax.lang.model.element") getKind()

    Returns the `kind` of this directive.
    - The kind of a [requires
      directive](ModuleElement.RequiresDirective.md "interface in javax.lang.model.element") is [`REQUIRES`](ModuleElement.DirectiveKind.md#REQUIRES).- The kind of an [exports
        directive](ModuleElement.ExportsDirective.md "interface in javax.lang.model.element") is [`EXPORTS`](ModuleElement.DirectiveKind.md#EXPORTS).- The kind of an [opens
          directive](ModuleElement.OpensDirective.md "interface in javax.lang.model.element") is [`OPENS`](ModuleElement.DirectiveKind.md#OPENS).- The kind of a [uses
            directive](ModuleElement.UsesDirective.md "interface in javax.lang.model.element") is [`USES`](ModuleElement.DirectiveKind.md#USES).- The kind of a [provides
              directive](ModuleElement.ProvidesDirective.md "interface in javax.lang.model.element") is [`PROVIDES`](ModuleElement.DirectiveKind.md#PROVIDES).

    Returns:
    :   the `kind` of this directive
  + ### accept

    <R,
    P> R accept([ModuleElement.DirectiveVisitor](ModuleElement.DirectiveVisitor.md "interface in javax.lang.model.element")<R,P> v,
    P p)

    Applies a visitor to this directive.

    Type Parameters:
    :   `R` - the return type of the visitor's methods
    :   `P` - the type of the additional parameter to the visitor's methods

    Parameters:
    :   `v` - the visitor operating on this directive
    :   `p` - additional parameter to the visitor

    Returns:
    :   a visitor-specified result