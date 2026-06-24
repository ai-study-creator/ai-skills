Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Class SNIServerName

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

javax.net.ssl.SNIServerName

Direct Known Subclasses:
:   `SNIHostName`

---

public abstract class SNIServerName
extends [Object](../../../java/lang/Object.md "class in java.lang")

Instances of this class represent a server name in a Server Name
Indication (SNI) extension.

The SNI extension is a feature that extends the SSL/TLS/DTLS protocols to
indicate what server name the client is attempting to connect to during
handshaking. See section 3, "Server Name Indication", of [TLS Extensions (RFC 6066)](http://www.ietf.org/rfc/rfc6066.txt).

`SNIServerName` objects are immutable. Subclasses should not provide
methods that can change the state of an instance once it has been created.

Since:
:   1.8

See Also:
:   * [`SSLParameters.getServerNames()`](SSLParameters.md#getServerNames())
    * [`SSLParameters.setServerNames(List)`](SSLParameters.md#setServerNames(java.util.List))

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `SNIServerName(int type,
  byte[] encoded)`

  Creates an `SNIServerName` using the specified name type and
  encoded value.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object other)`

  Indicates whether some other object is "equal to" this server name.

  `final byte[]`

  `getEncoded()`

  Returns a copy of the encoded server name value of this server name.

  `final int`

  `getType()`

  Returns the name type of this server name.

  `int`

  `hashCode()`

  Returns a hash code value for this server name.

  `String`

  `toString()`

  Returns a string representation of this server name, including the server
  name type and the encoded server name value in this
  `SNIServerName` object.

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SNIServerName

    protected SNIServerName(int type,
    byte[] encoded)

    Creates an `SNIServerName` using the specified name type and
    encoded value.

    Note that the `encoded` byte array is cloned to protect against
    subsequent modification.

    Parameters:
    :   `type` - the type of the server name
    :   `encoded` - the encoded value of the server name

    Throws:
    :   `IllegalArgumentException` - if `type` is not in the range
        of 0 to 255, inclusive.
    :   `NullPointerException` - if `encoded` is null
* ## Method Details

  + ### getType

    public final int getType()

    Returns the name type of this server name.

    Returns:
    :   the name type of this server name
  + ### getEncoded

    public final byte[] getEncoded()

    Returns a copy of the encoded server name value of this server name.

    Returns:
    :   a copy of the encoded server name value of this server name
  + ### equals

    public boolean equals([Object](../../../java/lang/Object.md "class in java.lang") other)

    Indicates whether some other object is "equal to" this server name.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `other` - the reference object with which to compare.

    Returns:
    :   true if, and only if, `other` is of the same class
        of this object, and has the same name type and
        encoded value as this server name.

    See Also:
    :   - [`Object.hashCode()`](../../../java/lang/Object.md#hashCode())
        - [`HashMap`](../../../java/util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns a hash code value for this server name.

    The hash code value is generated using the name type and encoded
    value of this server name.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this server name.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../java/lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../../../java/lang/String.md "class in java.lang") toString()

    Returns a string representation of this server name, including the server
    name type and the encoded server name value in this
    `SNIServerName` object.

    The exact details of the representation are unspecified and subject
    to change, but the following may be regarded as typical:

    ```
         "type=<name type>, value=<name value>"
    ```

    In this class, the format of "<name type>" is
    "[LITERAL] (INTEGER)", where the optional "LITERAL" is the literal
    name, and INTEGER is the integer value of the name type. The format
    of "<name value>" is "XX:...:XX", where "XX" is the
    hexadecimal digit representation of a byte value. For example, a
    returned value of a pseudo server name may look like:

    ```
         "type=(31), value=77:77:77:2E:65:78:61:6D:70:6C:65:2E:63:6E"
    ```

    or

    ```
         "type=host_name (0), value=77:77:77:2E:65:78:61:6D:70:6C:65:2E:63:6E"
    ```

    Please NOTE that the exact details of the representation are unspecified
    and subject to change, and subclasses may override the method with
    their own formats.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this server name