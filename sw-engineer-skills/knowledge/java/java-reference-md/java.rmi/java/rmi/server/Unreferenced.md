Module [java.rmi](../../../module-summary.md)

Package [java.rmi.server](package-summary.md)

# Interface Unreferenced

All Known Implementing Classes:
:   `RMIConnectionImpl`

---

public interface Unreferenced

A remote object implementation should implement the
`Unreferenced` interface to receive notification when there are
no more clients that reference that remote object.

Since:
:   1.1

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `unreferenced()`

  Called by the RMI runtime sometime after the runtime determines that
  the reference list, the list of clients referencing the remote object,
  becomes empty.

* ## Method Details

  + ### unreferenced

    void unreferenced()

    Called by the RMI runtime sometime after the runtime determines that
    the reference list, the list of clients referencing the remote object,
    becomes empty.

    Since:
    :   1.1