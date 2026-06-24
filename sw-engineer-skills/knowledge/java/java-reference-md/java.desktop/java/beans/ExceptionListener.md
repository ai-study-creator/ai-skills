Module [java.desktop](../../module-summary.md)

Package [java.beans](package-summary.md)

# Interface ExceptionListener

---

public interface ExceptionListener

An ExceptionListener is notified of internal exceptions.

Since:
:   1.4

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `exceptionThrown(Exception e)`

  This method is called when a recoverable exception has
  been caught.

* ## Method Details

  + ### exceptionThrown

    void exceptionThrown([Exception](../../../java.base/java/lang/Exception.md "class in java.lang") e)

    This method is called when a recoverable exception has
    been caught.

    Parameters:
    :   `e` - The exception that was caught.