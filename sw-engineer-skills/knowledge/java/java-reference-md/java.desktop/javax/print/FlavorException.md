Module [java.desktop](../../module-summary.md)

Package [javax.print](package-summary.md)

# Interface FlavorException

---

public interface FlavorException

Interface `FlavorException` is a mixin interface which a subclass of
[`PrintException`](PrintException.md "class in javax.print") can implement to report an error
condition involving a doc flavor or flavors (class [`DocFlavor`](DocFlavor.md "class in javax.print")). The
Print Service API does not define any print exception classes that implement
interface `FlavorException`, that being left to the Print Service
implementor's discretion.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `DocFlavor[]`

  `getUnsupportedFlavors()`

  Returns the unsupported flavors.

* ## Method Details

  + ### getUnsupportedFlavors

    [DocFlavor](DocFlavor.md "class in javax.print")[] getUnsupportedFlavors()

    Returns the unsupported flavors.

    Returns:
    :   the unsupported doc flavors