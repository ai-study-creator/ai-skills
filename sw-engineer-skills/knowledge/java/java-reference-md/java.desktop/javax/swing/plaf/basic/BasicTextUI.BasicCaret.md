Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicTextUI.BasicCaret

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.geom.RectangularShape](../../../../java/awt/geom/RectangularShape.md "class in java.awt.geom")

[java.awt.geom.Rectangle2D](../../../../java/awt/geom/Rectangle2D.md "class in java.awt.geom")

[java.awt.Rectangle](../../../../java/awt/Rectangle.md "class in java.awt")

[javax.swing.text.DefaultCaret](../../text/DefaultCaret.md "class in javax.swing.text")

javax.swing.plaf.basic.BasicTextUI.BasicCaret

All Implemented Interfaces:
:   `FocusListener`, `MouseListener`, `MouseMotionListener`, `Shape`, `Serializable`, `Cloneable`, `EventListener`, `UIResource`, `Caret`

Enclosing class:
:   `BasicTextUI`

---

public static class BasicTextUI.BasicCaret
extends [DefaultCaret](../../text/DefaultCaret.md "class in javax.swing.text")
implements [UIResource](../UIResource.md "interface in javax.swing.plaf")

Default implementation of the interface `Caret`.

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.awt.geom.[Rectangle2D](../../../../java/awt/geom/Rectangle2D.md "class in java.awt.geom")

  `Rectangle2D.Double, Rectangle2D.Float`
* ## Field Summary

  ### Fields inherited from class javax.swing.text.[DefaultCaret](../../text/DefaultCaret.md "class in javax.swing.text")

  `ALWAYS_UPDATE, changeEvent, listenerList, NEVER_UPDATE, UPDATE_WHEN_ON_EDT`

  ### Fields inherited from class java.awt.[Rectangle](../../../../java/awt/Rectangle.md "class in java.awt")

  `height, width, x, y`

  ### Fields inherited from class java.awt.geom.[Rectangle2D](../../../../java/awt/geom/Rectangle2D.md "class in java.awt.geom")

  `OUT_BOTTOM, OUT_LEFT, OUT_RIGHT, OUT_TOP`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicCaret()`

  Constructs a `BasicCaret`.
* ## Method Summary

  ### Methods inherited from class javax.swing.text.[DefaultCaret](../../text/DefaultCaret.md "class in javax.swing.text")

  `addChangeListener, adjustVisibility, damage, deinstall, equals, fireStateChanged, focusGained, focusLost, getBlinkRate, getChangeListeners, getComponent, getDot, getDotBias, getListeners, getMagicCaretPosition, getMark, getMarkBias, getSelectionPainter, getUpdatePolicy, install, isActive, isSelectionVisible, isVisible, mouseClicked, mouseDragged, mouseEntered, mouseExited, mouseMoved, mousePressed, mouseReleased, moveCaret, moveDot, moveDot, paint, positionCaret, removeChangeListener, repaint, setBlinkRate, setDot, setDot, setMagicCaretPosition, setSelectionVisible, setUpdatePolicy, setVisible, toString`

  ### Methods inherited from class java.awt.[Rectangle](../../../../java/awt/Rectangle.md "class in java.awt")

  `add, add, add, contains, contains, contains, contains, createIntersection, createUnion, getBounds, getBounds2D, getHeight, getLocation, getSize, getWidth, getX, getY, grow, inside, intersection, intersects, isEmpty, move, outcode, reshape, resize, setBounds, setBounds, setLocation, setLocation, setRect, setSize, setSize, translate, union`

  ### Methods inherited from class java.awt.geom.[Rectangle2D](../../../../java/awt/geom/Rectangle2D.md "class in java.awt.geom")

  `add, add, add, contains, contains, getPathIterator, getPathIterator, hashCode, intersect, intersects, intersectsLine, intersectsLine, outcode, setFrame, setRect, union`

  ### Methods inherited from class java.awt.geom.[RectangularShape](../../../../java/awt/geom/RectangularShape.md "class in java.awt.geom")

  `clone, contains, contains, getCenterX, getCenterY, getFrame, getMaxX, getMaxY, getMinX, getMinY, intersects, setFrame, setFrame, setFrameFromCenter, setFrameFromCenter, setFrameFromDiagonal, setFrameFromDiagonal`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.awt.[Shape](../../../../java/awt/Shape.md "interface in java.awt")

  `contains, contains, contains, contains, getPathIterator, getPathIterator, intersects, intersects`

* ## Constructor Details

  + ### BasicCaret

    public BasicCaret()

    Constructs a `BasicCaret`.