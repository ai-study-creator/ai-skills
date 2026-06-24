Module [java.desktop](../../module-summary.md)

Package [javax.accessibility](package-summary.md)

# Class AccessibleRelation

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.accessibility.AccessibleBundle](AccessibleBundle.md "class in javax.accessibility")

javax.accessibility.AccessibleRelation

---

public class AccessibleRelation
extends [AccessibleBundle](AccessibleBundle.md "class in javax.accessibility")

Class `AccessibleRelation` describes a relation between the object that
implements the `AccessibleRelation` and one or more other objects. The
actual relations that an object has with other objects are defined as an
`AccessibleRelationSet`, which is a composed set of
`AccessibleRelations`.

The [`AccessibleBundle.toDisplayString()`](AccessibleBundle.md#toDisplayString()) method allows you to obtain the localized
string for a locale independent key from a predefined `ResourceBundle`
for the keys defined in this class.

The constants in this class present a strongly typed enumeration of common
object roles. If the constants in this class are not sufficient to describe
the role of an object, a subclass should be generated from this class and it
should provide constants in a similar manner.

Since:
:   1.3

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `CHILD_NODE_OF`

  Indicates that an object is a child node of one or more objects.

  `static final String`

  `CHILD_NODE_OF_PROPERTY`

  Indicates the `CHILD_NODE_OF` relation between two or more objects
  has changed.

  `static final String`

  `CONTROLLED_BY`

  Indicates an object is controlled by one or more target objects.

  `static final String`

  `CONTROLLED_BY_PROPERTY`

  Identifies that the target object that is doing the controlling has
  changed.

  `static final String`

  `CONTROLLER_FOR`

  Indicates an object is a controller for one or more target objects.

  `static final String`

  `CONTROLLER_FOR_PROPERTY`

  Identifies that the controller for the target object has changed.

  `static final String`

  `EMBEDDED_BY`

  Indicates that an object is embedded in one or more objects.

  `static final String`

  `EMBEDDED_BY_PROPERTY`

  Indicates the `EMBEDDED_BY` relation between two or more objects
  has changed.

  `static final String`

  `EMBEDS`

  Indicates that an object has one or more objects embedded in it.

  `static final String`

  `EMBEDS_PROPERTY`

  Indicates the `EMBEDS` relation between two or more objects has
  changed.

  `static final String`

  `FLOWS_FROM`

  Indicates an object is logically contiguous with a second object where
  the second object occurs before the object.

  `static final String`

  `FLOWS_FROM_PROPERTY`

  Indicates the `FLOWS_FROM` relation between two objects has
  changed.

  `static final String`

  `FLOWS_TO`

  Indicates an object is logically contiguous with a second object where
  the second object occurs after the object.

  `static final String`

  `FLOWS_TO_PROPERTY`

  Indicates the `FLOWS_TO` relation between two objects has changed.

  `static final String`

  `LABEL_FOR`

  Indicates an object is a label for one or more target objects.

  `static final String`

  `LABEL_FOR_PROPERTY`

  Identifies that the target group for a label has changed.

  `static final String`

  `LABELED_BY`

  Indicates an object is labeled by one or more target objects.

  `static final String`

  `LABELED_BY_PROPERTY`

  Identifies that the objects that are doing the labeling have changed.

  `static final String`

  `MEMBER_OF`

  Indicates an object is a member of a group of one or more target objects.

  `static final String`

  `MEMBER_OF_PROPERTY`

  Identifies that group membership has changed.

  `static final String`

  `PARENT_WINDOW_OF`

  Indicates that an object is a parent window of one or more objects.

  `static final String`

  `PARENT_WINDOW_OF_PROPERTY`

  Indicates the `PARENT_WINDOW_OF` relation between two or more
  objects has changed.

  `static final String`

  `SUBWINDOW_OF`

  Indicates that an object is a subwindow of one or more objects.

  `static final String`

  `SUBWINDOW_OF_PROPERTY`

  Indicates the `SUBWINDOW_OF` relation between two or more objects
  has changed.

  ### Fields inherited from class javax.accessibility.[AccessibleBundle](AccessibleBundle.md "class in javax.accessibility")

  `key`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AccessibleRelation(String key)`

  Create a new `AccessibleRelation` using the given locale
  independent key.

  `AccessibleRelation(String key,
  Object target)`

  Creates a new `AccessibleRelation` using the given locale
  independent key.

  `AccessibleRelation(String key,
  Object[] target)`

  Creates a new `AccessibleRelation` using the given locale
  independent key.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getKey()`

  Returns the key for this relation.

  `Object[]`

  `getTarget()`

  Returns the target objects for this relation.

  `void`

  `setTarget(Object target)`

  Sets the target object for this relation.

  `void`

  `setTarget(Object[] target)`

  Sets the target objects for this relation.

  ### Methods inherited from class javax.accessibility.[AccessibleBundle](AccessibleBundle.md "class in javax.accessibility")

  `toDisplayString, toDisplayString, toDisplayString, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### LABEL\_FOR

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") LABEL\_FOR

    Indicates an object is a label for one or more target objects.

    See Also:
    :   - [`getTarget()`](#getTarget())
        - [`CONTROLLER_FOR`](#CONTROLLER_FOR)
        - [`CONTROLLED_BY`](#CONTROLLED_BY)
        - [`LABELED_BY`](#LABELED_BY)
        - [`MEMBER_OF`](#MEMBER_OF)
  + ### LABELED\_BY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") LABELED\_BY

    Indicates an object is labeled by one or more target objects.

    See Also:
    :   - [`getTarget()`](#getTarget())
        - [`CONTROLLER_FOR`](#CONTROLLER_FOR)
        - [`CONTROLLED_BY`](#CONTROLLED_BY)
        - [`LABEL_FOR`](#LABEL_FOR)
        - [`MEMBER_OF`](#MEMBER_OF)
  + ### MEMBER\_OF

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") MEMBER\_OF

    Indicates an object is a member of a group of one or more target objects.

    See Also:
    :   - [`getTarget()`](#getTarget())
        - [`CONTROLLER_FOR`](#CONTROLLER_FOR)
        - [`CONTROLLED_BY`](#CONTROLLED_BY)
        - [`LABEL_FOR`](#LABEL_FOR)
        - [`LABELED_BY`](#LABELED_BY)
  + ### CONTROLLER\_FOR

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") CONTROLLER\_FOR

    Indicates an object is a controller for one or more target objects.

    See Also:
    :   - [`getTarget()`](#getTarget())
        - [`CONTROLLED_BY`](#CONTROLLED_BY)
        - [`LABEL_FOR`](#LABEL_FOR)
        - [`LABELED_BY`](#LABELED_BY)
        - [`MEMBER_OF`](#MEMBER_OF)
  + ### CONTROLLED\_BY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") CONTROLLED\_BY

    Indicates an object is controlled by one or more target objects.

    See Also:
    :   - [`getTarget()`](#getTarget())
        - [`CONTROLLER_FOR`](#CONTROLLER_FOR)
        - [`LABEL_FOR`](#LABEL_FOR)
        - [`LABELED_BY`](#LABELED_BY)
        - [`MEMBER_OF`](#MEMBER_OF)
  + ### FLOWS\_TO

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") FLOWS\_TO

    Indicates an object is logically contiguous with a second object where
    the second object occurs after the object. An example is a paragraph of
    text that runs to the end of a page and continues on the next page with
    an intervening text footer and/or text header. The two parts of the
    paragraph are separate text elements but are related in that the second
    element is a continuation of the first element. In other words, the first
    element "flows to" the second element.

    Since:
    :   1.5

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleRelation.FLOWS_TO)
  + ### FLOWS\_FROM

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") FLOWS\_FROM

    Indicates an object is logically contiguous with a second object where
    the second object occurs before the object. An example is a paragraph of
    text that runs to the end of a page and continues on the next page with
    an intervening text footer and/or text header. The two parts of the
    paragraph are separate text elements but are related in that the second
    element is a continuation of the first element. In other words, the
    second element "flows from" the second element.

    Since:
    :   1.5

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleRelation.FLOWS_FROM)
  + ### SUBWINDOW\_OF

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") SUBWINDOW\_OF

    Indicates that an object is a subwindow of one or more objects.

    Since:
    :   1.5

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleRelation.SUBWINDOW_OF)
  + ### PARENT\_WINDOW\_OF

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") PARENT\_WINDOW\_OF

    Indicates that an object is a parent window of one or more objects.

    Since:
    :   1.5

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleRelation.PARENT_WINDOW_OF)
  + ### EMBEDS

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") EMBEDS

    Indicates that an object has one or more objects embedded in it.

    Since:
    :   1.5

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleRelation.EMBEDS)
  + ### EMBEDDED\_BY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") EMBEDDED\_BY

    Indicates that an object is embedded in one or more objects.

    Since:
    :   1.5

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleRelation.EMBEDDED_BY)
  + ### CHILD\_NODE\_OF

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") CHILD\_NODE\_OF

    Indicates that an object is a child node of one or more objects.

    Since:
    :   1.5

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleRelation.CHILD_NODE_OF)
  + ### LABEL\_FOR\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") LABEL\_FOR\_PROPERTY

    Identifies that the target group for a label has changed.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleRelation.LABEL_FOR_PROPERTY)
  + ### LABELED\_BY\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") LABELED\_BY\_PROPERTY

    Identifies that the objects that are doing the labeling have changed.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleRelation.LABELED_BY_PROPERTY)
  + ### MEMBER\_OF\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") MEMBER\_OF\_PROPERTY

    Identifies that group membership has changed.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleRelation.MEMBER_OF_PROPERTY)
  + ### CONTROLLER\_FOR\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") CONTROLLER\_FOR\_PROPERTY

    Identifies that the controller for the target object has changed.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleRelation.CONTROLLER_FOR_PROPERTY)
  + ### CONTROLLED\_BY\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") CONTROLLED\_BY\_PROPERTY

    Identifies that the target object that is doing the controlling has
    changed.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleRelation.CONTROLLED_BY_PROPERTY)
  + ### FLOWS\_TO\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") FLOWS\_TO\_PROPERTY

    Indicates the `FLOWS_TO` relation between two objects has changed.

    Since:
    :   1.5

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleRelation.FLOWS_TO_PROPERTY)
  + ### FLOWS\_FROM\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") FLOWS\_FROM\_PROPERTY

    Indicates the `FLOWS_FROM` relation between two objects has
    changed.

    Since:
    :   1.5

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleRelation.FLOWS_FROM_PROPERTY)
  + ### SUBWINDOW\_OF\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") SUBWINDOW\_OF\_PROPERTY

    Indicates the `SUBWINDOW_OF` relation between two or more objects
    has changed.

    Since:
    :   1.5

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleRelation.SUBWINDOW_OF_PROPERTY)
  + ### PARENT\_WINDOW\_OF\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") PARENT\_WINDOW\_OF\_PROPERTY

    Indicates the `PARENT_WINDOW_OF` relation between two or more
    objects has changed.

    Since:
    :   1.5

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleRelation.PARENT_WINDOW_OF_PROPERTY)
  + ### EMBEDS\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") EMBEDS\_PROPERTY

    Indicates the `EMBEDS` relation between two or more objects has
    changed.

    Since:
    :   1.5

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleRelation.EMBEDS_PROPERTY)
  + ### EMBEDDED\_BY\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") EMBEDDED\_BY\_PROPERTY

    Indicates the `EMBEDDED_BY` relation between two or more objects
    has changed.

    Since:
    :   1.5

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleRelation.EMBEDDED_BY_PROPERTY)
  + ### CHILD\_NODE\_OF\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") CHILD\_NODE\_OF\_PROPERTY

    Indicates the `CHILD_NODE_OF` relation between two or more objects
    has changed.

    Since:
    :   1.5

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleRelation.CHILD_NODE_OF_PROPERTY)
* ## Constructor Details

  + ### AccessibleRelation

    public AccessibleRelation([String](../../../java.base/java/lang/String.md "class in java.lang") key)

    Create a new `AccessibleRelation` using the given locale
    independent key. The key `String` should be a locale independent
    key for the relation. It is not intended to be used as the actual
    `String` to display to the user. To get the localized string, use
    [`AccessibleBundle.toDisplayString()`](AccessibleBundle.md#toDisplayString()).

    Parameters:
    :   `key` - the locale independent name of the relation

    See Also:
    :   - [`AccessibleBundle.toDisplayString(java.lang.String, java.util.Locale)`](AccessibleBundle.md#toDisplayString(java.lang.String,java.util.Locale))
  + ### AccessibleRelation

    public AccessibleRelation([String](../../../java.base/java/lang/String.md "class in java.lang") key,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") target)

    Creates a new `AccessibleRelation` using the given locale
    independent key. The key `String` should be a locale independent
    key for the relation. It is not intended to be used as the actual
    `String` to display to the user. To get the localized string, use
    [`AccessibleBundle.toDisplayString()`](AccessibleBundle.md#toDisplayString()).

    Parameters:
    :   `key` - the locale independent name of the relation
    :   `target` - the target object for this relation

    See Also:
    :   - [`AccessibleBundle.toDisplayString(java.lang.String, java.util.Locale)`](AccessibleBundle.md#toDisplayString(java.lang.String,java.util.Locale))
  + ### AccessibleRelation

    public AccessibleRelation([String](../../../java.base/java/lang/String.md "class in java.lang") key,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang")[] target)

    Creates a new `AccessibleRelation` using the given locale
    independent key. The key `String` should be a locale independent
    key for the relation. It is not intended to be used as the actual
    `String` to display to the user. To get the localized string, use
    [`AccessibleBundle.toDisplayString()`](AccessibleBundle.md#toDisplayString()).

    Parameters:
    :   `key` - the locale independent name of the relation
    :   `target` - the target object(s) for this relation

    See Also:
    :   - [`AccessibleBundle.toDisplayString(java.lang.String, java.util.Locale)`](AccessibleBundle.md#toDisplayString(java.lang.String,java.util.Locale))
* ## Method Details

  + ### getKey

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getKey()

    Returns the key for this relation.

    Returns:
    :   the key for this relation

    See Also:
    :   - [`CONTROLLER_FOR`](#CONTROLLER_FOR)
        - [`CONTROLLED_BY`](#CONTROLLED_BY)
        - [`LABEL_FOR`](#LABEL_FOR)
        - [`LABELED_BY`](#LABELED_BY)
        - [`MEMBER_OF`](#MEMBER_OF)
  + ### getTarget

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang")[] getTarget()

    Returns the target objects for this relation.

    Returns:
    :   an array containing the target objects for this relation
  + ### setTarget

    public void setTarget([Object](../../../java.base/java/lang/Object.md "class in java.lang") target)

    Sets the target object for this relation.

    Parameters:
    :   `target` - the target object for this relation
  + ### setTarget

    public void setTarget([Object](../../../java.base/java/lang/Object.md "class in java.lang")[] target)

    Sets the target objects for this relation.

    Parameters:
    :   `target` - an array containing the target objects for this relation