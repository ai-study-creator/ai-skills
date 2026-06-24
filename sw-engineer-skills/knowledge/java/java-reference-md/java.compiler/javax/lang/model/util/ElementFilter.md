Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Class ElementFilter

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.lang.model.util.ElementFilter

---

public class ElementFilter
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

Filters for selecting just the elements of interest from a
collection of elements. The returned sets and lists are new
collections that do *not* use the argument collection as a backing store. The
methods in this class do not make any attempts to guard against
concurrent modifications of the arguments. The returned sets and
lists are mutable and unsafe for concurrent access. A returned set
from a method has the same iteration order as the argument set to the method.

If iterables or sets containing `null` are passed as
arguments to methods in this class, a `NullPointerException`
will be thrown.

Since:
:   1.6

* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static List<ExecutableElement>`

  `constructorsIn(Iterable<? extends Element> elements)`

  Returns a list of constructors in `elements`.

  `static Set<ExecutableElement>`

  `constructorsIn(Set<? extends Element> elements)`

  Returns a set of constructors in `elements`.

  `static List<ModuleElement.ExportsDirective>`

  `exportsIn(Iterable<? extends ModuleElement.Directive> directives)`

  Returns a list of `exports` directives in `directives`.

  `static List<VariableElement>`

  `fieldsIn(Iterable<? extends Element> elements)`

  Returns a list of fields in `elements`.

  `static Set<VariableElement>`

  `fieldsIn(Set<? extends Element> elements)`

  Returns a set of fields in `elements`.

  `static List<ExecutableElement>`

  `methodsIn(Iterable<? extends Element> elements)`

  Returns a list of methods in `elements`.

  `static Set<ExecutableElement>`

  `methodsIn(Set<? extends Element> elements)`

  Returns a set of methods in `elements`.

  `static List<ModuleElement>`

  `modulesIn(Iterable<? extends Element> elements)`

  Returns a list of modules in `elements`.

  `static Set<ModuleElement>`

  `modulesIn(Set<? extends Element> elements)`

  Returns a set of modules in `elements`.

  `static List<ModuleElement.OpensDirective>`

  `opensIn(Iterable<? extends ModuleElement.Directive> directives)`

  Returns a list of `opens` directives in `directives`.

  `static List<PackageElement>`

  `packagesIn(Iterable<? extends Element> elements)`

  Returns a list of packages in `elements`.

  `static Set<PackageElement>`

  `packagesIn(Set<? extends Element> elements)`

  Returns a set of packages in `elements`.

  `static List<ModuleElement.ProvidesDirective>`

  `providesIn(Iterable<? extends ModuleElement.Directive> directives)`

  Returns a list of `provides` directives in `directives`.

  `static List<RecordComponentElement>`

  `recordComponentsIn(Iterable<? extends Element> elements)`

  Returns a list of record components in `elements`.

  `static Set<RecordComponentElement>`

  `recordComponentsIn(Set<? extends Element> elements)`

  Returns a set of record components in `elements`.

  `static List<ModuleElement.RequiresDirective>`

  `requiresIn(Iterable<? extends ModuleElement.Directive> directives)`

  Returns a list of `requires` directives in `directives`.

  `static List<TypeElement>`

  `typesIn(Iterable<? extends Element> elements)`

  Returns a list of classes and interfaces in `elements`.

  `static Set<TypeElement>`

  `typesIn(Set<? extends Element> elements)`

  Returns a set of types in `elements`.

  `static List<ModuleElement.UsesDirective>`

  `usesIn(Iterable<? extends ModuleElement.Directive> directives)`

  Returns a list of `uses` directives in `directives`.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### fieldsIn

    public static [List](../../../../../java.base/java/util/List.md "interface in java.util")<[VariableElement](../element/VariableElement.md "interface in javax.lang.model.element")> fieldsIn([Iterable](../../../../../java.base/java/lang/Iterable.md "interface in java.lang")<? extends [Element](../element/Element.md "interface in javax.lang.model.element")> elements)

    Returns a list of fields in `elements`.

    Parameters:
    :   `elements` - the elements to filter

    Returns:
    :   a list of fields in `elements`
  + ### fieldsIn

    public static [Set](../../../../../java.base/java/util/Set.md "interface in java.util")<[VariableElement](../element/VariableElement.md "interface in javax.lang.model.element")> fieldsIn([Set](../../../../../java.base/java/util/Set.md "interface in java.util")<? extends [Element](../element/Element.md "interface in javax.lang.model.element")> elements)

    Returns a set of fields in `elements`.

    Parameters:
    :   `elements` - the elements to filter

    Returns:
    :   a set of fields in `elements`
  + ### recordComponentsIn

    public static [List](../../../../../java.base/java/util/List.md "interface in java.util")<[RecordComponentElement](../element/RecordComponentElement.md "interface in javax.lang.model.element")> recordComponentsIn([Iterable](../../../../../java.base/java/lang/Iterable.md "interface in java.lang")<? extends [Element](../element/Element.md "interface in javax.lang.model.element")> elements)

    Returns a list of record components in `elements`.

    Parameters:
    :   `elements` - the elements to filter

    Returns:
    :   a list of record components in `elements`

    Since:
    :   16
  + ### recordComponentsIn

    public static [Set](../../../../../java.base/java/util/Set.md "interface in java.util")<[RecordComponentElement](../element/RecordComponentElement.md "interface in javax.lang.model.element")> recordComponentsIn([Set](../../../../../java.base/java/util/Set.md "interface in java.util")<? extends [Element](../element/Element.md "interface in javax.lang.model.element")> elements)

    Returns a set of record components in `elements`.

    Parameters:
    :   `elements` - the elements to filter

    Returns:
    :   a set of record components in `elements`

    Since:
    :   16
  + ### constructorsIn

    public static [List](../../../../../java.base/java/util/List.md "interface in java.util")<[ExecutableElement](../element/ExecutableElement.md "interface in javax.lang.model.element")> constructorsIn([Iterable](../../../../../java.base/java/lang/Iterable.md "interface in java.lang")<? extends [Element](../element/Element.md "interface in javax.lang.model.element")> elements)

    Returns a list of constructors in `elements`.

    Parameters:
    :   `elements` - the elements to filter

    Returns:
    :   a list of constructors in `elements`
  + ### constructorsIn

    public static [Set](../../../../../java.base/java/util/Set.md "interface in java.util")<[ExecutableElement](../element/ExecutableElement.md "interface in javax.lang.model.element")> constructorsIn([Set](../../../../../java.base/java/util/Set.md "interface in java.util")<? extends [Element](../element/Element.md "interface in javax.lang.model.element")> elements)

    Returns a set of constructors in `elements`.

    Parameters:
    :   `elements` - the elements to filter

    Returns:
    :   a set of constructors in `elements`
  + ### methodsIn

    public static [List](../../../../../java.base/java/util/List.md "interface in java.util")<[ExecutableElement](../element/ExecutableElement.md "interface in javax.lang.model.element")> methodsIn([Iterable](../../../../../java.base/java/lang/Iterable.md "interface in java.lang")<? extends [Element](../element/Element.md "interface in javax.lang.model.element")> elements)

    Returns a list of methods in `elements`.

    Parameters:
    :   `elements` - the elements to filter

    Returns:
    :   a list of methods in `elements`
  + ### methodsIn

    public static [Set](../../../../../java.base/java/util/Set.md "interface in java.util")<[ExecutableElement](../element/ExecutableElement.md "interface in javax.lang.model.element")> methodsIn([Set](../../../../../java.base/java/util/Set.md "interface in java.util")<? extends [Element](../element/Element.md "interface in javax.lang.model.element")> elements)

    Returns a set of methods in `elements`.

    Parameters:
    :   `elements` - the elements to filter

    Returns:
    :   a set of methods in `elements`
  + ### typesIn

    public static [List](../../../../../java.base/java/util/List.md "interface in java.util")<[TypeElement](../element/TypeElement.md "interface in javax.lang.model.element")> typesIn([Iterable](../../../../../java.base/java/lang/Iterable.md "interface in java.lang")<? extends [Element](../element/Element.md "interface in javax.lang.model.element")> elements)

    Returns a list of classes and interfaces in `elements`.

    Parameters:
    :   `elements` - the elements to filter

    Returns:
    :   a list of classes and interfaces in `elements`
  + ### typesIn

    public static [Set](../../../../../java.base/java/util/Set.md "interface in java.util")<[TypeElement](../element/TypeElement.md "interface in javax.lang.model.element")> typesIn([Set](../../../../../java.base/java/util/Set.md "interface in java.util")<? extends [Element](../element/Element.md "interface in javax.lang.model.element")> elements)

    Returns a set of types in `elements`.

    Parameters:
    :   `elements` - the elements to filter

    Returns:
    :   a set of types in `elements`
  + ### packagesIn

    public static [List](../../../../../java.base/java/util/List.md "interface in java.util")<[PackageElement](../element/PackageElement.md "interface in javax.lang.model.element")> packagesIn([Iterable](../../../../../java.base/java/lang/Iterable.md "interface in java.lang")<? extends [Element](../element/Element.md "interface in javax.lang.model.element")> elements)

    Returns a list of packages in `elements`.

    Parameters:
    :   `elements` - the elements to filter

    Returns:
    :   a list of packages in `elements`
  + ### packagesIn

    public static [Set](../../../../../java.base/java/util/Set.md "interface in java.util")<[PackageElement](../element/PackageElement.md "interface in javax.lang.model.element")> packagesIn([Set](../../../../../java.base/java/util/Set.md "interface in java.util")<? extends [Element](../element/Element.md "interface in javax.lang.model.element")> elements)

    Returns a set of packages in `elements`.

    Parameters:
    :   `elements` - the elements to filter

    Returns:
    :   a set of packages in `elements`
  + ### modulesIn

    public static [List](../../../../../java.base/java/util/List.md "interface in java.util")<[ModuleElement](../element/ModuleElement.md "interface in javax.lang.model.element")> modulesIn([Iterable](../../../../../java.base/java/lang/Iterable.md "interface in java.lang")<? extends [Element](../element/Element.md "interface in javax.lang.model.element")> elements)

    Returns a list of modules in `elements`.

    Parameters:
    :   `elements` - the elements to filter

    Returns:
    :   a list of modules in `elements`

    Since:
    :   9
  + ### modulesIn

    public static [Set](../../../../../java.base/java/util/Set.md "interface in java.util")<[ModuleElement](../element/ModuleElement.md "interface in javax.lang.model.element")> modulesIn([Set](../../../../../java.base/java/util/Set.md "interface in java.util")<? extends [Element](../element/Element.md "interface in javax.lang.model.element")> elements)

    Returns a set of modules in `elements`.

    Parameters:
    :   `elements` - the elements to filter

    Returns:
    :   a set of modules in `elements`

    Since:
    :   9
  + ### exportsIn

    public static [List](../../../../../java.base/java/util/List.md "interface in java.util")<[ModuleElement.ExportsDirective](../element/ModuleElement.ExportsDirective.md "interface in javax.lang.model.element")> exportsIn([Iterable](../../../../../java.base/java/lang/Iterable.md "interface in java.lang")<? extends [ModuleElement.Directive](../element/ModuleElement.Directive.md "interface in javax.lang.model.element")> directives)

    Returns a list of `exports` directives in `directives`.

    Parameters:
    :   `directives` - the directives to filter

    Returns:
    :   a list of `exports` directives in `directives`

    Since:
    :   9
  + ### opensIn

    public static [List](../../../../../java.base/java/util/List.md "interface in java.util")<[ModuleElement.OpensDirective](../element/ModuleElement.OpensDirective.md "interface in javax.lang.model.element")> opensIn([Iterable](../../../../../java.base/java/lang/Iterable.md "interface in java.lang")<? extends [ModuleElement.Directive](../element/ModuleElement.Directive.md "interface in javax.lang.model.element")> directives)

    Returns a list of `opens` directives in `directives`.

    Parameters:
    :   `directives` - the directives to filter

    Returns:
    :   a list of `opens` directives in `directives`

    Since:
    :   9
  + ### providesIn

    public static [List](../../../../../java.base/java/util/List.md "interface in java.util")<[ModuleElement.ProvidesDirective](../element/ModuleElement.ProvidesDirective.md "interface in javax.lang.model.element")> providesIn([Iterable](../../../../../java.base/java/lang/Iterable.md "interface in java.lang")<? extends [ModuleElement.Directive](../element/ModuleElement.Directive.md "interface in javax.lang.model.element")> directives)

    Returns a list of `provides` directives in `directives`.

    Parameters:
    :   `directives` - the directives to filter

    Returns:
    :   a list of `provides` directives in `directives`

    Since:
    :   9
  + ### requiresIn

    public static [List](../../../../../java.base/java/util/List.md "interface in java.util")<[ModuleElement.RequiresDirective](../element/ModuleElement.RequiresDirective.md "interface in javax.lang.model.element")> requiresIn([Iterable](../../../../../java.base/java/lang/Iterable.md "interface in java.lang")<? extends [ModuleElement.Directive](../element/ModuleElement.Directive.md "interface in javax.lang.model.element")> directives)

    Returns a list of `requires` directives in `directives`.

    Parameters:
    :   `directives` - the directives to filter

    Returns:
    :   a list of `requires` directives in `directives`

    Since:
    :   9
  + ### usesIn

    public static [List](../../../../../java.base/java/util/List.md "interface in java.util")<[ModuleElement.UsesDirective](../element/ModuleElement.UsesDirective.md "interface in javax.lang.model.element")> usesIn([Iterable](../../../../../java.base/java/lang/Iterable.md "interface in java.lang")<? extends [ModuleElement.Directive](../element/ModuleElement.Directive.md "interface in javax.lang.model.element")> directives)

    Returns a list of `uses` directives in `directives`.

    Parameters:
    :   `directives` - the directives to filter

    Returns:
    :   a list of `uses` directives in `directives`

    Since:
    :   9