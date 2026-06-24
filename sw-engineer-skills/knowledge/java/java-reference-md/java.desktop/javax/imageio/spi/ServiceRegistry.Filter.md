Module [java.desktop](../../../module-summary.md)

Package [javax.imageio.spi](package-summary.md)

# Interface ServiceRegistry.Filter

Enclosing class:
:   `ServiceRegistry`

---

public static interface ServiceRegistry.Filter

A simple filter interface used by
`ServiceRegistry.getServiceProviders` to select
providers matching an arbitrary criterion. Classes that
implement this interface should be defined in order to make use
of the `getServiceProviders` method of
`ServiceRegistry` that takes a `Filter`.

See Also:
:   * [`ServiceRegistry.getServiceProviders(Class, ServiceRegistry.Filter, boolean)`](ServiceRegistry.md#getServiceProviders(java.lang.Class,javax.imageio.spi.ServiceRegistry.Filter,boolean))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `filter(Object provider)`

  Returns `true` if the given
  `provider` object matches the criterion defined
  by this `Filter`.

* ## Method Details

  + ### filter

    boolean filter([Object](../../../../java.base/java/lang/Object.md "class in java.lang") provider)

    Returns `true` if the given
    `provider` object matches the criterion defined
    by this `Filter`.

    Parameters:
    :   `provider` - a service provider `Object`.

    Returns:
    :   true if the provider matches the criterion.