Module [java.scripting](../../module-summary.md)

Package [javax.script](package-summary.md)

# Interface Invocable

---

public interface Invocable

The optional interface implemented by ScriptEngines whose methods allow the invocation of
procedures in scripts that have previously been executed.

Since:
:   1.6

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `<T> T`

  `getInterface(Class<T> clasz)`

  Returns an implementation of an interface using functions compiled in
  the interpreter.

  `<T> T`

  `getInterface(Object thiz,
  Class<T> clasz)`

  Returns an implementation of an interface using member functions of
  a scripting object compiled in the interpreter.

  `Object`

  `invokeFunction(String name,
  Object... args)`

  Used to call top-level procedures and functions defined in scripts.

  `Object`

  `invokeMethod(Object thiz,
  String name,
  Object... args)`

  Calls a method on a script object compiled during a previous script execution,
  which is retained in the state of the `ScriptEngine`.

* ## Method Details

  + ### invokeMethod

    [Object](../../../java.base/java/lang/Object.md "class in java.lang") invokeMethod([Object](../../../java.base/java/lang/Object.md "class in java.lang") thiz,
    [String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang")... args)
    throws [ScriptException](ScriptException.md "class in javax.script"),
    [NoSuchMethodException](../../../java.base/java/lang/NoSuchMethodException.md "class in java.lang")

    Calls a method on a script object compiled during a previous script execution,
    which is retained in the state of the `ScriptEngine`.

    Parameters:
    :   `thiz` - If the procedure is a member of a class
        defined in the script and thiz is an instance of that class
        returned by a previous execution or invocation, the named method is
        called through that instance.
    :   `name` - The name of the procedure to be called.
    :   `args` - Arguments to pass to the procedure. The rules for converting
        the arguments to scripting variables are implementation-specific.

    Returns:
    :   The value returned by the procedure. The rules for converting the scripting
        variable returned by the script method to a Java Object are implementation-specific.

    Throws:
    :   `ScriptException` - if an error occurs during invocation of the method.
    :   `NoSuchMethodException` - if method with given name or matching argument types cannot be found.
    :   `NullPointerException` - if the method name is null.
    :   `IllegalArgumentException` - if the specified thiz is null or the specified Object is
        does not represent a scripting object.
  + ### invokeFunction

    [Object](../../../java.base/java/lang/Object.md "class in java.lang") invokeFunction([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang")... args)
    throws [ScriptException](ScriptException.md "class in javax.script"),
    [NoSuchMethodException](../../../java.base/java/lang/NoSuchMethodException.md "class in java.lang")

    Used to call top-level procedures and functions defined in scripts.

    Parameters:
    :   `name` - of the procedure or function to call
    :   `args` - Arguments to pass to the procedure or function

    Returns:
    :   The value returned by the procedure or function

    Throws:
    :   `ScriptException` - if an error occurs during invocation of the method.
    :   `NoSuchMethodException` - if method with given name or matching argument types cannot be found.
    :   `NullPointerException` - if method name is null.
  + ### getInterface

    <T> T getInterface([Class](../../../java.base/java/lang/Class.md "class in java.lang")<T> clasz)

    Returns an implementation of an interface using functions compiled in
    the interpreter. The methods of the interface
    may be implemented using the `invokeFunction` method.

    Type Parameters:
    :   `T` - the type of the interface to return

    Parameters:
    :   `clasz` - The `Class` object of the interface to return.

    Returns:
    :   An instance of requested interface - null if the requested interface is unavailable,
        i. e. if compiled functions in the `ScriptEngine` cannot be found matching
        the ones in the requested interface.

    Throws:
    :   `IllegalArgumentException` - if the specified `Class` object
        is null or is not an interface.
  + ### getInterface

    <T> T getInterface([Object](../../../java.base/java/lang/Object.md "class in java.lang") thiz,
    [Class](../../../java.base/java/lang/Class.md "class in java.lang")<T> clasz)

    Returns an implementation of an interface using member functions of
    a scripting object compiled in the interpreter. The methods of the
    interface may be implemented using the `invokeMethod` method.

    Type Parameters:
    :   `T` - the type of the interface to return

    Parameters:
    :   `thiz` - The scripting object whose member functions are used to implement the methods of the interface.
    :   `clasz` - The `Class` object of the interface to return.

    Returns:
    :   An instance of requested interface - null if the requested interface is unavailable,
        i. e. if compiled methods in the `ScriptEngine` cannot be found matching
        the ones in the requested interface.

    Throws:
    :   `IllegalArgumentException` - if the specified `Class` object
        is null or is not an interface, or if the specified Object is
        null or does not represent a scripting object.