Module [java.xml](../../../module-summary.md)

Package [org.w3c.dom](package-summary.md)

# Class DOMException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

org.w3c.dom.DOMException

All Implemented Interfaces:
:   `Serializable`

---

public class DOMException
extends [RuntimeException](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

DOM operations only raise exceptions in "exceptional" circumstances, i.e.,
when an operation is impossible to perform (either for logical reasons,
because data is lost, or because the implementation has become unstable).
In general, DOM methods return specific error values in ordinary
processing situations, such as out-of-bound errors when using
`NodeList`.

Implementations should raise other exceptions under other circumstances.
For example, implementations should raise an implementation-dependent
exception if a `null` argument is passed when `null`
was not expected.

Some languages and object systems do not support the concept of
exceptions. For such systems, error conditions may be indicated using
native error reporting mechanisms. For some bindings, for example,
methods may return error codes similar to those listed in the
corresponding method descriptions.

See also the [Document Object Model (DOM) Level 3 Core Specification](http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407).

See Also:
:   * [Serialized Form](../../../../serialized-form.md#org.w3c.dom.DOMException)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `short`

  `code`

  `static final short`

  `DOMSTRING_SIZE_ERR`

  If the specified range of text does not fit into a
  `DOMString`.

  `static final short`

  `HIERARCHY_REQUEST_ERR`

  If any `Node` is inserted somewhere it doesn't belong.

  `static final short`

  `INDEX_SIZE_ERR`

  If index or size is negative, or greater than the allowed value.

  `static final short`

  `INUSE_ATTRIBUTE_ERR`

  If an attempt is made to add an attribute that is already in use
  elsewhere.

  `static final short`

  `INVALID_ACCESS_ERR`

  If a parameter or an operation is not supported by the underlying
  object.

  `static final short`

  `INVALID_CHARACTER_ERR`

  If an invalid or illegal character is specified, such as in an XML name.

  `static final short`

  `INVALID_MODIFICATION_ERR`

  If an attempt is made to modify the type of the underlying object.

  `static final short`

  `INVALID_STATE_ERR`

  If an attempt is made to use an object that is not, or is no longer,
  usable.

  `static final short`

  `NAMESPACE_ERR`

  If an attempt is made to create or change an object in a way which is
  incorrect with regard to namespaces.

  `static final short`

  `NO_DATA_ALLOWED_ERR`

  If data is specified for a `Node` which does not support
  data.

  `static final short`

  `NO_MODIFICATION_ALLOWED_ERR`

  If an attempt is made to modify an object where modifications are not
  allowed.

  `static final short`

  `NOT_FOUND_ERR`

  If an attempt is made to reference a `Node` in a context
  where it does not exist.

  `static final short`

  `NOT_SUPPORTED_ERR`

  If the implementation does not support the requested type of object or
  operation.

  `static final short`

  `SYNTAX_ERR`

  If an invalid or illegal string is specified.

  `static final short`

  `TYPE_MISMATCH_ERR`

  If the type of an object is incompatible with the expected type of the
  parameter associated to the object.

  `static final short`

  `VALIDATION_ERR`

  If a call to a method such as `insertBefore` or
  `removeChild` would make the `Node` invalid
  with respect to "partial validity", this exception would be raised
  and the operation would not be done.

  `static final short`

  `WRONG_DOCUMENT_ERR`

  If a `Node` is used in a different document than the one
  that created it (that doesn't support it).
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DOMException(short code,
  String message)`
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### code

    public short code
  + ### INDEX\_SIZE\_ERR

    public static final short INDEX\_SIZE\_ERR

    If index or size is negative, or greater than the allowed value.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.w3c.dom.DOMException.INDEX_SIZE_ERR)
  + ### DOMSTRING\_SIZE\_ERR

    public static final short DOMSTRING\_SIZE\_ERR

    If the specified range of text does not fit into a
    `DOMString`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.w3c.dom.DOMException.DOMSTRING_SIZE_ERR)
  + ### HIERARCHY\_REQUEST\_ERR

    public static final short HIERARCHY\_REQUEST\_ERR

    If any `Node` is inserted somewhere it doesn't belong.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.w3c.dom.DOMException.HIERARCHY_REQUEST_ERR)
  + ### WRONG\_DOCUMENT\_ERR

    public static final short WRONG\_DOCUMENT\_ERR

    If a `Node` is used in a different document than the one
    that created it (that doesn't support it).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.w3c.dom.DOMException.WRONG_DOCUMENT_ERR)
  + ### INVALID\_CHARACTER\_ERR

    public static final short INVALID\_CHARACTER\_ERR

    If an invalid or illegal character is specified, such as in an XML name.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.w3c.dom.DOMException.INVALID_CHARACTER_ERR)
  + ### NO\_DATA\_ALLOWED\_ERR

    public static final short NO\_DATA\_ALLOWED\_ERR

    If data is specified for a `Node` which does not support
    data.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.w3c.dom.DOMException.NO_DATA_ALLOWED_ERR)
  + ### NO\_MODIFICATION\_ALLOWED\_ERR

    public static final short NO\_MODIFICATION\_ALLOWED\_ERR

    If an attempt is made to modify an object where modifications are not
    allowed.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.w3c.dom.DOMException.NO_MODIFICATION_ALLOWED_ERR)
  + ### NOT\_FOUND\_ERR

    public static final short NOT\_FOUND\_ERR

    If an attempt is made to reference a `Node` in a context
    where it does not exist.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.w3c.dom.DOMException.NOT_FOUND_ERR)
  + ### NOT\_SUPPORTED\_ERR

    public static final short NOT\_SUPPORTED\_ERR

    If the implementation does not support the requested type of object or
    operation.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.w3c.dom.DOMException.NOT_SUPPORTED_ERR)
  + ### INUSE\_ATTRIBUTE\_ERR

    public static final short INUSE\_ATTRIBUTE\_ERR

    If an attempt is made to add an attribute that is already in use
    elsewhere.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.w3c.dom.DOMException.INUSE_ATTRIBUTE_ERR)
  + ### INVALID\_STATE\_ERR

    public static final short INVALID\_STATE\_ERR

    If an attempt is made to use an object that is not, or is no longer,
    usable.

    Since:
    :   1.4, DOM Level 2

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.w3c.dom.DOMException.INVALID_STATE_ERR)
  + ### SYNTAX\_ERR

    public static final short SYNTAX\_ERR

    If an invalid or illegal string is specified.

    Since:
    :   1.4, DOM Level 2

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.w3c.dom.DOMException.SYNTAX_ERR)
  + ### INVALID\_MODIFICATION\_ERR

    public static final short INVALID\_MODIFICATION\_ERR

    If an attempt is made to modify the type of the underlying object.

    Since:
    :   1.4, DOM Level 2

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.w3c.dom.DOMException.INVALID_MODIFICATION_ERR)
  + ### NAMESPACE\_ERR

    public static final short NAMESPACE\_ERR

    If an attempt is made to create or change an object in a way which is
    incorrect with regard to namespaces.

    Since:
    :   1.4, DOM Level 2

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.w3c.dom.DOMException.NAMESPACE_ERR)
  + ### INVALID\_ACCESS\_ERR

    public static final short INVALID\_ACCESS\_ERR

    If a parameter or an operation is not supported by the underlying
    object.

    Since:
    :   1.4, DOM Level 2

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.w3c.dom.DOMException.INVALID_ACCESS_ERR)
  + ### VALIDATION\_ERR

    public static final short VALIDATION\_ERR

    If a call to a method such as `insertBefore` or
    `removeChild` would make the `Node` invalid
    with respect to "partial validity", this exception would be raised
    and the operation would not be done. This code is used in [[DOM Level 3 Validation](http://www.w3.org/TR/2004/REC-DOM-Level-3-Val-20040127/)]
    . Refer to this specification for further information.

    Since:
    :   1.5, DOM Level 3

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.w3c.dom.DOMException.VALIDATION_ERR)
  + ### TYPE\_MISMATCH\_ERR

    public static final short TYPE\_MISMATCH\_ERR

    If the type of an object is incompatible with the expected type of the
    parameter associated to the object.

    Since:
    :   1.5, DOM Level 3

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.w3c.dom.DOMException.TYPE_MISMATCH_ERR)
* ## Constructor Details

  + ### DOMException

    public DOMException(short code,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") message)