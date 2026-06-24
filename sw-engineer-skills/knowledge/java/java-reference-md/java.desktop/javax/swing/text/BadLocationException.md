Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class BadLocationException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

javax.swing.text.BadLocationException

All Implemented Interfaces:
:   `Serializable`

---

public class BadLocationException
extends [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

This exception is to report bad locations within a document model
(that is, attempts to reference a location that doesn't exist).

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BadLocationException(String s,
  int offs)`

  Creates a new BadLocationException object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `offsetRequested()`

  Returns the offset into the document that was not legal.

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### BadLocationException

    public BadLocationException([String](../../../../java.base/java/lang/String.md "class in java.lang") s,
    int offs)

    Creates a new BadLocationException object.

    Parameters:
    :   `s` - a string indicating what was wrong with the arguments
    :   `offs` - offset within the document that was requested >= 0
* ## Method Details

  + ### offsetRequested

    public int offsetRequested()

    Returns the offset into the document that was not legal.

    Returns:
    :   the offset >= 0