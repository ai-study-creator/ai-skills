Module [java.xml](../../../../module-summary.md)

Package [org.w3c.dom.ranges](package-summary.md)

# Class RangeException

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

org.w3c.dom.ranges.RangeException

All Implemented Interfaces:
:   `Serializable`

---

public class RangeException
extends [RuntimeException](../../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

Range operations may throw a `RangeException` as specified in
their method descriptions.

See also the [Document Object Model (DOM) Level 2 Traversal and Range Specification](http://www.w3.org/TR/2000/REC-DOM-Level-2-Traversal-Range-20001113).

Since:
:   9, DOM Level 2

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#org.w3c.dom.ranges.RangeException)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final short`

  `BAD_BOUNDARYPOINTS_ERR`

  If the boundary-points of a Range do not meet specific requirements.

  `short`

  `code`

  `static final short`

  `INVALID_NODE_TYPE_ERR`

  If the container of an boundary-point of a Range is being set to either
  a node of an invalid type or a node with an ancestor of an invalid
  type.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RangeException(short code,
  String message)`
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### code

    public short code
  + ### BAD\_BOUNDARYPOINTS\_ERR

    public static final short BAD\_BOUNDARYPOINTS\_ERR

    If the boundary-points of a Range do not meet specific requirements.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#org.w3c.dom.ranges.RangeException.BAD_BOUNDARYPOINTS_ERR)
  + ### INVALID\_NODE\_TYPE\_ERR

    public static final short INVALID\_NODE\_TYPE\_ERR

    If the container of an boundary-point of a Range is being set to either
    a node of an invalid type or a node with an ancestor of an invalid
    type.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#org.w3c.dom.ranges.RangeException.INVALID_NODE_TYPE_ERR)
* ## Constructor Details

  + ### RangeException

    public RangeException(short code,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") message)