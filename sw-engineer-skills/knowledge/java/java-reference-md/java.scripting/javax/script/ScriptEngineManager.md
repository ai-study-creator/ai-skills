Module [java.scripting](../../module-summary.md)

Package [javax.script](package-summary.md)

# Class ScriptEngineManager

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.script.ScriptEngineManager

---

public class ScriptEngineManager
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

The `ScriptEngineManager` implements a discovery and instantiation
mechanism for `ScriptEngine` classes and also maintains a
collection of key/value pairs storing state shared by all engines created
by the Manager. This class uses the service provider mechanism described in the
[`ServiceLoader`](../../../java.base/java/util/ServiceLoader.md "class in java.util") class to enumerate all the
implementations of `ScriptEngineFactory`.   
  
The `ScriptEngineManager` provides a method to return a list of all these factories
as well as utility methods which look up factories on the basis of language name, file extension
and mime type.

The `Bindings` of key/value pairs, referred to as the "Global Scope" maintained
by the manager is available to all instances of `ScriptEngine` created
by the `ScriptEngineManager`. The values in the `Bindings` are
generally exposed in all scripts.

Since:
:   1.6

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ScriptEngineManager()`

  The effect of calling this constructor is the same as calling
  `ScriptEngineManager(Thread.currentThread().getContextClassLoader())`.

  `ScriptEngineManager(ClassLoader loader)`

  This constructor loads the implementations of
  `ScriptEngineFactory` visible to the given
  `ClassLoader` using the service provider mechanism.  
    
  If loader is `null`, the script engine factories that are
  bundled with the platform are loaded.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `get(String key)`

  Gets the value for the specified key in the Global Scope

  `Bindings`

  `getBindings()`

  `getBindings` returns the value of the `globalScope` field.

  `ScriptEngine`

  `getEngineByExtension(String extension)`

  Look up and create a `ScriptEngine` for a given extension.

  `ScriptEngine`

  `getEngineByMimeType(String mimeType)`

  Look up and create a `ScriptEngine` for a given mime type.

  `ScriptEngine`

  `getEngineByName(String shortName)`

  Looks up and creates a `ScriptEngine` for a given name.

  `List<ScriptEngineFactory>`

  `getEngineFactories()`

  Returns a list whose elements are instances of all the `ScriptEngineFactory` classes
  found by the discovery mechanism.

  `void`

  `put(String key,
  Object value)`

  Sets the specified key/value pair in the Global Scope.

  `void`

  `registerEngineExtension(String extension,
  ScriptEngineFactory factory)`

  Registers a `ScriptEngineFactory` to handle an extension.

  `void`

  `registerEngineMimeType(String type,
  ScriptEngineFactory factory)`

  Registers a `ScriptEngineFactory` to handle a mime type.

  `void`

  `registerEngineName(String name,
  ScriptEngineFactory factory)`

  Registers a `ScriptEngineFactory` to handle a language
  name.

  `void`

  `setBindings(Bindings bindings)`

  `setBindings` stores the specified `Bindings`
  in the `globalScope` field.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ScriptEngineManager

    public ScriptEngineManager()

    The effect of calling this constructor is the same as calling
    `ScriptEngineManager(Thread.currentThread().getContextClassLoader())`.

    See Also:
    :   - [`Thread.getContextClassLoader()`](../../../java.base/java/lang/Thread.md#getContextClassLoader())
  + ### ScriptEngineManager

    public ScriptEngineManager([ClassLoader](../../../java.base/java/lang/ClassLoader.md "class in java.lang") loader)

    This constructor loads the implementations of
    `ScriptEngineFactory` visible to the given
    `ClassLoader` using the service provider mechanism.  
      
    If loader is `null`, the script engine factories that are
    bundled with the platform are loaded.

    Parameters:
    :   `loader` - ClassLoader used to discover script engine factories.
* ## Method Details

  + ### setBindings

    public void setBindings([Bindings](Bindings.md "interface in javax.script") bindings)

    `setBindings` stores the specified `Bindings`
    in the `globalScope` field. ScriptEngineManager sets this
    `Bindings` as global bindings for `ScriptEngine`
    objects created by it.

    Parameters:
    :   `bindings` - The specified `Bindings`

    Throws:
    :   `IllegalArgumentException` - if bindings is null.
  + ### getBindings

    public [Bindings](Bindings.md "interface in javax.script") getBindings()

    `getBindings` returns the value of the `globalScope` field.
    ScriptEngineManager sets this `Bindings` as global bindings for
    `ScriptEngine` objects created by it.

    Returns:
    :   The globalScope field.
  + ### put

    public void put([String](../../../java.base/java/lang/String.md "class in java.lang") key,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") value)

    Sets the specified key/value pair in the Global Scope.

    Parameters:
    :   `key` - Key to set
    :   `value` - Value to set.

    Throws:
    :   `NullPointerException` - if key is null.
    :   `IllegalArgumentException` - if key is empty string.
  + ### get

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") get([String](../../../java.base/java/lang/String.md "class in java.lang") key)

    Gets the value for the specified key in the Global Scope

    Parameters:
    :   `key` - The key whose value is to be returned.

    Returns:
    :   The value for the specified key.
  + ### getEngineByName

    public [ScriptEngine](ScriptEngine.md "interface in javax.script") getEngineByName([String](../../../java.base/java/lang/String.md "class in java.lang") shortName)

    Looks up and creates a `ScriptEngine` for a given name.
    The algorithm first searches for a `ScriptEngineFactory` that has been
    registered as a handler for the specified name using the `registerEngineName`
    method.
      
      
     If one is not found, it searches the set of `ScriptEngineFactory` instances
    stored by the constructor for one with the specified name. If a `ScriptEngineFactory`
    is found by either method, it is used to create instance of `ScriptEngine`.

    Parameters:
    :   `shortName` - The short name of the `ScriptEngine` implementation.
        returned by the `getNames` method of its `ScriptEngineFactory`.

    Returns:
    :   A `ScriptEngine` created by the factory located in the search. Returns null
        if no such factory was found. The `ScriptEngineManager` sets its own `globalScope`
        `Bindings` as the `GLOBAL_SCOPE` `Bindings` of the newly
        created `ScriptEngine`.

    Throws:
    :   `NullPointerException` - if shortName is null.
  + ### getEngineByExtension

    public [ScriptEngine](ScriptEngine.md "interface in javax.script") getEngineByExtension([String](../../../java.base/java/lang/String.md "class in java.lang") extension)

    Look up and create a `ScriptEngine` for a given extension. The algorithm
    used by `getEngineByName` is used except that the search starts
    by looking for a `ScriptEngineFactory` registered to handle the
    given extension using `registerEngineExtension`.

    Parameters:
    :   `extension` - The given extension

    Returns:
    :   The engine to handle scripts with this extension. Returns `null`
        if not found.

    Throws:
    :   `NullPointerException` - if extension is null.
  + ### getEngineByMimeType

    public [ScriptEngine](ScriptEngine.md "interface in javax.script") getEngineByMimeType([String](../../../java.base/java/lang/String.md "class in java.lang") mimeType)

    Look up and create a `ScriptEngine` for a given mime type. The algorithm
    used by `getEngineByName` is used except that the search starts
    by looking for a `ScriptEngineFactory` registered to handle the
    given mime type using `registerEngineMimeType`.

    Parameters:
    :   `mimeType` - The given mime type

    Returns:
    :   The engine to handle scripts with this mime type. Returns `null`
        if not found.

    Throws:
    :   `NullPointerException` - if mimeType is null.
  + ### getEngineFactories

    public [List](../../../java.base/java/util/List.md "interface in java.util")<[ScriptEngineFactory](ScriptEngineFactory.md "interface in javax.script")> getEngineFactories()

    Returns a list whose elements are instances of all the `ScriptEngineFactory` classes
    found by the discovery mechanism.

    Returns:
    :   List of all discovered `ScriptEngineFactory`s.
  + ### registerEngineName

    public void registerEngineName([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [ScriptEngineFactory](ScriptEngineFactory.md "interface in javax.script") factory)

    Registers a `ScriptEngineFactory` to handle a language
    name. Overrides any such association found using the Discovery mechanism.

    Parameters:
    :   `name` - The name to be associated with the `ScriptEngineFactory`.
    :   `factory` - The class to associate with the given name.

    Throws:
    :   `NullPointerException` - if any of the parameters is null.
  + ### registerEngineMimeType

    public void registerEngineMimeType([String](../../../java.base/java/lang/String.md "class in java.lang") type,
    [ScriptEngineFactory](ScriptEngineFactory.md "interface in javax.script") factory)

    Registers a `ScriptEngineFactory` to handle a mime type.
    Overrides any such association found using the Discovery mechanism.

    Parameters:
    :   `type` - The mime type to be associated with the
        `ScriptEngineFactory`.
    :   `factory` - The class to associate with the given mime type.

    Throws:
    :   `NullPointerException` - if any of the parameters is null.
  + ### registerEngineExtension

    public void registerEngineExtension([String](../../../java.base/java/lang/String.md "class in java.lang") extension,
    [ScriptEngineFactory](ScriptEngineFactory.md "interface in javax.script") factory)

    Registers a `ScriptEngineFactory` to handle an extension.
    Overrides any such association found using the Discovery mechanism.

    Parameters:
    :   `extension` - The extension type to be associated with the
        `ScriptEngineFactory`.
    :   `factory` - The class to associate with the given extension.

    Throws:
    :   `NullPointerException` - if any of the parameters is null.