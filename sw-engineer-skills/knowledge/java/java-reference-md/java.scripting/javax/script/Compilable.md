Module [java.scripting](../../module-summary.md)

Package [javax.script](package-summary.md)

# Interface Compilable

---

public interface Compilable

The optional interface implemented by ScriptEngines whose methods compile scripts
to a form that can be executed repeatedly without recompilation.

Since:
:   1.6

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `CompiledScript`

  `compile(Reader script)`

  Compiles the script (source read from `Reader`) for
  later execution.

  `CompiledScript`

  `compile(String script)`

  Compiles the script (source represented as a `String`) for
  later execution.

* ## Method Details

  + ### compile

    [CompiledScript](CompiledScript.md "class in javax.script") compile([String](../../../java.base/java/lang/String.md "class in java.lang") script)
    throws [ScriptException](ScriptException.md "class in javax.script")

    Compiles the script (source represented as a `String`) for
    later execution.

    Parameters:
    :   `script` - The source of the script, represented as a `String`.

    Returns:
    :   An instance of a subclass of `CompiledScript` to be executed later using one
        of the `eval` methods of `CompiledScript`.

    Throws:
    :   `ScriptException` - if compilation fails.
    :   `NullPointerException` - if the argument is null.
  + ### compile

    [CompiledScript](CompiledScript.md "class in javax.script") compile([Reader](../../../java.base/java/io/Reader.md "class in java.io") script)
    throws [ScriptException](ScriptException.md "class in javax.script")

    Compiles the script (source read from `Reader`) for
    later execution. Functionality is identical to
    `compile(String)` other than the way in which the source is
    passed.

    Parameters:
    :   `script` - The reader from which the script source is obtained.

    Returns:
    :   An instance of a subclass of `CompiledScript` to be executed
        later using one of its `eval` methods of `CompiledScript`.

    Throws:
    :   `ScriptException` - if compilation fails.
    :   `NullPointerException` - if argument is null.