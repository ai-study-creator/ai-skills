Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class NetworkInterface

[java.lang.Object](../lang/Object.md "class in java.lang")

java.net.NetworkInterface

---

public final class NetworkInterface
extends [Object](../lang/Object.md "class in java.lang")

This class represents a Network Interface made up of a name,
and a list of IP addresses assigned to this interface.
It is used to identify the local interface on which a multicast group
is joined.
Interfaces are normally known by names such as "le0".

Since:
:   1.4

* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Compares this object against the specified object.

  `static NetworkInterface`

  `getByIndex(int index)`

  Get a network interface given its index.

  `static NetworkInterface`

  `getByInetAddress(InetAddress addr)`

  Convenience method to search for a network interface that
  has the specified Internet Protocol (IP) address bound to
  it.

  `static NetworkInterface`

  `getByName(String name)`

  Searches for the network interface with the specified name.

  `String`

  `getDisplayName()`

  Get the display name of this network interface.

  `byte[]`

  `getHardwareAddress()`

  Returns the hardware address (usually MAC) of the interface if it
  has one and if it can be accessed given the current privileges.

  `int`

  `getIndex()`

  Returns the index of this network interface.

  `Enumeration<InetAddress>`

  `getInetAddresses()`

  Get an Enumeration with all or a subset of the InetAddresses bound to
  this network interface.

  `List<InterfaceAddress>`

  `getInterfaceAddresses()`

  Get a List of all or a subset of the `InterfaceAddresses`
  of this network interface.

  `int`

  `getMTU()`

  Returns the Maximum Transmission Unit (MTU) of this interface.

  `String`

  `getName()`

  Get the name of this network interface.

  `static Enumeration<NetworkInterface>`

  `getNetworkInterfaces()`

  Returns an `Enumeration` of all the interfaces on this machine.

  `NetworkInterface`

  `getParent()`

  Returns the parent NetworkInterface of this interface if this is
  a subinterface, or `null` if it is a physical
  (non virtual) interface or has no parent.

  `Enumeration<NetworkInterface>`

  `getSubInterfaces()`

  Get an Enumeration with all the subinterfaces (also known as virtual
  interfaces) attached to this network interface.

  `int`

  `hashCode()`

  Returns a hash code value for the object.

  `Stream<InetAddress>`

  `inetAddresses()`

  Get a Stream of all or a subset of the InetAddresses bound to this
  network interface.

  `boolean`

  `isLoopback()`

  Returns whether a network interface is a loopback interface.

  `boolean`

  `isPointToPoint()`

  Returns whether a network interface is a point to point interface.

  `boolean`

  `isUp()`

  Returns whether a network interface is up and running.

  `boolean`

  `isVirtual()`

  Returns whether this interface is a virtual interface (also called
  subinterface).

  `static Stream<NetworkInterface>`

  `networkInterfaces()`

  Returns a `Stream` of all the interfaces on this machine.

  `Stream<NetworkInterface>`

  `subInterfaces()`

  Get a Stream of all subinterfaces (also known as virtual
  interfaces) attached to this network interface.

  `boolean`

  `supportsMulticast()`

  Returns whether a network interface supports multicasting or not.

  `String`

  `toString()`

  Returns a string representation of the object.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Method Details

  + ### getName

    public [String](../lang/String.md "class in java.lang") getName()

    Get the name of this network interface.

    Returns:
    :   the name of this network interface
  + ### getInetAddresses

    public [Enumeration](../util/Enumeration.md "interface in java.util")<[InetAddress](InetAddress.md "class in java.net")> getInetAddresses()

    Get an Enumeration with all or a subset of the InetAddresses bound to
    this network interface.

    If there is a security manager, its `checkConnect`
    method is called for each InetAddress. Only InetAddresses where
    the `checkConnect` doesn't throw a SecurityException
    will be returned in the Enumeration. However, if the caller has the
    [`NetPermission`](NetPermission.md "class in java.net")("getNetworkInformation") permission, then all
    InetAddresses are returned.

    Returns:
    :   an Enumeration object with all or a subset of the InetAddresses
        bound to this network interface

    See Also:
    :   - [`inetAddresses()`](#inetAddresses())
  + ### inetAddresses

    public [Stream](../util/stream/Stream.md "interface in java.util.stream")<[InetAddress](InetAddress.md "class in java.net")> inetAddresses()

    Get a Stream of all or a subset of the InetAddresses bound to this
    network interface.

    If there is a security manager, its `checkConnect`
    method is called for each InetAddress. Only InetAddresses where
    the `checkConnect` doesn't throw a SecurityException will be
    returned in the Stream. However, if the caller has the
    [`NetPermission`](NetPermission.md "class in java.net")("getNetworkInformation") permission, then all
    InetAddresses are returned.

    Returns:
    :   a Stream object with all or a subset of the InetAddresses
        bound to this network interface

    Since:
    :   9
  + ### getInterfaceAddresses

    public [List](../util/List.md "interface in java.util")<[InterfaceAddress](InterfaceAddress.md "class in java.net")> getInterfaceAddresses()

    Get a List of all or a subset of the `InterfaceAddresses`
    of this network interface.

    If there is a security manager, its `checkConnect`
    method is called with the InetAddress for each InterfaceAddress.
    Only InterfaceAddresses where the `checkConnect` doesn't throw
    a SecurityException will be returned in the List.

    Returns:
    :   a `List` object with all or a subset of the
        InterfaceAddress of this network interface

    Since:
    :   1.6
  + ### getSubInterfaces

    public [Enumeration](../util/Enumeration.md "interface in java.util")<[NetworkInterface](NetworkInterface.md "class in java.net")> getSubInterfaces()

    Get an Enumeration with all the subinterfaces (also known as virtual
    interfaces) attached to this network interface.

    For instance eth0:1 will be a subinterface to eth0.

    Returns:
    :   an Enumeration object with all of the subinterfaces
        of this network interface

    Since:
    :   1.6

    See Also:
    :   - [`subInterfaces()`](#subInterfaces())
  + ### subInterfaces

    public [Stream](../util/stream/Stream.md "interface in java.util.stream")<[NetworkInterface](NetworkInterface.md "class in java.net")> subInterfaces()

    Get a Stream of all subinterfaces (also known as virtual
    interfaces) attached to this network interface.

    Returns:
    :   a Stream object with all of the subinterfaces
        of this network interface

    Since:
    :   9
  + ### getParent

    public [NetworkInterface](NetworkInterface.md "class in java.net") getParent()

    Returns the parent NetworkInterface of this interface if this is
    a subinterface, or `null` if it is a physical
    (non virtual) interface or has no parent.

    Returns:
    :   The `NetworkInterface` this interface is attached to.

    Since:
    :   1.6
  + ### getIndex

    public int getIndex()

    Returns the index of this network interface. The index is an integer greater
    or equal to zero, or `-1` for unknown. This is a system specific value
    and interfaces with the same name can have different indexes on different
    machines.

    Returns:
    :   the index of this network interface or `-1` if the index is
        unknown

    Since:
    :   1.7

    See Also:
    :   - [`getByIndex(int)`](#getByIndex(int))
  + ### getDisplayName

    public [String](../lang/String.md "class in java.lang") getDisplayName()

    Get the display name of this network interface.
    A display name is a human readable String describing the network
    device.

    Returns:
    :   a non-empty string representing the display name of this network
        interface, or null if no display name is available.
  + ### getByName

    public static [NetworkInterface](NetworkInterface.md "class in java.net") getByName([String](../lang/String.md "class in java.lang") name)
    throws [SocketException](SocketException.md "class in java.net")

    Searches for the network interface with the specified name.

    Parameters:
    :   `name` - The name of the network interface.

    Returns:
    :   A `NetworkInterface` with the specified name,
        or `null` if there is no network interface
        with the specified name.

    Throws:
    :   `SocketException` - If an I/O error occurs.
    :   `NullPointerException` - If the specified name is `null`.
  + ### getByIndex

    public static [NetworkInterface](NetworkInterface.md "class in java.net") getByIndex(int index)
    throws [SocketException](SocketException.md "class in java.net")

    Get a network interface given its index.

    Parameters:
    :   `index` - an integer, the index of the interface

    Returns:
    :   the NetworkInterface obtained from its index, or `null` if
        there is no interface with such an index on the system

    Throws:
    :   `SocketException` - if an I/O error occurs.
    :   `IllegalArgumentException` - if index has a negative value

    Since:
    :   1.7

    See Also:
    :   - [`getIndex()`](#getIndex())
  + ### getByInetAddress

    public static [NetworkInterface](NetworkInterface.md "class in java.net") getByInetAddress([InetAddress](InetAddress.md "class in java.net") addr)
    throws [SocketException](SocketException.md "class in java.net")

    Convenience method to search for a network interface that
    has the specified Internet Protocol (IP) address bound to
    it.

    If the specified IP address is bound to multiple network
    interfaces it is not defined which network interface is
    returned.

    Parameters:
    :   `addr` - The `InetAddress` to search with.

    Returns:
    :   A `NetworkInterface`
        or `null` if there is no network interface
        with the specified IP address.

    Throws:
    :   `SocketException` - If an I/O error occurs.
    :   `NullPointerException` - If the specified address is `null`.
  + ### getNetworkInterfaces

    public static [Enumeration](../util/Enumeration.md "interface in java.util")<[NetworkInterface](NetworkInterface.md "class in java.net")> getNetworkInterfaces()
    throws [SocketException](SocketException.md "class in java.net")

    Returns an `Enumeration` of all the interfaces on this machine. The
    `Enumeration` contains at least one element, possibly representing
    a loopback interface that only supports communication between entities on
    this machine.

    Returns:
    :   an Enumeration of NetworkInterfaces found on this machine

    Throws:
    :   `SocketException` - if an I/O error occurs,
        or if the platform does not have at least one configured
        network interface.

    See Also:
    :   - [`networkInterfaces()`](#networkInterfaces())
  + ### networkInterfaces

    public static [Stream](../util/stream/Stream.md "interface in java.util.stream")<[NetworkInterface](NetworkInterface.md "class in java.net")> networkInterfaces()
    throws [SocketException](SocketException.md "class in java.net")

    Returns a `Stream` of all the interfaces on this machine. The
    `Stream` contains at least one interface, possibly representing a
    loopback interface that only supports communication between entities on
    this machine.

    Returns:
    :   a Stream of NetworkInterfaces found on this machine

    Throws:
    :   `SocketException` - if an I/O error occurs,
        or if the platform does not have at least one configured
        network interface.

    Since:
    :   9
  + ### isUp

    public boolean isUp()
    throws [SocketException](SocketException.md "class in java.net")

    Returns whether a network interface is up and running.

    Returns:
    :   `true` if the interface is up and running.

    Throws:
    :   `SocketException` - if an I/O error occurs.

    Since:
    :   1.6
  + ### isLoopback

    public boolean isLoopback()
    throws [SocketException](SocketException.md "class in java.net")

    Returns whether a network interface is a loopback interface.

    Returns:
    :   `true` if the interface is a loopback interface.

    Throws:
    :   `SocketException` - if an I/O error occurs.

    Since:
    :   1.6
  + ### isPointToPoint

    public boolean isPointToPoint()
    throws [SocketException](SocketException.md "class in java.net")

    Returns whether a network interface is a point to point interface.
    A typical point to point interface would be a PPP connection through
    a modem.

    Returns:
    :   `true` if the interface is a point to point
        interface.

    Throws:
    :   `SocketException` - if an I/O error occurs.

    Since:
    :   1.6
  + ### supportsMulticast

    public boolean supportsMulticast()
    throws [SocketException](SocketException.md "class in java.net")

    Returns whether a network interface supports multicasting or not.

    Returns:
    :   `true` if the interface supports Multicasting.

    Throws:
    :   `SocketException` - if an I/O error occurs.

    Since:
    :   1.6
  + ### getHardwareAddress

    public byte[] getHardwareAddress()
    throws [SocketException](SocketException.md "class in java.net")

    Returns the hardware address (usually MAC) of the interface if it
    has one and if it can be accessed given the current privileges.
    If a security manager is set, then the caller must have
    the permission [`NetPermission`](NetPermission.md "class in java.net")("getNetworkInformation").

    Returns:
    :   a byte array containing the address, or `null` if
        the address doesn't exist, is not accessible or a security
        manager is set and the caller does not have the permission
        NetPermission("getNetworkInformation")

    Throws:
    :   `SocketException` - if an I/O error occurs.

    Since:
    :   1.6
  + ### getMTU

    public int getMTU()
    throws [SocketException](SocketException.md "class in java.net")

    Returns the Maximum Transmission Unit (MTU) of this interface.

    Returns:
    :   the value of the MTU for that interface.

    Throws:
    :   `SocketException` - if an I/O error occurs.

    Since:
    :   1.6
  + ### isVirtual

    public boolean isVirtual()

    Returns whether this interface is a virtual interface (also called
    subinterface).
    Virtual interfaces are, on some systems, interfaces created as a child
    of a physical interface and given different settings (like address or
    MTU). Usually the name of the interface will the name of the parent
    followed by a colon (:) and a number identifying the child since there
    can be several virtual interfaces attached to a single physical
    interface.

    Returns:
    :   `true` if this interface is a virtual interface.

    Since:
    :   1.6
  + ### equals

    public boolean equals([Object](../lang/Object.md "class in java.lang") obj)

    Compares this object against the specified object.
    The result is `true` if and only if the argument is
    not `null` and it represents the same NetworkInterface
    as this object.

    Two instances of `NetworkInterface` represent the same
    NetworkInterface if both the name and the set of `InetAddress`es
    bound to the interfaces are equal.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the object to compare against.

    Returns:
    :   `true` if the objects are the same;
        `false` otherwise.

    See Also:
    :   - [`InetAddress.getAddress()`](InetAddress.md#getAddress())
  + ### hashCode

    public int hashCode()

    Description copied from class: `Object`

    Returns a hash code value for the object. This method is
    supported for the benefit of hash tables such as those provided by
    [`HashMap`](../util/HashMap.md "class in java.util").

    The general contract of `hashCode` is:
    - Whenever it is invoked on the same object more than once during
      an execution of a Java application, the `hashCode` method
      must consistently return the same integer, provided no information
      used in `equals` comparisons on the object is modified.
      This integer need not remain consistent from one execution of an
      application to another execution of the same application.- If two objects are equal according to the [`equals`](../lang/Object.md#equals(java.lang.Object)) method, then calling the `hashCode` method on each of the two objects must produce the
        same integer result.- It is *not* required that if two objects are unequal
          according to the [`equals`](../lang/Object.md#equals(java.lang.Object)) method, then
          calling the `hashCode` method on each of the two objects
          must produce distinct integer results. However, the programmer
          should be aware that producing distinct integer results for
          unequal objects may improve the performance of hash tables.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Description copied from class: `Object`

    Returns a string representation of the object.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.