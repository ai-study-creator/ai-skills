Module [java.rmi](../../module-summary.md)

Package [java.rmi](package-summary.md)

# Class RMISecurityManager

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.SecurityManager](../../../java.base/java/lang/SecurityManager.md "class in java.lang")

java.rmi.RMISecurityManager

---

[@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java.base/java/lang/Deprecated.md#since())="1.8",
[forRemoval](../../../java.base/java/lang/Deprecated.md#forRemoval())=true)
public class RMISecurityManager
extends [SecurityManager](../../../java.base/java/lang/SecurityManager.md "class in java.lang")

Deprecated, for removal: This API element is subject to removal in a future version.

This class is only useful in conjunction with
[the Security Manager](../../../java.base/java/lang/SecurityManager.md "class in java.lang"), which is deprecated
and subject to removal in a future release. Consequently, this class
is also deprecated and subject to removal. There is no replacement for
the Security Manager or this class.

`RMISecurityManager` implements a policy identical to the policy
implemented by [`SecurityManager`](../../../java.base/java/lang/SecurityManager.md "class in java.lang"). RMI applications
should use the `SecurityManager` class or another appropriate
`SecurityManager` implementation instead of this class. RMI's class
loader will download classes from remote locations only if a security
manager has been set.

Since:
:   1.1

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RMISecurityManager()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Constructs a new `RMISecurityManager`.
* ## Method Summary

  ### Methods inherited from class java.lang.[SecurityManager](../../../java.base/java/lang/SecurityManager.md "class in java.lang")

  `checkAccept, checkAccess, checkAccess, checkConnect, checkConnect, checkCreateClassLoader, checkDelete, checkExec, checkExit, checkLink, checkListen, checkMulticast, checkMulticast, checkPackageAccess, checkPackageDefinition, checkPermission, checkPermission, checkPrintJobAccess, checkPropertiesAccess, checkPropertyAccess, checkRead, checkRead, checkRead, checkSecurityAccess, checkSetFactory, checkWrite, checkWrite, getClassContext, getSecurityContext, getThreadGroup`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### RMISecurityManager

    public RMISecurityManager()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Constructs a new `RMISecurityManager`.

    Since:
    :   1.1