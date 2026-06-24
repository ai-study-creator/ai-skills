Module [java.desktop](../../../../module-summary.md)

Package [javax.imageio.plugins.tiff](package-summary.md)

# Class TIFFTagSet

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.imageio.plugins.tiff.TIFFTagSet

Direct Known Subclasses:
:   `BaselineTIFFTagSet`, `ExifGPSTagSet`, `ExifInteroperabilityTagSet`, `ExifParentTIFFTagSet`, `ExifTIFFTagSet`, `FaxTIFFTagSet`, `GeoTIFFTagSet`

---

public class TIFFTagSet
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

A class representing a set of TIFF tags. Each tag in the set must have
a unique number (this is a limitation of the TIFF specification itself).

This class and its subclasses are responsible for mapping
between raw tag numbers and `TIFFTag` objects, which
contain additional information about each tag, such as the tag's
name, legal data types, and mnemonic names for some or all of its
data values.

Since:
:   9

See Also:
:   * [`TIFFTag`](TIFFTag.md "class in javax.imageio.plugins.tiff")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TIFFTagSet(List<TIFFTag> tags)`

  Constructs a `TIFFTagSet`, given a `List`
  of `TIFFTag` objects.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `TIFFTag`

  `getTag(int tagNumber)`

  Returns the `TIFFTag` from this set that is
  associated with the given tag number, or `null` if
  no tag exists for that number.

  `TIFFTag`

  `getTag(String tagName)`

  Returns the `TIFFTag` having the given tag name, or
  `null` if the named tag does not belong to this tag set.

  `SortedSet<String>`

  `getTagNames()`

  Retrieves an unmodifiable lexicographically increasing set of tag names.

  `SortedSet<Integer>`

  `getTagNumbers()`

  Retrieves an unmodifiable numerically increasing set of tag numbers.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### TIFFTagSet

    public TIFFTagSet([List](../../../../../java.base/java/util/List.md "interface in java.util")<[TIFFTag](TIFFTag.md "class in javax.imageio.plugins.tiff")> tags)

    Constructs a `TIFFTagSet`, given a `List`
    of `TIFFTag` objects.

    Parameters:
    :   `tags` - a `List` object containing
        `TIFFTag` objects to be added to this tag set.

    Throws:
    :   `IllegalArgumentException` - if `tags` is
        `null`, or contains objects that are not instances
        of the `TIFFTag` class.
* ## Method Details

  + ### getTag

    public [TIFFTag](TIFFTag.md "class in javax.imageio.plugins.tiff") getTag(int tagNumber)

    Returns the `TIFFTag` from this set that is
    associated with the given tag number, or `null` if
    no tag exists for that number.

    Parameters:
    :   `tagNumber` - the number of the tag to be retrieved.

    Returns:
    :   the numbered `TIFFTag`, or `null`.
  + ### getTag

    public [TIFFTag](TIFFTag.md "class in javax.imageio.plugins.tiff") getTag([String](../../../../../java.base/java/lang/String.md "class in java.lang") tagName)

    Returns the `TIFFTag` having the given tag name, or
    `null` if the named tag does not belong to this tag set.

    Parameters:
    :   `tagName` - the name of the tag to be retrieved, as a
        `String`.

    Returns:
    :   the named `TIFFTag`, or `null`.

    Throws:
    :   `IllegalArgumentException` - if `tagName` is
        `null`.
  + ### getTagNumbers

    public [SortedSet](../../../../../java.base/java/util/SortedSet.md "interface in java.util")<[Integer](../../../../../java.base/java/lang/Integer.md "class in java.lang")> getTagNumbers()

    Retrieves an unmodifiable numerically increasing set of tag numbers.

    The returned object is unmodifiable and contains the tag
    numbers of all `TIFFTag`s in this `TIFFTagSet`
    sorted into ascending order according to
    [`Comparable.compareTo(Object)`](../../../../../java.base/java/lang/Comparable.md#compareTo(T)).

    Returns:
    :   All tag numbers in this set.
  + ### getTagNames

    public [SortedSet](../../../../../java.base/java/util/SortedSet.md "interface in java.util")<[String](../../../../../java.base/java/lang/String.md "class in java.lang")> getTagNames()

    Retrieves an unmodifiable lexicographically increasing set of tag names.

    The returned object is unmodifiable and contains the tag
    names of all `TIFFTag`s in this `TIFFTagSet`
    sorted into ascending order according to
    [`Comparable.compareTo(Object)`](../../../../../java.base/java/lang/Comparable.md#compareTo(T)).

    Returns:
    :   All tag names in this set.