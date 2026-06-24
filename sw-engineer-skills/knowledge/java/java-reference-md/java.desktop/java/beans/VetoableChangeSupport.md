Module [java.desktop](../../module-summary.md)

Package [java.beans](package-summary.md)

# Class VetoableChangeSupport

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.beans.VetoableChangeSupport

All Implemented Interfaces:
:   `Serializable`

---

public class VetoableChangeSupport
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

This is a utility class that can be used by beans that support constrained
properties. It manages a list of listeners and dispatches
[`PropertyChangeEvent`](PropertyChangeEvent.md "class in java.beans")s to them. You can use an instance of this class
as a member field of your bean and delegate these types of work to it.
The [`VetoableChangeListener`](VetoableChangeListener.md "interface in java.beans") can be registered for all properties
or for a property specified by name.

Here is an example of `VetoableChangeSupport` usage that follows
the rules and recommendations laid out in the JavaBeans specification:

```
 public class MyBean {
     private final VetoableChangeSupport vcs = new VetoableChangeSupport(this);

     public void addVetoableChangeListener(VetoableChangeListener listener) {
         this.vcs.addVetoableChangeListener(listener);
     }

     public void removeVetoableChangeListener(VetoableChangeListener listener) {
         this.vcs.removeVetoableChangeListener(listener);
     }

     private String value;

     public String getValue() {
         return this.value;
     }

     public void setValue(String newValue) throws PropertyVetoException {
         String oldValue = this.value;
         this.vcs.fireVetoableChange("value", oldValue, newValue);
         this.value = newValue;
     }

     [...]
 }
```

A `VetoableChangeSupport` instance is thread-safe.

This class is serializable. When it is serialized it will save
(and restore) any listeners that are themselves serializable. Any
non-serializable listeners will be skipped during serialization.

Since:
:   1.1

