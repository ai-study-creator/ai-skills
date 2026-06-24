Module [java.desktop](../../../module-summary.md)

Package [javax.swing.plaf](package-summary.md)

# Class TextUI

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](ComponentUI.md "class in javax.swing.plaf")

javax.swing.plaf.TextUI

Direct Known Subclasses:
:   `BasicTextUI`, `MultiTextUI`

---

public abstract class TextUI
extends [ComponentUI](ComponentUI.md "class in javax.swing.plaf")

Text editor user interface

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `TextUI()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `abstract void`

  `damageRange(JTextComponent t,
  int p0,
  int p1)`

  Causes the portion of the view responsible for the
  given part of the model to be repainted.

  `abstract void`

  `damageRange(JTextComponent t,
  int p0,
  int p1,
  Position.Bias firstBias,
  Position.Bias secondBias)`

  Causes the portion of the view responsible for the
  given part of the model to be repainted.

  `abstract EditorKit`

  `getEditorKit(JTextComponent t)`

  Fetches the binding of services that set a policy
  for the type of document being edited.

  `abstract int`

  `getNextVisualPositionFrom(JTextComponent t,
  int pos,
  Position.Bias b,
  int direction,
  Position.Bias[] biasRet)`

  Provides a way to determine the next visually represented model
  location that one might place a caret.

  `abstract View`

  `getRootView(JTextComponent t)`

  Fetches a View with the allocation of the associated
  text component (i.e.

  `String`

  `getToolTipText(JTextComponent t,
  Point pt)`

  Deprecated.

  replaced by
  [`getToolTipText2D(JTextComponent, Point2D)`](#getToolTipText2D(javax.swing.text.JTextComponent,java.awt.geom.Point2D))

  `String`

  `getToolTipText2D(JTextComponent t,
  Point2D pt)`

  Returns the string to be used as the tooltip at the passed in location.

  `abstract Rectangle`

  `modelToView(JTextComponent t,
  int pos)`

  Deprecated.

  replaced by
  [`modelToView2D(JTextComponent, int, Position.Bias)`](#modelToView2D(javax.swing.text.JTextComponent,int,javax.swing.text.Position.Bias))

  `abstract Rectangle`

  `modelToView(JTextComponent t,
  int pos,
  Position.Bias bias)`

  Deprecated.

  replaced by
  [`modelToView2D(JTextComponent, int, Position.Bias)`](#modelToView2D(javax.swing.text.JTextComponent,int,javax.swing.text.Position.Bias))

  `Rectangle2D`

  `modelToView2D(JTextComponent t,
  int pos,
  Position.Bias bias)`

  Converts the given location in the model to a place in
  the view coordinate system.

  `abstract int`

  `viewToModel(JTextComponent t,
  Point pt)`

  Deprecated.

  replaced by
  [`viewToModel2D(JTextComponent, Point2D, Position.Bias[])`](#viewToModel2D(javax.swing.text.JTextComponent,java.awt.geom.Point2D,javax.swing.text.Position.Bias%5B%5D))

  `abstract int`

  `viewToModel(JTextComponent t,
  Point pt,
  Position.Bias[] biasReturn)`

  Deprecated.

  replaced by
  [`viewToModel2D(JTextComponent, Point2D, Position.Bias[])`](#viewToModel2D(javax.swing.text.JTextComponent,java.awt.geom.Point2D,javax.swing.text.Position.Bias%5B%5D))

  `int`

  `viewToModel2D(JTextComponent t,
  Point2D pt,
  Position.Bias[] biasReturn)`

  Provides a mapping from the view coordinate space to the logical
  coordinate space of the model.

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](ComponentUI.md "class in javax.swing.plaf")

  `contains, createUI, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior, getMaximumSize, getMinimumSize, getPreferredSize, installUI, paint, uninstallUI, update`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### TextUI

    protected TextUI()

    Constructor for subclasses to call.
* ## Method Details

  + ### modelToView

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="9")
    public abstract [Rectangle](../../../java/awt/Rectangle.md "class in java.awt") modelToView([JTextComponent](../text/JTextComponent.md "class in javax.swing.text") t,
    int pos)
    throws [BadLocationException](../text/BadLocationException.md "class in javax.swing.text")

    Deprecated.

    replaced by
    [`modelToView2D(JTextComponent, int, Position.Bias)`](#modelToView2D(javax.swing.text.JTextComponent,int,javax.swing.text.Position.Bias))

    Converts the given location in the model to a place in
    the view coordinate system.

    Parameters:
    :   `t` - the text component for which this UI is installed
    :   `pos` - the local location in the model to translate >= 0

    Returns:
    :   the coordinates as a `Rectangle`

    Throws:
    :   `BadLocationException` - if the given position does not
        represent a valid location in the associated document
  + ### modelToView

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="9")
    public abstract [Rectangle](../../../java/awt/Rectangle.md "class in java.awt") modelToView([JTextComponent](../text/JTextComponent.md "class in javax.swing.text") t,
    int pos,
    [Position.Bias](../text/Position.Bias.md "class in javax.swing.text") bias)
    throws [BadLocationException](../text/BadLocationException.md "class in javax.swing.text")

    Deprecated.

    replaced by
    [`modelToView2D(JTextComponent, int, Position.Bias)`](#modelToView2D(javax.swing.text.JTextComponent,int,javax.swing.text.Position.Bias))

    Converts the given location in the model to a place in
    the view coordinate system.

    Parameters:
    :   `t` - the text component for which this UI is installed
    :   `pos` - the local location in the model to translate >= 0
    :   `bias` - the bias for the position

    Returns:
    :   the coordinates as a `Rectangle`

    Throws:
    :   `BadLocationException` - if the given position does not
        represent a valid location in the associated document
  + ### modelToView2D

    public [Rectangle2D](../../../java/awt/geom/Rectangle2D.md "class in java.awt.geom") modelToView2D([JTextComponent](../text/JTextComponent.md "class in javax.swing.text") t,
    int pos,
    [Position.Bias](../text/Position.Bias.md "class in javax.swing.text") bias)
    throws [BadLocationException](../text/BadLocationException.md "class in javax.swing.text")

    Converts the given location in the model to a place in
    the view coordinate system.

    Parameters:
    :   `t` - the text component for which this UI is installed
    :   `pos` - the local location in the model to translate `>= 0`
    :   `bias` - the bias for the position

    Returns:
    :   the coordinates as a `Rectangle2D`

    Throws:
    :   `BadLocationException` - if the given position does not
        represent a valid location in the associated document

    Since:
    :   9
  + ### viewToModel

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="9")
    public abstract int viewToModel([JTextComponent](../text/JTextComponent.md "class in javax.swing.text") t,
    [Point](../../../java/awt/Point.md "class in java.awt") pt)

    Deprecated.

    replaced by
    [`viewToModel2D(JTextComponent, Point2D, Position.Bias[])`](#viewToModel2D(javax.swing.text.JTextComponent,java.awt.geom.Point2D,javax.swing.text.Position.Bias%5B%5D))

    Converts the given place in the view coordinate system
    to the nearest representative location in the model.

    Parameters:
    :   `t` - the text component for which this UI is installed
    :   `pt` - the location in the view to translate. This
        should be in the same coordinate system as the mouse
        events.

    Returns:
    :   the offset from the start of the document >= 0
  + ### viewToModel

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="9")
    public abstract int viewToModel([JTextComponent](../text/JTextComponent.md "class in javax.swing.text") t,
    [Point](../../../java/awt/Point.md "class in java.awt") pt,
    [Position.Bias](../text/Position.Bias.md "class in javax.swing.text")[] biasReturn)

    Deprecated.

    replaced by
    [`viewToModel2D(JTextComponent, Point2D, Position.Bias[])`](#viewToModel2D(javax.swing.text.JTextComponent,java.awt.geom.Point2D,javax.swing.text.Position.Bias%5B%5D))

    Provides a mapping from the view coordinate space to the logical
    coordinate space of the model.

    Parameters:
    :   `t` - the text component for which this UI is installed
    :   `pt` - the location in the view to translate.
        This should be in the same coordinate system
        as the mouse events.
    :   `biasReturn` - filled in by this method to indicate whether
        the point given is closer to the previous or the next
        character in the model

    Returns:
    :   the location within the model that best represents the
        given point in the view >= 0
  + ### viewToModel2D

    public int viewToModel2D([JTextComponent](../text/JTextComponent.md "class in javax.swing.text") t,
    [Point2D](../../../java/awt/geom/Point2D.md "class in java.awt.geom") pt,
    [Position.Bias](../text/Position.Bias.md "class in javax.swing.text")[] biasReturn)

    Provides a mapping from the view coordinate space to the logical
    coordinate space of the model.

    Parameters:
    :   `t` - the text component for which this UI is installed
    :   `pt` - the location in the view to translate.
    :   `biasReturn` - filled in by this method to indicate whether
        the point given is closer to the previous or the next
        character in the model

    Returns:
    :   the location within the model that best represents the
        given point in the view `>= 0`

    Since:
    :   9
  + ### getNextVisualPositionFrom

    public abstract int getNextVisualPositionFrom([JTextComponent](../text/JTextComponent.md "class in javax.swing.text") t,
    int pos,
    [Position.Bias](../text/Position.Bias.md "class in javax.swing.text") b,
    int direction,
    [Position.Bias](../text/Position.Bias.md "class in javax.swing.text")[] biasRet)
    throws [BadLocationException](../text/BadLocationException.md "class in javax.swing.text")

    Provides a way to determine the next visually represented model
    location that one might place a caret. Some views may not be visible,
    they might not be in the same order found in the model, or they just
    might not allow access to some of the locations in the model.

    Parameters:
    :   `t` - the text component for which this UI is installed
    :   `pos` - the position to convert >= 0
    :   `b` - the bias for the position
    :   `direction` - the direction from the current position that can
        be thought of as the arrow keys typically found on a keyboard.
        This may be SwingConstants.WEST, SwingConstants.EAST,
        SwingConstants.NORTH, or SwingConstants.SOUTH
    :   `biasRet` - an array to contain the bias for the returned position

    Returns:
    :   the location within the model that best represents the next
        location visual position

    Throws:
    :   `BadLocationException` - for a bad location within a document model
    :   `IllegalArgumentException` - for an invalid direction
  + ### damageRange

    public abstract void damageRange([JTextComponent](../text/JTextComponent.md "class in javax.swing.text") t,
    int p0,
    int p1)

    Causes the portion of the view responsible for the
    given part of the model to be repainted.

    Parameters:
    :   `t` - the text component for which this UI is installed
    :   `p0` - the beginning of the range >= 0
    :   `p1` - the end of the range >= p0
  + ### damageRange

    public abstract void damageRange([JTextComponent](../text/JTextComponent.md "class in javax.swing.text") t,
    int p0,
    int p1,
    [Position.Bias](../text/Position.Bias.md "class in javax.swing.text") firstBias,
    [Position.Bias](../text/Position.Bias.md "class in javax.swing.text") secondBias)

    Causes the portion of the view responsible for the
    given part of the model to be repainted.

    Parameters:
    :   `t` - the text component for which this UI is installed
    :   `p0` - the beginning of the range >= 0
    :   `p1` - the end of the range >= p0
    :   `firstBias` - the bias of the first character position, toward the
        previous character or the next character
    :   `secondBias` - the bias of the second character position, toward the
        previous character or the next character
  + ### getEditorKit

    public abstract [EditorKit](../text/EditorKit.md "class in javax.swing.text") getEditorKit([JTextComponent](../text/JTextComponent.md "class in javax.swing.text") t)

    Fetches the binding of services that set a policy
    for the type of document being edited. This contains
    things like the commands available, stream readers and
    writers, etc.

    Parameters:
    :   `t` - the text component for which this UI is installed

    Returns:
    :   the editor kit binding
  + ### getRootView

    public abstract [View](../text/View.md "class in javax.swing.text") getRootView([JTextComponent](../text/JTextComponent.md "class in javax.swing.text") t)

    Fetches a View with the allocation of the associated
    text component (i.e. the root of the hierarchy) that
    can be traversed to determine how the model is being
    represented spatially.

    Parameters:
    :   `t` - the text component for which this UI is installed

    Returns:
    :   a `View` with the allocation of the associated
        text component
  + ### getToolTipText

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="9")
    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getToolTipText([JTextComponent](../text/JTextComponent.md "class in javax.swing.text") t,
    [Point](../../../java/awt/Point.md "class in java.awt") pt)

    Deprecated.

    replaced by
    [`getToolTipText2D(JTextComponent, Point2D)`](#getToolTipText2D(javax.swing.text.JTextComponent,java.awt.geom.Point2D))

    Returns the string to be used as the tooltip at the passed in location.

    Parameters:
    :   `t` - the text component for which this UI is installed
    :   `pt` - a `Point` specifying location for which to get a tooltip

    Returns:
    :   a `String` containing the tooltip

    Since:
    :   1.4

    See Also:
    :   - [`JTextComponent.getToolTipText(java.awt.event.MouseEvent)`](../text/JTextComponent.md#getToolTipText(java.awt.event.MouseEvent))
  + ### getToolTipText2D

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getToolTipText2D([JTextComponent](../text/JTextComponent.md "class in javax.swing.text") t,
    [Point2D](../../../java/awt/geom/Point2D.md "class in java.awt.geom") pt)

    Returns the string to be used as the tooltip at the passed in location.

    Parameters:
    :   `t` - the text component for which this UI is installed
    :   `pt` - a `Point` specifying location for which to get a tooltip

    Returns:
    :   a `String` containing the tooltip

    Since:
    :   9

    See Also:
    :   - [`JTextComponent.getToolTipText(java.awt.event.MouseEvent)`](../text/JTextComponent.md#getToolTipText(java.awt.event.MouseEvent))