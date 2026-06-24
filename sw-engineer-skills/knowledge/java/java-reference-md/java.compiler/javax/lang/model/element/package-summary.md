Module [java.compiler](../../../../module-summary.md)

# Package javax.lang.model.element

---

package javax.lang.model.element

Interfaces used to model elements of the Java programming language.
The term "element" in this package is used to refer to program
elements, the declared entities that make up a program. Elements
include classes, interfaces, methods, constructors, and fields.
The interfaces in this package do not model the structure of a
program inside a method body; for example there is no
representation of a `for` loop or `try`-`finally`
block. However, the interfaces can model some structures only
appearing inside method bodies, such as local variables and
anonymous classes.

When used in the context of annotation
processing, an accurate model of the element being represented must
be returned. As this is a language model, the source code provides
the fiducial (reference) representation of the construct in
question rather than a representation in an executable output like
a class file. Executable output may serve as the basis for
creating a modeling element. However, the process of translating
source code to executable output may not permit recovering some
aspects of the source code representation. For example,
annotations with [source](../../../../../java.base/java/lang/annotation/RetentionPolicy.md#SOURCE) [retention](../../../../../java.base/java/lang/annotation/Retention.md "annotation interface in java.lang.annotation") cannot be recovered from
class files and class files might not be able to provide source
position information.
Names of [parameters](ExecutableElement.md#getParameters()) may not be recoverable from class files.
The [modifiers](Modifier.md "enum class in javax.lang.model.element") on an
element created from a class file may differ in some cases from an
element for the same declaration created from a source file
including:

* `strictfp` on a class or interface* `final` on a parameter* `protected`, `private`, and `static` on
      classes and interfaces

Some elements which are [mandated](../util/Elements.Origin.md#MANDATED) may not be
marked as such when created from class files.
Additionally, [synthetic](../util/Elements.Origin.md#SYNTHETIC)
constructs in a class file, such as accessor methods used in
implementing nested classes and [bridge methods](../util/Elements.md#isBridge(javax.lang.model.element.ExecutableElement)) used in implementing covariant returns, are
translation artifacts strictly outside of this model. However, when
operating on class files, it is helpful be able to operate on such
elements, screening them out when appropriate.

During annotation processing, operating on incomplete or
erroneous programs is necessary; however, there are fewer
guarantees about the nature of the resulting model. If the source
code is not syntactically well-formed or has some other
irrecoverable error that could not be removed by the generation of
new classes or interfaces, a model may or may not be provided as a
quality of implementation issue. If a program for a class or
interface is syntactically valid but erroneous in some other
fashion, any returned model must have no less information than if
all the method bodies in the program were replaced by `"throw
new RuntimeException();"`. If a program refers to a missing class
or interface Xyz, the returned model must contain no less
information than if the declaration of class or interface Xyz were
assumed to be `"class Xyz {}"`, `"interface Xyz {}"`,
`"enum Xyz {}"`, `"@interface Xyz {}"`, or `"record Xyz {}"`. If a program refers to a missing class or
interface `Xyz<K1, ... ,Kn>`, the returned model must contain
no less information than if the declaration of Xyz were assumed to
be `"class Xyz<T1, ... ,Tn> {}"` or `"interface Xyz<T1,
... ,Tn> {}"`

Unless otherwise specified in a particular implementation, the
collections returned by methods in this package should be expected
to be unmodifiable by the caller and unsafe for concurrent access.

Unless otherwise specified, methods in this package will throw
a `NullPointerException` if given a `null` argument.

Since:
:   1.6

See Also:
:   * [`Elements`](../util/Elements.md "interface in javax.lang.model.util")
    * [JSR 269: Pluggable Annotation Processing API](https://jcp.org/en/jsr/detail?id=269)

* Related Packages

  Package

  Description

  [javax.lang.model](../package-summary.md)

  Types and hierarchies of packages comprising a Java language model, a model of the declarations and types of the Java
  programming language.

  [javax.lang.model.type](../type/package-summary.md)

  Interfaces used to model Java programming language types.

  [javax.lang.model.util](../util/package-summary.md)

  Utilities to assist in the processing of
  [program elements](package-summary.md) and
  [types](../type/package-summary.md).
* All Classes and InterfacesInterfacesEnum ClassesException Classes

  Class

  Description

  [AnnotationMirror](AnnotationMirror.md "interface in javax.lang.model.element")

  Represents an annotation.

  [AnnotationValue](AnnotationValue.md "interface in javax.lang.model.element")

  Represents a value of an annotation interface element.

  [AnnotationValueVisitor](AnnotationValueVisitor.md "interface in javax.lang.model.element")<R,P>

  A visitor of the values of annotation interface elements, using a
  variant of the visitor design pattern.

  [Element](Element.md "interface in javax.lang.model.element")

  Represents a program element such as a module, package, class, or method.

  [ElementKind](ElementKind.md "enum class in javax.lang.model.element")

  The `kind` of an element.

  [ElementVisitor](ElementVisitor.md "interface in javax.lang.model.element")<R,P>

  A visitor of program elements, in the style of the visitor design
  pattern.

  [ExecutableElement](ExecutableElement.md "interface in javax.lang.model.element")

  Represents a method, constructor, or initializer (static or
  instance) of a class or interface, including annotation interface
  elements.

  [Modifier](Modifier.md "enum class in javax.lang.model.element")

  Represents a modifier on a program element such
  as a class, method, or field.

  [ModuleElement](ModuleElement.md "interface in javax.lang.model.element")

  Represents a module program element.

  [ModuleElement.Directive](ModuleElement.Directive.md "interface in javax.lang.model.element")

  Represents a directive within the declaration of this
  module.

  [ModuleElement.DirectiveKind](ModuleElement.DirectiveKind.md "enum class in javax.lang.model.element")

  The `kind` of a directive.

  [ModuleElement.DirectiveVisitor](ModuleElement.DirectiveVisitor.md "interface in javax.lang.model.element")<R,P>

  A visitor of module directives, in the style of the visitor design
  pattern.

  [ModuleElement.ExportsDirective](ModuleElement.ExportsDirective.md "interface in javax.lang.model.element")

  An exported package of a module.

  [ModuleElement.OpensDirective](ModuleElement.OpensDirective.md "interface in javax.lang.model.element")

  An opened package of a module.

  [ModuleElement.ProvidesDirective](ModuleElement.ProvidesDirective.md "interface in javax.lang.model.element")

  An implementation of a service provided by a module.

  [ModuleElement.RequiresDirective](ModuleElement.RequiresDirective.md "interface in javax.lang.model.element")

  A dependency of a module.

  [ModuleElement.UsesDirective](ModuleElement.UsesDirective.md "interface in javax.lang.model.element")

  A reference to a service used by a module.

  [Name](Name.md "interface in javax.lang.model.element")

  An immutable sequence of characters.

  [NestingKind](NestingKind.md "enum class in javax.lang.model.element")

  The *nesting kind* of a type element.

  [PackageElement](PackageElement.md "interface in javax.lang.model.element")

  Represents a package program element.

  [Parameterizable](Parameterizable.md "interface in javax.lang.model.element")

  A mixin interface for an element that has type parameters.

  [QualifiedNameable](QualifiedNameable.md "interface in javax.lang.model.element")

  A mixin interface for an element that has a qualified name.

  [RecordComponentElement](RecordComponentElement.md "interface in javax.lang.model.element")

  Represents a record component.

  [TypeElement](TypeElement.md "interface in javax.lang.model.element")

  Represents a class or interface program element.

  [TypeParameterElement](TypeParameterElement.md "interface in javax.lang.model.element")

  Represents a formal type parameter of a generic class, interface, method,
  or constructor element.

  [UnknownAnnotationValueException](UnknownAnnotationValueException.md "class in javax.lang.model.element")

  Indicates that an unknown kind of annotation value was encountered.

  [UnknownDirectiveException](UnknownDirectiveException.md "class in javax.lang.model.element")

  Indicates that an unknown kind of module directive was encountered.

  [UnknownElementException](UnknownElementException.md "class in javax.lang.model.element")

  Indicates that an unknown kind of element was encountered.

  [VariableElement](VariableElement.md "interface in javax.lang.model.element")

  Represents a field, `enum` constant, method or constructor
  parameter, local variable, resource variable, or exception
  parameter.