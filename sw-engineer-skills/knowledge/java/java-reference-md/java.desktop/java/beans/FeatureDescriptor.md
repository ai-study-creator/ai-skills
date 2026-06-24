Module [java.desktop](../../module-summary.md)

Package [java.beans](package-summary.md)

# Class FeatureDescriptor

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.beans.FeatureDescriptor

Direct Known Subclasses:
:   `BeanDescriptor`, `EventSetDescriptor`, `MethodDescriptor`, `ParameterDescriptor`, `PropertyDescriptor`

---

public class FeatureDescriptor
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

The FeatureDescriptor class is the common baseclass for PropertyDescriptor,
EventSetDescriptor, and MethodDescriptor, etc.

It supports some common information that can be set and retrieved for
any of the introspection descriptors.

In addition it provides an extension mechanism so that arbitrary
attribute/value pairs can be associated with a design feature.

Since:
:   1.1

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `FeatureDescriptor()`

  Constructs a `FeatureDescriptor`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Enumeration<String>`

  `attributeNames()`

  Gets an enumeration of the locale-independent names of this
  feature.

  `String`

  `getDisplayName()`

  Gets the localized display name of this feature.

  `String`

  `getName()`

  Gets the programmatic name of this feature.

  `String`

  `getShortDescription()`

  Gets the short description of this feature.

  `Object`

  `getValue(String attributeName)`

  Retrieve a named attribute with this feature.

  `boolean`

  `isExpert()`

  The "expert" flag is used to distinguish between those features that are
  intended for expert users from those that are intended for normal users.

  `boolean`

  `isHidden()`

  The "hidden" flag is used to identify features that are intended only
  for tool use, and which should not be exposed to humans.

  `boolean`

  `isPreferred()`

  The "preferred" flag is used to identify features that are particularly
  important for presenting to humans.

  `void`

  `setDisplayName(String displayName)`

  Sets the localized display name of this feature.

  `void`

  `setExpert(boolean expert)`

  The "expert" flag is used to distinguish between features that are
  intended for expert users from those that are intended for normal users.

  `void`

  `setHidden(boolean hidden)`

  The "hidden" flag is used to identify features that are intended only
  for tool use, and which should not be exposed to humans.

  `void`

  `setName(String name)`

  Sets the programmatic name of this feature.

  `void`

  `setPreferred(boolean preferred)`

  The "preferred" flag is used to identify features that are particularly
  important for presenting to humans.

  `void`

  `setShortDescription(String text)`

  You can associate a short descriptive string with a feature.

  `void`

  `setValue(String attributeName,
  Object value)`

  Associate a named attribute with this feature.

  `String`

  `toString()`

  Returns a string representation of the object.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### FeatureDescriptor

    public FeatureDescriptor()

    Constructs a `FeatureDescriptor`.
* ## Method Details

  + ### getName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getName()

    Gets the programmatic name of this feature.

    Returns:
    :   The programmatic name of the property/method/event
  + ### setName

    public void setName([String](../../../java.base/java/lang/String.md "class in java.lang") name)

    Sets the programmatic name of this feature.

    Parameters:
    :   `name` - The programmatic name of the property/method/event
  + ### getDisplayName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getDisplayName()

    Gets the localized display name of this feature.

    Returns:
    :   The localized display name for the property/method/event.
        This defaults to the same as its programmatic name from getName.
  + ### setDisplayName

    public void setDisplayName([String](../../../java.base/java/lang/String.md "class in java.lang") displayName)

    Sets the localized display name of this feature.

    Parameters:
    :   `displayName` - The localized display name for the
        property/method/event.
  + ### isExpert

    public boolean isExpert()

    The "expert" flag is used to distinguish between those features that are
    intended for expert users from those that are intended for normal users.

    Returns:
    :   True if this feature is intended for use by experts only.
  + ### setExpert

    public void setExpert(boolean expert)

    The "expert" flag is used to distinguish between features that are
    intended for expert users from those that are intended for normal users.

    Parameters:
    :   `expert` - True if this feature is intended for use by experts only.
  + ### isHidden

    public boolean isHidden()

    The "hidden" flag is used to identify features that are intended only
    for tool use, and which should not be exposed to humans.

    Returns:
    :   True if this feature should be hidden from human users.
  + ### setHidden

    public void setHidden(boolean hidden)

    The "hidden" flag is used to identify features that are intended only
    for tool use, and which should not be exposed to humans.

    Parameters:
    :   `hidden` - True if this feature should be hidden from human users.
  + ### isPreferred

    public boolean isPreferred()

    The "preferred" flag is used to identify features that are particularly
    important for presenting to humans.

    Returns:
    :   True if this feature should be preferentially shown to human users.

    Since:
    :   1.2
  + ### setPreferred

    public void setPreferred(boolean preferred)

    The "preferred" flag is used to identify features that are particularly
    important for presenting to humans.

    Parameters:
    :   `preferred` - True if this feature should be preferentially shown
        to human users.

    Since:
    :   1.2
  + ### getShortDescription

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getShortDescription()

    Gets the short description of this feature.

    Returns:
    :   A localized short description associated with this
        property/method/event. This defaults to be the display name.
  + ### setShortDescription

    public void setShortDescription([String](../../../java.base/java/lang/String.md "class in java.lang") text)

    You can associate a short descriptive string with a feature. Normally
    these descriptive strings should be less than about 40 characters.

    Parameters:
    :   `text` - A (localized) short description to be associated with
        this property/method/event.
  + ### setValue

    public void setValue([String](../../../java.base/java/lang/String.md "class in java.lang") attributeName,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") value)

    Associate a named attribute with this feature.

    Parameters:
    :   `attributeName` - The locale-independent name of the attribute
    :   `value` - The value.
  + ### getValue

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getValue([String](../../../java.base/java/lang/String.md "class in java.lang") attributeName)

    Retrieve a named attribute with this feature.

    Parameters:
    :   `attributeName` - The locale-independent name of the attribute

    Returns:
    :   The value of the attribute. May be null if
        the attribute is unknown.
  + ### attributeNames

    public [Enumeration](../../../java.base/java/util/Enumeration.md "interface in java.util")<[String](../../../java.base/java/lang/String.md "class in java.lang")> attributeNames()

    Gets an enumeration of the locale-independent names of this
    feature.

    Returns:
    :   An enumeration of the locale-independent names of any
        attributes that have been registered with setValue.
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of the object.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object

    Since:
    :   1.7