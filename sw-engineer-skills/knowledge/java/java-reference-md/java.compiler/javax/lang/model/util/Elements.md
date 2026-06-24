Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Interface Elements

---

public interface Elements

Utility methods for operating on program elements.

**Compatibility Note:** Methods may be added to this interface
in future releases of the platform.

Since:
:   1.6

See Also:
:   * [`ProcessingEnvironment.getElementUtils()`](../../../annotation/processing/ProcessingEnvironment.md#getElementUtils())

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static enum`

  `Elements.Origin`

  The *origin* of an element or other language model
  item.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `List<? extends AnnotationMirror>`

  `getAllAnnotationMirrors(Element e)`

  Returns all annotations *present* on an element, whether
  directly present or present via inheritance.

  `List<? extends Element>`

  `getAllMembers(TypeElement type)`

  Returns all members of a type element, whether inherited or
  declared directly.

  `default Set<? extends ModuleElement>`

  `getAllModuleElements()`

  Returns all module elements in the current environment.

  `default Set<? extends PackageElement>`

  `getAllPackageElements(CharSequence name)`

  Returns all package elements with the given canonical name.

  `default Set<? extends TypeElement>`

  `getAllTypeElements(CharSequence name)`

  Returns all type elements with the given canonical name.

  `Name`

  `getBinaryName(TypeElement type)`

  Returns the *binary name* of a type element.

  `String`

  `getConstantExpression(Object value)`

  Returns the text of a *constant expression* representing a
  primitive value or a string.

  `String`

  `getDocComment(Element e)`

  Returns the text of the documentation ("Javadoc")
  comment of an element.

  `Map<? extends ExecutableElement,? extends AnnotationValue>`

  `getElementValuesWithDefaults(AnnotationMirror a)`

  Returns the values of an annotation's elements, including defaults.

  `default JavaFileObject`

  `getFileObjectOf(Element e)`

  Returns the file object for this element or `null` if
  there is no such file object.

  `default ModuleElement`

  `getModuleElement(CharSequence name)`

  Returns a module element given its fully qualified name.

  `default ModuleElement`

  `getModuleOf(Element e)`

  Returns the module of an element.

  `Name`

  `getName(CharSequence cs)`

  Returns a name with the same sequence of characters as the
  argument.

  `default Elements.Origin`

  `getOrigin(AnnotatedConstruct c,
  AnnotationMirror a)`

  Returns the *origin* of the given annotation mirror.

  `default Elements.Origin`

  `getOrigin(Element e)`

  Returns the *origin* of the given element.

  `default Elements.Origin`

  `getOrigin(ModuleElement m,
  ModuleElement.Directive directive)`

  Returns the *origin* of the given module directive.

  `default TypeElement`

  `getOutermostTypeElement(Element e)`

  Returns the outermost type element an element is contained in
  if such a containing element exists; otherwise returns `null`.

  `PackageElement`

  `getPackageElement(CharSequence name)`

  Returns a package given its fully qualified name if the package is uniquely
  determinable in the environment.

  `default PackageElement`

  `getPackageElement(ModuleElement module,
  CharSequence name)`

  Returns a package given its fully qualified name, as seen from the given module.

  `PackageElement`

  `getPackageOf(Element e)`

  Returns the package of an element.

  `TypeElement`

  `getTypeElement(CharSequence name)`

  Returns a type element given its canonical name if the type element is uniquely
  determinable in the environment.

  `default TypeElement`

  `getTypeElement(ModuleElement module,
  CharSequence name)`

  Returns a type element given its canonical name, as seen from the given module.

  `boolean`

  `hides(Element hider,
  Element hidden)`

  Tests whether one type, method, or field hides another.

  `default boolean`

  `isAutomaticModule(ModuleElement module)`

  Returns `true` if the module element is an automatic
  module, `false` otherwise.

  `default boolean`

  `isBridge(ExecutableElement e)`

  Returns `true` if the executable element is a bridge
  method, `false` otherwise.

  `default boolean`

  `isCanonicalConstructor(ExecutableElement e)`

  Returns `true` if the executable element can be
  determined to be a canonical constructor of a record, `false` otherwise.

  `default boolean`

  `isCompactConstructor(ExecutableElement e)`

  Returns `true` if the executable element can be
  determined to be a compact constructor of a record, `false` otherwise.

  `boolean`

  `isDeprecated(Element e)`

  Returns `true` if the element is deprecated, `false` otherwise.

  `boolean`

  `isFunctionalInterface(TypeElement type)`

  Returns `true` if the type element is a functional
  interface, `false` otherwise.

  `boolean`

  `overrides(ExecutableElement overrider,
  ExecutableElement overridden,
  TypeElement type)`

  Tests whether one method, as a member of a given class or interface,
  overrides another method.

  `void`

  `printElements(Writer w,
  Element... elements)`

  Prints a representation of the elements to the given writer in
  the specified order.

  `default RecordComponentElement`

  `recordComponentFor(ExecutableElement accessor)`

  Returns the record component for the given accessor.

* ## Method Details

  + ### getPackageElement

    [PackageElement](../element/PackageElement.md "interface in javax.lang.model.element") getPackageElement([CharSequence](../../../../../java.base/java/lang/CharSequence.md "interface in java.lang") name)

    Returns a package given its fully qualified name if the package is uniquely
    determinable in the environment.
    If running with modules, packages of the given name are searched in a
    two-stage process:
    - find non-empty packages with the given name returned by
      [`getPackageElement(ModuleElement, CharSequence)`](#getPackageElement(javax.lang.model.element.ModuleElement,java.lang.CharSequence)),
      where the provided ModuleSymbol is any
      [root module](../../../../../java.base/java/lang/module/package-summary.md#root-modules),
    - if the above yields an empty list, search
      [`all modules`](#getAllModuleElements()) for observable
      packages with the given nameIf this process leads to a list with a single element, the
    single element is returned, otherwise `null` is returned.

    Parameters:
    :   `name` - fully qualified package name,
        or an empty string for an unnamed package

    Returns:
    :   the specified package,
        or `null` if no package can be uniquely determined.
  + ### getPackageElement

    default [PackageElement](../element/PackageElement.md "interface in javax.lang.model.element") getPackageElement([ModuleElement](../element/ModuleElement.md "interface in javax.lang.model.element") module,
    [CharSequence](../../../../../java.base/java/lang/CharSequence.md "interface in java.lang") name)

    Returns a package given its fully qualified name, as seen from the given module.

    Parameters:
    :   `module` - module relative to which the lookup should happen
    :   `name` - fully qualified package name, or an empty string for an unnamed package

    Returns:
    :   the specified package, or `null` if it cannot be found

    Since:
    :   9

    See Also:
    :   - [`getAllPackageElements(java.lang.CharSequence)`](#getAllPackageElements(java.lang.CharSequence))
  + ### getAllPackageElements

    default [Set](../../../../../java.base/java/util/Set.md "interface in java.util")<? extends [PackageElement](../element/PackageElement.md "interface in javax.lang.model.element")> getAllPackageElements([CharSequence](../../../../../java.base/java/lang/CharSequence.md "interface in java.lang") name)

    Returns all package elements with the given canonical name.
    There may be more than one package element with the same canonical
    name if the package elements are in different modules.

    Parameters:
    :   `name` - the canonical name

    Returns:
    :   the package elements, or an empty set if no package with the name can be found

    Since:
    :   9

    See Also:
    :   - [`getPackageElement(ModuleElement, CharSequence)`](#getPackageElement(javax.lang.model.element.ModuleElement,java.lang.CharSequence))
  + ### getTypeElement

    [TypeElement](../element/TypeElement.md "interface in javax.lang.model.element") getTypeElement([CharSequence](../../../../../java.base/java/lang/CharSequence.md "interface in java.lang") name)

    Returns a type element given its canonical name if the type element is uniquely
    determinable in the environment.
    If running with modules, type elements of the given name are
    searched in a two-stage process:
    - find type elements with the given name returned by
      [`getTypeElement(ModuleElement, CharSequence)`](#getTypeElement(javax.lang.model.element.ModuleElement,java.lang.CharSequence)),
      where the provided ModuleSymbol is any
      [root module](../../../../../java.base/java/lang/module/package-summary.md#root-modules),
    - if the above yields an empty list, search
      [`all modules`](#getAllModuleElements()) for observable
      type elements with the given nameIf this process leads to a list with a single element, the
    single element is returned, otherwise `null` is returned.

    Parameters:
    :   `name` - the canonical name

    Returns:
    :   the named type element,
        or `null` if no type element can be uniquely determined.
  + ### getTypeElement

    default [TypeElement](../element/TypeElement.md "interface in javax.lang.model.element") getTypeElement([ModuleElement](../element/ModuleElement.md "interface in javax.lang.model.element") module,
    [CharSequence](../../../../../java.base/java/lang/CharSequence.md "interface in java.lang") name)

    Returns a type element given its canonical name, as seen from the given module.

    Parameters:
    :   `module` - module relative to which the lookup should happen
    :   `name` - the canonical name

    Returns:
    :   the named type element, or `null` if it cannot be found

    Since:
    :   9

    See Also:
    :   - [`getAllTypeElements(java.lang.CharSequence)`](#getAllTypeElements(java.lang.CharSequence))
  + ### getAllTypeElements

    default [Set](../../../../../java.base/java/util/Set.md "interface in java.util")<? extends [TypeElement](../element/TypeElement.md "interface in javax.lang.model.element")> getAllTypeElements([CharSequence](../../../../../java.base/java/lang/CharSequence.md "interface in java.lang") name)

    Returns all type elements with the given canonical name.
    There may be more than one type element with the same canonical
    name if the type elements are in different modules.

    Parameters:
    :   `name` - the canonical name

    Returns:
    :   the type elements, or an empty set if no type with the name can be found

    Since:
    :   9

    See Also:
    :   - [`getTypeElement(ModuleElement, CharSequence)`](#getTypeElement(javax.lang.model.element.ModuleElement,java.lang.CharSequence))
  + ### getModuleElement

    default [ModuleElement](../element/ModuleElement.md "interface in javax.lang.model.element") getModuleElement([CharSequence](../../../../../java.base/java/lang/CharSequence.md "interface in java.lang") name)

    Returns a module element given its fully qualified name.
    If the requested module cannot be found, `null` is
    returned. One situation where a module cannot be found is if
    the environment does not include modules, such as an annotation
    processing environment configured for a [source version](../../../annotation/processing/ProcessingEnvironment.md#getSourceVersion()) without modules.

    Parameters:
    :   `name` - the name, or an empty string for an unnamed module

    Returns:
    :   the named module element, or `null` if it cannot be found

    Since:
    :   9

    See Also:
    :   - [`getAllModuleElements()`](#getAllModuleElements())
  + ### getAllModuleElements

    default [Set](../../../../../java.base/java/util/Set.md "interface in java.util")<? extends [ModuleElement](../element/ModuleElement.md "interface in javax.lang.model.element")> getAllModuleElements()

    Returns all module elements in the current environment.
    If no modules are present, an empty set is returned. One
    situation where no modules are present occurs when the
    environment does not include modules, such as an annotation
    processing environment configured for a [source version](../../../annotation/processing/ProcessingEnvironment.md#getSourceVersion()) without modules.

    Returns:
    :   the known module elements, or an empty set if there are no modules

    Since:
    :   9

    See Also:
    :   - [`getModuleElement(CharSequence)`](#getModuleElement(java.lang.CharSequence))
  + ### getElementValuesWithDefaults

    [Map](../../../../../java.base/java/util/Map.md "interface in java.util")<? extends [ExecutableElement](../element/ExecutableElement.md "interface in javax.lang.model.element"),? extends [AnnotationValue](../element/AnnotationValue.md "interface in javax.lang.model.element")> getElementValuesWithDefaults([AnnotationMirror](../element/AnnotationMirror.md "interface in javax.lang.model.element") a)

    Returns the values of an annotation's elements, including defaults.

    Parameters:
    :   `a` - annotation to examine

    Returns:
    :   the values of an annotation's elements, including defaults

    See Also:
    :   - [`AnnotationMirror.getElementValues()`](../element/AnnotationMirror.md#getElementValues())
  + ### getDocComment

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getDocComment([Element](../element/Element.md "interface in javax.lang.model.element") e)

    Returns the text of the documentation ("Javadoc")
    comment of an element.

    A documentation comment of an element is a comment that
    begins with "`/**`", ends with a separate
    "`*/`", and immediately precedes the element,
    ignoring white space. Therefore, a documentation comment
    contains at least three "`*`" characters. The text
    returned for the documentation comment is a processed form of
    the comment as it appears in source code. The leading "`/**`"
    and trailing "`*/`" are removed. For lines
    of the comment starting after the initial "`/**`",
    leading white space characters are discarded as are any
    consecutive "`*`" characters appearing after the white
    space or starting the line. The processed lines are then
    concatenated together (including line terminators) and
    returned.

    Parameters:
    :   `e` - the element being examined

    Returns:
    :   the documentation comment of the element, or `null`
        if there is none
  + ### isDeprecated

    boolean isDeprecated([Element](../element/Element.md "interface in javax.lang.model.element") e)

    Returns `true` if the element is deprecated, `false` otherwise.

    Parameters:
    :   `e` - the element being examined

    Returns:
    :   `true` if the element is deprecated, `false` otherwise
  + ### getOrigin

    default [Elements.Origin](Elements.Origin.md "enum class in javax.lang.model.util") getOrigin([Element](../element/Element.md "interface in javax.lang.model.element") e)

    Returns the *origin* of the given element.

    Note that if this method returns [`EXPLICIT`](Elements.Origin.md#EXPLICIT) and the element was created from a class file, then
    the element may not, in fact, correspond to an explicitly
    declared construct in source code. This is due to limitations
    of the fidelity of the class file format in preserving
    information from source code. For example, at least some
    versions of the class file format do not preserve whether a
    constructor was explicitly declared by the programmer or was
    implicitly declared as the *default constructor*.

    Parameters:
    :   `e` - the element being examined

    Returns:
    :   the *origin* of the given element

    Since:
    :   9
  + ### getOrigin

    default [Elements.Origin](Elements.Origin.md "enum class in javax.lang.model.util") getOrigin([AnnotatedConstruct](../AnnotatedConstruct.md "interface in javax.lang.model") c,
    [AnnotationMirror](../element/AnnotationMirror.md "interface in javax.lang.model.element") a)

    Returns the *origin* of the given annotation mirror.
    An annotation mirror is [mandated](Elements.Origin.md#MANDATED)
    if it is an implicitly declared *container annotation*
    used to hold repeated annotations of a repeatable annotation
    interface.

    Note that if this method returns [`EXPLICIT`](Elements.Origin.md#EXPLICIT) and the annotation mirror was created from a class
    file, then the element may not, in fact, correspond to an
    explicitly declared construct in source code. This is due to
    limitations of the fidelity of the class file format in
    preserving information from source code. For example, at least
    some versions of the class file format do not preserve whether
    an annotation was explicitly declared by the programmer or was
    implicitly declared as a *container annotation*.

    Parameters:
    :   `c` - the construct the annotation mirror modifies
    :   `a` - the annotation mirror being examined

    Returns:
    :   the *origin* of the given annotation mirror

    Since:
    :   9
  + ### getOrigin

    default [Elements.Origin](Elements.Origin.md "enum class in javax.lang.model.util") getOrigin([ModuleElement](../element/ModuleElement.md "interface in javax.lang.model.element") m,
    [ModuleElement.Directive](../element/ModuleElement.Directive.md "interface in javax.lang.model.element") directive)

    Returns the *origin* of the given module directive.

    Note that if this method returns [`EXPLICIT`](Elements.Origin.md#EXPLICIT) and the module directive was created from a class
    file, then the module directive may not, in fact, correspond to
    an explicitly declared construct in source code. This is due to
    limitations of the fidelity of the class file format in
    preserving information from source code. For example, at least
    some versions of the class file format do not preserve whether
    a `uses` directive was explicitly declared by the
    programmer or was added as a synthetic construct.

    Note that an implementation may not be able to reliably
    determine the origin status of the directive if the directive
    is created from a class file due to limitations of the fidelity
    of the class file format in preserving information from source
    code.

    Parameters:
    :   `m` - the module of the directive
    :   `directive` - the module directive being examined

    Returns:
    :   the *origin* of the given module directive

    Since:
    :   9
  + ### isBridge

    default boolean isBridge([ExecutableElement](../element/ExecutableElement.md "interface in javax.lang.model.element") e)

    Returns `true` if the executable element is a bridge
    method, `false` otherwise.

    Parameters:
    :   `e` - the executable being examined

    Returns:
    :   `true` if the executable element is a bridge
        method, `false` otherwise

    Since:
    :   9
  + ### getBinaryName

    [Name](../element/Name.md "interface in javax.lang.model.element") getBinaryName([TypeElement](../element/TypeElement.md "interface in javax.lang.model.element") type)

    Returns the *binary name* of a type element.

    Parameters:
    :   `type` - the type element being examined

    Returns:
    :   the *binary name* of a type element

    See Also:
    :   - [`TypeElement.getQualifiedName()`](../element/TypeElement.md#getQualifiedName())
  + ### getPackageOf

    [PackageElement](../element/PackageElement.md "interface in javax.lang.model.element") getPackageOf([Element](../element/Element.md "interface in javax.lang.model.element") e)

    Returns the package of an element. The package of a package is
    itself.
    The package of a module is `null`.
    The package of a top-level class or interface is its [enclosing package](../element/TypeElement.md#getEnclosingElement()). Otherwise,
    the package of an element is equal to the package of the
    [enclosing element](../element/Element.md#getEnclosingElement()).

    Parameters:
    :   `e` - the element being examined

    Returns:
    :   the package of an element
  + ### getModuleOf

    default [ModuleElement](../element/ModuleElement.md "interface in javax.lang.model.element") getModuleOf([Element](../element/Element.md "interface in javax.lang.model.element") e)

    Returns the module of an element. The module of a module is
    itself.
    If a package has a module as its [enclosing element](../element/PackageElement.md#getEnclosingElement()), that
    module is the module of the package. If the enclosing element
    of a package is `null`, `null` is returned for the
    package's module.
    (One situation where a package may have a `null` module
    is if the environment does not include modules, such as an
    annotation processing environment configured for a [source version](../../../annotation/processing/ProcessingEnvironment.md#getSourceVersion()) without modules.)
    Otherwise, the module of an element is equal to the module
    [of the package](#getPackageOf(javax.lang.model.element.Element)) of the
    element.

    Parameters:
    :   `e` - the element being examined

    Returns:
    :   the module of an element

    Since:
    :   9
  + ### getAllMembers

    [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [Element](../element/Element.md "interface in javax.lang.model.element")> getAllMembers([TypeElement](../element/TypeElement.md "interface in javax.lang.model.element") type)

    Returns all members of a type element, whether inherited or
    declared directly. For a class the result also includes its
    constructors, but not local or anonymous classes.

    Parameters:
    :   `type` - the type being examined

    Returns:
    :   all members of the type

    See Also:
    :   - [`Element.getEnclosedElements()`](../element/Element.md#getEnclosedElements())
  + ### getOutermostTypeElement

    default [TypeElement](../element/TypeElement.md "interface in javax.lang.model.element") getOutermostTypeElement([Element](../element/Element.md "interface in javax.lang.model.element") e)

    Returns the outermost type element an element is contained in
    if such a containing element exists; otherwise returns `null`.
    [Modules](../element/ModuleElement.md "interface in javax.lang.model.element") and [packages](../element/PackageElement.md "interface in javax.lang.model.element") do *not* have a containing type
    element and therefore `null` is returned for those kinds
    of elements.
    A [top-level](../element/NestingKind.md#TOP_LEVEL) class or
    interface is its own outermost type element.

    Parameters:
    :   `e` - the element being examined

    Returns:
    :   the outermost type element an element is contained in
        if such a containing element exists; otherwise returns `null`

    Since:
    :   18

    See Also:
    :   - [`Element.getEnclosingElement()`](../element/Element.md#getEnclosingElement())
  + ### getAllAnnotationMirrors

    [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [AnnotationMirror](../element/AnnotationMirror.md "interface in javax.lang.model.element")> getAllAnnotationMirrors([Element](../element/Element.md "interface in javax.lang.model.element") e)

    Returns all annotations *present* on an element, whether
    directly present or present via inheritance.

    Note that any annotations returned by this method are
    declaration annotations.

    Parameters:
    :   `e` - the element being examined

    Returns:
    :   all annotations of the element

    See Also:
    :   - [`Element.getAnnotationMirrors()`](../element/Element.md#getAnnotationMirrors())
        - [`AnnotatedConstruct`](../AnnotatedConstruct.md "interface in javax.lang.model")
  + ### hides

    boolean hides([Element](../element/Element.md "interface in javax.lang.model.element") hider,
    [Element](../element/Element.md "interface in javax.lang.model.element") hidden)

    Tests whether one type, method, or field hides another.

    Parameters:
    :   `hider` - the first element
    :   `hidden` - the second element

    Returns:
    :   `true` if and only if the first element hides
        the second
  + ### overrides

    boolean overrides([ExecutableElement](../element/ExecutableElement.md "interface in javax.lang.model.element") overrider,
    [ExecutableElement](../element/ExecutableElement.md "interface in javax.lang.model.element") overridden,
    [TypeElement](../element/TypeElement.md "interface in javax.lang.model.element") type)

    Tests whether one method, as a member of a given class or interface,
    overrides another method.
    When a non-abstract method overrides an abstract one, the
    former is also said to *implement* the latter.
    As implied by JLS , a method does *not*
    override itself. The overrides relation is *irreflexive*.

    In the simplest and most typical usage, the value of the
    `type` parameter will simply be the class or interface
    directly enclosing `overrider` (the possibly-overriding
    method). For example, suppose `m1` represents the method
    `String.hashCode` and `m2` represents `Object.hashCode`. We can then ask whether `m1` overrides
    `m2` within the class `String` (it does):
    > `assert elements.overrides(m1, m2,
    > elements.getTypeElement("java.lang.String"));`

    A more interesting case can be illustrated by the following example
    in which a method in class `A` does not override a
    like-named method in interface `B`:
    > `class A { public void m() {} }`   
    > `interface B { void m(); }`   
    > ...  
    > `m1 = ...; // A.m`   
    > `m2 = ...; // B.m`   
    > `assert ! elements.overrides(m1, m2,
    > elements.getTypeElement("A"));`

    When viewed as a member of a third class `C`, however,
    the method in `A` does override the one in `B`:
    > `class C extends A implements B {}`   
    > ...  
    > `assert elements.overrides(m1, m2,
    > elements.getTypeElement("C"));`

    Parameters:
    :   `overrider` - the first method, possible overrider
    :   `overridden` - the second method, possibly being overridden
    :   `type` - the class or interface of which the first method is a member

    Returns:
    :   `true` if and only if the first method overrides
        the second
  + ### getConstantExpression

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getConstantExpression([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") value)

    Returns the text of a *constant expression* representing a
    primitive value or a string.
    The text returned is in a form suitable for representing the value
    in source code.

    Parameters:
    :   `value` - a primitive value or string

    Returns:
    :   the text of a constant expression

    Throws:
    :   `IllegalArgumentException` - if the argument is not a primitive
        value or string

    See Also:
    :   - [`VariableElement.getConstantValue()`](../element/VariableElement.md#getConstantValue())
  + ### printElements

    void printElements([Writer](../../../../../java.base/java/io/Writer.md "class in java.io") w,
    [Element](../element/Element.md "interface in javax.lang.model.element")... elements)

    Prints a representation of the elements to the given writer in
    the specified order. The main purpose of this method is for
    diagnostics. The exact format of the output is *not*
    specified and is subject to change.

    Parameters:
    :   `w` - the writer to print the output to
    :   `elements` - the elements to print
  + ### getName

    [Name](../element/Name.md "interface in javax.lang.model.element") getName([CharSequence](../../../../../java.base/java/lang/CharSequence.md "interface in java.lang") cs)

    Returns a name with the same sequence of characters as the
    argument.

    Parameters:
    :   `cs` - the character sequence to return as a name

    Returns:
    :   a name with the same sequence of characters as the
        argument
  + ### isFunctionalInterface

    boolean isFunctionalInterface([TypeElement](../element/TypeElement.md "interface in javax.lang.model.element") type)

    Returns `true` if the type element is a functional
    interface, `false` otherwise.

    Parameters:
    :   `type` - the type element being examined

    Returns:
    :   `true` if the type element is a functional
        interface, `false` otherwise

    Since:
    :   1.8
  + ### isAutomaticModule

    default boolean isAutomaticModule([ModuleElement](../element/ModuleElement.md "interface in javax.lang.model.element") module)

    Returns `true` if the module element is an automatic
    module, `false` otherwise.

    Parameters:
    :   `module` - the module element being examined

    Returns:
    :   `true` if the module element is an automatic
        module, `false` otherwise

    Since:
    :   17
  + ### recordComponentFor

    default [RecordComponentElement](../element/RecordComponentElement.md "interface in javax.lang.model.element") recordComponentFor([ExecutableElement](../element/ExecutableElement.md "interface in javax.lang.model.element") accessor)

    Returns the record component for the given accessor. Returns
    `null` if the given method is not a record component
    accessor.

    Parameters:
    :   `accessor` - the method for which the record component should be found.

    Returns:
    :   the record component, or `null` if the given
        method is not a record component accessor

    Since:
    :   16
  + ### isCanonicalConstructor

    default boolean isCanonicalConstructor([ExecutableElement](../element/ExecutableElement.md "interface in javax.lang.model.element") e)

    Returns `true` if the executable element can be
    determined to be a canonical constructor of a record, `false` otherwise.
    Note that in some cases there may be insufficient information
    to determine if a constructor is a canonical constructor, such
    as if the executable element is built backed by a class
    file. In such cases, `false` is returned.

    Parameters:
    :   `e` - the executable being examined

    Returns:
    :   `true` if the executable element can be
        determined to be a canonical constructor of a record, `false` otherwise

    Since:
    :   20
  + ### isCompactConstructor

    default boolean isCompactConstructor([ExecutableElement](../element/ExecutableElement.md "interface in javax.lang.model.element") e)

    Returns `true` if the executable element can be
    determined to be a compact constructor of a record, `false` otherwise.
    By definition, a compact constructor is also a [canonical
    constructor](#isCanonicalConstructor(javax.lang.model.element.ExecutableElement)).
    Note that in some cases there may be insufficient information
    to determine if a constructor is a compact constructor, such as
    if the executable element is built backed by a class file. In
    such cases, `false` is returned.

    Parameters:
    :   `e` - the executable being examined

    Returns:
    :   `true` if the executable element can be
        determined to be a compact constructor of a record, `false` otherwise

    Since:
    :   20
  + ### getFileObjectOf

    default [JavaFileObject](../../../tools/JavaFileObject.md "interface in javax.tools") getFileObjectOf([Element](../element/Element.md "interface in javax.lang.model.element") e)

    Returns the file object for this element or `null` if
    there is no such file object.

    The returned file object is for the [reference
    representation](../element/package-summary.md#accurate_model) of the information used to construct the
    element. For example, if during compilation or annotation
    processing, a source file for class `Foo` is compiled
    into a class file, the file object returned for the element
    representing `Foo` would be for the source file and
    *not* for the class file.

    An implementation may choose to not support the
    functionality of this method, in which case [`UnsupportedOperationException`](../../../../../java.base/java/lang/UnsupportedOperationException.md "class in java.lang") is thrown.

    In the context of annotation processing, a non-`null`
    value is returned if the element was included as part of the
    initial inputs or the containing file was created during the
    run of the annotation processing tool. Otherwise, a `null` may be returned. In annotation processing, if a
    [class file is created](../../../annotation/processing/Filer.md#createClassFile(java.lang.CharSequence,javax.lang.model.element.Element...)), that class file can serve as the
    reference representation for elements.

    If it has a file object, the file object for a package will
    be a `package-info` file. A package may exist and not
    have any `package-info` file even if the package is
    (implicitly) created during an annotation processing run from
    the creation of source or class files in that package. An
    [unnamed package](../element/PackageElement.md#isUnnamed()) will have
    a `null` file since it cannot be declared in a
    compilation unit.

    If it has a file object, the file object for a module will
    be a `module-info` file. An [unnamed module](../element/ModuleElement.md#isUnnamed()) will have a `null` file since it cannot be declared in a compilation unit.
    An [automatic module](#isAutomaticModule(javax.lang.model.element.ModuleElement)) will have a
    `null` file since it is implicitly declared.

    If it has a file object, the file object for a top-level
    `public` class or interface will be a source or class
    file corresponding to that class or interface. In this case,
    typically the leading portion of the name of the file will
    match the name of the class or interface. A single compilation
    unit can define multiple top-level classes and interfaces, such
    as a primary `public` class or interfaces whose name
    corresponds to the file name and one or more *auxiliary*
    classes or interfaces whose names do not correspond to the file
    name. If a source file is providing the reference
    representation of an auxiliary class or interface, the file for
    the primary class is returned. (An auxiliary class or interface
    can also be defined in a `package-info` source file, in
    which case the file for the `package-info` file is
    returned.) If a class file is providing the reference
    representation of an auxiliary class or interface, the separate
    class file for the auxiliary class is returned.

    For a nested class or interface, if it has a file object:
    - if a source file is providing the reference representation,
      the file object will be that of the [outermost enclosing](#getOutermostTypeElement(javax.lang.model.element.Element)) class or
      interface- if a class file is providing the reference representation,
        the file object will be that of the nested class or interface
        itself

    For other lexically enclosed elements, such as [variables](../element/VariableElement.md#getEnclosingElement()), [methods, and
    constructors](../element/ExecutableElement.md#getEnclosingElement()), if they have a file object, the file object will
    be the object associated with the [enclosing element](../element/Element.md#getEnclosingElement()) of the
    lexically enclosed element.

    Parameters:
    :   `e` - the element to find a file object for

    Returns:
    :   the file object for this element or `null` if
        there is no such file object

    Throws:
    :   `UnsupportedOperationException` - if this functionality is
        not supported

    Since:
    :   18