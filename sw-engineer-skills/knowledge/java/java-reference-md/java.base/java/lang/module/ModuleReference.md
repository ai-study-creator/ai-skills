Module [java.base](../../../module-summary.md)

Package [java.lang.module](package-summary.md)

# Class ModuleReference

[java.lang.Object](../Object.md "class in java.lang")

java.lang.module.ModuleReference

---

public abstract class ModuleReference
extends [Object](../Object.md "class in java.lang")

A reference to a module's content.

A module reference is a concrete implementation of this class that
implements the abstract methods defined by this class. It contains the
module's descriptor and its location, if known. It also has the ability to
create a [`ModuleReader`](ModuleReader.md "interface in java.lang.module") in order to access the module's content, which
may be inside the Java run-time system itself or in an artifact such as a
modular JAR file.

Since:
:   9

See Also:
:   * [`ModuleFinder`](ModuleFinder.md "interface in java.lang.module")
    * [`ModuleReader`](ModuleReader.md "interface in java.lang.module")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ModuleReference(ModuleDescriptor descriptor,
  URI location)`

  Constructs a new instance of this class.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final ModuleDescriptor`

  `descriptor()`

  Returns the module descriptor.

  `final Optional<URI>`

  `location()`

  Returns the location of this module's content, if known.

  `abstract ModuleReader`

  `open()`

  Opens the module content for reading.

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ModuleReference

    protected ModuleReference([ModuleDescriptor](ModuleDescriptor.md "class in java.lang.module") descriptor,
    [URI](../../net/URI.md "class in java.net") location)

    Constructs a new instance of this class.

    Parameters:
    :   `descriptor` - The module descriptor
    :   `location` - The module location or `null` if not known
* ## Method Details

  + ### descriptor

    public final [ModuleDescriptor](ModuleDescriptor.md "class in java.lang.module") descriptor()

    Returns the module descriptor.

    Returns:
    :   The module descriptor
  + ### location

    public final [Optional](../../util/Optional.md "class in java.util")<[URI](../../net/URI.md "class in java.net")> location()

    Returns the location of this module's content, if known.

    This URI, when present, can be used as the [location](../../security/CodeSource.md#getLocation()) value of a [`CodeSource`](../../security/CodeSource.md "class in java.security") so that a module's classes can be
    granted specific permissions when loaded by a [`SecureClassLoader`](../../security/SecureClassLoader.md "class in java.security").

    Returns:
    :   The location or an empty `Optional` if not known
  + ### open

    public abstract [ModuleReader](ModuleReader.md "interface in java.lang.module") open()
    throws [IOException](../../io/IOException.md "class in java.io")

    Opens the module content for reading.

    Returns:
    :   A `ModuleReader` to read the module

    Throws:
    :   `IOException` - If an I/O error occurs
    :   `SecurityException` - If denied by the security manager