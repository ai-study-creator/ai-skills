Module [java.desktop](../../module-summary.md)

Package [java.beans](package-summary.md)

# Class PropertyChangeSupport

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.beans.PropertyChangeSupport

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `SwingPropertyChangeSupport`

---

public class PropertyChangeSupport
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

This is a utility class that can be used by beans that support bound
properties. It manages a list of listeners and dispatches
[`PropertyChangeEvent`](PropertyChangeEvent.md "class in java.beans")s to them. You can use an instance of this class
as a member field of your bean and delegate these types of work to it.
The [`PropertyChangeListener`](PropertyChangeListener.md "interface in java.beans") can be registered for all properties
or for a property specified by name.

Here is an example of `PropertyChangeSupport` usage that follows
the rules and recommendations laid out in the JavaBeans specification:

```
 public class MyBean {
     private final PropertyChangeSupport pcs = new PropertyChangeSupport(this);

     public void addPropertyChangeListener(PropertyChangeListener listener) {
         this.pcs.addPropertyChangeListener(listener);
     }

     public void removePropertyChangeListener(PropertyChangeListener listener) {
         this.pcs.removePropertyChangeListener(listener);
     }

     private String value;

     public String getValue() {
         return this.value;
     }

     public void setValue(String newValue) {
         String oldValue = this.value;
         this.value = newValue;
         this.pcs.firePropertyChange("value", oldValue, newValue);
     }

     [...]
 }
```

A `PropertyChangeSupport` instance is thread-safe.

This class is serializable. When it is serialized it will save
(and restore) any listeners that are themselves serializable. Any
non-serializable listeners will be skipped during serialization.

Since:
:   1.1

