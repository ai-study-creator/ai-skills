Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class StyleContext.NamedStyle

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.StyleContext.NamedStyle

All Implemented Interfaces:
:   `Serializable`, `AttributeSet`, `MutableAttributeSet`, `Style`

Enclosing class:
:   `StyleContext`

---

public class StyleContext.NamedStyle
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Style](Style.md "interface in javax.swing.text"), [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

A collection of attributes, typically used to represent
character and paragraph styles. This is an implementation
of MutableAttributeSet that can be observed if desired.
These styles will take advantage of immutability while
the sets are small enough, and may be substantially more
efficient than something like SimpleAttributeSet.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface javax.swing.text.[AttributeSet](AttributeSet.md "interface in javax.swing.text")

  `AttributeSet.CharacterAttribute, AttributeSet.ColorAttribute, AttributeSet.FontAttribute, AttributeSet.ParagraphAttribute`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected ChangeEvent`

  `changeEvent`

  Only one ChangeEvent is needed per model instance since the
  event's only (read-only) state is the source property.

  `protected EventListenerList`

  `listenerList`

  The change listeners for the model.

  ### Fields inherited from interface javax.swing.text.[AttributeSet](AttributeSet.md "interface in javax.swing.text")

  `NameAttribute, ResolveAttribute`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NamedStyle()`

  Creates a new named style, with a null name and parent.

  `NamedStyle(String name,
  Style parent)`

  Creates a new named style.

  `NamedStyle(Style parent)`

  Creates a new named style.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addAttribute(Object name,
  Object value)`

  Adds an attribute.

  `void`

  `addAttributes(AttributeSet attr)`

  Adds a set of attributes to the element.

  `void`

  `addChangeListener(ChangeListener l)`

  Adds a change listener.

  `boolean`

  `containsAttribute(Object name,
  Object value)`

  Checks whether a given attribute name/value is defined.

  `boolean`

  `containsAttributes(AttributeSet attrs)`

  Checks whether the element contains all the attributes.

  `AttributeSet`

  `copyAttributes()`

  Copies a set of attributes.

  `protected void`

  `fireStateChanged()`

  Notifies all listeners that have registered interest for
  notification on this event type.

  `Object`

  `getAttribute(Object attrName)`

  Gets the value of an attribute.

  `int`

  `getAttributeCount()`

  Gets the number of attributes that are defined.

  `Enumeration<?>`

  `getAttributeNames()`

  Gets the names of all attributes.

  `ChangeListener[]`

  `getChangeListeners()`

  Returns an array of all the `ChangeListener`s added
  to this NamedStyle with addChangeListener().

  `<T extends EventListener>  
  T[]`

  `getListeners(Class<T> listenerType)`

  Return an array of all the listeners of the given type that
  were added to this model.

  `String`

  `getName()`

  Fetches the name of the style.

  `AttributeSet`

  `getResolveParent()`

  Gets attributes from the parent.

  `boolean`

  `isDefined(Object attrName)`

  Checks whether a given attribute is defined.

  `boolean`

  `isEqual(AttributeSet attr)`

  Checks whether two attribute sets are equal.

  `void`

  `removeAttribute(Object name)`

  Removes an attribute from the set.

  `void`

  `removeAttributes(Enumeration<?> names)`

  Removes a set of attributes for the element.

  `void`

  `removeAttributes(AttributeSet attrs)`

  Removes a set of attributes for the element.

  `void`

  `removeChangeListener(ChangeListener l)`

  Removes a change listener.

  `void`

  `setName(String name)`

  Changes the name of the style.

  `void`

  `setResolveParent(AttributeSet parent)`

  Sets the resolving parent.

  `String`

  `toString()`

  Converts the style to a string.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### listenerList

    protected [EventListenerList](../event/EventListenerList.md "class in javax.swing.event") listenerList

    The change listeners for the model.
  + ### changeEvent

    protected transient [ChangeEvent](../event/ChangeEvent.md "class in javax.swing.event") changeEvent

    Only one ChangeEvent is needed per model instance since the
    event's only (read-only) state is the source property. The source
    of events generated here is always "this".
* ## Constructor Details

  + ### NamedStyle

    public NamedStyle([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [Style](Style.md "interface in javax.swing.text") parent)

    Creates a new named style.

    Parameters:
    :   `name` - the style name, null for unnamed
    :   `parent` - the parent style, null if none

    Since:
    :   1.4
  + ### NamedStyle

    public NamedStyle([Style](Style.md "interface in javax.swing.text") parent)

    Creates a new named style.

    Parameters:
    :   `parent` - the parent style, null if none

    Since:
    :   1.4
  + ### NamedStyle

    public NamedStyle()

    Creates a new named style, with a null name and parent.
* ## Method Details

  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Converts the style to a string.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   the string
  + ### getName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Fetches the name of the style. A style is not required to be named,
    so null is returned if there is no name associated with the style.

    Specified by:
    :   `getName` in interface `Style`

    Returns:
    :   the name
  + ### setName

    public void setName([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Changes the name of the style. Does nothing with a null name.

    Parameters:
    :   `name` - the new name
  + ### addChangeListener

    public void addChangeListener([ChangeListener](../event/ChangeListener.md "interface in javax.swing.event") l)

    Adds a change listener.

    Specified by:
    :   `addChangeListener` in interface `Style`

    Parameters:
    :   `l` - the change listener
  + ### removeChangeListener

    public void removeChangeListener([ChangeListener](../event/ChangeListener.md "interface in javax.swing.event") l)

    Removes a change listener.

    Specified by:
    :   `removeChangeListener` in interface `Style`

    Parameters:
    :   `l` - the change listener
  + ### getChangeListeners

    public [ChangeListener](../event/ChangeListener.md "interface in javax.swing.event")[] getChangeListeners()

    Returns an array of all the `ChangeListener`s added
    to this NamedStyle with addChangeListener().

    Returns:
    :   all of the `ChangeListener`s added or an empty
        array if no listeners have been added

    Since:
    :   1.4
  + ### fireStateChanged

    protected void fireStateChanged()

    Notifies all listeners that have registered interest for
    notification on this event type. The event instance
    is lazily created using the parameters passed into
    the fire method.

    See Also:
    :   - [`EventListenerList`](../event/EventListenerList.md "class in javax.swing.event")
  + ### getListeners

    public <T extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")> T[] getListeners([Class](../../../../java.base/java/lang/Class.md "class in java.lang")<T> listenerType)

    Return an array of all the listeners of the given type that
    were added to this model.

    Type Parameters:
    :   `T` - the listener type

    Parameters:
    :   `listenerType` - the type of listeners requested

    Returns:
    :   all of the objects receiving *listenerType* notifications
        from this model

    Since:
    :   1.3
  + ### getAttributeCount

    public int getAttributeCount()

    Gets the number of attributes that are defined.

    Specified by:
    :   `getAttributeCount` in interface `AttributeSet`

    Returns:
    :   the number of attributes >= 0

    See Also:
    :   - [`AttributeSet.getAttributeCount()`](AttributeSet.md#getAttributeCount())
  + ### isDefined

    public boolean isDefined([Object](../../../../java.base/java/lang/Object.md "class in java.lang") attrName)

    Checks whether a given attribute is defined.

    Specified by:
    :   `isDefined` in interface `AttributeSet`

    Parameters:
    :   `attrName` - the non-null attribute name

    Returns:
    :   true if the attribute is defined

    See Also:
    :   - [`AttributeSet.isDefined(java.lang.Object)`](AttributeSet.md#isDefined(java.lang.Object))
  + ### isEqual

    public boolean isEqual([AttributeSet](AttributeSet.md "interface in javax.swing.text") attr)

    Checks whether two attribute sets are equal.

    Specified by:
    :   `isEqual` in interface `AttributeSet`

    Parameters:
    :   `attr` - the attribute set to check against

    Returns:
    :   true if the same

    See Also:
    :   - [`AttributeSet.isEqual(javax.swing.text.AttributeSet)`](AttributeSet.md#isEqual(javax.swing.text.AttributeSet))
  + ### copyAttributes

    public [AttributeSet](AttributeSet.md "interface in javax.swing.text") copyAttributes()

    Copies a set of attributes.

    Specified by:
    :   `copyAttributes` in interface `AttributeSet`

    Returns:
    :   the copy

    See Also:
    :   - [`AttributeSet.copyAttributes()`](AttributeSet.md#copyAttributes())
  + ### getAttribute

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getAttribute([Object](../../../../java.base/java/lang/Object.md "class in java.lang") attrName)

    Gets the value of an attribute.

    Specified by:
    :   `getAttribute` in interface `AttributeSet`

    Parameters:
    :   `attrName` - the non-null attribute name

    Returns:
    :   the attribute value

    See Also:
    :   - [`AttributeSet.getAttribute(java.lang.Object)`](AttributeSet.md#getAttribute(java.lang.Object))
  + ### getAttributeNames

    public [Enumeration](../../../../java.base/java/util/Enumeration.md "interface in java.util")<?> getAttributeNames()

    Gets the names of all attributes.

    Specified by:
    :   `getAttributeNames` in interface `AttributeSet`

    Returns:
    :   the attribute names as an enumeration

    See Also:
    :   - [`AttributeSet.getAttributeNames()`](AttributeSet.md#getAttributeNames())
  + ### containsAttribute

    public boolean containsAttribute([Object](../../../../java.base/java/lang/Object.md "class in java.lang") name,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") value)

    Checks whether a given attribute name/value is defined.

    Specified by:
    :   `containsAttribute` in interface `AttributeSet`

    Parameters:
    :   `name` - the non-null attribute name
    :   `value` - the attribute value

    Returns:
    :   true if the name/value is defined

    See Also:
    :   - [`AttributeSet.containsAttribute(java.lang.Object, java.lang.Object)`](AttributeSet.md#containsAttribute(java.lang.Object,java.lang.Object))
  + ### containsAttributes

    public boolean containsAttributes([AttributeSet](AttributeSet.md "interface in javax.swing.text") attrs)

    Checks whether the element contains all the attributes.

    Specified by:
    :   `containsAttributes` in interface `AttributeSet`

    Parameters:
    :   `attrs` - the attributes to check

    Returns:
    :   true if the element contains all the attributes

    See Also:
    :   - [`AttributeSet.containsAttributes(javax.swing.text.AttributeSet)`](AttributeSet.md#containsAttributes(javax.swing.text.AttributeSet))
  + ### getResolveParent

    public [AttributeSet](AttributeSet.md "interface in javax.swing.text") getResolveParent()

    Gets attributes from the parent.
    If not overridden, the resolving parent defaults to
    the parent element.

    Specified by:
    :   `getResolveParent` in interface `AttributeSet`

    Returns:
    :   the attributes from the parent

    See Also:
    :   - [`AttributeSet.getResolveParent()`](AttributeSet.md#getResolveParent())
  + ### addAttribute

    public void addAttribute([Object](../../../../java.base/java/lang/Object.md "class in java.lang") name,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") value)

    Adds an attribute.

    Specified by:
    :   `addAttribute` in interface `MutableAttributeSet`

    Parameters:
    :   `name` - the non-null attribute name
    :   `value` - the attribute value

    See Also:
    :   - [`MutableAttributeSet.addAttribute(java.lang.Object, java.lang.Object)`](MutableAttributeSet.md#addAttribute(java.lang.Object,java.lang.Object))
  + ### addAttributes

    public void addAttributes([AttributeSet](AttributeSet.md "interface in javax.swing.text") attr)

    Adds a set of attributes to the element.

    Specified by:
    :   `addAttributes` in interface `MutableAttributeSet`

    Parameters:
    :   `attr` - the attributes to add

    See Also:
    :   - [`MutableAttributeSet.addAttribute(java.lang.Object, java.lang.Object)`](MutableAttributeSet.md#addAttribute(java.lang.Object,java.lang.Object))
  + ### removeAttribute

    public void removeAttribute([Object](../../../../java.base/java/lang/Object.md "class in java.lang") name)

    Removes an attribute from the set.

    Specified by:
    :   `removeAttribute` in interface `MutableAttributeSet`

    Parameters:
    :   `name` - the non-null attribute name

    See Also:
    :   - [`MutableAttributeSet.removeAttribute(java.lang.Object)`](MutableAttributeSet.md#removeAttribute(java.lang.Object))
  + ### removeAttributes

    public void removeAttributes([Enumeration](../../../../java.base/java/util/Enumeration.md "interface in java.util")<?> names)

    Removes a set of attributes for the element.

    Specified by:
    :   `removeAttributes` in interface `MutableAttributeSet`

    Parameters:
    :   `names` - the attribute names

    See Also:
    :   - [`MutableAttributeSet.removeAttributes(java.util.Enumeration<?>)`](MutableAttributeSet.md#removeAttributes(java.util.Enumeration))
  + ### removeAttributes

    public void removeAttributes([AttributeSet](AttributeSet.md "interface in javax.swing.text") attrs)

    Removes a set of attributes for the element.

    Specified by:
    :   `removeAttributes` in interface `MutableAttributeSet`

    Parameters:
    :   `attrs` - the attributes

    See Also:
    :   - [`MutableAttributeSet.removeAttributes(java.util.Enumeration<?>)`](MutableAttributeSet.md#removeAttributes(java.util.Enumeration))
  + ### setResolveParent

    public void setResolveParent([AttributeSet](AttributeSet.md "interface in javax.swing.text") parent)

    Sets the resolving parent.

    Specified by:
    :   `setResolveParent` in interface `MutableAttributeSet`

    Parameters:
    :   `parent` - the parent, null if none

    See Also:
    :   - [`MutableAttributeSet.setResolveParent(javax.swing.text.AttributeSet)`](MutableAttributeSet.md#setResolveParent(javax.swing.text.AttributeSet))