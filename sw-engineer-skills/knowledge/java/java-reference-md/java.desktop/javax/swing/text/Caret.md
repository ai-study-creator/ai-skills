Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Interface Caret

All Known Implementing Classes:
:   `BasicTextUI.BasicCaret`, `DefaultCaret`

---

public interface Caret

A place within a document view that represents where
things can be inserted into the document model. A caret
has a position in the document referred to as a dot.
The dot is where the caret is currently located in the
model. There is
a second position maintained by the caret that represents
the other end of a selection called mark. If there is
no selection the dot and mark will be equal. If a selection
exists, the two values will be different.

The dot can be placed by either calling
`setDot` or `moveDot`. Setting
the dot has the effect of removing any selection that may
have previously existed. The dot and mark will be equal.
Moving the dot has the effect of creating a selection as
the mark is left at whatever position it previously had.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `addChangeListener(ChangeListener l)`

  Adds a listener to track whenever the caret position
  has been changed.

  `void`

  `deinstall(JTextComponent c)`

  Called when the UI is being removed from the
  interface of a JTextComponent.

  `int`

  `getBlinkRate()`

  Gets the blink rate of the caret.

  `int`

  `getDot()`

  Fetches the current position of the caret.

  `Point`

  `getMagicCaretPosition()`

  Gets the current caret visual location.

  `int`

  `getMark()`

  Fetches the current position of the mark.

  `void`

  `install(JTextComponent c)`

  Called when the UI is being installed into the
  interface of a JTextComponent.

  `boolean`

  `isSelectionVisible()`

  Determines if the selection is currently visible.

  `boolean`

  `isVisible()`

  Determines if the caret is currently visible.

  `void`

  `moveDot(int dot)`

  Moves the caret position (dot) to some other position,
  leaving behind the mark.

  `void`

  `paint(Graphics g)`

  Renders the caret.

  `void`

  `removeChangeListener(ChangeListener l)`

  Removes a listener that was tracking caret position changes.

  `void`

  `setBlinkRate(int rate)`

  Sets the blink rate of the caret.

  `void`

  `setDot(int dot)`

  Sets the caret position to some position.

  `void`

  `setMagicCaretPosition(Point p)`

  Set the current caret visual location.

  `void`

  `setSelectionVisible(boolean v)`

  Sets the visibility of the selection

  `void`

  `setVisible(boolean v)`

  Sets the visibility of the caret.

* ## Method Details

  + ### install

    void install([JTextComponent](JTextComponent.md "class in javax.swing.text") c)

    Called when the UI is being installed into the
    interface of a JTextComponent. This can be used
    to gain access to the model that is being navigated
    by the implementation of this interface.

    Parameters:
    :   `c` - the JTextComponent
  + ### deinstall

    void deinstall([JTextComponent](JTextComponent.md "class in javax.swing.text") c)

    Called when the UI is being removed from the
    interface of a JTextComponent. This is used to
    unregister any listeners that were attached.

    Parameters:
    :   `c` - the JTextComponent
  + ### paint

    void paint([Graphics](../../../java/awt/Graphics.md "class in java.awt") g)

    Renders the caret. This method is called by UI classes.

    Parameters:
    :   `g` - the graphics context
  + ### addChangeListener

    void addChangeListener([ChangeListener](../event/ChangeListener.md "interface in javax.swing.event") l)

    Adds a listener to track whenever the caret position
    has been changed.

    Parameters:
    :   `l` - the change listener
  + ### removeChangeListener

    void removeChangeListener([ChangeListener](../event/ChangeListener.md "interface in javax.swing.event") l)

    Removes a listener that was tracking caret position changes.

    Parameters:
    :   `l` - the change listener
  + ### isVisible

    boolean isVisible()

    Determines if the caret is currently visible.

    Returns:
    :   true if the caret is visible else false
  + ### setVisible

    void setVisible(boolean v)

    Sets the visibility of the caret.

    Parameters:
    :   `v` - true if the caret should be shown,
        and false if the caret should be hidden
  + ### isSelectionVisible

    boolean isSelectionVisible()

    Determines if the selection is currently visible.

    Returns:
    :   true if the caret is visible else false
  + ### setSelectionVisible

    void setSelectionVisible(boolean v)

    Sets the visibility of the selection

    Parameters:
    :   `v` - true if the caret should be shown,
        and false if the caret should be hidden
  + ### setMagicCaretPosition

    void setMagicCaretPosition([Point](../../../java/awt/Point.md "class in java.awt") p)

    Set the current caret visual location. This can be used when
    moving between lines that have uneven end positions (such as
    when caret up or down actions occur). If text flows
    left-to-right or right-to-left the x-coordinate will indicate
    the desired navigation location for vertical movement. If
    the text flow is top-to-bottom, the y-coordinate will indicate
    the desired navigation location for horizontal movement.

    Parameters:
    :   `p` - the Point to use for the saved position. This
        can be null to indicate there is no visual location.
  + ### getMagicCaretPosition

    [Point](../../../java/awt/Point.md "class in java.awt") getMagicCaretPosition()

    Gets the current caret visual location.

    Returns:
    :   the visual position.

    See Also:
    :   - [`setMagicCaretPosition(java.awt.Point)`](#setMagicCaretPosition(java.awt.Point))
  + ### setBlinkRate

    void setBlinkRate(int rate)

    Sets the blink rate of the caret. This determines if
    and how fast the caret blinks, commonly used as one
    way to attract attention to the caret.

    Parameters:
    :   `rate` - the delay in milliseconds >=0. If this is
        zero the caret will not blink.
  + ### getBlinkRate

    int getBlinkRate()

    Gets the blink rate of the caret. This determines if
    and how fast the caret blinks, commonly used as one
    way to attract attention to the caret.

    Returns:
    :   the delay in milliseconds >=0. If this is
        zero the caret will not blink.
  + ### getDot

    int getDot()

    Fetches the current position of the caret.

    Returns:
    :   the position >=0
  + ### getMark

    int getMark()

    Fetches the current position of the mark. If there
    is a selection, the mark will not be the same as
    the dot.

    Returns:
    :   the position >=0
  + ### setDot

    void setDot(int dot)

    Sets the caret position to some position. This
    causes the mark to become the same as the dot,
    effectively setting the selection range to zero.

    If the parameter is negative or beyond the length of the document,
    the caret is placed at the beginning or at the end, respectively.

    Parameters:
    :   `dot` - the new position to set the caret to
  + ### moveDot

    void moveDot(int dot)

    Moves the caret position (dot) to some other position,
    leaving behind the mark. This is useful for
    making selections.

    Parameters:
    :   `dot` - the new position to move the caret to >=0