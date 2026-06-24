Module [java.compiler](../../module-summary.md)

Package [javax.tools](package-summary.md)

# Interface DiagnosticListener<S>

Type Parameters:
:   `S` - the type of source objects used by diagnostics received
    by this listener

All Known Implementing Classes:
:   `DiagnosticCollector`

---

public interface DiagnosticListener<S>

Interface for receiving diagnostics from tools.

Since:
:   1.6

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `report(Diagnostic<? extends S> diagnostic)`

  Invoked when a problem is found.

* ## Method Details

  + ### report

    void report([Diagnostic](Diagnostic.md "interface in javax.tools")<? extends [S](DiagnosticListener.md "type parameter in DiagnosticListener")> diagnostic)

    Invoked when a problem is found.

    Parameters:
    :   `diagnostic` - a diagnostic representing the problem that
        was found

    Throws:
    :   `NullPointerException` - if the diagnostic argument is
        `null` and the implementation cannot handle `null`
        arguments