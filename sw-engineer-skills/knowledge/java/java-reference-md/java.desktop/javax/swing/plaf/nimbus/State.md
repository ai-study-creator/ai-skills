Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.nimbus](package-summary.md)

# Class State<T extends [JComponent](../../JComponent.md "class in javax.swing")>

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.nimbus.State<T>

Type Parameters:
:   `T` - type of component whose state is to be queried

---

public abstract class State<T extends [JComponent](../../JComponent.md "class in javax.swing")>
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

Represents a built in, or custom, state in Nimbus.

Synth provides several built in states, which are:

* Enabled
* Mouse Over
* Pressed
* Disabled
* Focused
* Selected
* Default

However, there are many more states that could be described in a LookAndFeel, and it
would be nice to style components differently based on these different states.
For example, a progress bar could be "indeterminate". It would be very convenient
to allow this to be defined as a "state".

This class, State, is intended to be used for such situations.
Simply implement the abstract #isInState method. It returns true if the given
JComponent is "in this state", false otherwise. This method will be called
*many* times in *performance sensitive loops*. It must execute
very quickly.

For example, the following might be an implementation of a custom
"Indeterminate" state for JProgressBars:

```
     public final class IndeterminateState extends State<JProgressBar> {
         public IndeterminateState() {
             super("Indeterminate");
         }

         @Override
         protected boolean isInState(JProgressBar c) {
             return c.isIndeterminate();
         }
     }
```

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `State(String name)`

  Create a new custom State.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected abstract boolean`

  `isInState(T c)`

  Gets whether the specified JComponent is in the custom state represented
  by this class.

  `String`

  `toString()`

  Returns a string representation of the object.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### State

    protected State([String](../../../../../java.base/java/lang/String.md "class in java.lang") name)

    Create a new custom State. Specify the name for the state. The name should
    be unique within the states set for any one particular component.
    The name of the state should coincide with the name used in UIDefaults.

    For example, the following would be correct:

    ```
         defaults.put("Button.States", "Enabled, Foo, Disabled");
         defaults.put("Button.Foo", new FooState("Foo"));
    ```

    Parameters:
    :   `name` - a simple user friendly name for the state, such as "Indeterminate"
        or "EmbeddedPanel" or "Blurred". It is customary to use camel case,
        with the first letter capitalized.
* ## Method Details

  + ### toString

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Description copied from class: `Object`

    Returns a string representation of the object.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.
  + ### isInState

    protected abstract boolean isInState([T](State.md "type parameter in State") c)

    Gets whether the specified JComponent is in the custom state represented
    by this class. *This is an extremely performance sensitive loop.*
    Please take proper precautions to ensure that it executes quickly.

    Nimbus uses this method to help determine what state a JComponent is
    in. For example, a custom State could exist for JProgressBar such that
    it would return `true` when the progress bar is indeterminate.
    Such an implementation of this method would simply be:

    ```
     return c.isIndeterminate();
    ```

    Parameters:
    :   `c` - the JComponent to test. This will never be null.

    Returns:
    :   true if `c` is in the custom state represented by
        this `State` instance