Module [java.transaction.xa](../../../module-summary.md)

Package [javax.transaction.xa](package-summary.md)

# Class XAException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

javax.transaction.xa.XAException

All Implemented Interfaces:
:   `Serializable`

---

public class XAException
extends [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

The XAException is thrown by the Resource Manager (RM) to inform the
Transaction Manager of an error encountered by the involved transaction.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.transaction.xa.XAException)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `int`

  `errorCode`

  The error code with which to create the SystemException.

  `static final int`

  `XA_HEURCOM`

  The transaction branch has been heuristically committed.

  `static final int`

  `XA_HEURHAZ`

  The transaction branch may have been heuristically completed.

  `static final int`

  `XA_HEURMIX`

  The transaction branch has been heuristically committed and
  rolled back.

  `static final int`

  `XA_HEURRB`

  The transaction branch has been heuristically rolled back.

  `static final int`

  `XA_NOMIGRATE`

  Resumption must occur where the suspension occurred.

  `static final int`

  `XA_RBBASE`

  The inclusive lower bound of the rollback codes.

  `static final int`

  `XA_RBCOMMFAIL`

  Indicates that the rollback was caused by a communication failure.

  `static final int`

  `XA_RBDEADLOCK`

  A deadlock was detected.

  `static final int`

  `XA_RBEND`

  The inclusive upper bound of the rollback error code.

  `static final int`

  `XA_RBINTEGRITY`

  A condition that violates the integrity of the resource was detected.

  `static final int`

  `XA_RBOTHER`

  The resource manager rolled back the transaction branch for a reason
  not on this list.

  `static final int`

  `XA_RBPROTO`

  A protocol error occurred in the resource manager.

  `static final int`

  `XA_RBROLLBACK`

  Indicates that the rollback was caused by an unspecified reason.

  `static final int`

  `XA_RBTIMEOUT`

  A transaction branch took too long.

  `static final int`

  `XA_RBTRANSIENT`

  May retry the transaction branch.

  `static final int`

  `XA_RDONLY`

  The transaction branch was read-only and has been committed.

  `static final int`

  `XA_RETRY`

  Routine returned with no effect and may be reissued.

  `static final int`

  `XAER_ASYNC`

  There is an asynchronous operation already outstanding.

  `static final int`

  `XAER_DUPID`

  The XID already exists.

  `static final int`

  `XAER_INVAL`

  Invalid arguments were given.

  `static final int`

  `XAER_NOTA`

  The XID is not valid.

  `static final int`

  `XAER_OUTSIDE`

  The resource manager is doing work outside a global transaction.

  `static final int`

  `XAER_PROTO`

  Routine was invoked in an improper context.

  `static final int`

  `XAER_RMERR`

  A resource manager error has occurred in the transaction branch.

  `static final int`

  `XAER_RMFAIL`

  Resource manager is unavailable.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `XAException()`

  Create an XAException.

  `XAException(int errcode)`

  Create an XAException with a given error code.

  `XAException(String s)`

  Create an XAException with a given string.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### errorCode

    public int errorCode

    The error code with which to create the SystemException.
  + ### XA\_RBBASE

    public static final int XA\_RBBASE

    The inclusive lower bound of the rollback codes.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.transaction.xa.XAException.XA_RBBASE)
  + ### XA\_RBROLLBACK

    public static final int XA\_RBROLLBACK

    Indicates that the rollback was caused by an unspecified reason.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.transaction.xa.XAException.XA_RBROLLBACK)
  + ### XA\_RBCOMMFAIL

    public static final int XA\_RBCOMMFAIL

    Indicates that the rollback was caused by a communication failure.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.transaction.xa.XAException.XA_RBCOMMFAIL)
  + ### XA\_RBDEADLOCK

    public static final int XA\_RBDEADLOCK

    A deadlock was detected.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.transaction.xa.XAException.XA_RBDEADLOCK)
  + ### XA\_RBINTEGRITY

    public static final int XA\_RBINTEGRITY

    A condition that violates the integrity of the resource was detected.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.transaction.xa.XAException.XA_RBINTEGRITY)
  + ### XA\_RBOTHER

    public static final int XA\_RBOTHER

    The resource manager rolled back the transaction branch for a reason
    not on this list.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.transaction.xa.XAException.XA_RBOTHER)
  + ### XA\_RBPROTO

    public static final int XA\_RBPROTO

    A protocol error occurred in the resource manager.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.transaction.xa.XAException.XA_RBPROTO)
  + ### XA\_RBTIMEOUT

    public static final int XA\_RBTIMEOUT

    A transaction branch took too long.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.transaction.xa.XAException.XA_RBTIMEOUT)
  + ### XA\_RBTRANSIENT

    public static final int XA\_RBTRANSIENT

    May retry the transaction branch.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.transaction.xa.XAException.XA_RBTRANSIENT)
  + ### XA\_RBEND

    public static final int XA\_RBEND

    The inclusive upper bound of the rollback error code.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.transaction.xa.XAException.XA_RBEND)
  + ### XA\_NOMIGRATE

    public static final int XA\_NOMIGRATE

    Resumption must occur where the suspension occurred.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.transaction.xa.XAException.XA_NOMIGRATE)
  + ### XA\_HEURHAZ

    public static final int XA\_HEURHAZ

    The transaction branch may have been heuristically completed.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.transaction.xa.XAException.XA_HEURHAZ)
  + ### XA\_HEURCOM

    public static final int XA\_HEURCOM

    The transaction branch has been heuristically committed.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.transaction.xa.XAException.XA_HEURCOM)
  + ### XA\_HEURRB

    public static final int XA\_HEURRB

    The transaction branch has been heuristically rolled back.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.transaction.xa.XAException.XA_HEURRB)
  + ### XA\_HEURMIX

    public static final int XA\_HEURMIX

    The transaction branch has been heuristically committed and
    rolled back.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.transaction.xa.XAException.XA_HEURMIX)
  + ### XA\_RETRY

    public static final int XA\_RETRY

    Routine returned with no effect and may be reissued.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.transaction.xa.XAException.XA_RETRY)
  + ### XA\_RDONLY

    public static final int XA\_RDONLY

    The transaction branch was read-only and has been committed.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.transaction.xa.XAException.XA_RDONLY)
  + ### XAER\_ASYNC

    public static final int XAER\_ASYNC

    There is an asynchronous operation already outstanding.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.transaction.xa.XAException.XAER_ASYNC)
  + ### XAER\_RMERR

    public static final int XAER\_RMERR

    A resource manager error has occurred in the transaction branch.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.transaction.xa.XAException.XAER_RMERR)
  + ### XAER\_NOTA

    public static final int XAER\_NOTA

    The XID is not valid.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.transaction.xa.XAException.XAER_NOTA)
  + ### XAER\_INVAL

    public static final int XAER\_INVAL

    Invalid arguments were given.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.transaction.xa.XAException.XAER_INVAL)
  + ### XAER\_PROTO

    public static final int XAER\_PROTO

    Routine was invoked in an improper context.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.transaction.xa.XAException.XAER_PROTO)
  + ### XAER\_RMFAIL

    public static final int XAER\_RMFAIL

    Resource manager is unavailable.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.transaction.xa.XAException.XAER_RMFAIL)
  + ### XAER\_DUPID

    public static final int XAER\_DUPID

    The XID already exists.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.transaction.xa.XAException.XAER_DUPID)
  + ### XAER\_OUTSIDE

    public static final int XAER\_OUTSIDE

    The resource manager is doing work outside a global transaction.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.transaction.xa.XAException.XAER_OUTSIDE)
* ## Constructor Details

  + ### XAException

    public XAException()

    Create an XAException.
  + ### XAException

    public XAException([String](../../../../java.base/java/lang/String.md "class in java.lang") s)

    Create an XAException with a given string.

    Parameters:
    :   `s` - The `String` object containing the exception
        message.
  + ### XAException

    public XAException(int errcode)

    Create an XAException with a given error code.

    Parameters:
    :   `errcode` - The error code identifying the exception.