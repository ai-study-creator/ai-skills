Module [java.compiler](../../../../module-summary.md)

# Package javax.lang.model.type

---

package javax.lang.model.type

Interfaces used to model Java programming language types.

Unless otherwise specified in a particular implementation, the
collections returned by methods in this package should be expected
to be unmodifiable by the caller and unsafe for concurrent access.

Unless otherwise specified, methods in this package will throw
a `NullPointerException` if given a `null` argument.

Since:
:   1.6

See Also:
:   * [`Types`](../util/Types.md "interface in javax.lang.model.util")
    * [JSR 269: Pluggable Annotation Processing API](https://jcp.org/en/jsr/detail?id=269)

* Related Packages

  Package

  Description

  [javax.lang.model](../package-summary.md)

  Types and hierarchies of packages comprising a Java language model, a model of the declarations and types of the Java
  programming language.

  [javax.lang.model.element](../element/package-summary.md)

  Interfaces used to model elements of the Java programming language.

  [javax.lang.model.util](../util/package-summary.md)

  Utilities to assist in the processing of
  [program elements](../element/package-summary.md) and
  [types](package-summary.md).
* All Classes and InterfacesInterfacesEnum ClassesException Classes

  Class

  Description

  [ArrayType](ArrayType.md "interface in javax.lang.model.type")

  Represents an array type.

  [DeclaredType](DeclaredType.md "interface in javax.lang.model.type")

  Represents a declared type, either a class type or an interface type.

  [ErrorType](ErrorType.md "interface in javax.lang.model.type")

  Represents a class or interface type that cannot be properly modeled.

  [ExecutableType](ExecutableType.md "interface in javax.lang.model.type")

  Represents the type of an executable.

  [IntersectionType](IntersectionType.md "interface in javax.lang.model.type")

  Represents an intersection type.

  [MirroredTypeException](MirroredTypeException.md "class in javax.lang.model.type")

  Thrown when an application attempts to access the [`Class`](../../../../../java.base/java/lang/Class.md "class in java.lang") object
  corresponding to a [`TypeMirror`](TypeMirror.md "interface in javax.lang.model.type").

  [MirroredTypesException](MirroredTypesException.md "class in javax.lang.model.type")

  Thrown when an application attempts to access a sequence of [`Class`](../../../../../java.base/java/lang/Class.md "class in java.lang") objects each corresponding to a [`TypeMirror`](TypeMirror.md "interface in javax.lang.model.type").

  [NoType](NoType.md "interface in javax.lang.model.type")

  A pseudo-type used where no actual type is appropriate.

  [NullType](NullType.md "interface in javax.lang.model.type")

  Represents the null type.

  [PrimitiveType](PrimitiveType.md "interface in javax.lang.model.type")

  Represents a primitive type.

  [ReferenceType](ReferenceType.md "interface in javax.lang.model.type")

  Represents a reference type.

  [TypeKind](TypeKind.md "enum class in javax.lang.model.type")

  The kind of a type mirror.

  [TypeMirror](TypeMirror.md "interface in javax.lang.model.type")

  Represents a type in the Java programming language.

  [TypeVariable](TypeVariable.md "interface in javax.lang.model.type")

  Represents a type variable.

  [TypeVisitor](TypeVisitor.md "interface in javax.lang.model.type")<R,P>

  A visitor of types, in the style of the
  visitor design pattern.

  [UnionType](UnionType.md "interface in javax.lang.model.type")

  Represents a union type.

  [UnknownTypeException](UnknownTypeException.md "class in javax.lang.model.type")

  Indicates that an unknown kind of type was encountered.

  [WildcardType](WildcardType.md "interface in javax.lang.model.type")

  Represents a wildcard type argument.