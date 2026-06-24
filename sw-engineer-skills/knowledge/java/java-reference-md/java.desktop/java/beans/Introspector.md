Module [java.desktop](../../module-summary.md)

Package [java.beans](package-summary.md)

# Class Introspector

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.beans.Introspector

---

public class Introspector
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

The Introspector class provides a standard way for tools to learn about
the properties, events, and methods supported by a target Java Bean.

For each of those three kinds of information, the Introspector will
separately analyze the bean's class and superclasses looking for
either explicit or implicit information and use that information to
build a BeanInfo object that comprehensively describes the target bean.

For each class "Foo", explicit information may be available if there exists
a corresponding "FooBeanInfo" class that provides a non-null value when
queried for the information. We first look for the BeanInfo class by
taking the full package-qualified name of the target bean class and
appending "BeanInfo" to form a new class name. If this fails, then
we take the final classname component of this name, and look for that
class in each of the packages specified in the BeanInfo package search
path.

Thus for a class such as "sun.xyz.OurButton" we would first look for a
BeanInfo class called "sun.xyz.OurButtonBeanInfo" and if that failed we'd
look in each package in the BeanInfo search path for an OurButtonBeanInfo
class. With the default search path, this would mean looking for
"sun.beans.infos.OurButtonBeanInfo".

If a class provides explicit BeanInfo about itself then we add that to
the BeanInfo information we obtained from analyzing any derived classes,
but we regard the explicit information as being definitive for the current
class and its base classes, and do not proceed any further up the superclass
chain.

If we don't find explicit BeanInfo on a class, we use low-level
reflection to study the methods of the class and apply standard design
patterns to identify property accessors, event sources, or public
methods. We then proceed to analyze the class's superclass and add
in the information from it (and possibly on up the superclass chain).

