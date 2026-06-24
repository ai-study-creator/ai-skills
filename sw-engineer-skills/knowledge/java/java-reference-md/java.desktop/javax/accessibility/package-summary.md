Module [java.desktop](../../module-summary.md)

# Package javax.accessibility

---

package javax.accessibility

Defines a contract between user-interface components and an assistive
technology that provides access to those components. If a Java application
fully supports the Java Accessibility API, then it should be compatible with,
and friendly toward, assistive technologies such as screen readers, screen
magnifiers, etc. With a Java application that fully supports the Java
Accessibility API, no screen reader off screen model would be necessary
because the API provides all of the information normally contained in an off
screen model.

The Java Accessibility API package consists of 8 Java programming language
interfaces, and 6 Java programming language classes. These are described
below.

## [Interface Accessible](Accessible.md)

[Interface Accessible](Accessible.md) is the main interface of
the Java Accessibility API. All components that support the Java
Accessibility API must implement this interface. It contains a single method,
`getAccessibleContext`, that returns an instance of the class
[AccessibleContext](#AccessibleContext). Sun thinks that
implementing this interface is the absolute minimum requirement of every
object that is part of the user interface of a Java application, if that
program is to be compatible with assistive technologies.

## [Class AccessibleContext](AccessibleContext.md)

[AccessibleContext](AccessibleContext.md) represents the minimum
information all accessible objects return and is obtained by calling the
`getAccessibleContext` method on an object that implements the
[Accessible](#Accessible) interface. This information includes the
accessible name, description, [role](#AccessibleRole), and
[state](#AccessibleState) of the object, as well as information
about the parent and children of the object.  In addition,
JavaBeans property change support is also included to allow assistive
technologies learn when the values of the accessible properties change.
AccessibleContext also contains methods for obtaining more specific
accessibility information about a component. If the component supports it,
these methods will return an object that implements one or more of the
following interfaces:

* **[AccessibleAction](#AccessibleAction)** - the object
  can perform one or more actions. This interface provides the standard
  mechanism for an assistive technology to determine what those actions are
  and tell the object to perform those actions. Any object that can be
  manipulated should return an object that implements this interface when
  the `getAccessibleAction` method is called on an AccessibleContext.
* **[AccessibleComponent](#AccessibleComponent)** - the
  object has a graphical representation. This interface provides the
  standard mechanism for an assistive technology to determine and set the
  graphical representation of the object. Any object that is rendered on
  the screen should return an object that implements this interface when
  the `getAccessibleComponent` method is called on an
  AccessibleContext.
* **[AccessibleSelection](#AccessibleSelection)** - the
  object allows its children to be selected. This interface provides the
  standard mechanism for an assistive technology to determine the currently
  selected children as well as modify the selection set. Any object that
  has children that can be selected should return an object that implements
  this interface when the `getAccessibleSelection` method is called
  on an AccessibleContext.
* **[AccessibleText](#AccessibleText)** - the object
  presents editable textual information on the display. This interface
  provides the standard mechanism for an assistive technology to access
  that text via its content, attributes, and spatial location. Any object
  that contains editable text should return an object that implements this
  interface when the `getAccessibleText` method is called on an
  AccessibleContext.
* **[AccessibleHypertext](#AccessibleHypertext)** - the
  object presents hypertext information on the display. This interface
  provides the standard mechanism for an assistive technology to access that
  hypertext via its content, attributes, and spatial location. Any object
  that contains hypertext should return an object that implements this
  interface when the `getAccessibleText` method is called on an
  AccessibleContext.
* **[AccessibleValue](#AccessibleValue)** - the object
  supports a numerical value. This interface provides the standard
  mechanism for an assistive technology to determine and set the current
  value of the object, as well as the minimum and maximum values. Any
  object that supports a numerical value should return an object that
  implements this interface when the `getAccessibleValue` method is
  called on an AccessibleContext.

## [Class AccessibleRole](AccessibleRole.md)

This class encapsulates the Accessible object's role in the user interface
and is obtained by calling the `getAccessibleRole` method on an
[AccessibleContext](#AccessibleContext). Accessible roles include
"Check box", "Menu Item", "Panel", etc. These roles are identified by the
constants in this class such as `AccessibleRole.CHECK_BOX,
AccessibleRole.MENU_ITEM,` and `AccessibleRole.PANEL`. The constants in
this class present a strongly typed enumeration of common object roles. A
public constructor for this class has been purposely omitted and applications
should use one of the constants from this class. Although this class
pre-defines a large list of standard roles, it is extensible so additional
programmer-defined roles can be added in the future without needing to modify
the base class.

## [Class AccessibleState](AccessibleState.md)

This class encapsulates a particular state of the Accessible object.
Accessible states include things like "Armed", "Busy", "Checked", "Focused",
etc. These roles are identified by the constants in this class such as
`AccessibleState.ARMED, AccessibleState.BUSY, AccessibleState.CHECKED,`
and `AccessibleState.FOCUSED`. The sum of all the states of an
Accessible object is called the
[AccessibleStateSet](#AccessibleStateSet), and can be obtained by
calling the `getAccessibleStateSet` method on an
[AccessibleContext](#AccessibleContext).

The constants in this class present a strongly typed enumeration of common
object roles. A public constructor for this class has been purposely omitted
and applications should use one of the constants from this class. Although
this class pre-defines a large list of standard roles, it is extensible so
additional, programmer-defined roles can be added in the future without
needing to modify the base class.

## [Class AccessibleStateSet](AccessibleStateSet.md)

This class encapsulates a collection of states of the Accessible object and
is obtained by calling the `getAccessibleStateSet` method on an
[AccessibleContext](#AccessibleContext). Since an object might
have multiple states (e.g. it might be both "Checked" and "Focused"), this
class is needed to encapsulate a collection of these states. Methods in the
class provide for retrieving the individual
[AccessibleStates](#AccessibleState) on the state set.

## [Class AccessibleBundle](AccessibleBundle.md)

This class is used to maintain a strongly typed enumeration. It is the super
class of both the [AccessibleRole](#AccessibleRole) and
[AccessibleState](#AccessibleState) classes. Programmers normally
do not interact with this class directly, but will instead use the
[AccessibleRole](#AccessibleRole) and
[AccessibleState](#AccessibleState) classes.

## [Interface AccessibleAction](AccessibleAction.md)

The [AccessibleAction](AccessibleAction.md) interface should be
supported by any object that can perform one or more actions. This interface
provides the standard mechanism for an assistive technology to determine what
those actions are as well as tell the object to perform those actions. Any
object that can be manipulated should support this interface.

Applications can determine if an object supports the AccessibleAction
interface by first obtaining its
[AccessibleContext](#AccessibleContext) (see
[Accessible](#Accessible)) and then calling the
`getAccessibleAction` method of
[AccessibleContext](#AccessibleContext). If the return value is
not `null`, the object supports this interface.

## [Interface AccessibleComponent](AccessibleComponent.md)

The [AccessibleComponent](AccessibleComponent.md) interface
should be supported by any object that is rendered on the screen. This
interface provides the standard mechanism for an assistive technology to
determine and set the graphical representation of an object.

Applications
can determine if an object supports the AccessibleComponent interface by
first obtaining its [AccessibleContext](#AccessibleContext) (see
[Accessible](#Accessible)) and then calling the
`getAccessibleComponent` method of
[AccessibleContext](#AccessibleContext). If the return value is
not `null`, the object supports this interface.

## [Interface AccessibleSelection](AccessibleSelection.md)

The [AccessibleSelection](AccessibleSelection.md) interface
provides the standard mechanism for an assistive technology to determine what
the current selected children are, as well as modify the selection set. Any
object that has children that can be selected should support this the
AccessibleSelection interface.

Applications can determine if an object supports the AccessibleSelection
interface by first obtaining its
[AccessibleContext](#AccessibleContext) (see
[Accessible](#Accessible)) and then calling the
`getAccessibleSelection` method of
[AccessibleContext](#AccessibleContext). If the return value is
not `null`, the object supports this interface.

## [Interface AccessibleText](AccessibleText.md)

Interface [AccessibleText](AccessibleText.md) is the contract
for making rich, editable text Accessible. Not all text displayed on the
screen is rich and editable (e.g. text contained in buttons, labels, menus,
etc., which users aren't expected to manipulate). However, objects containing
editable text must implement interface AccessibleText if they are to
interoperate with assistive technologies.

This interface provides support for going between pixel coordinates and the
text at a given pixel coordinate, for retrieving the letter, word, and
sentence at, before, or after a given position in the text. This interface
provides support for retrieving the attributes of the character at a given
position in the text (font, font size, style, etc.), as well as getting the
selected text (if any), the length of the text, and the location of the text
caret.

Applications can determine if an object supports the AccessibleText interface
by first obtaining its [AccessibleContext](#AccessibleContext)
(see [Accessible](#Accessible)) and then calling the
`getAccessibleText` method of
[AccessibleContext](#AccessibleContext). If the return value is
not `null`, the object supports this interface.

## [Interface AccessibleHypertext](AccessibleHypertext.md)

The [AccessibleHypertext](AccessibleHypertext.md) interface
should be supported by any object that presents hypertext information on the
display. This interface provides the standard mechanism for an assistive
technology to access that text via its content, attributes, and spatial
location. It also provides standard mechanisms for manipulating
[hyperlinks](#AccessibleHyperlink). Applications can determine if
an object supports the AccessibleHypertext interface by first obtaining its
[AccessibleContext](#AccessibleContext) (see
[Accessible](#Accessible)) and then calling the
AccessibleContext.getAccessibleText() method of
[AccessibleContext](#AccessibleContext). If the return value is a
class which extends AccessibleHypertext, then that object supports
AccessibleHypertext.

## [Interface AccessibleHyperlink](AccessibleHyperlink.md)

An object that is a hyperlink should support the
[AccessibleHyperlink](AccessibleHyperlink.md) interface. 
An object that implements this interface will be returned by calling the
getLink method on an [AccessibleHypertext](#AccessibleHypertext)
object.

## [Interface AccessibleValue](AccessibleValue.md)

The [AccessibleValue](AccessibleValue.md) interface should be
supported by any object that supports a numerical value (e.g., a scroll bar).
This interface provides the standard mechanism for an assistive technology to
determine and set the numerical value as well as get the minimum and maximum
values.

Applications can determine if an object supports the AccessibleValue
interface by first obtaining its
[AccessibleContext](#AccessibleContext) (see
[Accessible](#Accessible)) and then calling the
`getAccessibleValue` method of
[AccessibleContext](#AccessibleContext). If the return value is
not `null`, the object supports this interface.

Since:
:   1.2

* All Classes and InterfacesInterfacesClasses

  Class

  Description

  [AccessibilityProvider](AccessibilityProvider.md "class in javax.accessibility")

  Service Provider Interface (SPI) for Assistive Technology.

  [Accessible](Accessible.md "interface in javax.accessibility")

  Interface `Accessible` is the main interface for the accessibility
  package.

  [AccessibleAction](AccessibleAction.md "interface in javax.accessibility")

  The `AccessibleAction` interface should be supported by any object that
  can perform one or more actions.

  [AccessibleAttributeSequence](AccessibleAttributeSequence.md "class in javax.accessibility")

  This class collects together the span of text that share the same contiguous
  set of attributes, along with that set of attributes.

  [AccessibleBundle](AccessibleBundle.md "class in javax.accessibility")

  Base class used to maintain a strongly typed enumeration.

  [AccessibleComponent](AccessibleComponent.md "interface in javax.accessibility")

  The `AccessibleComponent` interface should be supported by any object
  that is rendered on the screen.

  [AccessibleContext](AccessibleContext.md "class in javax.accessibility")

  `AccessibleContext` represents the minimum information all accessible
  objects return.

  [AccessibleEditableText](AccessibleEditableText.md "interface in javax.accessibility")

  The `AccessibleEditableText` interface should be implemented by all
  classes that present editable textual information on the display.

  [AccessibleExtendedComponent](AccessibleExtendedComponent.md "interface in javax.accessibility")

  The `AccessibleExtendedComponent` interface should be supported by any
  object that is rendered on the screen.

  [AccessibleExtendedTable](AccessibleExtendedTable.md "interface in javax.accessibility")

  Class `AccessibleExtendedTable` provides extended information about a
  user-interface component that presents data in a two-dimensional table
  format.

  [AccessibleExtendedText](AccessibleExtendedText.md "interface in javax.accessibility")

  The `AccessibleExtendedText` interface contains additional methods not
  provided by the `AccessibleText` interface.

  [AccessibleHyperlink](AccessibleHyperlink.md "class in javax.accessibility")

  Encapsulation of a link, or set of links (e.g.

  [AccessibleHypertext](AccessibleHypertext.md "interface in javax.accessibility")

  The `AccessibleHypertext` class is the base class for all classes that
  present hypertext information on the display.

  [AccessibleIcon](AccessibleIcon.md "interface in javax.accessibility")

  The `AccessibleIcon` interface should be supported by any object that
  has an associated icon (e.g., buttons).

  [AccessibleKeyBinding](AccessibleKeyBinding.md "interface in javax.accessibility")

  The `AccessibleKeyBinding` interface should be supported by any object
  that has a keyboard bindings such as a keyboard mnemonic and/or keyboard
  shortcut which can be used to select the object.

  [AccessibleRelation](AccessibleRelation.md "class in javax.accessibility")

  Class `AccessibleRelation` describes a relation between the object that
  implements the `AccessibleRelation` and one or more other objects.

  [AccessibleRelationSet](AccessibleRelationSet.md "class in javax.accessibility")

  Class `AccessibleRelationSet` determines a component's relation set.

  [AccessibleResourceBundle](AccessibleResourceBundle.md "class in javax.accessibility")

  Deprecated.

  This class is deprecated as of version 1.3 of the Java Platform

  [AccessibleRole](AccessibleRole.md "class in javax.accessibility")

  Class `AccessibleRole` determines the role of a component.

  [AccessibleSelection](AccessibleSelection.md "interface in javax.accessibility")

  This `AccessibleSelection` interface provides the standard mechanism
  for an assistive technology to determine what the current selected children
  are, as well as modify the selection set.

  [AccessibleState](AccessibleState.md "class in javax.accessibility")

  Class `AccessibleState` describes a component's particular state.

  [AccessibleStateSet](AccessibleStateSet.md "class in javax.accessibility")

  Class `AccessibleStateSet` determines a component's state set.

  [AccessibleStreamable](AccessibleStreamable.md "interface in javax.accessibility")

  The `AccessibleStreamable` interface should be implemented by the
  `AccessibleContext` of any component that presents the raw stream
  behind a component on the display screen.

  [AccessibleTable](AccessibleTable.md "interface in javax.accessibility")

  Class `AccessibleTable` describes a user-interface component that
  presents data in a two-dimensional table format.

  [AccessibleTableModelChange](AccessibleTableModelChange.md "interface in javax.accessibility")

  The `AccessibleTableModelChange` interface describes a change to the
  table model.

  [AccessibleText](AccessibleText.md "interface in javax.accessibility")

  The `AccessibleText` interface should be implemented by all classes
  that present textual information on the display.

  [AccessibleTextSequence](AccessibleTextSequence.md "class in javax.accessibility")

  This class collects together key details of a span of text.

  [AccessibleValue](AccessibleValue.md "interface in javax.accessibility")

  The `AccessibleValue` interface should be supported by any object that
  supports a numerical value (e.g., a scroll bar).