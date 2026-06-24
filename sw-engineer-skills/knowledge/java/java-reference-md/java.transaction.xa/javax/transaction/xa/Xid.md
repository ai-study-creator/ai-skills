Module [java.transaction.xa](../../../module-summary.md)

Package [javax.transaction.xa](package-summary.md)

# Interface Xid

---

public interface Xid

The Xid interface is a Java mapping of the X/Open transaction identifier
XID structure. This interface specifies three accessor methods to
retrieve a global transaction format ID, global transaction ID,
and branch qualifier. The Xid interface is used by the transaction
manager and the resource managers. This interface is not visible to
the application programs.

Since:
:   1.4

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `MAXBQUALSIZE`

  Maximum number of bytes returned by [`getBranchQualifier()`](#getBranchQualifier()).

  `static final int`

  `MAXGTRIDSIZE`

  Maximum number of bytes returned by [`getGlobalTransactionId()`](#getGlobalTransactionId()).
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `byte[]`

  `getBranchQualifier()`

  Obtain the transaction branch identifier part of XID as an array
  of bytes.

  `int`

  `getFormatId()`

  Obtain the format identifier part of the XID.

  `byte[]`

  `getGlobalTransactionId()`

  Obtain the global transaction identifier part of XID as an array
  of bytes.

* ## Field Details

  + ### MAXGTRIDSIZE

    static final int MAXGTRIDSIZE

    Maximum number of bytes returned by [`getGlobalTransactionId()`](#getGlobalTransactionId()).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.transaction.xa.Xid.MAXGTRIDSIZE)
  + ### MAXBQUALSIZE

    static final int MAXBQUALSIZE

    Maximum number of bytes returned by [`getBranchQualifier()`](#getBranchQualifier()).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.transaction.xa.Xid.MAXBQUALSIZE)
* ## Method Details

  + ### getFormatId

    int getFormatId()

    Obtain the format identifier part of the XID.

    Returns:
    :   Format identifier. O means the OSI CCR format.
  + ### getGlobalTransactionId

    byte[] getGlobalTransactionId()

    Obtain the global transaction identifier part of XID as an array
    of bytes.

    Returns:
    :   Global transaction identifier.
  + ### getBranchQualifier

    byte[] getBranchQualifier()

    Obtain the transaction branch identifier part of XID as an array
    of bytes.

    Returns:
    :   Global transaction identifier.