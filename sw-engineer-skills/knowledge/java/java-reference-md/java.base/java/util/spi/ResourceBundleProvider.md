Module [java.base](../../../module-summary.md)

Package [java.util.spi](package-summary.md)

# Interface ResourceBundleProvider

All Known Implementing Classes:
:   `AbstractResourceBundleProvider`

---

public interface ResourceBundleProvider

`ResourceBundleProvider` is a service provider interface for
resource bundles. It is used by
[`ResourceBundle.getBundle`](../ResourceBundle.md#getBundle(java.lang.String))
factory methods to locate and load the service providers that are deployed as
modules via [`ServiceLoader`](../ServiceLoader.md "class in java.util").

## Developing resource bundle services

A service for a resource bundle of a given *`baseName`* must have
a fully-qualified class name of the form:
> `<package of baseName> + ".spi." + <simple name of baseName> + "Provider"`

The service type is in a `spi` subpackage as it may be packaged in
a module separate from the resource bundle providers.
For example, the service for a resource bundle named
`com.example.app.MyResources` must be
`com.example.app.spi.MyResourcesProvider`:
> ```
>  package com.example.app.spi;
>  public interface MyResourcesProvider extends ResourceBundleProvider {
>  }
> ```

## Deploying resource bundle service providers

Resource bundles can be deployed in one or more service providers
in modules. For example, a provider for a service
named "`com.example.app.spi.MyResourcesProvider`"
has the following implementation class:
> ```
>  import com.example.app.spi.MyResourcesProvider;
>  class MyResourcesProviderImpl extends AbstractResourceBundleProvider
>      implements MyResourcesProvider
>  {
>      public MyResourcesProviderImpl() {
>          super("java.properties");
>      }
>      // this provider maps the resource bundle to per-language package
>      protected String toBundleName(String baseName, Locale locale) {
>          return "p." + locale.getLanguage() + "." + baseName;
>      }
>
>      public ResourceBundle getBundle(String baseName, Locale locale) {
>          // this module only provides bundles in French
>          if (locale.equals(Locale.FRENCH)) {
>               return super.getBundle(baseName, locale);
>          }
>          // otherwise return null
>          return null;
>      }
>  }
> ```

This example provides "`com.example.app.MyResources`"
resource bundle of the French locale. Traditionally resource bundles of
all locales are packaged in the same package as the resource bundle base name.
When deploying resource bundles in more than one modules and two modules
containing a package of the same name, *split package*,
is not supported, resource bundles in each module can be packaged in
a different package as shown in this example where this provider packages
the resource bundles in per-language package, i.e. `com.example.app.fr`
for French locale.

A provider can provide more than one services, each of which is a service
for a resource bundle of a different base name.

[`AbstractResourceBundleProvider`](AbstractResourceBundleProvider.md "class in java.util.spi")
provides the basic implementation for `ResourceBundleProvider`
and a subclass can override the [`toBundleName`](AbstractResourceBundleProvider.md#toBundleName(java.lang.String,java.util.Locale))
method to return a provider-specific location of the resource to be loaded,
for example, per-language package.
A provider can override [`ResourceBundleProvider.getBundle`](#getBundle(java.lang.String,java.util.Locale))
method for example to only search the known supported locales or
return resource bundles in other formats such as XML.

The module declaration of this provider module specifies the following
directive:

```
     provides com.example.app.spi.MyResourcesProvider with com.example.impl.MyResourcesProviderImpl;
```

## Obtaining resource bundles from providers

The module declaration of the *consumer module* that calls one of the
`ResourceBundle.getBundle` factory methods to obtain a resource
bundle from service providers must specify the following directive:

```
     uses com.example.app.spi.MyResourcesProvider;
```

[`ResourceBundle.getBundle("com.example.app.MyResource", locale)`](../ResourceBundle.md#getBundle(java.lang.String,java.util.Locale))
locates and loads the providers for `com.example.app.spi.MyResourcesProvider`
service and then invokes [`ResourceBundleProvider.getBundle("com.example.app.MyResource", locale)`](#getBundle(java.lang.String,java.util.Locale)) to
find the resource bundle of the given base name and locale.
If the consumer module is a resource bundle service provider for
`com.example.app.spi.MyResourcesProvider`, `ResourceBundle.getBundle`
will locate resource bundles only from service providers.
Otherwise, `ResourceBundle.getBundle` may continue the search of
the resource bundle in other modules and class path per the specification
of the `ResourceBundle.getBundle` method being called.

Since:
:   9

See Also:
:   * [`AbstractResourceBundleProvider`](AbstractResourceBundleProvider.md "class in java.util.spi")
    * [Resource Bundles and Named Modules](../ResourceBundle.md#resource-bundle-modules)
    * [`ServiceLoader`](../ServiceLoader.md "class in java.util")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `ResourceBundle`

  `getBundle(String baseName,
  Locale locale)`

  Returns a `ResourceBundle` for the given bundle name and locale.

* ## Method Details

  + ### getBundle

    [ResourceBundle](../ResourceBundle.md "class in java.util") getBundle([String](../../lang/String.md "class in java.lang") baseName,
    [Locale](../Locale.md "class in java.util") locale)

    Returns a `ResourceBundle` for the given bundle name and locale.
    This method returns `null` if there is no `ResourceBundle`
    found for the given parameters.

    Parameters:
    :   `baseName` - the base bundle name of the resource bundle, a fully
        qualified class name
    :   `locale` - the locale for which the resource bundle should be loaded

    Returns:
    :   the ResourceBundle created for the given parameters, or null if no
        `ResourceBundle` for the given parameters is found