Module [java.scripting](../../module-summary.md)

Package [javax.script](package-summary.md)

# Class AbstractScriptEngine

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.script.AbstractScriptEngine

All Implemented Interfaces:
:   `ScriptEngine`

---

public abstract class AbstractScriptEngine
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [ScriptEngine](ScriptEngine.md "interface in javax.script")

Provides a standard implementation for several of the variants of the `eval`
method.
  
  
`eval(Reader)`

`eval(String)`

`eval(String, Bindings)`

`eval(Reader, Bindings)`
  
  
 are implemented using the abstract methods
  
  
`eval(Reader,ScriptContext)` or
`eval(String, ScriptContext)`
  
  
with a `SimpleScriptContext`.
  
  
A `SimpleScriptContext` is used as the default `ScriptContext`
of the `AbstractScriptEngine`..

Since:
:   1.6

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected ScriptContext`

  `context`

  The default `ScriptContext` of this `AbstractScriptEngine`.

  ### Fields inherited from interface javax.script.[ScriptEngine](ScriptEngine.md "interface in javax.script")

  `ARGV, ENGINE, ENGINE_VERSION, FILENAME, LANGUAGE, LANGUAGE_VERSION, NAME`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AbstractScriptEngine()`

  Creates a new instance of AbstractScriptEngine using a `SimpleScriptContext`
  as its default `ScriptContext`.

  `AbstractScriptEngine(Bindings n)`

  Creates a new instance using the specified `Bindings` as the
  `ENGINE_SCOPE` `Bindings` in the protected `context` field.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `eval(Reader reader)`

  `eval(Reader)` calls the abstract
  `eval(Reader, ScriptContext)` passing the value of the `context`
  field.

  `Object`

  `eval(Reader reader,
  Bindings bindings)`

  `eval(Reader, Bindings)` calls the abstract
  `eval(Reader, ScriptContext)` method, passing it a `ScriptContext`
  whose Reader, Writers and Bindings for scopes other that `ENGINE_SCOPE`
  are identical to those members of the protected `context` field.

  `Object`

  `eval(String script)`

  Same as `eval(Reader)` except that the abstract
  `eval(String, ScriptContext)` is used.

  `Object`

  `eval(String script,
  Bindings bindings)`

  Same as `eval(Reader, Bindings)` except that the abstract
  `eval(String, ScriptContext)` is used.

  `Object`

  `get(String key)`

  Gets the value for the specified key in the `ENGINE_SCOPE` of the
  protected `context` field.

  `Bindings`

  `getBindings(int scope)`

  Returns the `Bindings` with the specified scope value in
  the protected `context` field.

  `ScriptContext`

  `getContext()`

  Returns the value of the protected `context` field.

  `protected ScriptContext`

  `getScriptContext(Bindings nn)`

  Returns a `SimpleScriptContext`.

  `void`

  `put(String key,
  Object value)`

  Sets the specified value with the specified key in the `ENGINE_SCOPE`
  `Bindings` of the protected `context` field.

  `void`

  `setBindings(Bindings bindings,
  int scope)`

  Sets the `Bindings` with the corresponding scope value in the
  `context` field.

  `void`

  `setContext(ScriptContext ctxt)`

  Sets the value of the protected `context` field to the specified
  `ScriptContext`.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.script.[ScriptEngine](ScriptEngine.md "interface in javax.script")

  `createBindings, eval, eval, getFactory`

* ## Field Details

  + ### context

    protected [ScriptContext](ScriptContext.md "interface in javax.script") context

    The default `ScriptContext` of this `AbstractScriptEngine`.
* ## Constructor Details

  + ### AbstractScriptEngine

    public AbstractScriptEngine()

    Creates a new instance of AbstractScriptEngine using a `SimpleScriptContext`
    as its default `ScriptContext`.
  + ### AbstractScriptEngine

    public AbstractScriptEngine([Bindings](Bindings.md "interface in javax.script") n)

    Creates a new instance using the specified `Bindings` as the
    `ENGINE_SCOPE` `Bindings` in the protected `context` field.

    Parameters:
    :   `n` - The specified `Bindings`.

    Throws:
    :   `NullPointerException` - if n is null.
