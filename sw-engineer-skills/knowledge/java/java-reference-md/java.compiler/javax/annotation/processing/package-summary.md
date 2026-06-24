Module [java.compiler](../../../module-summary.md)

# Package javax.annotation.processing

---

package javax.annotation.processing

Facilities for declaring annotation processors and for
allowing annotation processors to communicate with an annotation processing
tool environment.

Unless otherwise specified in a particular implementation, the
collections returned by methods in this package should be expected
to be unmodifiable by the caller and unsafe for concurrent access.

Unless otherwise specified, methods in this package will throw
a `NullPointerException` if given a `null` argument.

Since:
:   1.6

See Also:
:   * [JSR 269: Pluggable Annotation Processing API](https://jcp.org/en/jsr/detail?id=269)

* All Classes and InterfacesInterfacesClassesException ClassesAnnotation Interfaces

  Class

  Description

  [AbstractProcessor](AbstractProcessor.md "class in javax.annotation.processing")

  An abstract annotation processor designed to be a convenient
  superclass for most concrete annotation processors.

  [Completion](Completion.md "interface in javax.annotation.processing")

  A suggested [*completion*](Processor.md#getCompletions(javax.lang.model.element.Element,javax.lang.model.element.AnnotationMirror,javax.lang.model.element.ExecutableElement,java.lang.String)) for an
  annotation.

  [Completions](Completions.md "class in javax.annotation.processing")

  Utility class for assembling [`Completion`](Completion.md "interface in javax.annotation.processing") objects.

  [Filer](Filer.md "interface in javax.annotation.processing")

  This interface supports the creation of new files by an annotation
  processor.

  [FilerException](FilerException.md "class in javax.annotation.processing")

  Indicates a [`Filer`](Filer.md "interface in javax.annotation.processing") detected an attempt to open a file that
  would violate the guarantees provided by the `Filer`.

  [Generated](Generated.md "annotation interface in javax.annotation.processing")

  The Generated annotation is used to mark source code that has been generated.

  [Messager](Messager.md "interface in javax.annotation.processing")

  A `Messager` provides the way for an annotation processor to
  report error messages, warnings, and other notices.

  [ProcessingEnvironment](ProcessingEnvironment.md "interface in javax.annotation.processing")

  An annotation processing tool framework will [provide an annotation processor with an object
  implementing this interface](Processor.md#init(javax.annotation.processing.ProcessingEnvironment)) so the processor can use facilities
  provided by the framework to write new files, report error
  messages, and find other utilities.

  [Processor](Processor.md "interface in javax.annotation.processing")

  The interface for an annotation processor.

  [RoundEnvironment](RoundEnvironment.md "interface in javax.annotation.processing")

  An annotation processing tool framework will [provide an annotation processor with an object
  implementing this interface](Processor.md#process(java.util.Set,javax.annotation.processing.RoundEnvironment)) so that the processor can query for
  information about a round of annotation processing.

  [SupportedAnnotationTypes](SupportedAnnotationTypes.md "annotation interface in javax.annotation.processing")

  An annotation used to indicate what annotation interfaces an
  annotation processor supports.

  [SupportedOptions](SupportedOptions.md "annotation interface in javax.annotation.processing")

  An annotation used to indicate what options an annotation processor
  supports.

  [SupportedSourceVersion](SupportedSourceVersion.md "annotation interface in javax.annotation.processing")

  An annotation used to indicate the latest source version an
  annotation processor supports.