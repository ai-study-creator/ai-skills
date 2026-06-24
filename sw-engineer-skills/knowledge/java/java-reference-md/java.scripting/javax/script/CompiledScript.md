Module [java.scripting](../../module-summary.md)

Package [javax.script](package-summary.md)

# Class CompiledScript

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.script.CompiledScript

---

public abstract class CompiledScript
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

Extended by classes that store results of compilations. State
might be stored in the form of Java classes, Java class files or scripting
language opcodes. The script may be executed repeatedly
without reparsing.
  
  
Each `CompiledScript` is associated with a `ScriptEngine` -- A call to an `eval`
method of the `CompiledScript` causes the execution of the script by the
`ScriptEngine`. Changes in the state of the `ScriptEngine` caused by execution
of the `CompiledScript` may visible during subsequent executions of scripts by the engine.

Since:
:   1.6

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CompiledScript()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `eval()`

  Executes the program stored in the `CompiledScript` object.

  `Object`

  `eval(Bindings bindings)`

  Executes the program stored in the `CompiledScript` object using
  the supplied `Bindings` of attributes as the `ENGINE_SCOPE` of the
  associated `ScriptEngine` during script execution.

  `abstract Object`

  `eval(ScriptContext context)`

  Executes the program stored in this `CompiledScript` object.

  `abstract ScriptEngine`

  `getEngine()`

  Returns the `ScriptEngine` whose `compile` method created this `CompiledScript`.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### CompiledScript

    public CompiledScript()

    Constructor for subclasses to call.
* ## Method Details

  + ### eval

    public abstract [Object](../../../java.base/java/lang/Object.md "class in java.lang") eval([ScriptContext](ScriptContext.md "interface in javax.script") context)
    throws [ScriptException](ScriptException.md "class in javax.script")

    Executes the program stored in this `CompiledScript` object.

    Parameters:
    :   `context` - A `ScriptContext` that is used in the same way as
        the `ScriptContext` passed to the `eval` methods of
        `ScriptEngine`.

    Returns:
    :   The value returned by the script execution, if any. Should return `null`
        if no value is returned by the script execution.

    Throws:
    :   `ScriptException` - if an error occurs.
    :   `NullPointerException` - if context is null.
  + ### eval

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") eval([Bindings](Bindings.md "interface in javax.script") bindings)
    throws [ScriptException](ScriptException.md "class in javax.script")

    Executes the program stored in the `CompiledScript` object using
    the supplied `Bindings` of attributes as the `ENGINE_SCOPE` of the
    associated `ScriptEngine` during script execution. If bindings is null,
    then the effect of calling this method is same as that of eval(getEngine().getContext()).

    .
    The `GLOBAL_SCOPE` `Bindings`, `Reader` and `Writer`
    associated with the default `ScriptContext` of the associated `ScriptEngine` are used.

    Parameters:
    :   `bindings` - The bindings of attributes used for the `ENGINE_SCOPE`.

    Returns:
    :   The return value from the script execution

    Throws:
    :   `ScriptException` - if an error occurs.
  + ### eval

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") eval()
    throws [ScriptException](ScriptException.md "class in javax.script")

    Executes the program stored in the `CompiledScript` object. The
    default `ScriptContext` of the associated `ScriptEngine` is used.
    The effect of calling this method is same as that of eval(getEngine().getContext()).

    Returns:
    :   The return value from the script execution

    Throws:
    :   `ScriptException` - if an error occurs.
  + ### getEngine

    public abstract [ScriptEngine](ScriptEngine.md "interface in javax.script") getEngine()

    Returns the `ScriptEngine` whose `compile` method created this `CompiledScript`.
    The `CompiledScript` will execute in this engine.

    Returns:
    :   The `ScriptEngine` that created this `CompiledScript`