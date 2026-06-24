Module [java.desktop](../../module-summary.md)

Package [java.beans](package-summary.md)

# Class EventSetDescriptor

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.beans.FeatureDescriptor](FeatureDescriptor.md "class in java.beans")

java.beans.EventSetDescriptor

---

public class EventSetDescriptor
extends [FeatureDescriptor](FeatureDescriptor.md "class in java.beans")

An EventSetDescriptor describes a group of events that a given Java
bean fires.

The given group of events are all delivered as method calls on a single
event listener interface, and an event listener object can be registered
via a call on a registration method supplied by the event source.

Since:
:   1.1

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `EventSetDescriptor(Class<?> sourceClass,
  String eventSetName,
  Class<?> listenerType,
  String listenerMethodName)`

  Creates an `EventSetDescriptor` assuming that you are
  following the most simple standard design pattern where a named
  event "fred" is (1) delivered as a call on the single method of
  interface FredListener, (2) has a single argument of type FredEvent,
  and (3) where the FredListener may be registered with a call on an
  addFredListener method of the source component and removed with a
  call on a removeFredListener method.

  `EventSetDescriptor(Class<?> sourceClass,
  String eventSetName,
  Class<?> listenerType,
  String[] listenerMethodNames,
  String addListenerMethodName,
  String removeListenerMethodName)`

  Creates an `EventSetDescriptor` from scratch using
  string names.

  `EventSetDescriptor(Class<?> sourceClass,
  String eventSetName,
  Class<?> listenerType,
  String[] listenerMethodNames,
  String addListenerMethodName,
  String removeListenerMethodName,
  String getListenerMethodName)`

  This constructor creates an EventSetDescriptor from scratch using
  string names.

  `EventSetDescriptor(String eventSetName,
  Class<?> listenerType,
  MethodDescriptor[] listenerMethodDescriptors,
  Method addListenerMethod,
  Method removeListenerMethod)`

  Creates an `EventSetDescriptor` from scratch using
  `java.lang.reflect.MethodDescriptor` and `java.lang.Class`
  objects.

  `EventSetDescriptor(String eventSetName,
  Class<?> listenerType,
  Method[] listenerMethods,
  Method addListenerMethod,
  Method removeListenerMethod)`

  Creates an `EventSetDescriptor` from scratch using
  `java.lang.reflect.Method` and `java.lang.Class` objects.

  `EventSetDescriptor(String eventSetName,
  Class<?> listenerType,
  Method[] listenerMethods,
  Method addListenerMethod,
  Method removeListenerMethod,
  Method getListenerMethod)`

  This constructor creates an EventSetDescriptor from scratch using
  java.lang.reflect.Method and java.lang.Class objects.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Method`

  `getAddListenerMethod()`

  Gets the method used to add event listeners.

  `Method`

  `getGetListenerMethod()`

  Gets the method used to access the registered event listeners.

  `MethodDescriptor[]`

  `getListenerMethodDescriptors()`

  Gets the `MethodDescriptor`s of the target listener interface.

  `Method[]`

  `getListenerMethods()`

  Gets the methods of the target listener interface.

  `Class<?>`

  `getListenerType()`

  Gets the `Class` object for the target interface.

  `Method`

  `getRemoveListenerMethod()`

  Gets the method used to remove event listeners.

  `boolean`

  `isInDefaultEventSet()`

  Reports if an event set is in the "default" set.

  `boolean`

  `isUnicast()`

  Normally event sources are multicast.

  `void`

  `setInDefaultEventSet(boolean inDefaultEventSet)`

  Marks an event set as being in the "default" set (or not).

  `void`

  `setUnicast(boolean unicast)`

  Mark an event set as unicast (or not).

  ### Methods inherited from class java.beans.[FeatureDescriptor](FeatureDescriptor.md "class in java.beans")

  `attributeNames, getDisplayName, getName, getShortDescription, getValue, isExpert, isHidden, isPreferred, setDisplayName, setExpert, setHidden, setName, setPreferred, setShortDescription, setValue, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### EventSetDescriptor

    public EventSetDescriptor([Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> sourceClass,
    [String](../../../java.base/java/lang/String.md "class in java.lang") eventSetName,
    [Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> listenerType,
    [String](../../../java.base/java/lang/String.md "class in java.lang") listenerMethodName)
    throws [IntrospectionException](IntrospectionException.md "class in java.beans")

    Creates an `EventSetDescriptor` assuming that you are
    following the most simple standard design pattern where a named
    event "fred" is (1) delivered as a call on the single method of
    interface FredListener, (2) has a single argument of type FredEvent,
    and (3) where the FredListener may be registered with a call on an
    addFredListener method of the source component and removed with a
    call on a removeFredListener method.

    Parameters:
    :   `sourceClass` - The class firing the event.
    :   `eventSetName` - The programmatic name of the event. E.g. "fred".
        Note that this should normally start with a lower-case character.
    :   `listenerType` - The target interface that events
        will get delivered to.
    :   `listenerMethodName` - The method that will get called when the event gets
        delivered to its target listener interface.

    Throws:
    :   `IntrospectionException` - if an exception occurs during
        introspection.
  + ### EventSetDescriptor

    public EventSetDescriptor([Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> sourceClass,
    [String](../../../java.base/java/lang/String.md "class in java.lang") eventSetName,
    [Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> listenerType,
    [String](../../../java.base/java/lang/String.md "class in java.lang")[] listenerMethodNames,
    [String](../../../java.base/java/lang/String.md "class in java.lang") addListenerMethodName,
    [String](../../../java.base/java/lang/String.md "class in java.lang") removeListenerMethodName)
    throws [IntrospectionException](IntrospectionException.md "class in java.beans")

    Creates an `EventSetDescriptor` from scratch using
    string names.

    Parameters:
    :   `sourceClass` - The class firing the event.
    :   `eventSetName` - The programmatic name of the event set.
        Note that this should normally start with a lower-case character.
    :   `listenerType` - The Class of the target interface that events
        will get delivered to.
    :   `listenerMethodNames` - The names of the methods that will get called
        when the event gets delivered to its target listener interface.
    :   `addListenerMethodName` - The name of the method on the event source
        that can be used to register an event listener object.
    :   `removeListenerMethodName` - The name of the method on the event source
        that can be used to de-register an event listener object.

    Throws:
    :   `IntrospectionException` - if an exception occurs during
        introspection.
  + ### EventSetDescriptor

    public EventSetDescriptor([Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> sourceClass,
    [String](../../../java.base/java/lang/String.md "class in java.lang") eventSetName,
    [Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> listenerType,
    [String](../../../java.base/java/lang/String.md "class in java.lang")[] listenerMethodNames,
    [String](../../../java.base/java/lang/String.md "class in java.lang") addListenerMethodName,
    [String](../../../java.base/java/lang/String.md "class in java.lang") removeListenerMethodName,
    [String](../../../java.base/java/lang/String.md "class in java.lang") getListenerMethodName)
    throws [IntrospectionException](IntrospectionException.md "class in java.beans")

    This constructor creates an EventSetDescriptor from scratch using
    string names.

    Parameters:
    :   `sourceClass` - The class firing the event.
    :   `eventSetName` - The programmatic name of the event set.
        Note that this should normally start with a lower-case character.
    :   `listenerType` - The Class of the target interface that events
        will get delivered to.
    :   `listenerMethodNames` - The names of the methods that will get called
        when the event gets delivered to its target listener interface.
    :   `addListenerMethodName` - The name of the method on the event source
        that can be used to register an event listener object.
    :   `removeListenerMethodName` - The name of the method on the event source
        that can be used to de-register an event listener object.
    :   `getListenerMethodName` - The method on the event source that
        can be used to access the array of event listener objects.

    Throws:
    :   `IntrospectionException` - if an exception occurs during
        introspection.

    Since:
    :   1.4
  + ### EventSetDescriptor

    public EventSetDescriptor([String](../../../java.base/java/lang/String.md "class in java.lang") eventSetName,
    [Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> listenerType,
    [Method](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect")[] listenerMethods,
    [Method](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") addListenerMethod,
    [Method](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") removeListenerMethod)
    throws [IntrospectionException](IntrospectionException.md "class in java.beans")

    Creates an `EventSetDescriptor` from scratch using
    `java.lang.reflect.Method` and `java.lang.Class` objects.

    Parameters:
    :   `eventSetName` - The programmatic name of the event set.
    :   `listenerType` - The Class for the listener interface.
    :   `listenerMethods` - An array of Method objects describing each
        of the event handling methods in the target listener.
    :   `addListenerMethod` - The method on the event source
        that can be used to register an event listener object.
    :   `removeListenerMethod` - The method on the event source
        that can be used to de-register an event listener object.

    Throws:
    :   `IntrospectionException` - if an exception occurs during
        introspection.
  + ### EventSetDescriptor

    public EventSetDescriptor([String](../../../java.base/java/lang/String.md "class in java.lang") eventSetName,
    [Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> listenerType,
    [Method](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect")[] listenerMethods,
    [Method](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") addListenerMethod,
    [Method](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") removeListenerMethod,
    [Method](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") getListenerMethod)
    throws [IntrospectionException](IntrospectionException.md "class in java.beans")

    This constructor creates an EventSetDescriptor from scratch using
    java.lang.reflect.Method and java.lang.Class objects.

    Parameters:
    :   `eventSetName` - The programmatic name of the event set.
    :   `listenerType` - The Class for the listener interface.
    :   `listenerMethods` - An array of Method objects describing each
        of the event handling methods in the target listener.
    :   `addListenerMethod` - The method on the event source
        that can be used to register an event listener object.
    :   `removeListenerMethod` - The method on the event source
        that can be used to de-register an event listener object.
    :   `getListenerMethod` - The method on the event source
        that can be used to access the array of event listener objects.

    Throws:
    :   `IntrospectionException` - if an exception occurs during
        introspection.

    Since:
    :   1.4
  + ### EventSetDescriptor

    public EventSetDescriptor([String](../../../java.base/java/lang/String.md "class in java.lang") eventSetName,
    [Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> listenerType,
    [MethodDescriptor](MethodDescriptor.md "class in java.beans")[] listenerMethodDescriptors,
    [Method](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") addListenerMethod,
    [Method](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") removeListenerMethod)
    throws [IntrospectionException](IntrospectionException.md "class in java.beans")

    Creates an `EventSetDescriptor` from scratch using
    `java.lang.reflect.MethodDescriptor` and `java.lang.Class`
    objects.

    Parameters:
    :   `eventSetName` - The programmatic name of the event set.
    :   `listenerType` - The Class for the listener interface.
    :   `listenerMethodDescriptors` - An array of MethodDescriptor objects
        describing each of the event handling methods in the
        target listener.
    :   `addListenerMethod` - The method on the event source
        that can be used to register an event listener object.
    :   `removeListenerMethod` - The method on the event source
        that can be used to de-register an event listener object.

    Throws:
    :   `IntrospectionException` - if an exception occurs during
        introspection.
* ## Method Details

  + ### getListenerType

    public [Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> getListenerType()

    Gets the `Class` object for the target interface.

    Returns:
    :   The Class object for the target interface that will
        get invoked when the event is fired.
  + ### getListenerMethods

    public [Method](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect")[] getListenerMethods()

    Gets the methods of the target listener interface.

    Returns:
    :   An array of `Method` objects for the target methods
        within the target listener interface that will get called when
        events are fired.
  + ### getListenerMethodDescriptors

    public [MethodDescriptor](MethodDescriptor.md "class in java.beans")[] getListenerMethodDescriptors()

    Gets the `MethodDescriptor`s of the target listener interface.

    Returns:
    :   An array of `MethodDescriptor` objects for the target methods
        within the target listener interface that will get called when
        events are fired.
  + ### getAddListenerMethod

    public [Method](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") getAddListenerMethod()

    Gets the method used to add event listeners.

    Returns:
    :   The method used to register a listener at the event source.
  + ### getRemoveListenerMethod

    public [Method](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") getRemoveListenerMethod()

    Gets the method used to remove event listeners.

    Returns:
    :   The method used to remove a listener at the event source.
  + ### getGetListenerMethod

    public [Method](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") getGetListenerMethod()

    Gets the method used to access the registered event listeners.

    Returns:
    :   The method used to access the array of listeners at the event
        source or null if it doesn't exist.

    Since:
    :   1.4
  + ### setUnicast

    public void setUnicast(boolean unicast)

    Mark an event set as unicast (or not).

    Parameters:
    :   `unicast` - True if the event set is unicast.
  + ### isUnicast

    public boolean isUnicast()

    Normally event sources are multicast. However there are some
    exceptions that are strictly unicast.

    Returns:
    :   `true` if the event set is unicast.
        Defaults to `false`.
  + ### setInDefaultEventSet

    public void setInDefaultEventSet(boolean inDefaultEventSet)

    Marks an event set as being in the "default" set (or not).
    By default this is `true`.

    Parameters:
    :   `inDefaultEventSet` - `true` if the event set is in
        the "default" set,
        `false` if not
  + ### isInDefaultEventSet

    public boolean isInDefaultEventSet()

    Reports if an event set is in the "default" set.

    Returns:
    :   `true` if the event set is in
        the "default" set. Defaults to `true`.