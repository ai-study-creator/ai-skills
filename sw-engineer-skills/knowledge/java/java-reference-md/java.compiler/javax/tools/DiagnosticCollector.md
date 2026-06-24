Module [java.compiler](../../module-summary.md)

Package [javax.tools](package-summary.md)

# Class DiagnosticCollector<S>

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.tools.DiagnosticCollector<S>

Type Parameters:
:   `S` - the type of source objects used by diagnostics received
    by this object

All Implemented Interfaces:
:   `DiagnosticListener<S>`

---

public final class DiagnosticCollector<S>
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [DiagnosticListener](DiagnosticListener.md "interface in javax.tools")<S>

Provides an easy way to collect diagnostics in a list.

Since:
:   1.6

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DiagnosticCollector()`

  Creates a new instance of DiagnosticCollector.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `List<Diagnostic<? extends S>>`

  `getDiagnostics()`

  Returns a list view of diagnostics collected by this object.

  `void`

  `report(Diagnostic<? extends S> diagnostic)`

  Invoked when a problem is found.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DiagnosticCollector

    public DiagnosticCollector()

    Creates a new instance of DiagnosticCollector.
* ## Method Details

  + ### report

    public void report([Diagnostic](Diagnostic.md "interface in javax.tools")<? extends [S](DiagnosticCollector.md "type parameter in DiagnosticCollector")> diagnostic)

    Description copied from interface: `DiagnosticListener`

    Invoked when a problem is found.

    Specified by:
    :   `report` in interface `DiagnosticListener<S>`

    Parameters:
    :   `diagnostic` - a diagnostic representing the problem that
        was found
  + ### getDiagnostics

    public [List](../../../java.base/java/util/List.md "interface in java.util")<[Diagnostic](Diagnostic.md "interface in javax.tools")<? extends [S](DiagnosticCollector.md "type parameter in DiagnosticCollector")>> getDiagnostics()

    Returns a list view of diagnostics collected by this object.

    Returns:
    :   a list view of diagnostics