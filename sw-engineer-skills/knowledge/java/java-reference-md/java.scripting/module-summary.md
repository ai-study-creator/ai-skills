# Module java.scripting

---

module java.scripting

Defines the Scripting API.

The JDK implementation of this module includes a language-independent
command-line script shell, *jrunscript*,
that supports executing JavaScript and other languages if its corresponding
script engine is installed.

Since:
:   9

* ## Packages

  Exports

  Package

  Description

  [javax.script](javax/script/package-summary.md)

  The scripting API consists of interfaces and classes that define
  Java Scripting Engines and provides
  a framework for their use in Java applications.
* ## Services

  Uses

  Type

  Description

  [ScriptEngineFactory](javax/script/ScriptEngineFactory.md "interface in javax.script")

  `ScriptEngineFactory` is used to describe and instantiate
  `ScriptEngines`.