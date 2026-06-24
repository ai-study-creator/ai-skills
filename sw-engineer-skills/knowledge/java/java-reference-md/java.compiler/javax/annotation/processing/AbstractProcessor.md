Module [java.compiler](../../../module-summary.md)

Package [javax.annotation.processing](package-summary.md)

# Class AbstractProcessor

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.annotation.processing.AbstractProcessor

All Implemented Interfaces:
:   `Processor`

---

public abstract class AbstractProcessor
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Processor](Processor.md "interface in javax.annotation.processing")

An abstract annotation processor designed to be a convenient
superclass for most concrete annotation processors. This class
examines annotation values to compute the [options](#getSupportedOptions()), [annotation interfaces](#getSupportedAnnotationTypes()), and
[source version](#getSupportedSourceVersion()) supported by
its subtypes.

The getter methods may [issue
warnings](Messager.md#printMessage(javax.tools.Diagnostic.Kind,java.lang.CharSequence)) about noteworthy conditions using the facilities available
after the processor has been [initialized](#isInitialized()).

Subclasses are free to override the implementation and
specification of any of the methods in this class as long as the
general [`Processor`](Processor.md "interface in javax.annotation.processing")
contract for that method is obeyed.

Since:
:   1.6

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected ProcessingEnvironment`

  `processingEnv`

  Processing environment providing by the tool framework.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AbstractProcessor()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Iterable<? extends Completion>`

  `getCompletions(Element element,
  AnnotationMirror annotation,
  ExecutableElement member,
  String userText)`

  Returns an empty iterable of completions.

  `Set<String>`

  `getSupportedAnnotationTypes()`

  If the processor class is annotated with [`SupportedAnnotationTypes`](SupportedAnnotationTypes.md "annotation interface in javax.annotation.processing"), return an unmodifiable set with the
  same set of strings as the annotation.

  `Set<String>`

  `getSupportedOptions()`

  If the processor class is annotated with [`SupportedOptions`](SupportedOptions.md "annotation interface in javax.annotation.processing"), return an unmodifiable set with the same set
  of strings as the annotation.

  `SourceVersion`

  `getSupportedSourceVersion()`

  If the processor class is annotated with [`SupportedSourceVersion`](SupportedSourceVersion.md "annotation interface in javax.annotation.processing"), return the source version in the
  annotation.

  `void`

  `init(ProcessingEnvironment processingEnv)`

  Initializes the processor with the processing environment by
  setting the `processingEnv` field to the value of the
  `processingEnv` argument.

  `protected boolean`

  `isInitialized()`

  Returns `true` if this object has been [initialized](#init(javax.annotation.processing.ProcessingEnvironment)), `false` otherwise.

  `abstract boolean`

  `process(Set<? extends TypeElement> annotations,
  RoundEnvironment roundEnv)`

  Processes a set of annotation interfaces on [root elements](RoundEnvironment.md#getRootElements()) originating
  from the prior round and returns whether or not these
  annotation interfaces are claimed by this processor.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### processingEnv

    protected [ProcessingEnvironment](ProcessingEnvironment.md "interface in javax.annotation.processing") processingEnv

    Processing environment providing by the tool framework.
* ## Constructor Details

  + ### AbstractProcessor

    protected AbstractProcessor()

    Constructor for subclasses to call.
* ## Method Details

  + ### getSupportedOptions

    public [Set](../../../../java.base/java/util/Set.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang")> getSupportedOptions()

    If the processor class is annotated with [`SupportedOptions`](SupportedOptions.md "annotation interface in javax.annotation.processing"), return an unmodifiable set with the same set
    of strings as the annotation. If the class is not so
    annotated, an empty set is returned.

    Specified by:
    :   `getSupportedOptions` in interface `Processor`

    Returns:
    :   the options recognized by this processor, or an empty
        set if none

    See Also:
    :   - [`SupportedOptions`](SupportedOptions.md "annotation interface in javax.annotation.processing")
  + ### getSupportedAnnotationTypes

    public [Set](../../../../java.base/java/util/Set.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang")> getSupportedAnnotationTypes()

    If the processor class is annotated with [`SupportedAnnotationTypes`](SupportedAnnotationTypes.md "annotation interface in javax.annotation.processing"), return an unmodifiable set with the
    same set of strings as the annotation. If the class is not so
    annotated, an empty set is returned.
    If the [source
    version](ProcessingEnvironment.md#getSourceVersion()) does not support modules, in other words if it is less
    than or equal to [`RELEASE_8`](../../lang/model/SourceVersion.md#RELEASE_8),
    then any leading [module prefixes](Processor.md#getSupportedAnnotationTypes()) are stripped from the names.

    Specified by:
    :   `getSupportedAnnotationTypes` in interface `Processor`

    Returns:
    :   the names of the annotation interfaces supported by
        this processor, or an empty set if none

    See Also:
    :   - [`SupportedAnnotationTypes`](SupportedAnnotationTypes.md "annotation interface in javax.annotation.processing")
  + ### getSupportedSourceVersion

    public [SourceVersion](../../lang/model/SourceVersion.md "enum class in javax.lang.model") getSupportedSourceVersion()

    If the processor class is annotated with [`SupportedSourceVersion`](SupportedSourceVersion.md "annotation interface in javax.annotation.processing"), return the source version in the
    annotation. If the class is not so annotated, [`SourceVersion.RELEASE_6`](../../lang/model/SourceVersion.md#RELEASE_6) is returned.

    Specified by:
    :   `getSupportedSourceVersion` in interface `Processor`

    Returns:
    :   the latest source version supported by this processor

    See Also:
    :   - [`SupportedSourceVersion`](SupportedSourceVersion.md "annotation interface in javax.annotation.processing")
        - [`ProcessingEnvironment.getSourceVersion()`](ProcessingEnvironment.md#getSourceVersion())
  + ### init

    public void init([ProcessingEnvironment](ProcessingEnvironment.md "interface in javax.annotation.processing") processingEnv)

    Initializes the processor with the processing environment by
    setting the `processingEnv` field to the value of the
    `processingEnv` argument. An `IllegalStateException` will be thrown if this method is called
    more than once on the same object.

    Specified by:
    :   `init` in interface `Processor`

    Parameters:
    :   `processingEnv` - environment to access facilities the tool framework
        provides to the processor

    Throws:
    :   `IllegalStateException` - if this method is called more than once.
  + ### process

    public abstract boolean process([Set](../../../../java.base/java/util/Set.md "interface in java.util")<? extends [TypeElement](../../lang/model/element/TypeElement.md "interface in javax.lang.model.element")> annotations,
    [RoundEnvironment](RoundEnvironment.md "interface in javax.annotation.processing") roundEnv)

    Processes a set of annotation interfaces on [root elements](RoundEnvironment.md#getRootElements()) originating
    from the prior round and returns whether or not these
    annotation interfaces are claimed by this processor. If `true` is returned, the annotation interfaces are claimed and
    subsequent processors will not be asked to process them; if
    `false` is returned, the annotation interfaces are
    unclaimed and subsequent processors may be asked to process
    them. A processor may always return the same boolean value or
    may vary the result based on its own chosen criteria.

    The input set will be empty if the processor supports `"*"` and the root elements have no annotations. A `Processor` must gracefully handle an empty set of annotations.

    Specified by:
    :   `process` in interface `Processor`

    Parameters:
    :   `annotations` - the annotation interfaces requested to be processed
    :   `roundEnv` - environment for information about the current and prior round

    Returns:
    :   whether or not the set of annotation interfaces are claimed by this processor
  + ### getCompletions

    public [Iterable](../../../../java.base/java/lang/Iterable.md "interface in java.lang")<? extends [Completion](Completion.md "interface in javax.annotation.processing")> getCompletions([Element](../../lang/model/element/Element.md "interface in javax.lang.model.element") element,
    [AnnotationMirror](../../lang/model/element/AnnotationMirror.md "interface in javax.lang.model.element") annotation,
    [ExecutableElement](../../lang/model/element/ExecutableElement.md "interface in javax.lang.model.element") member,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") userText)

    Returns an empty iterable of completions.

    Specified by:
    :   `getCompletions` in interface `Processor`

    Parameters:
    :   `element` - the element being annotated
    :   `annotation` - the (perhaps partial) annotation being
        applied to the element
    :   `member` - the annotation member to return possible completions for
    :   `userText` - source code text to be completed

    Returns:
    :   an empty iterable of completions
  + ### isInitialized

    protected boolean isInitialized()

    Returns `true` if this object has been [initialized](#init(javax.annotation.processing.ProcessingEnvironment)), `false` otherwise.

    Returns:
    :   `true` if this object has been [initialized](#init(javax.annotation.processing.ProcessingEnvironment)), `false` otherwise