See Also:
:   * [`VetoableChangeSupport`](VetoableChangeSupport.md "class in java.beans")
    * [Serialized Form](../../../serialized-form.md#java.beans.PropertyChangeSupport)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PropertyChangeSupport(Object sourceBean)`

  Constructs a `PropertyChangeSupport` object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addPropertyChangeListener(PropertyChangeListener listener)`

  Add a PropertyChangeListener to the listener list.

  `void`

  `addPropertyChangeListener(String propertyName,
  PropertyChangeListener listener)`

  Add a PropertyChangeListener for a specific property.

  `void`

  `fireIndexedPropertyChange(String propertyName,
  int index,
  boolean oldValue,
  boolean newValue)`

  Reports a boolean bound indexed property update to listeners
  that have been registered to track updates of
  all properties or a property with the specified name.

  `void`

  `fireIndexedPropertyChange(String propertyName,
  int index,
  int oldValue,
  int newValue)`

  Reports an integer bound indexed property update to listeners
  that have been registered to track updates of
  all properties or a property with the specified name.

  `void`

  `fireIndexedPropertyChange(String propertyName,
  int index,
  Object oldValue,
  Object newValue)`

  Reports a bound indexed property update to listeners
  that have been registered to track updates of
  all properties or a property with the specified name.

  `void`

  `firePropertyChange(PropertyChangeEvent event)`

  Fires a property change event to listeners
  that have been registered to track updates of
  all properties or a property with the specified name.

  `void`

  `firePropertyChange(String propertyName,
  boolean oldValue,
  boolean newValue)`

  Reports a boolean bound property update to listeners
  that have been registered to track updates of
  all properties or a property with the specified name.

  `void`

  `firePropertyChange(String propertyName,
  int oldValue,
  int newValue)`

  Reports an integer bound property update to listeners
  that have been registered to track updates of
  all properties or a property with the specified name.

  `void`

  `firePropertyChange(String propertyName,
  Object oldValue,
  Object newValue)`

  Reports a bound property update to listeners
  that have been registered to track updates of
  all properties or a property with the specified name.

  `PropertyChangeListener[]`

  `getPropertyChangeListeners()`

  Returns an array of all the listeners that were added to the
  PropertyChangeSupport object with addPropertyChangeListener().

  `PropertyChangeListener[]`

  `getPropertyChangeListeners(String propertyName)`

  Returns an array of all the listeners which have been associated
  with the named property.

  `boolean`

  `hasListeners(String propertyName)`

  Check if there are any listeners for a specific property, including
  those registered on all properties.

  `void`

  `removePropertyChangeListener(PropertyChangeListener listener)`

  Remove a PropertyChangeListener from the listener list.

  `void`

  `removePropertyChangeListener(String propertyName,
  PropertyChangeListener listener)`

  Remove a PropertyChangeListener for a specific property.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### PropertyChangeSupport

    public PropertyChangeSupport([Object](../../../java.base/java/lang/Object.md "class in java.lang") sourceBean)

    Constructs a `PropertyChangeSupport` object.

    Parameters:
    :   `sourceBean` - The bean to be given as the source for any events.
* ## Method Details

  + ### addPropertyChangeListener

    public void addPropertyChangeListener([PropertyChangeListener](PropertyChangeListener.md "interface in java.beans") listener)

    Add a PropertyChangeListener to the listener list.
    The listener is registered for all properties.
    The same listener object may be added more than once, and will be called
    as many times as it is added.
    If `listener` is null, no exception is thrown and no action
    is taken.

    Parameters:
    :   `listener` - The PropertyChangeListener to be added
  + ### removePropertyChangeListener

    public void removePropertyChangeListener([PropertyChangeListener](PropertyChangeListener.md "interface in java.beans") listener)

    Remove a PropertyChangeListener from the listener list.
    This removes a PropertyChangeListener that was registered
    for all properties.
    If `listener` was added more than once to the same event
    source, it will be notified one less time after being removed.
    If `listener` is null, or was never added, no exception is
    thrown and no action is taken.

    Parameters:
    :   `listener` - The PropertyChangeListener to be removed
  + ### getPropertyChangeListeners

    public [PropertyChangeListener](PropertyChangeListener.md "interface in java.beans")[] getPropertyChangeListeners()

    Returns an array of all the listeners that were added to the
    PropertyChangeSupport object with addPropertyChangeListener().

    If some listeners have been added with a named property, then
    the returned array will be a mixture of PropertyChangeListeners
    and `PropertyChangeListenerProxy`s. If the calling
    method is interested in distinguishing the listeners then it must
    test each element to see if it's a
    `PropertyChangeListenerProxy`, perform the cast, and examine
    the parameter.

    ```
     PropertyChangeListener[] listeners = bean.getPropertyChangeListeners();
     for (int i = 0; i < listeners.length; i++) {
       if (listeners[i] instanceof PropertyChangeListenerProxy) {
         PropertyChangeListenerProxy proxy =
                        (PropertyChangeListenerProxy)listeners[i];
         if (proxy.getPropertyName().equals("foo")) {
           // proxy is a PropertyChangeListener which was associated
           // with the property named "foo"
         }
       }
     }
    ```

    Returns:
    :   all of the `PropertyChangeListeners` added or an
        empty array if no listeners have been added

    Since:
    :   1.4

    See Also:
    :   - [`PropertyChangeListenerProxy`](PropertyChangeListenerProxy.md "class in java.beans")
  + ### addPropertyChangeListener

    public void addPropertyChangeListener([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    [PropertyChangeListener](PropertyChangeListener.md "interface in java.beans") listener)

    Add a PropertyChangeListener for a specific property. The listener
    will be invoked only when a call on firePropertyChange names that
    specific property.
    The same listener object may be added more than once. For each
    property, the listener will be invoked the number of times it was added
    for that property.
    If `propertyName` or `listener` is null, no
    exception is thrown and no action is taken.

    Parameters:
    :   `propertyName` - The name of the property to listen on.
    :   `listener` - The PropertyChangeListener to be added

    Since:
    :   1.2
  + ### removePropertyChangeListener

    public void removePropertyChangeListener([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    [PropertyChangeListener](PropertyChangeListener.md "interface in java.beans") listener)

    Remove a PropertyChangeListener for a specific property.
    If `listener` was added more than once to the same event
    source for the specified property, it will be notified one less time
    after being removed.
    If `propertyName` is null, no exception is thrown and no
    action is taken.
    If `listener` is null, or was never added for the specified
    property, no exception is thrown and no action is taken.

    Parameters:
    :   `propertyName` - The name of the property that was listened on.
    :   `listener` - The PropertyChangeListener to be removed

    Since:
    :   1.2
  + ### getPropertyChangeListeners

    public [PropertyChangeListener](PropertyChangeListener.md "interface in java.beans")[] getPropertyChangeListeners([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName)

    Returns an array of all the listeners which have been associated
    with the named property.

    Parameters:
    :   `propertyName` - The name of the property being listened to

    Returns:
    :   all of the `PropertyChangeListeners` associated with
        the named property. If no such listeners have been added,
        or if `propertyName` is null, an empty array is
        returned.

    Since:
    :   1.4
  + ### firePropertyChange

    public void firePropertyChange([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") oldValue,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") newValue)

    Reports a bound property update to listeners
    that have been registered to track updates of
    all properties or a property with the specified name.

    No event is fired if old and new values are equal and non-null.

    This is merely a convenience wrapper around the more general
    [`firePropertyChange(PropertyChangeEvent)`](#firePropertyChange(java.beans.PropertyChangeEvent)) method.

    Parameters:
    :   `propertyName` - the programmatic name of the property that was changed
    :   `oldValue` - the old value of the property
    :   `newValue` - the new value of the property
  + ### firePropertyChange

    public void firePropertyChange([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    int oldValue,
    int newValue)

    Reports an integer bound property update to listeners
    that have been registered to track updates of
    all properties or a property with the specified name.

    No event is fired if old and new values are equal.

    This is merely a convenience wrapper around the more general
    [`firePropertyChange(String, Object, Object)`](#firePropertyChange(java.lang.String,java.lang.Object,java.lang.Object)) method.

    Parameters:
    :   `propertyName` - the programmatic name of the property that was changed
    :   `oldValue` - the old value of the property
    :   `newValue` - the new value of the property

    Since:
    :   1.2
  + ### firePropertyChange

    public void firePropertyChange([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    boolean oldValue,
    boolean newValue)

    Reports a boolean bound property update to listeners
    that have been registered to track updates of
    all properties or a property with the specified name.

    No event is fired if old and new values are equal.

    This is merely a convenience wrapper around the more general
    [`firePropertyChange(String, Object, Object)`](#firePropertyChange(java.lang.String,java.lang.Object,java.lang.Object)) method.

    Parameters:
    :   `propertyName` - the programmatic name of the property that was changed
    :   `oldValue` - the old value of the property
    :   `newValue` - the new value of the property

    Since:
    :   1.2
  + ### firePropertyChange

    public void firePropertyChange([PropertyChangeEvent](PropertyChangeEvent.md "class in java.beans") event)

    Fires a property change event to listeners
    that have been registered to track updates of
    all properties or a property with the specified name.

    No event is fired if the given event's old and new values are equal and non-null.

    Parameters:
    :   `event` - the `PropertyChangeEvent` to be fired

    Since:
    :   1.2
  + ### fireIndexedPropertyChange

    public void fireIndexedPropertyChange([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    int index,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") oldValue,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") newValue)

    Reports a bound indexed property update to listeners
    that have been registered to track updates of
    all properties or a property with the specified name.

    No event is fired if old and new values are equal and non-null.

    This is merely a convenience wrapper around the more general
    [`firePropertyChange(PropertyChangeEvent)`](#firePropertyChange(java.beans.PropertyChangeEvent)) method.

    Parameters:
    :   `propertyName` - the programmatic name of the property that was changed
    :   `index` - the index of the property element that was changed
    :   `oldValue` - the old value of the property
    :   `newValue` - the new value of the property

    Since:
    :   1.5
  + ### fireIndexedPropertyChange

    public void fireIndexedPropertyChange([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    int index,
    int oldValue,
    int newValue)

    Reports an integer bound indexed property update to listeners
    that have been registered to track updates of
    all properties or a property with the specified name.

    No event is fired if old and new values are equal.

    This is merely a convenience wrapper around the more general
    [`fireIndexedPropertyChange(String, int, Object, Object)`](#fireIndexedPropertyChange(java.lang.String,int,java.lang.Object,java.lang.Object)) method.

    Parameters:
    :   `propertyName` - the programmatic name of the property that was changed
    :   `index` - the index of the property element that was changed
    :   `oldValue` - the old value of the property
    :   `newValue` - the new value of the property

    Since:
    :   1.5
  + ### fireIndexedPropertyChange

    public void fireIndexedPropertyChange([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    int index,
    boolean oldValue,
    boolean newValue)

    Reports a boolean bound indexed property update to listeners
    that have been registered to track updates of
    all properties or a property with the specified name.

    No event is fired if old and new values are equal.

    This is merely a convenience wrapper around the more general
    [`fireIndexedPropertyChange(String, int, Object, Object)`](#fireIndexedPropertyChange(java.lang.String,int,java.lang.Object,java.lang.Object)) method.

    Parameters:
    :   `propertyName` - the programmatic name of the property that was changed
    :   `index` - the index of the property element that was changed
    :   `oldValue` - the old value of the property
    :   `newValue` - the new value of the property

    Since:
    :   1.5
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