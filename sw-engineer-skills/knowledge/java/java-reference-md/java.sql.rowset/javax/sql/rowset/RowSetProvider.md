Module [java.sql.rowset](../../../module-summary.md)

Package [javax.sql.rowset](package-summary.md)

# Class RowSetProvider

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.sql.rowset.RowSetProvider

---

public class RowSetProvider
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

A factory API that enables applications to obtain a
`RowSetFactory` implementation that can be used to create different
types of `RowSet` implementations.

Example:

```
 RowSetFactory aFactory = RowSetProvider.newFactory();
 CachedRowSet crs = aFactory.createCachedRowSet();
 ...
 RowSetFactory rsf = RowSetProvider.newFactory("com.sun.rowset.RowSetFactoryImpl", null);
 WebRowSet wrs = rsf.createWebRowSet();
```

Tracing of this class may be enabled by setting the System property
`javax.sql.rowset.RowSetFactory.debug` to any value but `false`.

Since:
:   1.7

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `RowSetProvider()`

  RowSetProvider constructor
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static RowSetFactory`

  `newFactory()`

  Creates a new instance of a `RowSetFactory`
  implementation.

  `static RowSetFactory`

  `newFactory(String factoryClassName,
  ClassLoader cl)`

  Creates a new instance of a `RowSetFactory` from the
  specified factory class name.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### RowSetProvider

    protected RowSetProvider()

    RowSetProvider constructor
* ## Method Details

  + ### newFactory

    public static [RowSetFactory](RowSetFactory.md "interface in javax.sql.rowset") newFactory()
    throws [SQLException](../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Creates a new instance of a `RowSetFactory`
    implementation. This method uses the following
    look up order to determine
    the `RowSetFactory` implementation class to load:

    - The System property `javax.sql.rowset.RowSetFactory`. For example:
      * -Djavax.sql.rowset.RowSetFactory=com.sun.rowset.RowSetFactoryImpl- The [`ServiceLoader`](../../../../java.base/java/util/ServiceLoader.md "class in java.util") API. The `ServiceLoader` API will look
        for a class name in the file
        `META-INF/services/javax.sql.rowset.RowSetFactory`
        in jars available to the runtime. For example, to have the RowSetFactory
        implementation `com.sun.rowset.RowSetFactoryImpl`  loaded, the
        entry in `META-INF/services/javax.sql.rowset.RowSetFactory` would be:
        * `com.sun.rowset.RowSetFactoryImpl`
      - Platform default `RowSetFactory` instance.

    Once an application has obtained a reference to a `RowSetFactory`,
    it can use the factory to obtain RowSet instances.

    Returns:
    :   New instance of a `RowSetFactory`

    Throws:
    :   `SQLException` - if the default factory class cannot be loaded,
        instantiated. The cause will be set to actual Exception

    Since:
    :   1.7

    See Also:
    :   - [`ServiceLoader`](../../../../java.base/java/util/ServiceLoader.md "class in java.util")
  + ### newFactory

    public static [RowSetFactory](RowSetFactory.md "interface in javax.sql.rowset") newFactory([String](../../../../java.base/java/lang/String.md "class in java.lang") factoryClassName,
    [ClassLoader](../../../../java.base/java/lang/ClassLoader.md "class in java.lang") cl)
    throws [SQLException](../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Creates a new instance of a `RowSetFactory` from the
    specified factory class name.
    This function is useful when there are multiple providers in the classpath.
    It gives more control to the application as it can specify which provider
    should be loaded.

    Once an application has obtained a reference to a `RowSetFactory`
    it can use the factory to obtain RowSet instances.

    Parameters:
    :   `factoryClassName` - fully qualified factory class name that
        provides an implementation of `javax.sql.rowset.RowSetFactory`.
    :   `cl` - `ClassLoader` used to load the factory
        class. If `null` current `Thread`'s context
        classLoader is used to load the factory class.

    Returns:
    :   New instance of a `RowSetFactory`

    Throws:
    :   `SQLException` - if `factoryClassName` is
        `null`, or the factory class cannot be loaded, instantiated.

    Since:
    :   1.7

    See Also:
    :   - [`newFactory()`](#newFactory())