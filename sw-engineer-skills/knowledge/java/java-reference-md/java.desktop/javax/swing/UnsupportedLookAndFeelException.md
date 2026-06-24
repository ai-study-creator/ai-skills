Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class UnsupportedLookAndFeelException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

javax.swing.UnsupportedLookAndFeelException

All Implemented Interfaces:
:   `Serializable`

---

public class UnsupportedLookAndFeelException
extends [Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

An exception that indicates the requested look & feel
management classes are not present on the user's system.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../java/beans/XMLEncoder.md "class in java.beans").

Since:
:   1.2

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UnsupportedLookAndFeelException(String s)`

  Constructs an UnsupportedLookAndFeelException object.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### UnsupportedLookAndFeelException

    public UnsupportedLookAndFeelException([String](../../../java.base/java/lang/String.md "class in java.lang") s)

    Constructs an UnsupportedLookAndFeelException object.

    Parameters:
    :   `s` - a message String