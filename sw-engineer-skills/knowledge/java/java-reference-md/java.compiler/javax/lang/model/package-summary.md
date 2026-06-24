Module [java.compiler](../../../module-summary.md)

# Package javax.lang.model

---

package javax.lang.model

Types and hierarchies of packages comprising a Java language model, a model of the declarations and types of the Java
programming language.
The members of this package and its subpackages are for use in
language modeling and language processing tasks and APIs including,
but not limited to, the [annotation processing](../../annotation/processing/package-summary.md) framework.

This language model follows a *mirror*-based design; see
> Gilad Bracha and David Ungar. Mirrors: Design Principles for
> Meta-level Facilities of Object-Oriented Programming Languages.
> In Proc. of the ACM Conf. on Object-Oriented Programming, Systems,
> Languages and Applications, October 2004.

In particular, the model makes a distinction between declared
language constructs, like the [element](element/package-summary.md) representing `java.util.Set`, and the family of
[types](type/package-summary.md) that may be associated
with an element, like the raw type `java.util.Set`, `java.util.Set<String>`, and `java.util.Set<T>`.

Unless otherwise specified, methods in this package will throw
a `NullPointerException` if given a `null` argument.

Since:
:   1.6

See Also:
:   * [JSR 269: Pluggable Annotation Processing API](https://jcp.org/en/jsr/detail?id=269)

* Related Packages

  Package

  Description

  [javax.lang.model.element](element/package-summary.md)

  Interfaces used to model elements of the Java programming language.

  [javax.lang.model.type](type/package-summary.md)

  Interfaces used to model Java programming language types.

  [javax.lang.model.util](util/package-summary.md)

  Utilities to assist in the processing of
  [program elements](element/package-summary.md) and
  [types](type/package-summary.md).
* All Classes and InterfacesInterfacesEnum ClassesException Classes

  Class

  Description

  [AnnotatedConstruct](AnnotatedConstruct.md "interface in javax.lang.model")

  Represents a construct that can be annotated.

  [SourceVersion](SourceVersion.md "enum class in javax.lang.model")

  Source versions of the Java programming language.

  [UnknownEntityException](UnknownEntityException.md "class in javax.lang.model")

  Superclass of exceptions which indicate that an unknown kind of
  entity was encountered.