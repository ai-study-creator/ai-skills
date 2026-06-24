Module [java.desktop](../../module-summary.md)

Package [javax.print](package-summary.md)

# Interface URIException

---

public interface URIException

Interface `URIException` is a mixin interface which a subclass of
[`PrintException`](PrintException.md "class in javax.print") can implement to report an error
condition involving a `URI` address. The Print Service API does not
define any print exception classes that implement interface
`URIException`, that being left to the Print Service implementor's
discretion.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `URIInaccessible`

  Indicates that the printer cannot access the `URI` address.

  `static final int`

  `URIOtherProblem`

  Indicates any kind of problem not specifically identified by the other
  reasons.

  `static final int`

  `URISchemeNotSupported`

  Indicates that the printer does not support the `URI` scheme
  ("http", "ftp", etc.) in the `URI` address.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `int`

  `getReason()`

  Returns the reason of this exception.

  `URI`

  `getUnsupportedURI()`

  Returns the `URI`.

* ## Field Details

  + ### URIInaccessible

    static final int URIInaccessible

    Indicates that the printer cannot access the `URI` address. For
    example, the printer might report this error if it goes to get the print
    data and cannot even establish a connection to the `URI` address.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.print.URIException.URIInaccessible)
  + ### URISchemeNotSupported

    static final int URISchemeNotSupported

    Indicates that the printer does not support the `URI` scheme
    ("http", "ftp", etc.) in the `URI` address.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.print.URIException.URISchemeNotSupported)
  + ### URIOtherProblem

    static final int URIOtherProblem

    Indicates any kind of problem not specifically identified by the other
    reasons.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.print.URIException.URIOtherProblem)
* ## Method Details

  + ### getUnsupportedURI

    [URI](../../../java.base/java/net/URI.md "class in java.net") getUnsupportedURI()

    Returns the `URI`.

    Returns:
    :   the `URI` that is the cause of this exception
  + ### getReason

    int getReason()

    Returns the reason of this exception.

    Returns:
    :   one of the predefined reasons enumerated in this interface