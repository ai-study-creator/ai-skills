Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class NavigationFilter

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.NavigationFilter

---

public class NavigationFilter
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

`NavigationFilter` can be used to restrict where the cursor can
be positioned. When the default cursor positioning actions attempt to
reposition the cursor they will call into the
`NavigationFilter`, assuming
the `JTextComponent` has a non-null
`NavigationFilter` set. In this manner
the `NavigationFilter` can effectively restrict where the
cursor can be positioned. Similarly `DefaultCaret` will call
into the `NavigationFilter` when the user is changing the
selection to further restrict where the cursor can be positioned.

Subclasses can conditionally call into supers implementation to restrict
where the cursor can be placed, or call directly into the
`FilterBypass`.

Since:
:   1.4

See Also:
:   * [`Caret`](Caret.md "interface in javax.swing.text")
    * [`DefaultCaret`](DefaultCaret.md "class in javax.swing.text")
    * [`View`](View.md "class in javax.swing.text")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static class`

  `NavigationFilter.FilterBypass`

  Used as a way to circumvent calling back into the caret to
  position the cursor.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NavigationFilter()`

  Constructs a `NavigationFilter`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getNextVisualPositionFrom(JTextComponent text,
  int pos,
  Position.Bias bias,
  int direction,
  Position.Bias[] biasRet)`

  Returns the next visual position to place the caret at from an
  existing position.

  `void`

  `moveDot(NavigationFilter.FilterBypass fb,
  int dot,
  Position.Bias bias)`

  Invoked prior to the Caret moving the dot.

  `void`

  `setDot(NavigationFilter.FilterBypass fb,
  int dot,
  Position.Bias bias)`

  Invoked prior to the Caret setting the dot.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### NavigationFilter

    public NavigationFilter()

    Constructs a `NavigationFilter`.
* ## Method Details

  + ### setDot

    public void setDot([NavigationFilter.FilterBypass](NavigationFilter.FilterBypass.md "class in javax.swing.text") fb,
    int dot,
    [Position.Bias](Position.Bias.md "class in javax.swing.text") bias)

    Invoked prior to the Caret setting the dot. The default implementation
    calls directly into the `FilterBypass` with the passed
    in arguments. Subclasses may wish to conditionally
    call super with a different location, or invoke the necessary method
    on the `FilterBypass`

    Parameters:
    :   `fb` - FilterBypass that can be used to mutate caret position
    :   `dot` - the position >= 0
    :   `bias` - Bias to place the dot at
  + ### moveDot

    public void moveDot([NavigationFilter.FilterBypass](NavigationFilter.FilterBypass.md "class in javax.swing.text") fb,
    int dot,
    [Position.Bias](Position.Bias.md "class in javax.swing.text") bias)

    Invoked prior to the Caret moving the dot. The default implementation
    calls directly into the `FilterBypass` with the passed
    in arguments. Subclasses may wish to conditionally
    call super with a different location, or invoke the necessary
    methods on the `FilterBypass`.

    Parameters:
    :   `fb` - FilterBypass that can be used to mutate caret position
    :   `dot` - the position >= 0
    :   `bias` - Bias for new location
  + ### getNextVisualPositionFrom

    public int getNextVisualPositionFrom([JTextComponent](JTextComponent.md "class in javax.swing.text") text,
    int pos,
    [Position.Bias](Position.Bias.md "class in javax.swing.text") bias,
    int direction,
    [Position.Bias](Position.Bias.md "class in javax.swing.text")[] biasRet)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Returns the next visual position to place the caret at from an
    existing position. The default implementation simply forwards the
    method to the root View. Subclasses may wish to further restrict the
    location based on additional criteria.

    Parameters:
    :   `text` - JTextComponent containing text
    :   `pos` - Position used in determining next position
    :   `bias` - Bias used in determining next position
    :   `direction` - the direction from the current position that can
        be thought of as the arrow keys typically found on a keyboard.
        This will be one of the following values:
        - SwingConstants.WEST- SwingConstants.EAST- SwingConstants.NORTH- SwingConstants.SOUTH
    :   `biasRet` - Used to return resulting Bias of next position

    Returns:
    :   the location within the model that best represents the next
        location visual position

    Throws:
    :   `BadLocationException` - for a bad location within a document model
    :   `IllegalArgumentException` - if `direction`
        doesn't have one of the legal values above