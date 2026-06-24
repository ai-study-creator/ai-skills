Module [java.base](../../../module-summary.md)

Package [java.lang.module](package-summary.md)

# Class ModuleDescriptor

[java.lang.Object](../Object.md "class in java.lang")

java.lang.module.ModuleDescriptor

All Implemented Interfaces:
:   `Comparable<ModuleDescriptor>`

---

public class ModuleDescriptor
extends [Object](../Object.md "class in java.lang")
implements [Comparable](../Comparable.md "interface in java.lang")<[ModuleDescriptor](ModuleDescriptor.md "class in java.lang.module")>

A module descriptor.

A module descriptor describes a named module and defines methods to
obtain each of its components. The module descriptor for a named module
in the Java virtual machine is obtained by invoking the [`Module`](../Module.md "class in java.lang")'s [`getDescriptor`](../Module.md#getDescriptor()) method. Module descriptors can also be created using the
[`ModuleDescriptor.Builder`](ModuleDescriptor.Builder.md "class in java.lang.module") class or by reading the binary form of a
module declaration (`module-info.class`) using the [`read`](#read(java.io.InputStream,java.util.function.Supplier)) methods defined here.

A module descriptor describes a *normal*, open, or automatic
module. *Normal* modules and open modules describe their [dependences](#requires()), [`exported-packages`](#exports()), the services
that they [use](#uses()) or [provide](#provides()), and other
components. *Normal* modules may [open](#opens()) specific
packages. The module descriptor for an open module does not declare any
open packages (its `opens` method returns an empty set) but when
instantiated in the Java virtual machine then it is treated as if all
packages are open. The module descriptor for an automatic module does not
declare any dependences (except for the mandatory dependency on `java.base`), and does not declare any exported or open packages. Automatic
modules receive special treatment during resolution so that they read all
other modules in the configuration. When an automatic module is instantiated
in the Java virtual machine then it reads every unnamed module and is
treated as if all packages are exported and open.

`ModuleDescriptor` objects are immutable and safe for use by
multiple concurrent threads.

Since:
:   9

See Also:
:   * [`Module`](../Module.md "class in java.lang")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static final class`

  `ModuleDescriptor.Builder`

  A builder for building [`ModuleDescriptor`](ModuleDescriptor.md "class in java.lang.module") objects.

  `static final class`

  `ModuleDescriptor.Exports`

  A package exported by a module, may be qualified or unqualified.

  `static enum`

  `ModuleDescriptor.Modifier`

  A modifier on a module.

  `static final class`

  `ModuleDescriptor.Opens`

  A package opened by a module, may be qualified or unqualified.

  `static final class`

  `ModuleDescriptor.Provides`

  A service that a module provides one or more implementations of.

  `static final class`

  `ModuleDescriptor.Requires`

  A dependence upon a module.

  `static final class`

  `ModuleDescriptor.Version`

  A module's version string.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Set<AccessFlag>`

  `accessFlags()`

  Returns the set of the [module flags](../reflect/AccessFlag.md "enum class in java.lang.reflect").

  `int`

  `compareTo(ModuleDescriptor that)`

  Compares this module descriptor to another.

  `boolean`

  `equals(Object ob)`

  Tests this module descriptor for equality with the given object.

  `Set<ModuleDescriptor.Exports>`

  `exports()`

  Returns the set of `Exports` objects representing the exported
  packages.

  `int`

  `hashCode()`

  Computes a hash code for this module descriptor.

  `boolean`

  `isAutomatic()`

  Returns `true` if this is an automatic module.

  `boolean`

  `isOpen()`

  Returns `true` if this is an open module.

  `Optional<String>`

  `mainClass()`

  Returns the module main class.

  `Set<ModuleDescriptor.Modifier>`

  `modifiers()`

  Returns the set of module modifiers.

  `String`

  `name()`

  Returns the module name.

  `static ModuleDescriptor.Builder`

  `newAutomaticModule(String name)`

  Instantiates a builder to build a module descriptor for an automatic
  module.

  `static ModuleDescriptor.Builder`

  `newModule(String name)`

  Instantiates a builder to build a module descriptor for a *normal*
  module.

  `static ModuleDescriptor.Builder`

  `newModule(String name,
  Set<ModuleDescriptor.Modifier> ms)`

  Instantiates a builder to build a module descriptor.

  `static ModuleDescriptor.Builder`

  `newOpenModule(String name)`

  Instantiates a builder to build a module descriptor for an open module.

  `Set<ModuleDescriptor.Opens>`

  `opens()`

  Returns the set of `Opens` objects representing the open
  packages.

  `Set<String>`

  `packages()`

  Returns the set of packages in the module.

  `Set<ModuleDescriptor.Provides>`

  `provides()`

  Returns the set of `Provides` objects representing the
  services that the module provides.

  `Optional<String>`

  `rawVersion()`

  Returns the string with the possibly-unparseable version of the
  module.

  `static ModuleDescriptor`

  `read(InputStream in)`

  Reads the binary form of a module declaration from an input stream as a
  module descriptor.

  `static ModuleDescriptor`

  `read(InputStream in,
  Supplier<Set<String>> packageFinder)`

  Reads the binary form of a module declaration from an input stream
  as a module descriptor.

  `static ModuleDescriptor`

  `read(ByteBuffer bb)`

  Reads the binary form of a module declaration from a byte buffer as a
  module descriptor.

  `static ModuleDescriptor`

  `read(ByteBuffer bb,
  Supplier<Set<String>> packageFinder)`

  Reads the binary form of a module declaration from a byte buffer
  as a module descriptor.

  `Set<ModuleDescriptor.Requires>`

  `requires()`

  Returns the set of `Requires` objects representing the module
  dependences.

  `String`

  `toNameAndVersion()`

  Returns a string containing the module name and, if present, its
  version.

  `String`

  `toString()`

  Returns a string describing the module.

  `Set<String>`

  `uses()`

  Returns the set of service dependences.

  `Optional<ModuleDescriptor.Version>`

  `version()`

  Returns the module version.

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Method Details

  + ### name

    public [String](../String.md "class in java.lang") name()

    Returns the module name.

    Returns:
    :   The module name
  + ### modifiers

    public [Set](../../util/Set.md "interface in java.util")<[ModuleDescriptor.Modifier](ModuleDescriptor.Modifier.md "enum class in java.lang.module")> modifiers()

    Returns the set of module modifiers.

    Returns:
    :   A possibly-empty unmodifiable set of modifiers
  + ### accessFlags

    public [Set](../../util/Set.md "interface in java.util")<[AccessFlag](../reflect/AccessFlag.md "enum class in java.lang.reflect")> accessFlags()

    Returns the set of the [module flags](../reflect/AccessFlag.md "enum class in java.lang.reflect").

    Returns:
    :   A possibly-empty unmodifiable set of module flags

    Since:
    :   20

    See Also:
    :   - [`modifiers()`](#modifiers())
  + ### isOpen

    public boolean isOpen()

    Returns `true` if this is an open module.

    This method is equivalent to testing if the set of [`modifiers`](#modifiers()) contains the [`OPEN`](ModuleDescriptor.Modifier.md#OPEN) modifier.

    Returns:
    :   `true` if this is an open module
  + ### isAutomatic

    public boolean isAutomatic()

    Returns `true` if this is an automatic module.

    This method is equivalent to testing if the set of [`modifiers`](#modifiers()) contains the [`AUTOMATIC`](ModuleDescriptor.Modifier.md#AUTOMATIC) modifier.

    Returns:
    :   `true` if this is an automatic module
  + ### requires

    public [Set](../../util/Set.md "interface in java.util")<[ModuleDescriptor.Requires](ModuleDescriptor.Requires.md "class in java.lang.module")> requires()

    Returns the set of `Requires` objects representing the module
    dependences.

    The set includes a dependency on "`java.base`" when this
    module is not named "`java.base`". If this module is an automatic
    module then it does not have a dependency on any module other than
    "`java.base`".

    Returns:
    :   A possibly-empty unmodifiable set of [`ModuleDescriptor.Requires`](ModuleDescriptor.Requires.md "class in java.lang.module") objects
  + ### exports

    public [Set](../../util/Set.md "interface in java.util")<[ModuleDescriptor.Exports](ModuleDescriptor.Exports.md "class in java.lang.module")> exports()

    Returns the set of `Exports` objects representing the exported
    packages.

    If this module is an automatic module then the set of exports
    is empty.

    Returns:
    :   A possibly-empty unmodifiable set of exported packages
  + ### opens

    public [Set](../../util/Set.md "interface in java.util")<[ModuleDescriptor.Opens](ModuleDescriptor.Opens.md "class in java.lang.module")> opens()

    Returns the set of `Opens` objects representing the open
    packages.

    If this module is an open module or an automatic module then the
    set of open packages is empty.

    Returns:
    :   A possibly-empty unmodifiable set of open packages
  + ### uses

    public [Set](../../util/Set.md "interface in java.util")<[String](../String.md "class in java.lang")> uses()

    Returns the set of service dependences.

    If this module is an automatic module then the set of service
    dependences is empty.

    Returns:
    :   A possibly-empty unmodifiable set of the fully qualified class
        names of the service types used
  + ### provides

    public [Set](../../util/Set.md "interface in java.util")<[ModuleDescriptor.Provides](ModuleDescriptor.Provides.md "class in java.lang.module")> provides()

    Returns the set of `Provides` objects representing the
    services that the module provides.

    Returns:
    :   The possibly-empty unmodifiable set of the services that this
        module provides
  + ### version

    public [Optional](../../util/Optional.md "class in java.util")<[ModuleDescriptor.Version](ModuleDescriptor.Version.md "class in java.lang.module")> version()

    Returns the module version.

    Returns:
    :   This module's version, or an empty `Optional` if the
        module does not have a version or the version is
        [unparseable](ModuleDescriptor.Version.md#parse(java.lang.String))
  + ### rawVersion

    public [Optional](../../util/Optional.md "class in java.util")<[String](../String.md "class in java.lang")> rawVersion()

    Returns the string with the possibly-unparseable version of the
    module.

    Returns:
    :   The string containing the version of the module or an empty
        `Optional` if the module does not have a version

    See Also:
    :   - [`version()`](#version())
  + ### toNameAndVersion

    public [String](../String.md "class in java.lang") toNameAndVersion()

    Returns a string containing the module name and, if present, its
    version.

    Returns:
    :   A string containing the module name and, if present, its
        version
  + ### mainClass

    public [Optional](../../util/Optional.md "class in java.util")<[String](../String.md "class in java.lang")> mainClass()

    Returns the module main class.

    Returns:
    :   The fully qualified class name of the module's main class
  + ### packages

    public [Set](../../util/Set.md "interface in java.util")<[String](../String.md "class in java.lang")> packages()

    Returns the set of packages in the module.

    The set of packages includes all exported and open packages, as well
    as the packages of any service providers, and the package for the main
    class.

    Returns:
    :   A possibly-empty unmodifiable set of the packages in the module
  + ### compareTo

    public int compareTo([ModuleDescriptor](ModuleDescriptor.md "class in java.lang.module") that)

    Compares this module descriptor to another.

    Two `ModuleDescriptor` objects are compared by comparing their
    module names lexicographically. Where the module names are equal then the
    module versions are compared. When comparing the module versions then a
    module descriptor with a version is considered to succeed a module
    descriptor that does not have a version. If both versions are [unparseable](ModuleDescriptor.Version.md#parse(java.lang.String)) then the [raw version strings](#rawVersion()) are compared lexicographically. Where the module names
    are equal and the versions are equal (or not present in both), then the
    set of modifiers are compared. Sets of modifiers are compared by comparing
    a *binary value* computed for each set. If a modifier is present
    in the set then the bit at the position of its ordinal is `1`
    in the binary value, otherwise `0`. If the two set of modifiers
    are also equal then the other components of the module descriptors are
    compared in a manner that is consistent with `equals`.

    Specified by:
    :   `compareTo` in interface `Comparable<ModuleDescriptor>`

    Parameters:
    :   `that` - The module descriptor to compare

    Returns:
    :   A negative integer, zero, or a positive integer if this module
        descriptor is less than, equal to, or greater than the given
        module descriptor
  + ### equals

    public boolean equals([Object](../Object.md "class in java.lang") ob)

    Tests this module descriptor for equality with the given object.

    If the given object is not a `ModuleDescriptor` then this
    method returns `false`. Two module descriptors are equal if each
    of their corresponding components is equal.

    This method satisfies the general contract of the [`Object.equals`](../Object.md#equals(java.lang.Object)) method.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `ob` - the object to which this object is to be compared

    Returns:
    :   `true` if, and only if, the given object is a module
        descriptor that is equal to this module descriptor

    See Also:
    :   - [`Object.hashCode()`](../Object.md#hashCode())
        - [`HashMap`](../../util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Computes a hash code for this module descriptor.

    The hash code is based upon the components of the module descriptor,
    and satisfies the general contract of the [`Object.hashCode`](../Object.md#hashCode()) method.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   The hash-code value for this module descriptor

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../String.md "class in java.lang") toString()

    Returns a string describing the module.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   A string describing the module
  + ### newModule

    public static [ModuleDescriptor.Builder](ModuleDescriptor.Builder.md "class in java.lang.module") newModule([String](../String.md "class in java.lang") name,
    [Set](../../util/Set.md "interface in java.util")<[ModuleDescriptor.Modifier](ModuleDescriptor.Modifier.md "enum class in java.lang.module")> ms)

    Instantiates a builder to build a module descriptor.

    Parameters:
    :   `name` - The module name
    :   `ms` - The set of module modifiers

    Returns:
    :   A new builder

    Throws:
    :   `IllegalArgumentException` - If the module name is `null` or is not a legal module
        name, or the set of modifiers contains [`AUTOMATIC`](ModuleDescriptor.Modifier.md#AUTOMATIC) with other modifiers
  + ### newModule

    public static [ModuleDescriptor.Builder](ModuleDescriptor.Builder.md "class in java.lang.module") newModule([String](../String.md "class in java.lang") name)

    Instantiates a builder to build a module descriptor for a *normal*
    module. This method is equivalent to invoking [`newModule`](#newModule(java.lang.String,java.util.Set)) with an empty set of [`modifiers`](ModuleDescriptor.Modifier.md "enum class in java.lang.module").

    Parameters:
    :   `name` - The module name

    Returns:
    :   A new builder

    Throws:
    :   `IllegalArgumentException` - If the module name is `null` or is not a legal module
        name
  + ### newOpenModule

    public static [ModuleDescriptor.Builder](ModuleDescriptor.Builder.md "class in java.lang.module") newOpenModule([String](../String.md "class in java.lang") name)

    Instantiates a builder to build a module descriptor for an open module.
    This method is equivalent to invoking [`newModule`](#newModule(java.lang.String,java.util.Set)) with the [`OPEN`](ModuleDescriptor.Modifier.md#OPEN) modifier.

    The builder for an open module cannot be used to declare any open
    packages.

    Parameters:
    :   `name` - The module name

    Returns:
    :   A new builder that builds an open module

    Throws:
    :   `IllegalArgumentException` - If the module name is `null` or is not a legal module
        name
  + ### newAutomaticModule

    public static [ModuleDescriptor.Builder](ModuleDescriptor.Builder.md "class in java.lang.module") newAutomaticModule([String](../String.md "class in java.lang") name)

    Instantiates a builder to build a module descriptor for an automatic
    module. This method is equivalent to invoking [`newModule`](#newModule(java.lang.String,java.util.Set)) with the [`AUTOMATIC`](ModuleDescriptor.Modifier.md#AUTOMATIC)
    modifier.

    The builder for an automatic module cannot be used to declare module
    or service dependences. It also cannot be used to declare any exported
    or open packages.

    Parameters:
    :   `name` - The module name

    Returns:
    :   A new builder that builds an automatic module

    Throws:
    :   `IllegalArgumentException` - If the module name is `null` or is not a legal module
        name

    See Also:
    :   - [`ModuleFinder.of(Path[])`](ModuleFinder.md#of(java.nio.file.Path...))
  + ### read

    public static [ModuleDescriptor](ModuleDescriptor.md "class in java.lang.module") read([InputStream](../../io/InputStream.md "class in java.io") in,
    [Supplier](../../util/function/Supplier.md "interface in java.util.function")<[Set](../../util/Set.md "interface in java.util")<[String](../String.md "class in java.lang")>> packageFinder)
    throws [IOException](../../io/IOException.md "class in java.io")

    Reads the binary form of a module declaration from an input stream
    as a module descriptor.

    If the descriptor encoded in the input stream does not indicate a
    set of packages in the module then the `packageFinder` will be
    invoked. The set of packages that the `packageFinder` returns
    must include all the packages that the module exports, opens, as well
    as the packages of the service implementations that the module provides,
    and the package of the main class (if the module has a main class). If
    the `packageFinder` throws an [`UncheckedIOException`](../../io/UncheckedIOException.md "class in java.io") then
    [`IOException`](../../io/IOException.md "class in java.io") cause will be re-thrown.

    If there are bytes following the module descriptor then it is
    implementation specific as to whether those bytes are read, ignored,
    or reported as an `InvalidModuleDescriptorException`. If this
    method fails with an `InvalidModuleDescriptorException` or `IOException` then it may do so after some, but not all, bytes have
    been read from the input stream. It is strongly recommended that the
    stream be promptly closed and discarded if an exception occurs.

    Parameters:
    :   `in` - The input stream
    :   `packageFinder` - A supplier that can produce the set of packages

    Returns:
    :   The module descriptor

    Throws:
    :   `InvalidModuleDescriptorException` - If an invalid module descriptor is detected or the set of
        packages returned by the `packageFinder` does not include
        all of the packages obtained from the module descriptor
    :   `IOException` - If an I/O error occurs reading from the input stream or `UncheckedIOException` is thrown by the package finder
  + ### read

    public static [ModuleDescriptor](ModuleDescriptor.md "class in java.lang.module") read([InputStream](../../io/InputStream.md "class in java.io") in)
    throws [IOException](../../io/IOException.md "class in java.io")

    Reads the binary form of a module declaration from an input stream as a
    module descriptor. This method works exactly as specified by the 2-arg
    [`read`](#read(java.io.InputStream,java.util.function.Supplier)) method with the exception that
    a package finder is not used to find additional packages when the
    module descriptor read from the stream does not indicate the set of
    packages.

    Parameters:
    :   `in` - The input stream

    Returns:
    :   The module descriptor

    Throws:
    :   `InvalidModuleDescriptorException` - If an invalid module descriptor is detected
    :   `IOException` - If an I/O error occurs reading from the input stream
  + ### read

    public static [ModuleDescriptor](ModuleDescriptor.md "class in java.lang.module") read([ByteBuffer](../../nio/ByteBuffer.md "class in java.nio") bb,
    [Supplier](../../util/function/Supplier.md "interface in java.util.function")<[Set](../../util/Set.md "interface in java.util")<[String](../String.md "class in java.lang")>> packageFinder)

    Reads the binary form of a module declaration from a byte buffer
    as a module descriptor.

    If the descriptor encoded in the byte buffer does not indicate a
    set of packages in the module then the `packageFinder` will be
    invoked. The set of packages that the `packageFinder` returns
    must include all the packages that the module exports, opens, as well
    as the packages of the service implementations that the module provides,
    and the package of the main class (if the module has a main class). If
    the `packageFinder` throws an [`UncheckedIOException`](../../io/UncheckedIOException.md "class in java.io") then
    [`IOException`](../../io/IOException.md "class in java.io") cause will be re-thrown.

    The module descriptor is read from the buffer starting at index
    `p`, where `p` is the buffer's [`position`](../../nio/Buffer.md#position()) when this method is invoked. Upon return the buffer's position
    will be equal to `p + n` where `n` is the number of bytes
    read from the buffer.

    If there are bytes following the module descriptor then it is
    implementation specific as to whether those bytes are read, ignored,
    or reported as an `InvalidModuleDescriptorException`. If this
    method fails with an `InvalidModuleDescriptorException` then it
    may do so after some, but not all, bytes have been read.

    Parameters:
    :   `bb` - The byte buffer
    :   `packageFinder` - A supplier that can produce the set of packages

    Returns:
    :   The module descriptor

    Throws:
    :   `InvalidModuleDescriptorException` - If an invalid module descriptor is detected or the set of
        packages returned by the `packageFinder` does not include
        all of the packages obtained from the module descriptor
  + ### read

    public static [ModuleDescriptor](ModuleDescriptor.md "class in java.lang.module") read([ByteBuffer](../../nio/ByteBuffer.md "class in java.nio") bb)

    Reads the binary form of a module declaration from a byte buffer as a
    module descriptor. This method works exactly as specified by the 2-arg
    [`read`](#read(java.nio.ByteBuffer,java.util.function.Supplier)) method with the exception that a
    package finder is not used to find additional packages when the module
    descriptor encoded in the buffer does not indicate the set of packages.

    Parameters:
    :   `bb` - The byte buffer

    Returns:
    :   The module descriptor

    Throws:
    :   `InvalidModuleDescriptorException` - If an invalid module descriptor is detected