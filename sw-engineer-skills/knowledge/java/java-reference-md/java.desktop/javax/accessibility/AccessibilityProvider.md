Module [java.desktop](../../module-summary.md)

Package [javax.accessibility](package-summary.md)

# Class AccessibilityProvider

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.accessibility.AccessibilityProvider

---

public abstract class AccessibilityProvider
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

Service Provider Interface (SPI) for Assistive Technology.

This service provider class provides mappings from the platform specific
accessibility APIs to the Java Accessibility API.

Each service provider implementation is named and can be activated via the
[`activate()`](#activate()) method. Service providers can be loaded when the default
[`toolkit`](../../java/awt/Toolkit.md "class in java.awt") is initialized.

Since:
:   9

See Also:
:   * [`Toolkit.getDefaultToolkit()`](../../java/awt/Toolkit.md#getDefaultToolkit())
    * [`ServiceLoader`](../../../java.base/java/util/ServiceLoader.md "class in java.util")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AccessibilityProvider()`

  Initializes a new accessibility provider.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract void`

  `activate()`

  Activates the support provided by this service provider.

  `abstract String`

  `getName()`

  Returns the name of this service provider.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AccessibilityProvider

    protected AccessibilityProvider()

    Initializes a new accessibility provider.

    Throws:
    :   `SecurityException` - If a security manager has been installed and it
        denies [`RuntimePermission`](../../../java.base/java/lang/RuntimePermission.md "class in java.lang") `"accessibilityProvider"`
* ## Method Details

  + ### getName

    public abstract [String](../../../java.base/java/lang/String.md "class in java.lang") getName()

    Returns the name of this service provider. This name is used to locate a
    requested service provider.

    Returns:
    :   the name of this service provider
  + ### activate

    public abstract void activate()

    Activates the support provided by this service provider.