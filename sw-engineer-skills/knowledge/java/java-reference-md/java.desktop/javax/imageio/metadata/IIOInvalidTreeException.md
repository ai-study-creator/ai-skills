Module [java.desktop](../../../module-summary.md)

Package [javax.imageio.metadata](package-summary.md)

# Class IIOInvalidTreeException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.io.IOException](../../../../java.base/java/io/IOException.md "class in java.io")

[javax.imageio.IIOException](../IIOException.md "class in javax.imageio")

javax.imageio.metadata.IIOInvalidTreeException

All Implemented Interfaces:
:   `Serializable`

---

public class IIOInvalidTreeException
extends [IIOException](../IIOException.md "class in javax.imageio")

An `IIOInvalidTreeException` is thrown when an attempt
by an `IIOMetadata` object to parse a tree of
`IIOMetadataNode`s fails. The node that led to the
parsing error may be stored. As with any parsing error, the actual
error may occur at a different point that that where it is
detected. The node returned by `getOffendingNode`
should merely be considered as a clue to the actual nature of the
problem.

See Also:
:   * [`IIOMetadata.setFromTree(java.lang.String, org.w3c.dom.Node)`](IIOMetadata.md#setFromTree(java.lang.String,org.w3c.dom.Node))
    * [`IIOMetadata.mergeTree(java.lang.String, org.w3c.dom.Node)`](IIOMetadata.md#mergeTree(java.lang.String,org.w3c.dom.Node))
    * [`IIOMetadataNode`](IIOMetadataNode.md "class in javax.imageio.metadata")
    * [Serialized Form](../../../../serialized-form.md#javax.imageio.metadata.IIOInvalidTreeException)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Node`

  `offendingNode`

  The `Node` that led to the parsing error, or
  `null`.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IIOInvalidTreeException(String message,
  Throwable cause,
  Node offendingNode)`

  Constructs an `IIOInvalidTreeException` with a
  message string, a reference to an exception that caused this
  exception, and a reference to the `Node` that caused
  the parsing error.

  `IIOInvalidTreeException(String message,
  Node offendingNode)`

  Constructs an `IIOInvalidTreeException` with a
  message string and a reference to the `Node` that
  caused the parsing error.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Node`

  `getOffendingNode()`

  Returns the `Node` that caused the error in parsing.

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### offendingNode

    protected [Node](../../../../java.xml/org/w3c/dom/Node.md "interface in org.w3c.dom") offendingNode

    The `Node` that led to the parsing error, or
    `null`.
* ## Constructor Details

  + ### IIOInvalidTreeException

    public IIOInvalidTreeException([String](../../../../java.base/java/lang/String.md "class in java.lang") message,
    [Node](../../../../java.xml/org/w3c/dom/Node.md "interface in org.w3c.dom") offendingNode)

    Constructs an `IIOInvalidTreeException` with a
    message string and a reference to the `Node` that
    caused the parsing error.

    Parameters:
    :   `message` - a `String` containing the reason for
        the parsing failure.
    :   `offendingNode` - the DOM `Node` that caused the
        exception, or `null`.
  + ### IIOInvalidTreeException

    public IIOInvalidTreeException([String](../../../../java.base/java/lang/String.md "class in java.lang") message,
    [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") cause,
    [Node](../../../../java.xml/org/w3c/dom/Node.md "interface in org.w3c.dom") offendingNode)

    Constructs an `IIOInvalidTreeException` with a
    message string, a reference to an exception that caused this
    exception, and a reference to the `Node` that caused
    the parsing error.

    Parameters:
    :   `message` - a `String` containing the reason for
        the parsing failure.
    :   `cause` - the `Throwable` (`Error` or
        `Exception`) that caused this exception to occur,
        or `null`.
    :   `offendingNode` - the DOM `Node` that caused the
        exception, or `null`.
* ## Method Details

  + ### getOffendingNode

    public [Node](../../../../java.xml/org/w3c/dom/Node.md "interface in org.w3c.dom") getOffendingNode()

    Returns the `Node` that caused the error in parsing.

    Returns:
    :   the offending `Node`.