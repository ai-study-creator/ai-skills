Module [java.base](../../../module-summary.md)

Package [java.lang.foreign](package-summary.md)

# Interface MemorySegment.Scope

Enclosing interface:
:   `MemorySegmentPREVIEW`

---

public static sealed interface MemorySegment.Scope

`Scope` is a preview API of the Java platform.

Programs can only use `Scope` when preview features are enabled.

Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

A scope models the *lifetime* of all the memory segments associated with it. That is, a memory segment
cannot be accessed if its associated scope is not [alive](#isAlive()). A new scope is typically
obtained indirectly, by creating a new [arena](Arena.md "interface in java.lang.foreign")[PREVIEW](Arena.md#preview-java.lang.foreign.Arena).

Scope instances can be compared for equality. That is, two scopes
are considered [equals(Object)](#equals(java.lang.Object)) if they denote the same lifetime.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object that)`

  Returns `true`, if the provided object is also a scope, which models the same lifetime as that
  modelled by this scope.

  `int`

  `hashCode()`

  Returns the hash code of this scope object.

  `boolean`

  `isAlive()`

  Returns `true`, if the regions of memory backing the memory segments associated with this scope are
  still valid.

* ## Method Details

  + ### isAlive

    boolean isAlive()

    Returns `true`, if the regions of memory backing the memory segments associated with this scope are
    still valid.

    Returns:
    :   `true`, if the regions of memory backing the memory segments associated with this scope are
        still valid
  + ### equals

    boolean equals([Object](../Object.md "class in java.lang") that)

    Returns `true`, if the provided object is also a scope, which models the same lifetime as that
    modelled by this scope.. In that case, it is always the case that
    `this.isAlive() == ((Scope)that).isAlive()`.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `that` - the object to be tested.

    Returns:
    :   `true`, if the provided object is also a scope, which models the same lifetime as that
        modelled by this scope

    See Also:
    :   - [`Object.hashCode()`](../Object.md#hashCode())
        - [`HashMap`](../../util/HashMap.md "class in java.util")
  + ### hashCode

    int hashCode()

    Returns the hash code of this scope object.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   the hash code of this scope object.

    See Also:
    :   - [`equals(Object)`](#equals(java.lang.Object))