* ## Method Details

  + ### setContext

    public void setContext([ScriptContext](ScriptContext.md "interface in javax.script") ctxt)

    Sets the value of the protected `context` field to the specified
    `ScriptContext`.

    Specified by:
    :   `setContext` in interface `ScriptEngine`

    Parameters:
    :   `ctxt` - The specified `ScriptContext`.

    Throws:
    :   `NullPointerException` - if ctxt is null.
  + ### getContext

    public [ScriptContext](ScriptContext.md "interface in javax.script") getContext()

    Returns the value of the protected `context` field.

    Specified by:
    :   `getContext` in interface `ScriptEngine`

    Returns:
    :   The value of the protected `context` field.
  + ### getBindings

    public [Bindings](Bindings.md "interface in javax.script") getBindings(int scope)

    Returns the `Bindings` with the specified scope value in
    the protected `context` field.

    Specified by:
    :   `getBindings` in interface `ScriptEngine`

    Parameters:
    :   `scope` - The specified scope

    Returns:
    :   The corresponding `Bindings`.

    Throws:
    :   `IllegalArgumentException` - if the value of scope is
        invalid for the type the protected `context` field.
  + ### setBindings

    public void setBindings([Bindings](Bindings.md "interface in javax.script") bindings,
    int scope)

    Sets the `Bindings` with the corresponding scope value in the
    `context` field.

    Specified by:
    :   `setBindings` in interface `ScriptEngine`

    Parameters:
    :   `bindings` - The specified `Bindings`.
    :   `scope` - The specified scope.

    Throws:
    :   `IllegalArgumentException` - if the value of scope is
        invalid for the type the `context` field.
    :   `NullPointerException` - if the bindings is null and the scope is
        `ScriptContext.ENGINE_SCOPE`
  + ### put

    public void put([String](../../../java.base/java/lang/String.md "class in java.lang") key,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") value)

    Sets the specified value with the specified key in the `ENGINE_SCOPE`
    `Bindings` of the protected `context` field.

    Specified by:
    :   `put` in interface `ScriptEngine`

    Parameters:
    :   `key` - The specified key.
    :   `value` - The specified value.

    Throws:
    :   `NullPointerException` - if key is null.
    :   `IllegalArgumentException` - if key is empty.
  + ### get

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") get([String](../../../java.base/java/lang/String.md "class in java.lang") key)

    Gets the value for the specified key in the `ENGINE_SCOPE` of the
    protected `context` field.

    Specified by:
    :   `get` in interface `ScriptEngine`

    Parameters:
    :   `key` - The key whose value is to be returned

    Returns:
    :   The value for the specified key.

    Throws:
    :   `NullPointerException` - if key is null.
    :   `IllegalArgumentException` - if key is empty.
  + ### eval

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") eval([Reader](../../../java.base/java/io/Reader.md "class in java.io") reader,
    [Bindings](Bindings.md "interface in javax.script") bindings)
    throws [ScriptException](ScriptException.md "class in javax.script")

    `eval(Reader, Bindings)` calls the abstract
    `eval(Reader, ScriptContext)` method, passing it a `ScriptContext`
    whose Reader, Writers and Bindings for scopes other that `ENGINE_SCOPE`
    are identical to those members of the protected `context` field. The specified
    `Bindings` is used instead of the `ENGINE_SCOPE`
    `Bindings` of the `context` field.

    Specified by:
    :   `eval` in interface `ScriptEngine`

    Parameters:
    :   `reader` - A `Reader` containing the source of the script.
    :   `bindings` - A `Bindings` to use for the `ENGINE_SCOPE`
        while the script executes.

    Returns:
    :   The return value from `eval(Reader, ScriptContext)`

    Throws:
    :   `ScriptException` - if an error occurs in script.
    :   `NullPointerException` - if any of the parameters is null.
  + ### eval

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") eval([String](../../../java.base/java/lang/String.md "class in java.lang") script,
    [Bindings](Bindings.md "interface in javax.script") bindings)
    throws [ScriptException](ScriptException.md "class in javax.script")

    Same as `eval(Reader, Bindings)` except that the abstract
    `eval(String, ScriptContext)` is used.

    Specified by:
    :   `eval` in interface `ScriptEngine`

    Parameters:
    :   `script` - A `String` containing the source of the script.
    :   `bindings` - A `Bindings` to use as the `ENGINE_SCOPE`
        while the script executes.

    Returns:
    :   The return value from `eval(String, ScriptContext)`

    Throws:
    :   `ScriptException` - if an error occurs in script.
    :   `NullPointerException` - if any of the parameters is null.
  + ### eval

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") eval([Reader](../../../java.base/java/io/Reader.md "class in java.io") reader)
    throws [ScriptException](ScriptException.md "class in javax.script")

    `eval(Reader)` calls the abstract
    `eval(Reader, ScriptContext)` passing the value of the `context`
    field.

    Specified by:
    :   `eval` in interface `ScriptEngine`

    Parameters:
    :   `reader` - A `Reader` containing the source of the script.

    Returns:
    :   The return value from `eval(Reader, ScriptContext)`

    Throws:
    :   `ScriptException` - if an error occurs in script.
    :   `NullPointerException` - if any of the parameters is null.
  + ### eval

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") eval([String](../../../java.base/java/lang/String.md "class in java.lang") script)
    throws [ScriptException](ScriptException.md "class in javax.script")

    Same as `eval(Reader)` except that the abstract
    `eval(String, ScriptContext)` is used.

    Specified by:
    :   `eval` in interface `ScriptEngine`

    Parameters:
    :   `script` - A `String` containing the source of the script.

    Returns:
    :   The return value from `eval(String, ScriptContext)`

    Throws:
    :   `ScriptException` - if an error occurs in script.
    :   `NullPointerException` - if any of the parameters is null.
  + ### getScriptContext

    protected [ScriptContext](ScriptContext.md "interface in javax.script") getScriptContext([Bindings](Bindings.md "interface in javax.script") nn)

    Returns a `SimpleScriptContext`. The `SimpleScriptContext`:
      
      
    - Uses the specified `Bindings` for its `ENGINE_SCOPE`
    - Uses the `Bindings` returned by the abstract `getGlobalScope`
      method as its `GLOBAL_SCOPE`
    - Uses the Reader and Writer in the default `ScriptContext` of this
      `ScriptEngine`  
      
    A `SimpleScriptContext` returned by this method is used to implement eval methods
    using the abstract `eval(Reader,Bindings)` and `eval(String,Bindings)`
    versions.

    Parameters:
    :   `nn` - Bindings to use for the `ENGINE_SCOPE`

    Returns:
    :   The `SimpleScriptContext`