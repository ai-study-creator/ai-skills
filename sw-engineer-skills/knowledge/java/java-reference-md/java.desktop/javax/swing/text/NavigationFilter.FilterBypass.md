Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class NavigationFilter.FilterBypass

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.NavigationFilter.FilterBypass

Enclosing class:
:   `NavigationFilter`

---

public abstract static class NavigationFilter.FilterBypass
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

Used as a way to circumvent calling back into the caret to
position the cursor. Caret implementations that wish to support
a NavigationFilter must provide an implementation that will
not callback into the NavigationFilter.

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `FilterBypass()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract Caret`

  `getCaret()`

  Returns the Caret that is changing.

  `abstract void`

  `moveDot(int dot,
  Position.Bias bias)`

  Moves the caret location, bypassing the NavigationFilter.

  `abstract void`

  `setDot(int dot,
  Position.Bias bias)`

  Sets the caret location, bypassing the NavigationFilter.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### FilterBypass

    protected FilterBypass()

    Constructor for subclasses to call.
* ## Method Details

  + ### getCaret

    public abstract [Caret](Caret.md "interface in javax.swing.text") getCaret()

    Returns the Caret that is changing.

    Returns:
    :   Caret that is changing
  + ### setDot

    public abstract void setDot(int dot,
    [Position.Bias](Position.Bias.md "class in javax.swing.text") bias)

    Sets the caret location, bypassing the NavigationFilter.

    Parameters:
    :   `dot` - the position >= 0
    :   `bias` - Bias to place the dot at
  + ### moveDot

    public abstract void moveDot(int dot,
    [Position.Bias](Position.Bias.md "class in javax.swing.text") bias)

    Moves the caret location, bypassing the NavigationFilter.

    Parameters:
    :   `dot` - the position >= 0
    :   `bias` - Bias for new location