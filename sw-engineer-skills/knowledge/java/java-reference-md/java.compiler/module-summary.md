# Module java.compiler

---

module java.compiler

Defines the Language Model, Annotation Processing, and
Java Compiler APIs.

These APIs model declarations and types of the Java programming language,
and define interfaces for tools such as compilers which can be invoked
from a program.

This module is upgradeable.

Since:
:   9

* ## Packages

  Exports

  Package

  Description

  [javax.annotation.processing](javax/annotation/processing/package-summary.md)

  Facilities for declaring annotation processors and for
  allowing annotation processors to communicate with an annotation processing
  tool environment.

  [javax.lang.model](javax/lang/model/package-summary.md)

  Types and hierarchies of packages comprising a Java language model, a model of the declarations and types of the Java
  programming language.

  [javax.lang.model.element](javax/lang/model/element/package-summary.md)

  Interfaces used to model elements of the Java programming language.

  [javax.lang.model.type](javax/lang/model/type/package-summary.md)

  Interfaces used to model Java programming language types.

  [javax.lang.model.util](javax/lang/model/util/package-summary.md)

  Utilities to assist in the processing of
  [program elements](javax/lang/model/element/package-summary.md) and
  [types](javax/lang/model/type/package-summary.md).

  [javax.tools](javax/tools/package-summary.md)

  Provides interfaces for tools which can be invoked from a program,
  for example, compilers.