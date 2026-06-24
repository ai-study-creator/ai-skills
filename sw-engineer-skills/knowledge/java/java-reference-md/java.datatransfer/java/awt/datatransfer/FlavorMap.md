Module [java.datatransfer](../../../module-summary.md)

Package [java.awt.datatransfer](package-summary.md)

# Interface FlavorMap

All Known Subinterfaces:
:   `FlavorTable`

All Known Implementing Classes:
:   `SystemFlavorMap`

---

public interface FlavorMap

A two-way Map between "natives" (Strings), which correspond to
platform-specific data formats, and "flavors" (DataFlavors), which correspond
to platform-independent MIME types. FlavorMaps need not be symmetric, but
typically are.

Since:
:   1.2

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Map<String,DataFlavor>`

  `getFlavorsForNatives(String[] natives)`

  Returns a `Map` of the specified `String` natives to their
  corresponding `DataFlavor`.

  `Map<DataFlavor,String>`

  `getNativesForFlavors(DataFlavor[] flavors)`

  Returns a `Map` of the specified `DataFlavor`s to their
  corresponding `String` native.

* ## Method Details

  + ### getNativesForFlavors

    [Map](../../../../java.base/java/util/Map.md "interface in java.util")<[DataFlavor](DataFlavor.md "class in java.awt.datatransfer"),[String](../../../../java.base/java/lang/String.md "class in java.lang")> getNativesForFlavors([DataFlavor](DataFlavor.md "class in java.awt.datatransfer")[] flavors)

    Returns a `Map` of the specified `DataFlavor`s to their
    corresponding `String` native. The returned `Map` is a
    modifiable copy of this `FlavorMap`'s internal data. Client code is
    free to modify the `Map` without affecting this object.

    Parameters:
    :   `flavors` - an array of `DataFlavor`s which will be the key set
        of the returned `Map`. If `null` is specified, a
        mapping of all `DataFlavor`s currently known to this
        `FlavorMap` to their corresponding `String` natives
        will be returned.

    Returns:
    :   a `java.util.Map` of `DataFlavor`s to `String`
        natives
  + ### getFlavorsForNatives

    [Map](../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang"),[DataFlavor](DataFlavor.md "class in java.awt.datatransfer")> getFlavorsForNatives([String](../../../../java.base/java/lang/String.md "class in java.lang")[] natives)

    Returns a `Map` of the specified `String` natives to their
    corresponding `DataFlavor`. The returned `Map` is a
    modifiable copy of this `FlavorMap`'s internal data. Client code is
    free to modify the `Map` without affecting this object.

    Parameters:
    :   `natives` - an array of `String`s which will be the key set of
        the returned `Map`. If `null` is specified, a mapping
        of all `String` natives currently known to this
        `FlavorMap` to their corresponding `DataFlavor`s will
        be returned.

    Returns:
    :   a `java.util.Map` of `String` natives to
        `DataFlavor`s