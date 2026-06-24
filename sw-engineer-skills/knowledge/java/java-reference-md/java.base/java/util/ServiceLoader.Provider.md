Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Interface ServiceLoader.Provider<S>

Type Parameters:
:   `S` - The service type

All Superinterfaces:
:   `Supplier<S>`

Enclosing class:
:   `ServiceLoader<S>`

---

public static interface ServiceLoader.Provider<S>
extends [Supplier](function/Supplier.md "interface in java.util.function")<S>

Represents a service provider located by `ServiceLoader`.

When using a loader's [`stream()`](ServiceLoader.md#stream()) method
then the elements are of type `Provider`. This allows processing
to select or filter on the provider class without instantiating the
provider.

Since:
:   9

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `S`

  `get()`

  Returns an instance of the provider.

  `Class<? extends S>`

  `type()`

  Returns the provider type.

* ## Method Details

  + ### type

    [Class](../lang/Class.md "class in java.lang")<? extends [S](ServiceLoader.Provider.md "type parameter in ServiceLoader.Provider")> type()

    Returns the provider type. There is no guarantee that this type is
    accessible or that it has a public no-args constructor. The [`get()`](#get()) method should be used to obtain the provider instance.

    When a module declares that the provider class is created by a
    provider factory then this method returns the return type of its
    public static "`provider()`" method.

    Returns:
    :   The provider type
  + ### get

    [S](ServiceLoader.Provider.md "type parameter in ServiceLoader.Provider") get()

    Returns an instance of the provider.

    Specified by:
    :   `get` in interface `Supplier<S>`

    Returns:
    :   An instance of the provider.

    Throws:
    :   `ServiceConfigurationError` - If the service provider cannot be instantiated, or in the
        case of a provider factory, the public static
        "`provider()`" method returns `null` or throws
        an error or exception. The `ServiceConfigurationError`
        will carry an appropriate cause where possible.