For more information about introspection and design patterns, please
consult the
[JavaBeans specification](http://www.oracle.com/technetwork/java/javase/documentation/spec-136004.html).

Since:
:   1.1

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `IGNORE_ALL_BEANINFO`

  Flag to indicate to ignore all beaninfo.

  `static final int`

  `IGNORE_IMMEDIATE_BEANINFO`

  Flag to indicate to ignore immediate beaninfo.

  `static final int`

  `USE_ALL_BEANINFO`

  Flag to indicate to use of all beaninfo.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static String`

  `decapitalize(String name)`

  Utility method to take a string and convert it to normal Java variable
  name capitalization.

  `static void`

  `flushCaches()`

  Flush all of the Introspector's internal caches.

  `static void`

  `flushFromCaches(Class<?> clz)`

  Flush the Introspector's internal cached information for a given class.

  `static BeanInfo`

  `getBeanInfo(Class<?> beanClass)`

  Introspect on a Java Bean and learn about all its properties, exposed
  methods, and events.

  `static BeanInfo`

  `getBeanInfo(Class<?> beanClass,
  int flags)`

  Introspect on a Java bean and learn about all its properties, exposed
  methods, and events, subject to some control flags.

  `static BeanInfo`

  `getBeanInfo(Class<?> beanClass,
  Class<?> stopClass)`

  Introspect on a Java bean and learn all about its properties, exposed
  methods, below a given "stop" point.

  `static BeanInfo`

  `getBeanInfo(Class<?> beanClass,
  Class<?> stopClass,
  int flags)`

  Introspect on a Java Bean and learn about all its properties,
  exposed methods and events, below a given `stopClass` point
  subject to some control `flags`.

  `static String[]`

  `getBeanInfoSearchPath()`

  Gets the list of package names that will be used for
  finding BeanInfo classes.

  `static void`

  `setBeanInfoSearchPath(String[] path)`

  Change the list of package names that will be used for
  finding BeanInfo classes.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### USE\_ALL\_BEANINFO

    public static final int USE\_ALL\_BEANINFO

    Flag to indicate to use of all beaninfo.

    Since:
    :   1.2

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.beans.Introspector.USE_ALL_BEANINFO)
  + ### IGNORE\_IMMEDIATE\_BEANINFO

    public static final int IGNORE\_IMMEDIATE\_BEANINFO

    Flag to indicate to ignore immediate beaninfo.

    Since:
    :   1.2

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.beans.Introspector.IGNORE_IMMEDIATE_BEANINFO)
  + ### IGNORE\_ALL\_BEANINFO

    public static final int IGNORE\_ALL\_BEANINFO

    Flag to indicate to ignore all beaninfo.

    Since:
    :   1.2

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.beans.Introspector.IGNORE_ALL_BEANINFO)
* ## Method Details

  + ### getBeanInfo

    public static [BeanInfo](BeanInfo.md "interface in java.beans") getBeanInfo([Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> beanClass)
    throws [IntrospectionException](IntrospectionException.md "class in java.beans")

    Introspect on a Java Bean and learn about all its properties, exposed
    methods, and events.

    If the BeanInfo class for a Java Bean has been previously Introspected
    then the BeanInfo class is retrieved from the BeanInfo cache.

    Parameters:
    :   `beanClass` - The bean class to be analyzed.

    Returns:
    :   A BeanInfo object describing the target bean.

    Throws:
    :   `IntrospectionException` - if an exception occurs during
        introspection.

    See Also:
    :   - [`flushCaches()`](#flushCaches())
        - [`flushFromCaches(java.lang.Class<?>)`](#flushFromCaches(java.lang.Class))
  + ### getBeanInfo

    public static [BeanInfo](BeanInfo.md "interface in java.beans") getBeanInfo([Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> beanClass,
    int flags)
    throws [IntrospectionException](IntrospectionException.md "class in java.beans")

    Introspect on a Java bean and learn about all its properties, exposed
    methods, and events, subject to some control flags.

    If the BeanInfo class for a Java Bean has been previously Introspected
    based on the same arguments then the BeanInfo class is retrieved
    from the BeanInfo cache.

    Parameters:
    :   `beanClass` - The bean class to be analyzed.
    :   `flags` - Flags to control the introspection.
        If flags == USE\_ALL\_BEANINFO then we use all of the BeanInfo
        classes we can discover.
        If flags == IGNORE\_IMMEDIATE\_BEANINFO then we ignore any
        BeanInfo associated with the specified beanClass.
        If flags == IGNORE\_ALL\_BEANINFO then we ignore all BeanInfo
        associated with the specified beanClass or any of its
        parent classes.

    Returns:
    :   A BeanInfo object describing the target bean.

    Throws:
    :   `IntrospectionException` - if an exception occurs during
        introspection.

    Since:
    :   1.2
  + ### getBeanInfo

    public static [BeanInfo](BeanInfo.md "interface in java.beans") getBeanInfo([Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> beanClass,
    [Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> stopClass)
    throws [IntrospectionException](IntrospectionException.md "class in java.beans")

    Introspect on a Java bean and learn all about its properties, exposed
    methods, below a given "stop" point.

    If the BeanInfo class for a Java Bean has been previously Introspected
    based on the same arguments, then the BeanInfo class is retrieved
    from the BeanInfo cache.

    Parameters:
    :   `beanClass` - The bean class to be analyzed.
    :   `stopClass` - The baseclass at which to stop the analysis. Any
        methods/properties/events in the stopClass or in its baseclasses
        will be ignored in the analysis.

    Returns:
    :   the BeanInfo for the bean

    Throws:
    :   `IntrospectionException` - if an exception occurs during
        introspection.
  + ### getBeanInfo

    public static [BeanInfo](BeanInfo.md "interface in java.beans") getBeanInfo([Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> beanClass,
    [Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> stopClass,
    int flags)
    throws [IntrospectionException](IntrospectionException.md "class in java.beans")

    Introspect on a Java Bean and learn about all its properties,
    exposed methods and events, below a given `stopClass` point
    subject to some control `flags`.

    USE\_ALL\_BEANINFO
    :   Any BeanInfo that can be discovered will be used.

    IGNORE\_IMMEDIATE\_BEANINFO
    :   Any BeanInfo associated with the specified `beanClass` will be ignored.

    IGNORE\_ALL\_BEANINFO
    :   Any BeanInfo associated with the specified `beanClass`
        or any of its parent classes will be ignored.

    Any methods/properties/events in the `stopClass`
    or in its parent classes will be ignored in the analysis.

    If the BeanInfo class for a Java Bean has been
    previously introspected based on the same arguments then
    the BeanInfo class is retrieved from the BeanInfo cache.

    Parameters:
    :   `beanClass` - the bean class to be analyzed
    :   `stopClass` - the parent class at which to stop the analysis
    :   `flags` - flags to control the introspection

    Returns:
    :   a BeanInfo object describing the target bean

    Throws:
    :   `IntrospectionException` - if an exception occurs during introspection

    Since:
    :   1.7
  + ### decapitalize

    public static [String](../../../java.base/java/lang/String.md "class in java.lang") decapitalize([String](../../../java.base/java/lang/String.md "class in java.lang") name)

    Utility method to take a string and convert it to normal Java variable
    name capitalization. This normally means converting the first
    character from upper case to lower case, but in the (unusual) special
    case when there is more than one character and both the first and
    second characters are upper case, we leave it alone.

    Thus "FooBah" becomes "fooBah" and "X" becomes "x", but "URL" stays
    as "URL".

    Parameters:
    :   `name` - The string to be decapitalized.

    Returns:
    :   The decapitalized version of the string.
  + ### getBeanInfoSearchPath

    public static [String](../../../java.base/java/lang/String.md "class in java.lang")[] getBeanInfoSearchPath()

    Gets the list of package names that will be used for
    finding BeanInfo classes.

    Returns:
    :   The array of package names that will be searched in
        order to find BeanInfo classes. The default value
        for this array is implementation-dependent; e.g.
        Sun implementation initially sets to {"sun.beans.infos"}.
  + ### setBeanInfoSearchPath

    public static void setBeanInfoSearchPath([String](../../../java.base/java/lang/String.md "class in java.lang")[] path)

    Change the list of package names that will be used for
    finding BeanInfo classes. The behaviour of
    this method is undefined if parameter path
    is null.

    First, if there is a security manager, its `checkPropertiesAccess`
    method is called. This could result in a SecurityException.

    Parameters:
    :   `path` - Array of package names.

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkPropertiesAccess` method doesn't allow setting
        of system properties.

    See Also:
    :   - [`SecurityManager.checkPropertiesAccess()`](../../../java.base/java/lang/SecurityManager.md#checkPropertiesAccess())
  + ### flushCaches

    public static void flushCaches()

    Flush all of the Introspector's internal caches. This method is
    not normally required. It is normally only needed by advanced
    tools that update existing "Class" objects in-place and need
    to make the Introspector re-analyze existing Class objects.

    Since:
    :   1.2
  + ### flushFromCaches

    public static void flushFromCaches([Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> clz)

    Flush the Introspector's internal cached information for a given class.
    This method is not normally required. It is normally only needed
    by advanced tools that update existing "Class" objects in-place
    and need to make the Introspector re-analyze an existing Class object.
    Note that only the direct state associated with the target Class
    object is flushed. We do not flush state for other Class objects
    with the same name, nor do we flush state for any related Class
    objects (such as subclasses), even though their state may include
    information indirectly obtained from the target Class object.

    Parameters:
    :   `clz` - Class object to be flushed.

    Throws:
    :   `NullPointerException` - If the Class object is null.

    Since:
    :   1.2