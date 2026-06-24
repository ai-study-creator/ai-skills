Module [java.security.jgss](../../../module-summary.md)

Package [org.ietf.jgss](package-summary.md)

# Class GSSException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

org.ietf.jgss.GSSException

All Implemented Interfaces:
:   `Serializable`

---

public class GSSException
extends [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

This exception is thrown whenever a GSS-API error occurs, including
any mechanism specific error. It may contain both the major and the
minor GSS-API status codes. Major error codes are those defined at the
GSS-API level in this class. Minor error codes are mechanism specific
error codes that can provide additional information. The underlying
mechanism implementation is responsible for setting appropriate minor
status codes when throwing this exception. Aside from delivering the
numeric error codes to the caller, this class performs the mapping from
their numeric values to textual representations.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../serialized-form.md#org.ietf.jgss.GSSException)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `BAD_BINDINGS`

  Channel bindings mismatch.

  `static final int`

  `BAD_MECH`

  Unsupported mechanism requested.

  `static final int`

  `BAD_MIC`

  Token had invalid integrity check.

  `static final int`

  `BAD_NAME`

  Invalid name provided.

  `static final int`

  `BAD_NAMETYPE`

  Name of unsupported type provided.

  `static final int`

  `BAD_QOP`

  Unsupported QOP value.

  `static final int`

  `BAD_STATUS`

  Invalid status code.

  `static final int`

  `CONTEXT_EXPIRED`

  Security context expired.

  `static final int`

  `CREDENTIALS_EXPIRED`

  Expired credentials.

  `static final int`

  `DEFECTIVE_CREDENTIAL`

  Defective credentials.

  `static final int`

  `DEFECTIVE_TOKEN`

  Defective token.

  `static final int`

  `DUPLICATE_ELEMENT`

  Duplicate credential element requested.

  `static final int`

  `DUPLICATE_TOKEN`

  The token was a duplicate of an earlier token.

  `static final int`

  `FAILURE`

  General failure, unspecified at GSS-API level.

  `static final int`

  `GAP_TOKEN`

  An expected per-message token was not received.

  `static final int`

  `NAME_NOT_MN`

  Name contains multi-mechanism elements.

  `static final int`

  `NO_CONTEXT`

  Invalid security context.

  `static final int`

  `NO_CRED`

  Invalid credentials.

  `static final int`

  `OLD_TOKEN`

  The token's validity period has expired.

  `static final int`

  `UNAUTHORIZED`

  Operation unauthorized.

  `static final int`

  `UNAVAILABLE`

  Operation unavailable.

  `static final int`

  `UNSEQ_TOKEN`

  A later token has already been processed.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `GSSException(int majorCode)`

  Creates a GSSException object with a specified major code.

  `GSSException(int majorCode,
  int minorCode,
  String minorString)`

  Creates a GSSException object with the specified major code, minor
  code, and minor code textual explanation.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getMajor()`

  Returns the GSS-API level major error code for the problem causing
  this exception to be thrown.

  `String`

  `getMajorString()`

  Returns a string explaining the GSS-API level major error code in
  this exception.

  `String`

  `getMessage()`

  Returns a textual representation of both the major and the minor
  status codes.

  `int`

  `getMinor()`

  Returns the mechanism level error code for the problem causing this
  exception to be thrown.

  `String`

  `getMinorString()`

  Returns a string explaining the mechanism specific error code.

  `void`

  `setMinor(int minorCode,
  String message)`

  Used by the exception thrower to set the mechanism
  level minor error code and its string explanation.

  `String`

  `toString()`

  Returns a textual representation of both the major and the minor
  status codes.

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### BAD\_BINDINGS

    public static final int BAD\_BINDINGS

    Channel bindings mismatch.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.ietf.jgss.GSSException.BAD_BINDINGS)
  + ### BAD\_MECH

    public static final int BAD\_MECH

    Unsupported mechanism requested.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.ietf.jgss.GSSException.BAD_MECH)
  + ### BAD\_NAME

    public static final int BAD\_NAME

    Invalid name provided.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.ietf.jgss.GSSException.BAD_NAME)
  + ### BAD\_NAMETYPE

    public static final int BAD\_NAMETYPE

    Name of unsupported type provided.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.ietf.jgss.GSSException.BAD_NAMETYPE)
  + ### BAD\_STATUS

    public static final int BAD\_STATUS

    Invalid status code.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.ietf.jgss.GSSException.BAD_STATUS)
  + ### BAD\_MIC

    public static final int BAD\_MIC

    Token had invalid integrity check.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.ietf.jgss.GSSException.BAD_MIC)
  + ### CONTEXT\_EXPIRED

    public static final int CONTEXT\_EXPIRED

    Security context expired.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.ietf.jgss.GSSException.CONTEXT_EXPIRED)
  + ### CREDENTIALS\_EXPIRED

    public static final int CREDENTIALS\_EXPIRED

    Expired credentials.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.ietf.jgss.GSSException.CREDENTIALS_EXPIRED)
  + ### DEFECTIVE\_CREDENTIAL

    public static final int DEFECTIVE\_CREDENTIAL

    Defective credentials.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.ietf.jgss.GSSException.DEFECTIVE_CREDENTIAL)
  + ### DEFECTIVE\_TOKEN

    public static final int DEFECTIVE\_TOKEN

    Defective token.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.ietf.jgss.GSSException.DEFECTIVE_TOKEN)
  + ### FAILURE

    public static final int FAILURE

    General failure, unspecified at GSS-API level.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.ietf.jgss.GSSException.FAILURE)
  + ### NO\_CONTEXT

    public static final int NO\_CONTEXT

    Invalid security context.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.ietf.jgss.GSSException.NO_CONTEXT)
  + ### NO\_CRED

    public static final int NO\_CRED

    Invalid credentials.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.ietf.jgss.GSSException.NO_CRED)
  + ### BAD\_QOP

    public static final int BAD\_QOP

    Unsupported QOP value.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.ietf.jgss.GSSException.BAD_QOP)
  + ### UNAUTHORIZED

    public static final int UNAUTHORIZED

    Operation unauthorized.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.ietf.jgss.GSSException.UNAUTHORIZED)
  + ### UNAVAILABLE

    public static final int UNAVAILABLE

    Operation unavailable.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.ietf.jgss.GSSException.UNAVAILABLE)
  + ### DUPLICATE\_ELEMENT

    public static final int DUPLICATE\_ELEMENT

    Duplicate credential element requested.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.ietf.jgss.GSSException.DUPLICATE_ELEMENT)
  + ### NAME\_NOT\_MN

    public static final int NAME\_NOT\_MN

    Name contains multi-mechanism elements.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.ietf.jgss.GSSException.NAME_NOT_MN)
  + ### DUPLICATE\_TOKEN

    public static final int DUPLICATE\_TOKEN

    The token was a duplicate of an earlier token.
    This is a fatal error code that may occur during
    context establishment. It is not used to indicate
    supplementary status values. The MessageProp object is
    used for that purpose.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.ietf.jgss.GSSException.DUPLICATE_TOKEN)
  + ### OLD\_TOKEN

    public static final int OLD\_TOKEN

    The token's validity period has expired. This is a
    fatal error code that may occur during context establishment.
    It is not used to indicate supplementary status values.
    The MessageProp object is used for that purpose.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.ietf.jgss.GSSException.OLD_TOKEN)
  + ### UNSEQ\_TOKEN

    public static final int UNSEQ\_TOKEN

    A later token has already been processed. This is a
    fatal error code that may occur during context establishment.
    It is not used to indicate supplementary status values.
    The MessageProp object is used for that purpose.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.ietf.jgss.GSSException.UNSEQ_TOKEN)
  + ### GAP\_TOKEN

    public static final int GAP\_TOKEN

    An expected per-message token was not received. This is a
    fatal error code that may occur during context establishment.
    It is not used to indicate supplementary status values.
    The MessageProp object is used for that purpose.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.ietf.jgss.GSSException.GAP_TOKEN)
* ## Constructor Details

  + ### GSSException

    public GSSException(int majorCode)

    Creates a GSSException object with a specified major code.

    Parameters:
    :   `majorCode` - the GSS error code for the problem causing this
        exception to be thrown.
  + ### GSSException

    public GSSException(int majorCode,
    int minorCode,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") minorString)

    Creates a GSSException object with the specified major code, minor
    code, and minor code textual explanation. This constructor is to be
    used when the exception is originating from the underlying mechanism
    level. It allows the setting of both the GSS code and the mechanism
    code.

    Parameters:
    :   `majorCode` - the GSS error code for the problem causing this
        exception to be thrown.
    :   `minorCode` - the mechanism level error code for the problem
        causing this exception to be thrown.
    :   `minorString` - the textual explanation of the mechanism error
        code.
* ## Method Details

  + ### getMajor

    public int getMajor()

    Returns the GSS-API level major error code for the problem causing
    this exception to be thrown. Major error codes are
    defined at the mechanism independent GSS-API level in this
    class. Mechanism specific error codes that might provide more
    information are set as the minor error code.

    Returns:
    :   int the GSS-API level major error code causing this exception

    See Also:
    :   - [`getMajorString()`](#getMajorString())
        - [`getMinor()`](#getMinor())
        - [`getMinorString()`](#getMinorString())
  + ### getMinor

    public int getMinor()

    Returns the mechanism level error code for the problem causing this
    exception to be thrown. The minor code is set by the underlying
    mechanism.

    Returns:
    :   int the mechanism error code; 0 indicates that it has not
        been set.

    See Also:
    :   - [`getMinorString()`](#getMinorString())
        - [`setMinor(int, java.lang.String)`](#setMinor(int,java.lang.String))
  + ### getMajorString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getMajorString()

    Returns a string explaining the GSS-API level major error code in
    this exception.

    Returns:
    :   String explanation string for the major error code

    See Also:
    :   - [`getMajor()`](#getMajor())
        - [`toString()`](#toString())
  + ### getMinorString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getMinorString()

    Returns a string explaining the mechanism specific error code.
    If the minor status code is 0, then no mechanism level error details
    will be available.

    Returns:
    :   String a textual explanation of mechanism error code

    See Also:
    :   - [`getMinor()`](#getMinor())
        - [`getMajorString()`](#getMajorString())
        - [`toString()`](#toString())
  + ### setMinor

    public void setMinor(int minorCode,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") message)

    Used by the exception thrower to set the mechanism
    level minor error code and its string explanation. This is used by
    mechanism providers to indicate error details.

    Parameters:
    :   `minorCode` - the mechanism specific error code
    :   `message` - textual explanation of the mechanism error code

    See Also:
    :   - [`getMinor()`](#getMinor())
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a textual representation of both the major and the minor
    status codes.

    Overrides:
    :   `toString` in class `Throwable`

    Returns:
    :   a String with the error descriptions
  + ### getMessage

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getMessage()

    Returns a textual representation of both the major and the minor
    status codes.

    Overrides:
    :   `getMessage` in class `Throwable`

    Returns:
    :   a String with the error descriptions