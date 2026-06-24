Module [java.naming](../../module-summary.md)

Package [javax.naming](package-summary.md)

# Class LinkRef

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.naming.Reference](Reference.md "class in javax.naming")

javax.naming.LinkRef

All Implemented Interfaces:
:   `Serializable`, `Cloneable`

---

public class LinkRef
extends [Reference](Reference.md "class in javax.naming")

This class represents a Reference whose contents is a name, called the link name,
that is bound to an atomic name in a context.

The name is a URL, or a name to be resolved relative to the initial
context, or if the first character of the name is ".", the name
is relative to the context in which the link is bound.

Normal resolution of names in context operations always follow links.
Resolution of the link name itself may cause resolution to pass through
other links. This gives rise to the possibility of a cycle of links whose
resolution could not terminate normally. As a simple means to avoid such
non-terminating resolutions, service providers may define limits on the
number of links that may be involved in any single operation invoked
by the caller.

A LinkRef contains a single StringRefAddr, whose type is "LinkAddress",
and whose contents is the link name. The class name field of the
Reference is that of this (LinkRef) class.

LinkRef is bound to a name using the normal Context.bind()/rebind(), and
DirContext.bind()/rebind(). Context.lookupLink() is used to retrieve the link
itself if the terminal atomic name is bound to a link.

Many naming systems support a native notion of link that may be used
within the naming system itself. JNDI does not specify whether
there is any relationship between such native links and JNDI links.

A LinkRef instance is not synchronized against concurrent access by multiple
threads. Threads that need to access a LinkRef instance concurrently should
synchronize amongst themselves and provide the necessary locking.

Since:
:   1.3

See Also:
:   * [`LinkException`](LinkException.md "class in javax.naming")
    * [`LinkLoopException`](LinkLoopException.md "class in javax.naming")
    * [`MalformedLinkException`](MalformedLinkException.md "class in javax.naming")
    * [`Context.lookupLink(javax.naming.Name)`](Context.md#lookupLink(javax.naming.Name))
    * [Serialized Form](../../../serialized-form.md#javax.naming.LinkRef)

* ## Field Summary

  ### Fields inherited from class javax.naming.[Reference](Reference.md "class in javax.naming")

  `addrs, classFactory, classFactoryLocation, className`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `LinkRef(String linkName)`

  Constructs a LinkRef for a string name.

  `LinkRef(Name linkName)`

  Constructs a LinkRef for a name.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getLinkName()`

  Retrieves the name of this link.

  ### Methods inherited from class javax.naming.[Reference](Reference.md "class in javax.naming")

  `add, add, clear, clone, equals, get, get, getAll, getClassName, getFactoryClassLocation, getFactoryClassName, hashCode, remove, size, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### LinkRef

    public LinkRef([Name](Name.md "interface in javax.naming") linkName)

    Constructs a LinkRef for a name.

    Parameters:
    :   `linkName` - The non-null name for which to create this link.
  + ### LinkRef

    public LinkRef([String](../../../java.base/java/lang/String.md "class in java.lang") linkName)

    Constructs a LinkRef for a string name.

    Parameters:
    :   `linkName` - The non-null name for which to create this link.
* ## Method Details

  + ### getLinkName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getLinkName()
    throws [NamingException](NamingException.md "class in javax.naming")

    Retrieves the name of this link.

    Returns:
    :   The non-null name of this link.

    Throws:
    :   `MalformedLinkException` - If a link name could not be extracted
    :   `NamingException` - If a naming exception was encountered.