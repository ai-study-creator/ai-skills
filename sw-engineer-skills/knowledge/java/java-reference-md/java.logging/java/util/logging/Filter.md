Module [java.logging](../../../module-summary.md)

Package [java.util.logging](package-summary.md)

# Interface Filter

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../../../java.base/java/lang/FunctionalInterface.md "annotation interface in java.lang")
public interface Filter

A Filter can be used to provide fine grain control over
what is logged, beyond the control provided by log levels.

Each Logger and each Handler can have a filter associated with it.
The Logger or Handler will call the isLoggable method to check
if a given LogRecord should be published. If isLoggable returns
false, the LogRecord will be discarded.

Since:
:   1.4

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `isLoggable(LogRecord record)`

  Check if a given log record should be published.

* ## Method Details

  + ### isLoggable

    boolean isLoggable([LogRecord](LogRecord.md "class in java.util.logging") record)

    Check if a given log record should be published.

    Parameters:
    :   `record` - a LogRecord

    Returns:
    :   true if the log record should be published.