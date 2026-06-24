Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class DefaultBoundedRangeModel

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.DefaultBoundedRangeModel

All Implemented Interfaces:
:   `Serializable`, `BoundedRangeModel`

---

public class DefaultBoundedRangeModel
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [BoundedRangeModel](BoundedRangeModel.md "interface in javax.swing"), [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

A generic implementation of BoundedRangeModel.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../java/beans/XMLEncoder.md "class in java.beans").

Since:
:   1.2

See Also:
:   * [`BoundedRangeModel`](BoundedRangeModel.md "interface in javax.swing")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected ChangeEvent`

  `changeEvent`

  Only one `ChangeEvent` is needed per model instance since the
  event's only (read-only) state is the source property.

  `protected EventListenerList`

  `listenerList`

  The listeners waiting for model changes.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DefaultBoundedRangeModel()`

  Initializes all of the properties with default values.

  `DefaultBoundedRangeModel(int value,
  int extent,
  int min,
  int max)`

  Initializes value, extent, minimum and maximum.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addChangeListener(ChangeListener l)`

  Adds a `ChangeListener`.

  `protected void`

  `fireStateChanged()`

  Runs each `ChangeListener`'s `stateChanged` method.

  `ChangeListener[]`

  `getChangeListeners()`

  Returns an array of all the change listeners
  registered on this `DefaultBoundedRangeModel`.

  `int`

  `getExtent()`

  Returns the model's extent.

  `<T extends EventListener>  
  T[]`

  `getListeners(Class<T> listenerType)`

  Returns an array of all the objects currently registered as
  `FooListener`s
  upon this model.

  `int`

  `getMaximum()`

  Returns the model's maximum.

  `int`

  `getMinimum()`

  Returns the model's minimum.

  `int`

  `getValue()`

  Returns the model's current value.

  `boolean`

  `getValueIsAdjusting()`

  Returns true if the value is in the process of changing
  as a result of actions being taken by the user.

  `void`

  `removeChangeListener(ChangeListener l)`

  Removes a `ChangeListener`.

  `void`

  `setExtent(int n)`

  Sets the extent to *n* after ensuring that *n*
  is greater than or equal to zero and falls within the model's
  constraints:

  `void`

  `setMaximum(int n)`

  Sets the maximum to *n* after ensuring that *n*
  that the other three properties obey the model's constraints:

  `void`

  `setMinimum(int n)`

  Sets the minimum to *n* after ensuring that *n*
  that the other three properties obey the model's constraints:

  `void`

  `setRangeProperties(int newValue,
  int newExtent,
  int newMin,
  int newMax,
  boolean adjusting)`

  Sets all of the `BoundedRangeModel` properties after forcing
  the arguments to obey the usual constraints:

  `void`

  `setValue(int n)`

  Sets the current value of the model.

  `void`

  `setValueIsAdjusting(boolean b)`

  Sets the `valueIsAdjusting` property.

  `String`

  `toString()`

  Returns a string that displays all of the
  `BoundedRangeModel` properties.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### changeEvent

    protected transient [ChangeEvent](event/ChangeEvent.md "class in javax.swing.event") changeEvent

    Only one `ChangeEvent` is needed per model instance since the
    event's only (read-only) state is the source property. The source
    of events generated here is always "this".
  + ### listenerList

    protected [EventListenerList](event/EventListenerList.md "class in javax.swing.event") listenerList

    The listeners waiting for model changes.
* ## Constructor Details

  + ### DefaultBoundedRangeModel

    public DefaultBoundedRangeModel()

    Initializes all of the properties with default values.
    Those values are:
    - `value` = 0- `extent` = 0- `minimum` = 0- `maximum` = 100- `adjusting` = false
  + ### DefaultBoundedRangeModel

    public DefaultBoundedRangeModel(int value,
    int extent,
    int min,
    int max)

    Initializes value, extent, minimum and maximum. Adjusting is false.
    Throws an `IllegalArgumentException` if the following
    constraints aren't satisfied:

    ```
     min <= value <= value+extent <= max
    ```

    Parameters:
    :   `value` - an int giving the current value
    :   `extent` - the length of the inner range that begins at the model's value
    :   `min` - an int giving the minimum value
    :   `max` - an int giving the maximum value
* ## Method Details

  + ### getValue

    public int getValue()

    Returns the model's current value.

    Specified by:
    :   `getValue` in interface `BoundedRangeModel`

    Returns:
    :   the model's current value

    See Also:
    :   - [`setValue(int)`](#setValue(int))
        - [`BoundedRangeModel.getValue()`](BoundedRangeModel.md#getValue())
  + ### getExtent

    public int getExtent()

    Returns the model's extent.

    Specified by:
    :   `getExtent` in interface `BoundedRangeModel`

    Returns:
    :   the model's extent

    See Also:
    :   - [`setExtent(int)`](#setExtent(int))
        - [`BoundedRangeModel.getExtent()`](BoundedRangeModel.md#getExtent())
  + ### getMinimum

    public int getMinimum()

    Returns the model's minimum.

    Specified by:
    :   `getMinimum` in interface `BoundedRangeModel`

    Returns:
    :   the model's minimum

    See Also:
    :   - [`setMinimum(int)`](#setMinimum(int))
        - [`BoundedRangeModel.getMinimum()`](BoundedRangeModel.md#getMinimum())
  + ### getMaximum

    public int getMaximum()

    Returns the model's maximum.

    Specified by:
    :   `getMaximum` in interface `BoundedRangeModel`

    Returns:
    :   the model's maximum

    See Also:
    :   - [`setMaximum(int)`](#setMaximum(int))
        - [`BoundedRangeModel.getMaximum()`](BoundedRangeModel.md#getMaximum())
  + ### setValue

    public void setValue(int n)

    Sets the current value of the model. For a slider, that
    determines where the knob appears. Ensures that the new
    value, *n* falls within the model's constraints:

    ```
         minimum <= value <= value+extent <= maximum
    ```

    Specified by:
    :   `setValue` in interface `BoundedRangeModel`

    Parameters:
    :   `n` - the model's new value

    See Also:
    :   - [`BoundedRangeModel.setValue(int)`](BoundedRangeModel.md#setValue(int))
  + ### setExtent

    public void setExtent(int n)

    Sets the extent to *n* after ensuring that *n*
    is greater than or equal to zero and falls within the model's
    constraints:

    ```
         minimum <= value <= value+extent <= maximum
    ```

    Specified by:
    :   `setExtent` in interface `BoundedRangeModel`

    Parameters:
    :   `n` - the model's new extent

    See Also:
    :   - [`BoundedRangeModel.setExtent(int)`](BoundedRangeModel.md#setExtent(int))
  + ### setMinimum

    public void setMinimum(int n)

    Sets the minimum to *n* after ensuring that *n*
    that the other three properties obey the model's constraints:

    ```
         minimum <= value <= value+extent <= maximum
    ```

    Specified by:
    :   `setMinimum` in interface `BoundedRangeModel`

    Parameters:
    :   `n` - the model's new minimum

    See Also:
    :   - [`getMinimum()`](#getMinimum())
        - [`BoundedRangeModel.setMinimum(int)`](BoundedRangeModel.md#setMinimum(int))
  + ### setMaximum

    public void setMaximum(int n)

    Sets the maximum to *n* after ensuring that *n*
    that the other three properties obey the model's constraints:

    ```
         minimum <= value <= value+extent <= maximum
    ```

    Specified by:
    :   `setMaximum` in interface `BoundedRangeModel`

    Parameters:
    :   `n` - the model's new maximum

    See Also:
    :   - [`BoundedRangeModel.setMaximum(int)`](BoundedRangeModel.md#setMaximum(int))
  + ### setValueIsAdjusting

    public void setValueIsAdjusting(boolean b)

    Sets the `valueIsAdjusting` property.

    Specified by:
    :   `setValueIsAdjusting` in interface `BoundedRangeModel`

    Parameters:
    :   `b` - true if the upcoming changes to the value property are part of a series

    See Also:
    :   - [`getValueIsAdjusting()`](#getValueIsAdjusting())
        - [`setValue(int)`](#setValue(int))
        - [`BoundedRangeModel.setValueIsAdjusting(boolean)`](BoundedRangeModel.md#setValueIsAdjusting(boolean))
  + ### getValueIsAdjusting

    public boolean getValueIsAdjusting()

    Returns true if the value is in the process of changing
    as a result of actions being taken by the user.

    Specified by:
    :   `getValueIsAdjusting` in interface `BoundedRangeModel`

    Returns:
    :   the value of the `valueIsAdjusting` property

    See Also:
    :   - [`setValue(int)`](#setValue(int))
        - [`BoundedRangeModel.getValueIsAdjusting()`](BoundedRangeModel.md#getValueIsAdjusting())
  + ### setRangeProperties

    public void setRangeProperties(int newValue,
    int newExtent,
    int newMin,
    int newMax,
    boolean adjusting)

    Sets all of the `BoundedRangeModel` properties after forcing
    the arguments to obey the usual constraints:

    ```
         minimum <= value <= value+extent <= maximum
    ```

    At most, one `ChangeEvent` is generated.

    Specified by:
    :   `setRangeProperties` in interface `BoundedRangeModel`

    Parameters:
    :   `newValue` - an int giving the current value
    :   `newExtent` - an int giving the amount by which the value can "jump"
    :   `newMin` - an int giving the minimum value
    :   `newMax` - an int giving the maximum value
    :   `adjusting` - a boolean, true if a series of changes are in
        progress

    See Also:
    :   - [`BoundedRangeModel.setRangeProperties(int, int, int, int, boolean)`](BoundedRangeModel.md#setRangeProperties(int,int,int,int,boolean))
        - [`setValue(int)`](#setValue(int))
        - [`setExtent(int)`](#setExtent(int))
        - [`setMinimum(int)`](#setMinimum(int))
        - [`setMaximum(int)`](#setMaximum(int))
        - [`setValueIsAdjusting(boolean)`](#setValueIsAdjusting(boolean))
  + ### addChangeListener

    public void addChangeListener([ChangeListener](event/ChangeListener.md "interface in javax.swing.event") l)

    Adds a `ChangeListener`. The change listeners are run each
    time any one of the Bounded Range model properties changes.

    Specified by:
    :   `addChangeListener` in interface `BoundedRangeModel`

    Parameters:
    :   `l` - the ChangeListener to add

    See Also:
    :   - [`removeChangeListener(javax.swing.event.ChangeListener)`](#removeChangeListener(javax.swing.event.ChangeListener))
        - [`BoundedRangeModel.addChangeListener(javax.swing.event.ChangeListener)`](BoundedRangeModel.md#addChangeListener(javax.swing.event.ChangeListener))
  + ### removeChangeListener

    public void removeChangeListener([ChangeListener](event/ChangeListener.md "interface in javax.swing.event") l)

    Removes a `ChangeListener`.

    Specified by:
    :   `removeChangeListener` in interface `BoundedRangeModel`

    Parameters:
    :   `l` - the `ChangeListener` to remove

    See Also:
    :   - [`addChangeListener(javax.swing.event.ChangeListener)`](#addChangeListener(javax.swing.event.ChangeListener))
        - [`BoundedRangeModel.removeChangeListener(javax.swing.event.ChangeListener)`](BoundedRangeModel.md#removeChangeListener(javax.swing.event.ChangeListener))
  + ### getChangeListeners

    public [ChangeListener](event/ChangeListener.md "interface in javax.swing.event")[] getChangeListeners()

    Returns an array of all the change listeners
    registered on this `DefaultBoundedRangeModel`.

    Returns:
    :   all of this model's `ChangeListener`s
        or an empty
        array if no change listeners are currently registered

    Since:
    :   1.4

    See Also:
    :   - [`addChangeListener(javax.swing.event.ChangeListener)`](#addChangeListener(javax.swing.event.ChangeListener))
        - [`removeChangeListener(javax.swing.event.ChangeListener)`](#removeChangeListener(javax.swing.event.ChangeListener))
  + ### fireStateChanged

    protected void fireStateChanged()

    Runs each `ChangeListener`'s `stateChanged` method.

    See Also:
    :   - [`setRangeProperties(int, int, int, int, boolean)`](#setRangeProperties(int,int,int,int,boolean))
        - [`EventListenerList`](event/EventListenerList.md "class in javax.swing.event")
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string that displays all of the
    `BoundedRangeModel` properties.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.
  + ### getListeners

    public <T extends [EventListener](../../../java.base/java/util/EventListener.md "interface in java.util")> T[] getListeners([Class](../../../java.base/java/lang/Class.md "class in java.lang")<T> listenerType)

    Returns an array of all the objects currently registered as
    `FooListener`s
    upon this model.
    `FooListener`s
    are registered using the `addFooListener` method.

    You can specify the `listenerType` argument
    with a class literal, such as `FooListener.class`.
    For example, you can query a `DefaultBoundedRangeModel`
    instance `m`
    for its change listeners
    with the following code:

    ```
    ChangeListener[] cls = (ChangeListener[])(m.getListeners(ChangeListener.class));
    ```

    If no such listeners exist,
    this method returns an empty array.

    Type Parameters:
    :   `T` - the type of `EventListener` class being requested

    Parameters:
    :   `listenerType` - the type of listeners requested;
        this parameter should specify an interface
        that descends from `java.util.EventListener`

    Returns:
    :   an array of all objects registered as
        `FooListener`s
        on this model,
        or an empty array if no such
        listeners have been added

    Throws:
    :   `ClassCastException` - if `listenerType` doesn't
        specify a class or interface that implements
        `java.util.EventListener`

    Since:
    :   1.3

    See Also:
    :   - [`getChangeListeners()`](#getChangeListeners())