See Also:
:   * [`PropertyChangeSupport`](PropertyChangeSupport.md "class in java.beans")
    * [Serialized Form](../../../serialized-form.md#java.beans.VetoableChangeSupport)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `VetoableChangeSupport(Object sourceBean)`

  Constructs a `VetoableChangeSupport` object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addVetoableChangeListener(VetoableChangeListener listener)`

  Add a VetoableChangeListener to the listener list.

  `void`

  `addVetoableChangeListener(String propertyName,
  VetoableChangeListener listener)`

  Add a VetoableChangeListener for a specific property.

  `void`

  `fireVetoableChange(PropertyChangeEvent event)`

  Fires a property change event to listeners
  that have been registered to track updates of
  all properties or a property with the specified name.

  `void`

  `fireVetoableChange(String propertyName,
  boolean oldValue,
  boolean newValue)`

  Reports a boolean constrained property update to listeners
  that have been registered to track updates of
  all properties or a property with the specified name.

  `void`

  `fireVetoableChange(String propertyName,
  int oldValue,
  int newValue)`

  Reports an integer constrained property update to listeners
  that have been registered to track updates of
  all properties or a property with the specified name.

  `void`

  `fireVetoableChange(String propertyName,
  Object oldValue,
  Object newValue)`

  Reports a constrained property update to listeners
  that have been registered to track updates of
  all properties or a property with the specified name.

  `VetoableChangeListener[]`

  `getVetoableChangeListeners()`

  Returns an array of all the listeners that were added to the
  VetoableChangeSupport object with addVetoableChangeListener().

  `VetoableChangeListener[]`

  `getVetoableChangeListeners(String propertyName)`

  Returns an array of all the listeners which have been associated
  with the named property.

  `boolean`

  `hasListeners(String propertyName)`

  Check if there are any listeners for a specific property, including
  those registered on all properties.

  `void`

  `removeVetoableChangeListener(VetoableChangeListener listener)`

  Remove a VetoableChangeListener from the listener list.

  `void`

  `removeVetoableChangeListener(String propertyName,
  VetoableChangeListener listener)`

  Remove a VetoableChangeListener for a specific property.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### VetoableChangeSupport

    public VetoableChangeSupport([Object](../../../java.base/java/lang/Object.md "class in java.lang") sourceBean)

    Constructs a `VetoableChangeSupport` object.

    Parameters:
    :   `sourceBean` - The bean to be given as the source for any events.
* ## Method Details

  + ### addVetoableChangeListener

    public void addVetoableChangeListener([VetoableChangeListener](VetoableChangeListener.md "interface in java.beans") listener)

    Add a VetoableChangeListener to the listener list.
    The listener is registered for all properties.
    The same listener object may be added more than once, and will be called
    as many times as it is added.
    If `listener` is null, no exception is thrown and no action
    is taken.

    Parameters:
    :   `listener` - The VetoableChangeListener to be added
  + ### removeVetoableChangeListener

    public void removeVetoableChangeListener([VetoableChangeListener](VetoableChangeListener.md "interface in java.beans") listener)

    Remove a VetoableChangeListener from the listener list.
    This removes a VetoableChangeListener that was registered
    for all properties.
    If `listener` was added more than once to the same event
    source, it will be notified one less time after being removed.
    If `listener` is null, or was never added, no exception is
    thrown and no action is taken.

    Parameters:
    :   `listener` - The VetoableChangeListener to be removed
  + ### getVetoableChangeListeners

    public [VetoableChangeListener](VetoableChangeListener.md "interface in java.beans")[] getVetoableChangeListeners()

    Returns an array of all the listeners that were added to the
    VetoableChangeSupport object with addVetoableChangeListener().

    If some listeners have been added with a named property, then
    the returned array will be a mixture of VetoableChangeListeners
    and `VetoableChangeListenerProxy`s. If the calling
    method is interested in distinguishing the listeners then it must
    test each element to see if it's a
    `VetoableChangeListenerProxy`, perform the cast, and examine
    the parameter.

    ```
     VetoableChangeListener[] listeners = bean.getVetoableChangeListeners();
     for (int i = 0; i < listeners.length; i++) {
            if (listeners[i] instanceof VetoableChangeListenerProxy) {
         VetoableChangeListenerProxy proxy =
                        (VetoableChangeListenerProxy)listeners[i];
         if (proxy.getPropertyName().equals("foo")) {
           // proxy is a VetoableChangeListener which was associated
           // with the property named "foo"
         }
       }
     }
    ```

    Returns:
    :   all of the `VetoableChangeListeners` added or an
        empty array if no listeners have been added

    Since:
    :   1.4

    See Also:
    :   - [`VetoableChangeListenerProxy`](VetoableChangeListenerProxy.md "class in java.beans")
  + ### addVetoableChangeListener

    public void addVetoableChangeListener([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    [VetoableChangeListener](VetoableChangeListener.md "interface in java.beans") listener)

    Add a VetoableChangeListener for a specific property. The listener
    will be invoked only when a call on fireVetoableChange names that
    specific property.
    The same listener object may be added more than once. For each
    property, the listener will be invoked the number of times it was added
    for that property.
    If `propertyName` or `listener` is null, no
    exception is thrown and no action is taken.

    Parameters:
    :   `propertyName` - The name of the property to listen on.
    :   `listener` - The VetoableChangeListener to be added

    Since:
    :   1.2
  + ### removeVetoableChangeListener

    public void removeVetoableChangeListener([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    [VetoableChangeListener](VetoableChangeListener.md "interface in java.beans") listener)

    Remove a VetoableChangeListener for a specific property.
    If `listener` was added more than once to the same event
    source for the specified property, it will be notified one less time
    after being removed.
    If `propertyName` is null, no exception is thrown and no
    action is taken.
    If `listener` is null, or was never added for the specified
    property, no exception is thrown and no action is taken.

    Parameters:
    :   `propertyName` - The name of the property that was listened on.
    :   `listener` - The VetoableChangeListener to be removed

    Since:
    :   1.2
  + ### getVetoableChangeListeners

    public [VetoableChangeListener](VetoableChangeListener.md "interface in java.beans")[] getVetoableChangeListeners([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName)

    Returns an array of all the listeners which have been associated
    with the named property.

    Parameters:
    :   `propertyName` - The name of the property being listened to

    Returns:
    :   all the `VetoableChangeListeners` associated with
        the named property. If no such listeners have been added,
        or if `propertyName` is null, an empty array is
        returned.

    Since:
    :   1.4
  + ### fireVetoableChange

    public void fireVetoableChange([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") oldValue,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") newValue)
    throws [PropertyVetoException](PropertyVetoException.md "class in java.beans")

    Reports a constrained property update to listeners
    that have been registered to track updates of
    all properties or a property with the specified name.

    Any listener can throw a `PropertyVetoException` to veto the update.
    If one of the listeners vetoes the update, this method passes
    a new "undo" `PropertyChangeEvent` that reverts to the old value
    to all listeners that already confirmed this update
    and throws the `PropertyVetoException` again.

    No event is fired if old and new values are equal and non-null.

    This is merely a convenience wrapper around the more general
    [`fireVetoableChange(PropertyChangeEvent)`](#fireVetoableChange(java.beans.PropertyChangeEvent)) method.

    Parameters:
    :   `propertyName` - the programmatic name of the property that is about to change
    :   `oldValue` - the old value of the property
    :   `newValue` - the new value of the property

    Throws:
    :   `PropertyVetoException` - if one of listeners vetoes the property update
  + ### fireVetoableChange

    public void fireVetoableChange([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    int oldValue,
    int newValue)
    throws [PropertyVetoException](PropertyVetoException.md "class in java.beans")

    Reports an integer constrained property update to listeners
    that have been registered to track updates of
    all properties or a property with the specified name.

    Any listener can throw a `PropertyVetoException` to veto the update.
    If one of the listeners vetoes the update, this method passes
    a new "undo" `PropertyChangeEvent` that reverts to the old value
    to all listeners that already confirmed this update
    and throws the `PropertyVetoException` again.

    No event is fired if old and new values are equal.

    This is merely a convenience wrapper around the more general
    [`fireVetoableChange(String, Object, Object)`](#fireVetoableChange(java.lang.String,java.lang.Object,java.lang.Object)) method.

    Parameters:
    :   `propertyName` - the programmatic name of the property that is about to change
    :   `oldValue` - the old value of the property
    :   `newValue` - the new value of the property

    Throws:
    :   `PropertyVetoException` - if one of listeners vetoes the property update

    Since:
    :   1.2
  + ### fireVetoableChange

    public void fireVetoableChange([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    boolean oldValue,
    boolean newValue)
    throws [PropertyVetoException](PropertyVetoException.md "class in java.beans")

    Reports a boolean constrained property update to listeners
    that have been registered to track updates of
    all properties or a property with the specified name.

    Any listener can throw a `PropertyVetoException` to veto the update.
    If one of the listeners vetoes the update, this method passes
    a new "undo" `PropertyChangeEvent` that reverts to the old value
    to all listeners that already confirmed this update
    and throws the `PropertyVetoException` again.

    No event is fired if old and new values are equal.

    This is merely a convenience wrapper around the more general
    [`fireVetoableChange(String, Object, Object)`](#fireVetoableChange(java.lang.String,java.lang.Object,java.lang.Object)) method.

    Parameters:
    :   `propertyName` - the programmatic name of the property that is about to change
    :   `oldValue` - the old value of the property
    :   `newValue` - the new value of the property

    Throws:
    :   `PropertyVetoException` - if one of listeners vetoes the property update

    Since:
    :   1.2
  + ### fireVetoableChange

    public void fireVetoableChange([PropertyChangeEvent](PropertyChangeEvent.md "class in java.beans") event)
    throws [PropertyVetoException](PropertyVetoException.md "class in java.beans")

    Fires a property change event to listeners
    that have been registered to track updates of
    all properties or a property with the specified name.

    Any listener can throw a `PropertyVetoException` to veto the update.
    If one of the listeners vetoes the update, this method passes
    a new "undo" `PropertyChangeEvent` that reverts to the old value
    to all listeners that already confirmed this update
    and throws the `PropertyVetoException` again.

    No event is fired if the given event's old and new values are equal and non-null.

    Parameters:
    :   `event` - the `PropertyChangeEvent` to be fired

    Throws:
    :   `PropertyVetoException` - if one of listeners vetoes the property update

    Since:
    :   1.2
  + ### hasListeners

    public boolean hasListeners([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName)

    Check if there are any listeners for a specific property, including
    those registered on all properties. If `propertyName`
    is null, only check for listeners registered on all properties.

    Parameters:
    :   `propertyName` - the property name.

    Returns:
    :   true if there are one or more listeners for the given property

    Since:
    :   1.2