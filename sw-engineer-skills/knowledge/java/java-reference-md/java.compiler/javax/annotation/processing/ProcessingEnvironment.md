Module [java.compiler](../../../module-summary.md)

Package [javax.annotation.processing](package-summary.md)

# Interface ProcessingEnvironment

---

public interface ProcessingEnvironment

An annotation processing tool framework will [provide an annotation processor with an object
implementing this interface](Processor.md#init(javax.annotation.processing.ProcessingEnvironment)) so the processor can use facilities
provided by the framework to write new files, report error
messages, and find other utilities.

Third parties may wish to provide value-add wrappers around the
facility objects from this interface, for example a `Filer`
extension that allows multiple processors to coordinate writing out
a single source file. To enable this, for processors running in a
context where their side effects via the API could be visible to
each other, the tool infrastructure must provide corresponding
facility objects that are `.equals`, `Filer`s that are
`.equals`, and so on. In addition, the tool invocation must
be able to be configured such that from the perspective of the
running annotation processors, at least the chosen subset of helper
classes are viewed as being loaded by the same class loader.
(Since the facility objects manage shared state, the implementation
of a wrapper class must know whether or not the same base facility
object has been wrapped before.)

Since:
:   1.6

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `Elements`

  `getElementUtils()`

  Returns an implementation of some utility methods for
  operating on elements.

  `Filer`

  `getFiler()`

  Returns the filer used to create new source, class, or auxiliary
  files.

  `Locale`

  `getLocale()`

  Returns the current locale or `null` if no locale is in
  effect.

  `Messager`

  `getMessager()`

  Returns the messager used to report errors, warnings, and other
  notices.

  `Map<String,String>`

  `getOptions()`

  Returns the processor-specific options passed to the annotation
  processing tool.

  `SourceVersion`

  `getSourceVersion()`

  Returns the source version that any generated [source](Filer.md#createSourceFile(java.lang.CharSequence,javax.lang.model.element.Element...)) and [class](Filer.md#createClassFile(java.lang.CharSequence,javax.lang.model.element.Element...)) files should conform to.

  `Types`

  `getTypeUtils()`

  Returns an implementation of some utility methods for
  operating on types.

  `default boolean`

  `isPreviewEnabled()`

  Returns `true` if *preview features* are enabled
  and `false` otherwise.

* ## Method Details

  + ### getOptions

    [Map](../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang"),[String](../../../../java.base/java/lang/String.md "class in java.lang")> getOptions()

    Returns the processor-specific options passed to the annotation
    processing tool. Options are returned in the form of a map from
    option name to option value. For an option with no value, the
    corresponding value in the map is `null`.

    See documentation of the particular tool infrastructure
    being used for details on how to pass in processor-specific
    options. For example, a command-line implementation may
    distinguish processor-specific options by prefixing them with a
    known string like `"-A"`; other tool implementations may
    follow different conventions or provide alternative mechanisms.
    A given implementation may also provide implementation-specific
    ways of finding options passed to the tool in addition to the
    processor-specific options.

    Returns:
    :   the processor-specific options passed to the annotation
        processing tool
  + ### getMessager

    [Messager](Messager.md "interface in javax.annotation.processing") getMessager()

    Returns the messager used to report errors, warnings, and other
    notices.

    Returns:
    :   the messager used to report errors, warnings, and other
        notices
  + ### getFiler

    [Filer](Filer.md "interface in javax.annotation.processing") getFiler()

    Returns the filer used to create new source, class, or auxiliary
    files.

    Returns:
    :   the filer used to create new source, class, or auxiliary
        files
  + ### getElementUtils

    [Elements](../../lang/model/util/Elements.md "interface in javax.lang.model.util") getElementUtils()

    Returns an implementation of some utility methods for
    operating on elements.

    Returns:
    :   an implementation of some utility methods for
        operating on elements
  + ### getTypeUtils

    [Types](../../lang/model/util/Types.md "interface in javax.lang.model.util") getTypeUtils()

    Returns an implementation of some utility methods for
    operating on types.

    Returns:
    :   an implementation of some utility methods for
        operating on types
  + ### getSourceVersion

    [SourceVersion](../../lang/model/SourceVersion.md "enum class in javax.lang.model") getSourceVersion()

    Returns the source version that any generated [source](Filer.md#createSourceFile(java.lang.CharSequence,javax.lang.model.element.Element...)) and [class](Filer.md#createClassFile(java.lang.CharSequence,javax.lang.model.element.Element...)) files should conform to.

    Returns:
    :   the source version that any generated [source](Filer.md#createSourceFile(java.lang.CharSequence,javax.lang.model.element.Element...)) and [class](Filer.md#createClassFile(java.lang.CharSequence,javax.lang.model.element.Element...)) files should conform to

    See Also:
    :   - [`Processor.getSupportedSourceVersion()`](Processor.md#getSupportedSourceVersion())
  + ### getLocale

    [Locale](../../../../java.base/java/util/Locale.md "class in java.util") getLocale()

    Returns the current locale or `null` if no locale is in
    effect. The locale can be used to provide localized
    [messages](Messager.md "interface in javax.annotation.processing").

    Returns:
    :   the current locale or `null` if no locale is in
        effect
  + ### isPreviewEnabled

    default boolean isPreviewEnabled()

    Returns `true` if *preview features* are enabled
    and `false` otherwise.

    Returns:
    :   whether or not preview features are enabled

    Since:
    :   13