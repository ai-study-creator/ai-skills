Module [java.scripting](../../module-summary.md)

Package [javax.script](package-summary.md)

# Interface ScriptContext

All Known Implementing Classes:
:   `SimpleScriptContext`

---

public interface ScriptContext

The interface whose implementing classes are used to connect Script Engines
with objects, such as scoped Bindings, in hosting applications. Each scope is a set
of named attributes whose values can be set and retrieved using the
`ScriptContext` methods. ScriptContexts also expose Readers and Writers
that can be used by the ScriptEngines for input and output.

Since:
:   1.6

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `ENGINE_SCOPE`

  EngineScope attributes are visible during the lifetime of a single
  `ScriptEngine` and a set of attributes is maintained for each
  engine.

  `static final int`

  `GLOBAL_SCOPE`

  GlobalScope attributes are visible to all engines created by same ScriptEngineFactory.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Object`

  `getAttribute(String name)`

  Retrieves the value of the attribute with the given name in
  the scope occurring earliest in the search order.

  `Object`

  `getAttribute(String name,
  int scope)`

  Gets the value of an attribute in a given scope.

  `int`

  `getAttributesScope(String name)`

  Get the lowest scope in which an attribute is defined.

  `Bindings`

  `getBindings(int scope)`

  Gets the `Bindings` associated with the given scope in this
  `ScriptContext`.

  `Writer`

  `getErrorWriter()`

  Returns the `Writer` used to display error output.

  `Reader`

  `getReader()`

  Returns a `Reader` to be used by the script to read
  input.

  `List<Integer>`

  `getScopes()`

  Returns immutable `List` of all the valid values for
  scope in the ScriptContext.

  `Writer`

  `getWriter()`

  Returns the `Writer` for scripts to use when displaying output.

  `Object`

  `removeAttribute(String name,
  int scope)`

  Remove an attribute in a given scope.

  `void`

  `setAttribute(String name,
  Object value,
  int scope)`

  Sets the value of an attribute in a given scope.

  `void`

  `setBindings(Bindings bindings,
  int scope)`

  Associates a `Bindings` instance with a particular scope in this
  `ScriptContext`.

  `void`

  `setErrorWriter(Writer writer)`

  Sets the `Writer` used to display error output.

  `void`

  `setReader(Reader reader)`

  Sets the `Reader` for scripts to read input
  .

  `void`

  `setWriter(Writer writer)`

  Sets the `Writer` for scripts to use when displaying output.

* ## Field Details

  + ### ENGINE\_SCOPE

    static final int ENGINE\_SCOPE

    EngineScope attributes are visible during the lifetime of a single
    `ScriptEngine` and a set of attributes is maintained for each
    engine.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.script.ScriptContext.ENGINE_SCOPE)
  + ### GLOBAL\_SCOPE

    static final int GLOBAL\_SCOPE

    GlobalScope attributes are visible to all engines created by same ScriptEngineFactory.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.script.ScriptContext.GLOBAL_SCOPE)
* ## Method Details

  + ### setBindings

    void setBindings([Bindings](Bindings.md "interface in javax.script") bindings,
    int scope)

    Associates a `Bindings` instance with a particular scope in this
    `ScriptContext`. Calls to the `getAttribute` and
    `setAttribute` methods must map to the `get` and
    `put` methods of the `Bindings` for the specified scope.

    Parameters:
    :   `bindings` - The `Bindings` to associate with the given scope
    :   `scope` - The scope

    Throws:
    :   `IllegalArgumentException` - If no `Bindings` is defined for the
        specified scope value in ScriptContexts of this type.
    :   `NullPointerException` - if value of scope is `ENGINE_SCOPE` and
        the specified `Bindings` is null.
  + ### getBindings

    [Bindings](Bindings.md "interface in javax.script") getBindings(int scope)

    Gets the `Bindings` associated with the given scope in this
    `ScriptContext`.

    Parameters:
    :   `scope` - The scope

    Returns:
    :   The associated `Bindings`. Returns `null` if it has not
        been set.

    Throws:
    :   `IllegalArgumentException` - If no `Bindings` is defined for the
        specified scope value in `ScriptContext` of this type.
  + ### setAttribute

    void setAttribute([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") value,
    int scope)

    Sets the value of an attribute in a given scope. If the scope is `GLOBAL_SCOPE`
    and no Bindings is set for `GLOBAL_SCOPE`, then setAttribute call is a no-op.

    Parameters:
    :   `name` - The name of the attribute to set
    :   `value` - The value of the attribute
    :   `scope` - The scope in which to set the attribute

    Throws:
    :   `IllegalArgumentException` - if the name is empty or if the scope is invalid.
    :   `NullPointerException` - if the name is null.
  + ### getAttribute

    [Object](../../../java.base/java/lang/Object.md "class in java.lang") getAttribute([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    int scope)

    Gets the value of an attribute in a given scope.

    Parameters:
    :   `name` - The name of the attribute to retrieve.
    :   `scope` - The scope in which to retrieve the attribute.

    Returns:
    :   The value of the attribute. Returns `null` is the name
        does not exist in the given scope.

    Throws:
    :   `IllegalArgumentException` - if the name is empty or if the value of scope is invalid.
    :   `NullPointerException` - if the name is null.
  + ### removeAttribute

    [Object](../../../java.base/java/lang/Object.md "class in java.lang") removeAttribute([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    int scope)

    Remove an attribute in a given scope.

    Parameters:
    :   `name` - The name of the attribute to remove
    :   `scope` - The scope in which to remove the attribute

    Returns:
    :   The removed value.

    Throws:
    :   `IllegalArgumentException` - if the name is empty or if the scope is invalid.
    :   `NullPointerException` - if the name is null.
  + ### getAttribute

    [Object](../../../java.base/java/lang/Object.md "class in java.lang") getAttribute([String](../../../java.base/java/lang/String.md "class in java.lang") name)

    Retrieves the value of the attribute with the given name in
    the scope occurring earliest in the search order. The order
    is determined by the numeric value of the scope parameter (lowest
    scope values first.)

    Parameters:
    :   `name` - The name of the attribute to retrieve.

    Returns:
    :   The value of the attribute in the lowest scope for
        which an attribute with the given name is defined. Returns
        null if no attribute with the name exists in any scope.

    Throws:
    :   `NullPointerException` - if the name is null.
    :   `IllegalArgumentException` - if the name is empty.
  + ### getAttributesScope

    int getAttributesScope([String](../../../java.base/java/lang/String.md "class in java.lang") name)

    Get the lowest scope in which an attribute is defined.

    Parameters:
    :   `name` - Name of the attribute
        .

    Returns:
    :   The lowest scope. Returns -1 if no attribute with the given
        name is defined in any scope.

    Throws:
    :   `NullPointerException` - if name is null.
    :   `IllegalArgumentException` - if name is empty.
  + ### getWriter

    [Writer](../../../java.base/java/io/Writer.md "class in java.io") getWriter()

    Returns the `Writer` for scripts to use when displaying output.

    Returns:
    :   The `Writer`.
  + ### getErrorWriter

    [Writer](../../../java.base/java/io/Writer.md "class in java.io") getErrorWriter()

    Returns the `Writer` used to display error output.

    Returns:
    :   The `Writer`
  + ### setWriter

    void setWriter([Writer](../../../java.base/java/io/Writer.md "class in java.io") writer)

    Sets the `Writer` for scripts to use when displaying output.

    Parameters:
    :   `writer` - The new `Writer`.
  + ### setErrorWriter

    void setErrorWriter([Writer](../../../java.base/java/io/Writer.md "class in java.io") writer)

    Sets the `Writer` used to display error output.

    Parameters:
    :   `writer` - The `Writer`.
  + ### getReader

    [Reader](../../../java.base/java/io/Reader.md "class in java.io") getReader()

    Returns a `Reader` to be used by the script to read
    input.

    Returns:
    :   The `Reader`.
  + ### setReader

    void setReader([Reader](../../../java.base/java/io/Reader.md "class in java.io") reader)

    Sets the `Reader` for scripts to read input
    .

    Parameters:
    :   `reader` - The new `Reader`.
  + ### getScopes

    [List](../../../java.base/java/util/List.md "interface in java.util")<[Integer](../../../java.base/java/lang/Integer.md "class in java.lang")> getScopes()

    Returns immutable `List` of all the valid values for
    scope in the ScriptContext.

    Returns:
    :   list of scope values