Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class Cursor

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.Cursor

All Implemented Interfaces:
:   `Serializable`

---

public class Cursor
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

A class to encapsulate the bitmap representation of the mouse cursor.

See Also:
:   * [`Component.setCursor(java.awt.Cursor)`](Component.md#setCursor(java.awt.Cursor))
    * [Serialized Form](../../../serialized-form.md#java.awt.Cursor)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `CROSSHAIR_CURSOR`

  The crosshair cursor type.

  `static final int`

  `CUSTOM_CURSOR`

  The type associated with all custom cursors.

  `static final int`

  `DEFAULT_CURSOR`

  The default cursor type (gets set if no cursor is defined).

  `static final int`

  `E_RESIZE_CURSOR`

  The east-resize cursor type.

  `static final int`

  `HAND_CURSOR`

  The hand cursor type.

  `static final int`

  `MOVE_CURSOR`

  The move cursor type.

  `static final int`

  `N_RESIZE_CURSOR`

  The north-resize cursor type.

  `protected String`

  `name`

  The user-visible name of the cursor.

  `static final int`

  `NE_RESIZE_CURSOR`

  The north-east-resize cursor type.

  `static final int`

  `NW_RESIZE_CURSOR`

  The north-west-resize cursor type.

  `protected static Cursor[]`

  `predefined`

  Deprecated.

  As of JDK version 1.7, the [`getPredefinedCursor(int)`](#getPredefinedCursor(int))
  method should be used instead.

  `static final int`

  `S_RESIZE_CURSOR`

  The south-resize cursor type.

  `static final int`

  `SE_RESIZE_CURSOR`

  The south-east-resize cursor type.

  `static final int`

  `SW_RESIZE_CURSOR`

  The south-west-resize cursor type.

  `static final int`

  `TEXT_CURSOR`

  The text cursor type.

  `static final int`

  `W_RESIZE_CURSOR`

  The west-resize cursor type.

  `static final int`

  `WAIT_CURSOR`

  The wait cursor type.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `Cursor(int type)`

  Creates a new cursor object with the specified type.

  `protected`

  `Cursor(String name)`

  Creates a new custom cursor object with the specified name.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Cursor`

  `getDefaultCursor()`

  Return the system default cursor.

  `String`

  `getName()`

  Returns the name of this cursor.

  `static Cursor`

  `getPredefinedCursor(int type)`

  Returns a cursor object with the specified predefined type.

  `static Cursor`

  `getSystemCustomCursor(String name)`

  Returns a system-specific custom cursor object matching the
  specified name.

  `int`

  `getType()`

  Returns the type for this cursor.

  `String`

  `toString()`

  Returns a string representation of this cursor.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### DEFAULT\_CURSOR

    public static final int DEFAULT\_CURSOR

    The default cursor type (gets set if no cursor is defined).

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Cursor.DEFAULT_CURSOR)
  + ### CROSSHAIR\_CURSOR

    public static final int CROSSHAIR\_CURSOR

    The crosshair cursor type.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Cursor.CROSSHAIR_CURSOR)
  + ### TEXT\_CURSOR

    public static final int TEXT\_CURSOR

    The text cursor type.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Cursor.TEXT_CURSOR)
  + ### WAIT\_CURSOR

    public static final int WAIT\_CURSOR

    The wait cursor type.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Cursor.WAIT_CURSOR)
  + ### SW\_RESIZE\_CURSOR

    public static final int SW\_RESIZE\_CURSOR

    The south-west-resize cursor type.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Cursor.SW_RESIZE_CURSOR)
  + ### SE\_RESIZE\_CURSOR

    public static final int SE\_RESIZE\_CURSOR

    The south-east-resize cursor type.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Cursor.SE_RESIZE_CURSOR)
  + ### NW\_RESIZE\_CURSOR

    public static final int NW\_RESIZE\_CURSOR

    The north-west-resize cursor type.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Cursor.NW_RESIZE_CURSOR)
  + ### NE\_RESIZE\_CURSOR

    public static final int NE\_RESIZE\_CURSOR

    The north-east-resize cursor type.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Cursor.NE_RESIZE_CURSOR)
  + ### N\_RESIZE\_CURSOR

    public static final int N\_RESIZE\_CURSOR

    The north-resize cursor type.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Cursor.N_RESIZE_CURSOR)
  + ### S\_RESIZE\_CURSOR

    public static final int S\_RESIZE\_CURSOR

    The south-resize cursor type.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Cursor.S_RESIZE_CURSOR)
  + ### W\_RESIZE\_CURSOR

    public static final int W\_RESIZE\_CURSOR

    The west-resize cursor type.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Cursor.W_RESIZE_CURSOR)
  + ### E\_RESIZE\_CURSOR

    public static final int E\_RESIZE\_CURSOR

    The east-resize cursor type.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Cursor.E_RESIZE_CURSOR)
  + ### HAND\_CURSOR

    public static final int HAND\_CURSOR

    The hand cursor type.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Cursor.HAND_CURSOR)
  + ### MOVE\_CURSOR

    public static final int MOVE\_CURSOR

    The move cursor type.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Cursor.MOVE_CURSOR)
  + ### predefined

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected static [Cursor](Cursor.md "class in java.awt")[] predefined

    Deprecated.

    As of JDK version 1.7, the [`getPredefinedCursor(int)`](#getPredefinedCursor(int))
    method should be used instead.
  + ### CUSTOM\_CURSOR

    public static final int CUSTOM\_CURSOR

    The type associated with all custom cursors.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Cursor.CUSTOM_CURSOR)
  + ### name

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") name

    The user-visible name of the cursor.

    See Also:
    :   - [`getName()`](#getName())
* ## Constructor Details

  + ### Cursor

    [@ConstructorProperties](../beans/ConstructorProperties.md "annotation interface in java.beans")("type")
    public Cursor(int type)

    Creates a new cursor object with the specified type.

    Parameters:
    :   `type` - the type of cursor

    Throws:
    :   `IllegalArgumentException` - if the specified cursor type
        is invalid
  + ### Cursor

    protected Cursor([String](../../../java.base/java/lang/String.md "class in java.lang") name)

    Creates a new custom cursor object with the specified name.

    Note: this constructor should only be used by AWT implementations
    as part of their support for custom cursors. Applications should
    use Toolkit.createCustomCursor().

    Parameters:
    :   `name` - the user-visible name of the cursor.

    See Also:
    :   - [`Toolkit.createCustomCursor(java.awt.Image, java.awt.Point, java.lang.String)`](Toolkit.md#createCustomCursor(java.awt.Image,java.awt.Point,java.lang.String))
* ## Method Details

  + ### getPredefinedCursor

    public static [Cursor](Cursor.md "class in java.awt") getPredefinedCursor(int type)

    Returns a cursor object with the specified predefined type.

    Parameters:
    :   `type` - the type of predefined cursor

    Returns:
    :   the specified predefined cursor

    Throws:
    :   `IllegalArgumentException` - if the specified cursor type is
        invalid
  + ### getSystemCustomCursor

    public static [Cursor](Cursor.md "class in java.awt") getSystemCustomCursor([String](../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [AWTException](AWTException.md "class in java.awt"),
    [HeadlessException](HeadlessException.md "class in java.awt")

    Returns a system-specific custom cursor object matching the
    specified name. Cursor names are, for example: "Invalid.16x16"

    Parameters:
    :   `name` - a string describing the desired system-specific custom cursor

    Returns:
    :   the system specific custom cursor named

    Throws:
    :   `HeadlessException` - if
        `GraphicsEnvironment.isHeadless` returns true
    :   `AWTException` - in case of erroneous retrieving of the cursor
  + ### getDefaultCursor

    public static [Cursor](Cursor.md "class in java.awt") getDefaultCursor()

    Return the system default cursor.

    Returns:
    :   the default cursor
  + ### getType

    public int getType()

    Returns the type for this cursor.

    Returns:
    :   the cursor type
  + ### getName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getName()

    Returns the name of this cursor.

    Returns:
    :   a localized description of this cursor.

    Since:
    :   1.2
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of this cursor.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this cursor.

    Since:
    :   1.2