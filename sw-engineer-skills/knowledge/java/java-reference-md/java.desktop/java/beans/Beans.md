Module [java.desktop](../../module-summary.md)

Package [java.beans](package-summary.md)

# Class Beans

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.beans.Beans

---

public class Beans
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

This class provides some general purpose beans control methods.

Since:
:   1.1

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Beans()`

  Constructs a `Beans`.
* ## Method Summary

  All MethodsStatic MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `static Object`

  `getInstanceOf(Object bean,
  Class<?> targetType)`

  From a given bean, obtain an object representing a specified
  type view of that source object.

  `static Object`

  `instantiate(ClassLoader cls,
  String beanName)`

  Instantiate a JavaBean.

  `static Object`

  `instantiate(ClassLoader cls,
  String beanName,
  BeanContext beanContext)`

  Instantiate a JavaBean.

  `static Object`

  `instantiate(ClassLoader cls,
  String beanName,
  BeanContext beanContext,
  AppletInitializer initializer)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  It is recommended to use
  [`instantiate(ClassLoader, String, BeanContext)`](#instantiate(java.lang.ClassLoader,java.lang.String,java.beans.beancontext.BeanContext)),
  because the Applet API is deprecated.

  `static boolean`

  `isDesignTime()`

  Test if we are in design-mode.

  `static boolean`

  `isGuiAvailable()`

  Determines whether beans can assume a GUI is available.

  `static boolean`

  `isInstanceOf(Object bean,
  Class<?> targetType)`

  Check if a bean can be viewed as a given target type.

  `static void`

  `setDesignTime(boolean isDesignTime)`

  Used to indicate whether of not we are running in an application
  builder environment.

  `static void`

  `setGuiAvailable(boolean isGuiAvailable)`

  Used to indicate whether of not we are running in an environment
  where GUI interaction is available.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### Beans

    public Beans()

    Constructs a `Beans`.
* ## Method Details

  + ### instantiate

    public static [Object](../../../java.base/java/lang/Object.md "class in java.lang") instantiate([ClassLoader](../../../java.base/java/lang/ClassLoader.md "class in java.lang") cls,
    [String](../../../java.base/java/lang/String.md "class in java.lang") beanName)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io"),
    [ClassNotFoundException](../../../java.base/java/lang/ClassNotFoundException.md "class in java.lang")

    Instantiate a JavaBean.

    Parameters:
    :   `cls` - the class-loader from which we should create
        the bean. If this is null, then the system
        class-loader is used.
    :   `beanName` - the name of the bean within the class-loader.
        For example "sun.beanbox.foobah"

    Returns:
    :   a JavaBean

    Throws:
    :   `ClassNotFoundException` - if the class of a serialized
        object could not be found.
    :   `IOException` - if an I/O error occurs.
  + ### instantiate

    public static [Object](../../../java.base/java/lang/Object.md "class in java.lang") instantiate([ClassLoader](../../../java.base/java/lang/ClassLoader.md "class in java.lang") cls,
    [String](../../../java.base/java/lang/String.md "class in java.lang") beanName,
    [BeanContext](beancontext/BeanContext.md "interface in java.beans.beancontext") beanContext)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io"),
    [ClassNotFoundException](../../../java.base/java/lang/ClassNotFoundException.md "class in java.lang")

    Instantiate a JavaBean.

    Parameters:
    :   `cls` - the class-loader from which we should create
        the bean. If this is null, then the system
        class-loader is used.
    :   `beanName` - the name of the bean within the class-loader.
        For example "sun.beanbox.foobah"
    :   `beanContext` - The BeanContext in which to nest the new bean

    Returns:
    :   a JavaBean

    Throws:
    :   `ClassNotFoundException` - if the class of a serialized
        object could not be found.
    :   `IOException` - if an I/O error occurs.

    Since:
    :   1.2
  + ### instantiate

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java.base/java/lang/Deprecated.md#since())="9",
    [forRemoval](../../../java.base/java/lang/Deprecated.md#forRemoval())=true)
    public static [Object](../../../java.base/java/lang/Object.md "class in java.lang") instantiate([ClassLoader](../../../java.base/java/lang/ClassLoader.md "class in java.lang") cls,
    [String](../../../java.base/java/lang/String.md "class in java.lang") beanName,
    [BeanContext](beancontext/BeanContext.md "interface in java.beans.beancontext") beanContext,
    [AppletInitializer](AppletInitializer.md "interface in java.beans") initializer)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io"),
    [ClassNotFoundException](../../../java.base/java/lang/ClassNotFoundException.md "class in java.lang")

    Deprecated, for removal: This API element is subject to removal in a future version.

    It is recommended to use
    [`instantiate(ClassLoader, String, BeanContext)`](#instantiate(java.lang.ClassLoader,java.lang.String,java.beans.beancontext.BeanContext)),
    because the Applet API is deprecated. See the
     [java.applet package
    documentation](../../java/applet/package-summary.md) for further information.

    Instantiate a bean.

    The bean is created based on a name relative to a class-loader.
    This name should be a dot-separated name such as "a.b.c".

    In Beans 1.0 the given name can indicate either a serialized object
    or a class. Other mechanisms may be added in the future. In
    beans 1.0 we first try to treat the beanName as a serialized object
    name then as a class name.

    When using the beanName as a serialized object name we convert the
    given beanName to a resource pathname and add a trailing ".ser" suffix.
    We then try to load a serialized object from that resource.

    For example, given a beanName of "x.y", Beans.instantiate would first
    try to read a serialized object from the resource "x/y.ser" and if
    that failed it would try to load the class "x.y" and create an
    instance of that class.

    If the bean is a subtype of java.applet.Applet, then it is given
    some special initialization. First, it is supplied with a default
    AppletStub and AppletContext. Second, if it was instantiated from
    a classname the applet's "init" method is called. (If the bean was
    deserialized this step is skipped.)

    Note that for beans which are applets, it is the caller's responsibility
    to call "start" on the applet. For correct behaviour, this should be done
    after the applet has been added into a visible AWT container.

    Note that applets created via beans.instantiate run in a slightly
    different environment than applets running inside browsers. In
    particular, bean applets have no access to "parameters", so they may
    wish to provide property get/set methods to set parameter values. We
    advise bean-applet developers to test their bean-applets against both
    the JDK appletviewer (for a reference browser environment) and the
    BDK BeanBox (for a reference bean container).

    Parameters:
    :   `cls` - the class-loader from which we should create
        the bean. If this is null, then the system
        class-loader is used.
    :   `beanName` - the name of the bean within the class-loader.
        For example "sun.beanbox.foobah"
    :   `beanContext` - The BeanContext in which to nest the new bean
    :   `initializer` - The AppletInitializer for the new bean

    Returns:
    :   a JavaBean

    Throws:
    :   `ClassNotFoundException` - if the class of a serialized
        object could not be found.
    :   `IOException` - if an I/O error occurs.

    Since:
    :   1.2
  + ### getInstanceOf

    public static [Object](../../../java.base/java/lang/Object.md "class in java.lang") getInstanceOf([Object](../../../java.base/java/lang/Object.md "class in java.lang") bean,
    [Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> targetType)

    From a given bean, obtain an object representing a specified
    type view of that source object.

    The result may be the same object or a different object. If
    the requested target view isn't available then the given
    bean is returned.

    This method is provided in Beans 1.0 as a hook to allow the
    addition of more flexible bean behaviour in the future.

    Parameters:
    :   `bean` - Object from which we want to obtain a view.
    :   `targetType` - The type of view we'd like to get.

    Returns:
    :   an object representing a specified type view of the
        source object
  + ### isInstanceOf

    public static boolean isInstanceOf([Object](../../../java.base/java/lang/Object.md "class in java.lang") bean,
    [Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> targetType)

    Check if a bean can be viewed as a given target type.
    The result will be true if the Beans.getInstanceof method
    can be used on the given bean to obtain an object that
    represents the specified targetType type view.

    Parameters:
    :   `bean` - Bean from which we want to obtain a view.
    :   `targetType` - The type of view we'd like to get.

    Returns:
    :   "true" if the given bean supports the given targetType.
  + ### isDesignTime

    public static boolean isDesignTime()

    Test if we are in design-mode.

    Returns:
    :   True if we are running in an application construction
        environment.

    See Also:
    :   - [`DesignMode`](DesignMode.md "interface in java.beans")
  + ### isGuiAvailable

    public static boolean isGuiAvailable()

    Determines whether beans can assume a GUI is available.

    Returns:
    :   True if we are running in an environment where beans
        can assume that an interactive GUI is available, so they
        can pop up dialog boxes, etc. This will normally return
        true in a windowing environment, and will normally return
        false in a server environment or if an application is
        running as part of a batch job.

    See Also:
    :   - [`Visibility`](Visibility.md "interface in java.beans")
  + ### setDesignTime

    public static void setDesignTime(boolean isDesignTime)
    throws [SecurityException](../../../java.base/java/lang/SecurityException.md "class in java.lang")

    Used to indicate whether of not we are running in an application
    builder environment.

    Note that this method is security checked
    and is not available to (for example) untrusted applets.
    More specifically, if there is a security manager,
    its `checkPropertiesAccess`
    method is called. This could result in a SecurityException.

    Parameters:
    :   `isDesignTime` - True if we're in an application builder tool.

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkPropertiesAccess` method doesn't allow setting
        of system properties.

    See Also:
    :   - [`SecurityManager.checkPropertiesAccess()`](../../../java.base/java/lang/SecurityManager.md#checkPropertiesAccess())
  + ### setGuiAvailable

    public static void setGuiAvailable(boolean isGuiAvailable)
    throws [SecurityException](../../../java.base/java/lang/SecurityException.md "class in java.lang")

    Used to indicate whether of not we are running in an environment
    where GUI interaction is available.

    Note that this method is security checked
    and is not available to (for example) untrusted applets.
    More specifically, if there is a security manager,
    its `checkPropertiesAccess`
    method is called. This could result in a SecurityException.

    Parameters:
    :   `isGuiAvailable` - True if GUI interaction is available.

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkPropertiesAccess` method doesn't allow setting
        of system properties.

    See Also:
    :   - [`SecurityManager.checkPropertiesAccess()`](../../../java.base/java/lang/SecurityManager.md#checkPropertiesAccess())