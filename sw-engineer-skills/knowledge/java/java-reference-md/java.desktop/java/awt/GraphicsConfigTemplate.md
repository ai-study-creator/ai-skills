Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class GraphicsConfigTemplate

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.GraphicsConfigTemplate

All Implemented Interfaces:
:   `Serializable`

---

public abstract class GraphicsConfigTemplate
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

The `GraphicsConfigTemplate` class is used to obtain a valid
[`GraphicsConfiguration`](GraphicsConfiguration.md "class in java.awt"). A user instantiates one of these
objects and then sets all non-default attributes as desired. The
[`GraphicsDevice.getBestConfiguration(java.awt.GraphicsConfigTemplate)`](GraphicsDevice.md#getBestConfiguration(java.awt.GraphicsConfigTemplate)) method found in the
[`GraphicsDevice`](GraphicsDevice.md "class in java.awt") class is then called with this
`GraphicsConfigTemplate`. A valid
`GraphicsConfiguration` is returned that meets or exceeds
what was requested in the `GraphicsConfigTemplate`.

Since:
:   1.2

See Also:
:   * [`GraphicsDevice`](GraphicsDevice.md "class in java.awt")
    * [`GraphicsConfiguration`](GraphicsConfiguration.md "class in java.awt")
    * [Serialized Form](../../../serialized-form.md#java.awt.GraphicsConfigTemplate)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `PREFERRED`

  Value used for "Enum" (Integer) type.

  `static final int`

  `REQUIRED`

  Value used for "Enum" (Integer) type.

  `static final int`

  `UNNECESSARY`

  Value used for "Enum" (Integer) type.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `GraphicsConfigTemplate()`

  This class is an abstract class so only subclasses can be
  instantiated.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract GraphicsConfiguration`

  `getBestConfiguration(GraphicsConfiguration[] gc)`

  Returns the "best" configuration possible that passes the
  criteria defined in the `GraphicsConfigTemplate`.

  `abstract boolean`

  `isGraphicsConfigSupported(GraphicsConfiguration gc)`

  Returns a `boolean` indicating whether or
  not the specified `GraphicsConfiguration` can be
  used to create a drawing surface that supports the indicated
  features.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### REQUIRED

    public static final int REQUIRED

    Value used for "Enum" (Integer) type. States that this
    feature is required for the `GraphicsConfiguration`
    object. If this feature is not available, do not select the
    `GraphicsConfiguration` object.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.GraphicsConfigTemplate.REQUIRED)
  + ### PREFERRED

    public static final int PREFERRED

    Value used for "Enum" (Integer) type. States that this
    feature is desired for the `GraphicsConfiguration`
    object. A selection with this feature is preferred over a
    selection that does not include this feature, although both
    selections can be considered valid matches.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.GraphicsConfigTemplate.PREFERRED)
  + ### UNNECESSARY

    public static final int UNNECESSARY

    Value used for "Enum" (Integer) type. States that this
    feature is not necessary for the selection of the
    `GraphicsConfiguration` object. A selection
    without this feature is preferred over a selection that
    includes this feature since it is not used.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.GraphicsConfigTemplate.UNNECESSARY)
* ## Constructor Details

  + ### GraphicsConfigTemplate

    public GraphicsConfigTemplate()

    This class is an abstract class so only subclasses can be
    instantiated.
* ## Method Details

  + ### getBestConfiguration

    public abstract [GraphicsConfiguration](GraphicsConfiguration.md "class in java.awt") getBestConfiguration([GraphicsConfiguration](GraphicsConfiguration.md "class in java.awt")[] gc)

    Returns the "best" configuration possible that passes the
    criteria defined in the `GraphicsConfigTemplate`.

    Parameters:
    :   `gc` - the array of `GraphicsConfiguration`
        objects to choose from.

    Returns:
    :   a `GraphicsConfiguration` object that is
        the best configuration possible.

    See Also:
    :   - [`GraphicsConfiguration`](GraphicsConfiguration.md "class in java.awt")
  + ### isGraphicsConfigSupported

    public abstract boolean isGraphicsConfigSupported([GraphicsConfiguration](GraphicsConfiguration.md "class in java.awt") gc)

    Returns a `boolean` indicating whether or
    not the specified `GraphicsConfiguration` can be
    used to create a drawing surface that supports the indicated
    features.

    Parameters:
    :   `gc` - the `GraphicsConfiguration` object to test

    Returns:
    :   `true` if this
        `GraphicsConfiguration` object can be used to create
        surfaces that support the indicated features;
        `false` if the `GraphicsConfiguration` can
        not be used to create a drawing surface usable by this Java(tm)
        API.