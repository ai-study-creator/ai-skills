Module [java.base](../../../module-summary.md)

Package [java.nio.file](package-summary.md)

# Enum Class StandardOpenOption

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Enum](../../lang/Enum.md "class in java.lang")<[StandardOpenOption](StandardOpenOption.md "enum class in java.nio.file")>

java.nio.file.StandardOpenOption

All Implemented Interfaces:
:   `Serializable`, `Comparable<StandardOpenOption>`, `Constable`, `OpenOption`

---

public enum StandardOpenOption
extends [Enum](../../lang/Enum.md "class in java.lang")<[StandardOpenOption](StandardOpenOption.md "enum class in java.nio.file")>
implements [OpenOption](OpenOption.md "interface in java.nio.file")

Defines the standard open options.

Since:
:   1.7

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `APPEND`

  If the file is opened for [`WRITE`](#WRITE) access then bytes will be written
  to the end of the file rather than the beginning.

  `CREATE`

  Create a new file if it does not exist.

  `CREATE_NEW`

  Create a new file, failing if the file already exists.

  `DELETE_ON_CLOSE`

  Delete on close.

  `DSYNC`

  Requires that every update to the file's content be written
  synchronously to the underlying storage device.

  `READ`

  Open for read access.

  `SPARSE`

  Sparse file.

  `SYNC`

  Requires that every update to the file's content or metadata be written
  synchronously to the underlying storage device.

  `TRUNCATE_EXISTING`

  If the file already exists and it is opened for [`WRITE`](#WRITE)
  access, then its length is truncated to 0.

  `WRITE`

  Open for write access.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static StandardOpenOption`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static StandardOpenOption[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### READ

    public static final [StandardOpenOption](StandardOpenOption.md "enum class in java.nio.file") READ

    Open for read access.
  + ### WRITE

    public static final [StandardOpenOption](StandardOpenOption.md "enum class in java.nio.file") WRITE

    Open for write access.
  + ### APPEND

    public static final [StandardOpenOption](StandardOpenOption.md "enum class in java.nio.file") APPEND

    If the file is opened for [`WRITE`](#WRITE) access then bytes will be written
    to the end of the file rather than the beginning.

    If the file is opened for write access by other programs, then it
    is file system specific if writing to the end of the file is atomic.
  + ### TRUNCATE\_EXISTING

    public static final [StandardOpenOption](StandardOpenOption.md "enum class in java.nio.file") TRUNCATE\_EXISTING

    If the file already exists and it is opened for [`WRITE`](#WRITE)
    access, then its length is truncated to 0. This option is ignored
    if the file is opened only for [`READ`](#READ) access.
  + ### CREATE

    public static final [StandardOpenOption](StandardOpenOption.md "enum class in java.nio.file") CREATE

    Create a new file if it does not exist.
    This option is ignored if the [`CREATE_NEW`](#CREATE_NEW) option is also set.
    The check for the existence of the file and the creation of the file
    if it does not exist is atomic with respect to other file system
    operations.
  + ### CREATE\_NEW

    public static final [StandardOpenOption](StandardOpenOption.md "enum class in java.nio.file") CREATE\_NEW

    Create a new file, failing if the file already exists.
    The check for the existence of the file and the creation of the file
    if it does not exist is atomic with respect to other file system
    operations.
  + ### DELETE\_ON\_CLOSE

    public static final [StandardOpenOption](StandardOpenOption.md "enum class in java.nio.file") DELETE\_ON\_CLOSE

    Delete on close. When this option is present then the implementation
    makes a *best effort* attempt to delete the file when closed
    by the appropriate `close` method. If the `close` method is
    not invoked then a *best effort* attempt is made to delete the
    file when the Java virtual machine terminates (either normally, as
    defined by the Java Language Specification, or where possible, abnormally).
    This option is primarily intended for use with *work files* that
    are used solely by a single instance of the Java virtual machine. This
    option is not recommended for use when opening files that are open
    concurrently by other entities. Many of the details as to when and how
    the file is deleted are implementation specific and therefore not
    specified. In particular, an implementation may be unable to guarantee
    that it deletes the expected file when replaced by an attacker while the
    file is open. Consequently, security sensitive applications should take
    care when using this option.

    For security reasons, this option may imply the [`LinkOption.NOFOLLOW_LINKS`](LinkOption.md#NOFOLLOW_LINKS) option. In other words, if the option is present
    when opening an existing file that is a symbolic link then it may fail
    (by throwing [`IOException`](../../io/IOException.md "class in java.io")).
  + ### SPARSE

    public static final [StandardOpenOption](StandardOpenOption.md "enum class in java.nio.file") SPARSE

    Sparse file. When used with the [`CREATE_NEW`](#CREATE_NEW) option then this
    option provides a *hint* that the new file will be sparse. The
    option is ignored when the file system does not support the creation of
    sparse files.
  + ### SYNC

    public static final [StandardOpenOption](StandardOpenOption.md "enum class in java.nio.file") SYNC

    Requires that every update to the file's content or metadata be written
    synchronously to the underlying storage device.

    See Also:
    :   - [Synchronized I/O file integrity](package-summary.md#integrity)
  + ### DSYNC

    public static final [StandardOpenOption](StandardOpenOption.md "enum class in java.nio.file") DSYNC

    Requires that every update to the file's content be written
    synchronously to the underlying storage device.

    See Also:
    :   - [Synchronized I/O file integrity](package-summary.md#integrity)
* ## Method Details

  + ### values

    public static [StandardOpenOption](StandardOpenOption.md "enum class in java.nio.file")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [StandardOpenOption](StandardOpenOption.md "enum class in java.nio.file") valueOf([String](../../lang/String.md "class in java.lang") name)

    Returns the enum constant of this class with the specified name.
    The string must match *exactly* an identifier used to declare an
    enum constant in this class. (Extraneous whitespace characters are
    not permitted.)

    Parameters:
    :   `name` - the name of the enum constant to be returned.

    Returns:
    :   the enum constant with the specified name

    Throws:
    :   `IllegalArgumentException` - if this enum class has no constant with the specified name
    :   `NullPointerException` - if the argument is null