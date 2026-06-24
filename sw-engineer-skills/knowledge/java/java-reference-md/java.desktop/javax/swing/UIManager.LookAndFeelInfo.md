Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class UIManager.LookAndFeelInfo

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.UIManager.LookAndFeelInfo

Enclosing class:
:   `UIManager`

---

public static class UIManager.LookAndFeelInfo
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

Provides a little information about an installed
`LookAndFeel` for the sake of configuring a menu or
for initial application set up.

See Also:
:   * [`UIManager.getInstalledLookAndFeels()`](UIManager.md#getInstalledLookAndFeels())
    * [`LookAndFeel`](LookAndFeel.md "class in javax.swing")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `LookAndFeelInfo(String name,
  String className)`

  Constructs a `UIManager`s
  `LookAndFeelInfo` object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getClassName()`

  Returns the name of the class that implements this look and feel.

  `String`

  `getName()`

  Returns the name of the look and feel in a form suitable
  for a menu or other presentation

  `String`

  `toString()`

  Returns a string that displays and identifies this
  object's properties.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### LookAndFeelInfo

    public LookAndFeelInfo([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../java.base/java/lang/String.md "class in java.lang") className)

    Constructs a `UIManager`s
    `LookAndFeelInfo` object.

    Parameters:
    :   `name` - a `String` specifying the name of
        the look and feel
    :   `className` - a `String` specifying the name of
        the class that implements the look and feel
* ## Method Details

  + ### getName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getName()

    Returns the name of the look and feel in a form suitable
    for a menu or other presentation

    Returns:
    :   a `String` containing the name

    See Also:
    :   - [`LookAndFeel.getName()`](LookAndFeel.md#getName())
  + ### getClassName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getClassName()

    Returns the name of the class that implements this look and feel.

    Returns:
    :   the name of the class that implements this
        `LookAndFeel`

    See Also:
    :   - [`LookAndFeel`](LookAndFeel.md "class in javax.swing")
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string that displays and identifies this
    object's properties.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a `String` representation of this object