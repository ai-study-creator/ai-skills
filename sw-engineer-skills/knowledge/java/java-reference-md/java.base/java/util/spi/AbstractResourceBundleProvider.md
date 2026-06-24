Module [java.base](../../../module-summary.md)

Package [java.util.spi](package-summary.md)

# Class AbstractResourceBundleProvider

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.util.spi.AbstractResourceBundleProvider

All Implemented Interfaces:
:   `ResourceBundleProvider`

---

public abstract class AbstractResourceBundleProvider
extends [Object](../../lang/Object.md "class in java.lang")
implements [ResourceBundleProvider](ResourceBundleProvider.md "interface in java.util.spi")

`AbstractResourceBundleProvider` is an abstract class that provides
the basic support for a provider implementation class for
[`ResourceBundleProvider`](ResourceBundleProvider.md "interface in java.util.spi").

Resource bundles can be packaged in one or more
named modules, *service provider modules*. The *consumer* of the
resource bundle is the one calling [`ResourceBundle.getBundle(String)`](../ResourceBundle.md#getBundle(java.lang.String)).
In order for the consumer module to load a resource bundle
"`com.example.app.MyResources`" provided by another module,
it will use the [service loader](../ServiceLoader.md "class in java.util")
mechanism. A service interface named "`com.example.app.spi.MyResourcesProvider`"
must be defined and a *service provider module* will provide an
implementation class of "`com.example.app.spi.MyResourcesProvider`"
as follows:
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

Refer to [`ResourceBundleProvider`](ResourceBundleProvider.md "interface in java.util.spi") for details.

Since:
:   9

See Also:
:   * [Resource Bundles and Named Modules](../ResourceBundle.md#resource-bundle-modules)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AbstractResourceBundleProvider()`

  Constructs an `AbstractResourceBundleProvider` with the
  "java.properties" format.

  `protected`

  `AbstractResourceBundleProvider(String... formats)`

  Constructs an `AbstractResourceBundleProvider` with the specified
  `formats`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `ResourceBundle`

  `getBundle(String baseName,
  Locale locale)`

  Returns a `ResourceBundle` for the given `baseName` and
  `locale`.

  `protected String`

  `toBundleName(String baseName,
  Locale locale)`

  Returns the bundle name for the given `baseName` and `locale` that this provider provides.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AbstractResourceBundleProvider

    protected AbstractResourceBundleProvider()

    Constructs an `AbstractResourceBundleProvider` with the
    "java.properties" format. This constructor is equivalent to
    `AbstractResourceBundleProvider("java.properties")`.
  + ### AbstractResourceBundleProvider

    protected AbstractResourceBundleProvider([String](../../lang/String.md "class in java.lang")... formats)

    Constructs an `AbstractResourceBundleProvider` with the specified
    `formats`. The [`getBundle(String, Locale)`](#getBundle(java.lang.String,java.util.Locale)) method looks up
    resource bundles for the given `formats`. `formats` must
    be "java.class" or "java.properties".

    Parameters:
    :   `formats` - the formats to be used for loading resource bundles

    Throws:
    :   `NullPointerException` - if the given `formats` is null
    :   `IllegalArgumentException` - if the given `formats` is not
        "java.class" or "java.properties".
* ## Method Details

  + ### toBundleName

    protected [String](../../lang/String.md "class in java.lang") toBundleName([String](../../lang/String.md "class in java.lang") baseName,
    [Locale](../Locale.md "class in java.util") locale)

    Returns the bundle name for the given `baseName` and `locale` that this provider provides.

    Parameters:
    :   `baseName` - the base name of the resource bundle, a fully qualified
        class name
    :   `locale` - the locale for which a resource bundle should be loaded

    Returns:
    :   the bundle name for the resource bundle
  + ### getBundle

    public [ResourceBundle](../ResourceBundle.md "class in java.util") getBundle([String](../../lang/String.md "class in java.lang") baseName,
    [Locale](../Locale.md "class in java.util") locale)

    Returns a `ResourceBundle` for the given `baseName` and
    `locale`.

    Specified by:
    :   `getBundle` in interface `ResourceBundleProvider`

    Parameters:
    :   `baseName` - the base bundle name of the resource bundle, a fully
        qualified class name.
    :   `locale` - the locale for which the resource bundle should be instantiated

    Returns:
    :   `ResourceBundle` of the given `baseName` and
        `locale`, or `null` if no resource bundle is found

    Throws:
    :   `NullPointerException` - if `baseName` or `locale` is
        `null`
    :   `UncheckedIOException` - if any IO exception occurred during resource
        bundle loading