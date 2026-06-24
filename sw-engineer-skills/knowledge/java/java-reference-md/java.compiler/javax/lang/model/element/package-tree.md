# Hierarchy For Package javax.lang.model.element

Package Hierarchies:

* [All Packages](../../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
  + java.lang.[Throwable](../../../../../java.base/java/lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../../../../../java.base/java/lang/Exception.md "class in java.lang")
      * java.lang.[RuntimeException](../../../../../java.base/java/lang/RuntimeException.md "class in java.lang")
        + javax.lang.model.[UnknownEntityException](../UnknownEntityException.md "class in javax.lang.model")
          - javax.lang.model.element.[UnknownAnnotationValueException](UnknownAnnotationValueException.md "class in javax.lang.model.element")
          - javax.lang.model.element.[UnknownDirectiveException](UnknownDirectiveException.md "class in javax.lang.model.element")
          - javax.lang.model.element.[UnknownElementException](UnknownElementException.md "class in javax.lang.model.element")

## Interface Hierarchy

* javax.lang.model.[AnnotatedConstruct](../AnnotatedConstruct.md "interface in javax.lang.model")
  + javax.lang.model.element.[Element](Element.md "interface in javax.lang.model.element")
    - javax.lang.model.element.[ExecutableElement](ExecutableElement.md "interface in javax.lang.model.element") (also extends javax.lang.model.element.[Parameterizable](Parameterizable.md "interface in javax.lang.model.element"))
    - javax.lang.model.element.[ModuleElement](ModuleElement.md "interface in javax.lang.model.element") (also extends javax.lang.model.element.[QualifiedNameable](QualifiedNameable.md "interface in javax.lang.model.element"))
    - javax.lang.model.element.[PackageElement](PackageElement.md "interface in javax.lang.model.element") (also extends javax.lang.model.element.[QualifiedNameable](QualifiedNameable.md "interface in javax.lang.model.element"))
    - javax.lang.model.element.[Parameterizable](Parameterizable.md "interface in javax.lang.model.element")
      * javax.lang.model.element.[ExecutableElement](ExecutableElement.md "interface in javax.lang.model.element") (also extends javax.lang.model.element.[Element](Element.md "interface in javax.lang.model.element"))
      * javax.lang.model.element.[TypeElement](TypeElement.md "interface in javax.lang.model.element") (also extends javax.lang.model.element.[Element](Element.md "interface in javax.lang.model.element"), javax.lang.model.element.[QualifiedNameable](QualifiedNameable.md "interface in javax.lang.model.element"))
    - javax.lang.model.element.[QualifiedNameable](QualifiedNameable.md "interface in javax.lang.model.element")
      * javax.lang.model.element.[ModuleElement](ModuleElement.md "interface in javax.lang.model.element") (also extends javax.lang.model.element.[Element](Element.md "interface in javax.lang.model.element"))
      * javax.lang.model.element.[PackageElement](PackageElement.md "interface in javax.lang.model.element") (also extends javax.lang.model.element.[Element](Element.md "interface in javax.lang.model.element"))
      * javax.lang.model.element.[TypeElement](TypeElement.md "interface in javax.lang.model.element") (also extends javax.lang.model.element.[Element](Element.md "interface in javax.lang.model.element"), javax.lang.model.element.[Parameterizable](Parameterizable.md "interface in javax.lang.model.element"))
    - javax.lang.model.element.[RecordComponentElement](RecordComponentElement.md "interface in javax.lang.model.element")
    - javax.lang.model.element.[TypeElement](TypeElement.md "interface in javax.lang.model.element") (also extends javax.lang.model.element.[Parameterizable](Parameterizable.md "interface in javax.lang.model.element"), javax.lang.model.element.[QualifiedNameable](QualifiedNameable.md "interface in javax.lang.model.element"))
    - javax.lang.model.element.[TypeParameterElement](TypeParameterElement.md "interface in javax.lang.model.element")
    - javax.lang.model.element.[VariableElement](VariableElement.md "interface in javax.lang.model.element")
* javax.lang.model.element.[AnnotationMirror](AnnotationMirror.md "interface in javax.lang.model.element")
* javax.lang.model.element.[AnnotationValue](AnnotationValue.md "interface in javax.lang.model.element")
* javax.lang.model.element.[AnnotationValueVisitor](AnnotationValueVisitor.md "interface in javax.lang.model.element")<R,P>
* java.lang.[CharSequence](../../../../../java.base/java/lang/CharSequence.md "interface in java.lang")
  + javax.lang.model.element.[Name](Name.md "interface in javax.lang.model.element")
* javax.lang.model.element.[ElementVisitor](ElementVisitor.md "interface in javax.lang.model.element")<R,P>
* javax.lang.model.element.[ModuleElement.Directive](ModuleElement.Directive.md "interface in javax.lang.model.element")
  + javax.lang.model.element.[ModuleElement.ExportsDirective](ModuleElement.ExportsDirective.md "interface in javax.lang.model.element")
  + javax.lang.model.element.[ModuleElement.OpensDirective](ModuleElement.OpensDirective.md "interface in javax.lang.model.element")
  + javax.lang.model.element.[ModuleElement.ProvidesDirective](ModuleElement.ProvidesDirective.md "interface in javax.lang.model.element")
  + javax.lang.model.element.[ModuleElement.RequiresDirective](ModuleElement.RequiresDirective.md "interface in javax.lang.model.element")
  + javax.lang.model.element.[ModuleElement.UsesDirective](ModuleElement.UsesDirective.md "interface in javax.lang.model.element")
* javax.lang.model.element.[ModuleElement.DirectiveVisitor](ModuleElement.DirectiveVisitor.md "interface in javax.lang.model.element")<R,P>

## Enum Class Hierarchy

* java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
  + java.lang.[Enum](../../../../../java.base/java/lang/Enum.md "class in java.lang")<E> (implements java.lang.[Comparable](../../../../../java.base/java/lang/Comparable.md "interface in java.lang")<T>, java.lang.constant.[Constable](../../../../../java.base/java/lang/constant/Constable.md "interface in java.lang.constant"), java.io.[Serializable](../../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - javax.lang.model.element.[ElementKind](ElementKind.md "enum class in javax.lang.model.element")
    - javax.lang.model.element.[Modifier](Modifier.md "enum class in javax.lang.model.element")
    - javax.lang.model.element.[ModuleElement.DirectiveKind](ModuleElement.DirectiveKind.md "enum class in javax.lang.model.element")
    - javax.lang.model.element.[NestingKind](NestingKind.md "enum class in javax.lang.model.element")