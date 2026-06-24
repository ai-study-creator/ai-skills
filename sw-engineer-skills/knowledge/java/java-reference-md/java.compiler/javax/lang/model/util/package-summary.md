Module [java.compiler](../../../../module-summary.md)

# Package javax.lang.model.util

---

package javax.lang.model.util

Utilities to assist in the processing of
[program elements](../element/package-summary.md) and
[types](../type/package-summary.md).

Unless otherwise specified in a particular implementation, the
collections returned by methods in this package should be expected
to be unmodifiable by the caller and unsafe for concurrent access.

Unless otherwise specified, methods in this package will throw
a `NullPointerException` if given a `null` argument.

Since:
:   1.6

See Also:
:   * [JSR 269: Pluggable Annotation Processing API](https://jcp.org/en/jsr/detail?id=269)

* Related Packages

  Package

  Description

  [javax.lang.model](../package-summary.md)

  Types and hierarchies of packages comprising a Java language model, a model of the declarations and types of the Java
  programming language.

  [javax.lang.model.element](../element/package-summary.md)

  Interfaces used to model elements of the Java programming language.

  [javax.lang.model.type](../type/package-summary.md)

  Interfaces used to model Java programming language types.
* All Classes and InterfacesInterfacesClassesEnum Classes

  Class

  Description

  [AbstractAnnotationValueVisitor14](AbstractAnnotationValueVisitor14.md "class in javax.lang.model.util")<R,P>

  A skeletal visitor for annotation values with default behavior
  appropriate for source version [`RELEASE_14`](../SourceVersion.md#RELEASE_14).

  [AbstractAnnotationValueVisitor6](AbstractAnnotationValueVisitor6.md "class in javax.lang.model.util")<R,P>

  A skeletal visitor for annotation values with default behavior
  appropriate for the [`RELEASE_6`](../SourceVersion.md#RELEASE_6)
  source version.

  [AbstractAnnotationValueVisitor7](AbstractAnnotationValueVisitor7.md "class in javax.lang.model.util")<R,P>

  A skeletal visitor for annotation values with default behavior
  appropriate for the [`RELEASE_7`](../SourceVersion.md#RELEASE_7)
  source version.

  [AbstractAnnotationValueVisitor8](AbstractAnnotationValueVisitor8.md "class in javax.lang.model.util")<R,P>

  A skeletal visitor for annotation values with default behavior
  appropriate for the [`RELEASE_8`](../SourceVersion.md#RELEASE_8)
  source version.

  [AbstractAnnotationValueVisitor9](AbstractAnnotationValueVisitor9.md "class in javax.lang.model.util")<R,P>

  A skeletal visitor for annotation values with default behavior
  appropriate for source versions [`RELEASE_9`](../SourceVersion.md#RELEASE_9) through [`RELEASE_14`](../SourceVersion.md#RELEASE_14).

  [AbstractElementVisitor14](AbstractElementVisitor14.md "class in javax.lang.model.util")<R,P>

  A skeletal visitor of program elements with default behavior
  appropriate for the [`RELEASE_14`](../SourceVersion.md#RELEASE_14)
  source version.

  [AbstractElementVisitor6](AbstractElementVisitor6.md "class in javax.lang.model.util")<R,P>

  A skeletal visitor of program elements with default behavior
  appropriate for the [`RELEASE_6`](../SourceVersion.md#RELEASE_6)
  source version.

  [AbstractElementVisitor7](AbstractElementVisitor7.md "class in javax.lang.model.util")<R,P>

  A skeletal visitor of program elements with default behavior
  appropriate for the [`RELEASE_7`](../SourceVersion.md#RELEASE_7)
  source version.

  [AbstractElementVisitor8](AbstractElementVisitor8.md "class in javax.lang.model.util")<R,P>

  A skeletal visitor of program elements with default behavior
  appropriate for the [`RELEASE_8`](../SourceVersion.md#RELEASE_8)
  source version.

  [AbstractElementVisitor9](AbstractElementVisitor9.md "class in javax.lang.model.util")<R,P>

  A skeletal visitor of program elements with default behavior
  appropriate for source versions [`RELEASE_9`](../SourceVersion.md#RELEASE_9) through [`RELEASE_14`](../SourceVersion.md#RELEASE_14).

  [AbstractTypeVisitor14](AbstractTypeVisitor14.md "class in javax.lang.model.util")<R,P>

  A skeletal visitor of types with default behavior appropriate for the
  [`RELEASE_14`](../SourceVersion.md#RELEASE_14) source version.

  [AbstractTypeVisitor6](AbstractTypeVisitor6.md "class in javax.lang.model.util")<R,P>

  A skeletal visitor of types with default behavior appropriate for
  the [`RELEASE_6`](../SourceVersion.md#RELEASE_6)
  source version.

  [AbstractTypeVisitor7](AbstractTypeVisitor7.md "class in javax.lang.model.util")<R,P>

  A skeletal visitor of types with default behavior appropriate for
  the [`RELEASE_7`](../SourceVersion.md#RELEASE_7)
  source version.

  [AbstractTypeVisitor8](AbstractTypeVisitor8.md "class in javax.lang.model.util")<R,P>

  A skeletal visitor of types with default behavior appropriate for
  the [`RELEASE_8`](../SourceVersion.md#RELEASE_8)
  source version.

  [AbstractTypeVisitor9](AbstractTypeVisitor9.md "class in javax.lang.model.util")<R,P>

  A skeletal visitor of types with default behavior appropriate for
  source versions [`RELEASE_9`](../SourceVersion.md#RELEASE_9) through
  [`RELEASE_14`](../SourceVersion.md#RELEASE_14).

  [ElementFilter](ElementFilter.md "class in javax.lang.model.util")

  Filters for selecting just the elements of interest from a
  collection of elements.

  [ElementKindVisitor14](ElementKindVisitor14.md "class in javax.lang.model.util")<R,P>

  A visitor of program elements based on their [kind](../element/ElementKind.md "enum class in javax.lang.model.element") with default behavior appropriate for the [`RELEASE_14`](../SourceVersion.md#RELEASE_14) source version.

  [ElementKindVisitor6](ElementKindVisitor6.md "class in javax.lang.model.util")<R,P>

  A visitor of program elements based on their [kind](../element/ElementKind.md "enum class in javax.lang.model.element") with default behavior appropriate for the [`RELEASE_6`](../SourceVersion.md#RELEASE_6) source version.

  [ElementKindVisitor7](ElementKindVisitor7.md "class in javax.lang.model.util")<R,P>

  A visitor of program elements based on their [kind](../element/ElementKind.md "enum class in javax.lang.model.element") with default behavior appropriate for the [`RELEASE_7`](../SourceVersion.md#RELEASE_7) source version.

  [ElementKindVisitor8](ElementKindVisitor8.md "class in javax.lang.model.util")<R,P>

  A visitor of program elements based on their [kind](../element/ElementKind.md "enum class in javax.lang.model.element") with default behavior appropriate for the [`RELEASE_8`](../SourceVersion.md#RELEASE_8) source version.

  [ElementKindVisitor9](ElementKindVisitor9.md "class in javax.lang.model.util")<R,P>

  A visitor of program elements based on their [kind](../element/ElementKind.md "enum class in javax.lang.model.element") with default behavior appropriate for source
  versions [`RELEASE_9`](../SourceVersion.md#RELEASE_9) through [`RELEASE_14`](../SourceVersion.md#RELEASE_14).

  [Elements](Elements.md "interface in javax.lang.model.util")

  Utility methods for operating on program elements.

  [Elements.Origin](Elements.Origin.md "enum class in javax.lang.model.util")

  The *origin* of an element or other language model
  item.

  [ElementScanner14](ElementScanner14.md "class in javax.lang.model.util")<R,P>

  A scanning visitor of program elements with default behavior
  appropriate for the [`RELEASE_14`](../SourceVersion.md#RELEASE_14)
  source version.

  [ElementScanner6](ElementScanner6.md "class in javax.lang.model.util")<R,P>

  A scanning visitor of program elements with default behavior
  appropriate for the [`RELEASE_6`](../SourceVersion.md#RELEASE_6)
  source version.

  [ElementScanner7](ElementScanner7.md "class in javax.lang.model.util")<R,P>

  A scanning visitor of program elements with default behavior
  appropriate for the [`RELEASE_7`](../SourceVersion.md#RELEASE_7)
  source version.

  [ElementScanner8](ElementScanner8.md "class in javax.lang.model.util")<R,P>

  A scanning visitor of program elements with default behavior
  appropriate for the [`RELEASE_8`](../SourceVersion.md#RELEASE_8)
  source version.

  [ElementScanner9](ElementScanner9.md "class in javax.lang.model.util")<R,P>

  A scanning visitor of program elements with default behavior
  appropriate for source versions [`RELEASE_9`](../SourceVersion.md#RELEASE_9) through [`RELEASE_14`](../SourceVersion.md#RELEASE_14).

  [SimpleAnnotationValueVisitor14](SimpleAnnotationValueVisitor14.md "class in javax.lang.model.util")<R,P>

  A simple visitor for annotation values with default behavior
  appropriate for source version [`RELEASE_14`](../SourceVersion.md#RELEASE_14).

  [SimpleAnnotationValueVisitor6](SimpleAnnotationValueVisitor6.md "class in javax.lang.model.util")<R,P>

  A simple visitor for annotation values with default behavior
  appropriate for the [`RELEASE_6`](../SourceVersion.md#RELEASE_6)
  source version.

  [SimpleAnnotationValueVisitor7](SimpleAnnotationValueVisitor7.md "class in javax.lang.model.util")<R,P>

  A simple visitor for annotation values with default behavior
  appropriate for the [`RELEASE_7`](../SourceVersion.md#RELEASE_7)
  source version.

  [SimpleAnnotationValueVisitor8](SimpleAnnotationValueVisitor8.md "class in javax.lang.model.util")<R,P>

  A simple visitor for annotation values with default behavior
  appropriate for the [`RELEASE_8`](../SourceVersion.md#RELEASE_8)
  source version.

  [SimpleAnnotationValueVisitor9](SimpleAnnotationValueVisitor9.md "class in javax.lang.model.util")<R,P>

  A simple visitor for annotation values with default behavior
  appropriate for source versions [`RELEASE_9`](../SourceVersion.md#RELEASE_9) through [`RELEASE_14`](../SourceVersion.md#RELEASE_14).

  [SimpleElementVisitor14](SimpleElementVisitor14.md "class in javax.lang.model.util")<R,P>

  A simple visitor of program elements with default behavior
  appropriate for the [`RELEASE_14`](../SourceVersion.md#RELEASE_14)
  source version.

  [SimpleElementVisitor6](SimpleElementVisitor6.md "class in javax.lang.model.util")<R,P>

  A simple visitor of program elements with default behavior
  appropriate for the [`RELEASE_6`](../SourceVersion.md#RELEASE_6)
  source version.

  [SimpleElementVisitor7](SimpleElementVisitor7.md "class in javax.lang.model.util")<R,P>

  A simple visitor of program elements with default behavior
  appropriate for the [`RELEASE_7`](../SourceVersion.md#RELEASE_7)
  source version.

  [SimpleElementVisitor8](SimpleElementVisitor8.md "class in javax.lang.model.util")<R,P>

  A simple visitor of program elements with default behavior
  appropriate for the [`RELEASE_8`](../SourceVersion.md#RELEASE_8)
  source version.

  [SimpleElementVisitor9](SimpleElementVisitor9.md "class in javax.lang.model.util")<R,P>

  A simple visitor of program elements with default behavior
  appropriate for source versions [`RELEASE_9`](../SourceVersion.md#RELEASE_9) through [`RELEASE_14`](../SourceVersion.md#RELEASE_14).

  [SimpleTypeVisitor14](SimpleTypeVisitor14.md "class in javax.lang.model.util")<R,P>

  A simple visitor of types with default behavior appropriate for
  source version [`RELEASE_14`](../SourceVersion.md#RELEASE_14).

  [SimpleTypeVisitor6](SimpleTypeVisitor6.md "class in javax.lang.model.util")<R,P>

  A simple visitor of types with default behavior appropriate for the
  [`RELEASE_6`](../SourceVersion.md#RELEASE_6) source version.

  [SimpleTypeVisitor7](SimpleTypeVisitor7.md "class in javax.lang.model.util")<R,P>

  A simple visitor of types with default behavior appropriate for the
  [`RELEASE_7`](../SourceVersion.md#RELEASE_7) source version.

  [SimpleTypeVisitor8](SimpleTypeVisitor8.md "class in javax.lang.model.util")<R,P>

  A simple visitor of types with default behavior appropriate for the
  [`RELEASE_8`](../SourceVersion.md#RELEASE_8) source version.

  [SimpleTypeVisitor9](SimpleTypeVisitor9.md "class in javax.lang.model.util")<R,P>

  A simple visitor of types with default behavior appropriate for
  source versions [`RELEASE_9`](../SourceVersion.md#RELEASE_9) through
  [`RELEASE_14`](../SourceVersion.md#RELEASE_14).

  [TypeKindVisitor14](TypeKindVisitor14.md "class in javax.lang.model.util")<R,P>

  A visitor of types based on their [kind](../type/TypeKind.md "enum class in javax.lang.model.type") with
  default behavior appropriate for source version [`RELEASE_14`](../SourceVersion.md#RELEASE_14).

  [TypeKindVisitor6](TypeKindVisitor6.md "class in javax.lang.model.util")<R,P>

  A visitor of types based on their [kind](../type/TypeKind.md "enum class in javax.lang.model.type") with
  default behavior appropriate for the [`RELEASE_6`](../SourceVersion.md#RELEASE_6) source version.

  [TypeKindVisitor7](TypeKindVisitor7.md "class in javax.lang.model.util")<R,P>

  A visitor of types based on their [kind](../type/TypeKind.md "enum class in javax.lang.model.type") with
  default behavior appropriate for the [`RELEASE_7`](../SourceVersion.md#RELEASE_7) source version.

  [TypeKindVisitor8](TypeKindVisitor8.md "class in javax.lang.model.util")<R,P>

  A visitor of types based on their [kind](../type/TypeKind.md "enum class in javax.lang.model.type") with
  default behavior appropriate for the [`RELEASE_8`](../SourceVersion.md#RELEASE_8) source version.

  [TypeKindVisitor9](TypeKindVisitor9.md "class in javax.lang.model.util")<R,P>

  A visitor of types based on their [kind](../type/TypeKind.md "enum class in javax.lang.model.type") with
  default behavior appropriate for source versions [`RELEASE_9`](../SourceVersion.md#RELEASE_9) through [`RELEASE_14`](../SourceVersion.md#RELEASE_14).

  [Types](Types.md "interface in javax.lang.model.util")

  Utility methods for operating on types.