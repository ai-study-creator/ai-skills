Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Interface MouseInputListener

All Superinterfaces:
:   `EventListener`, `MouseListener`, `MouseMotionListener`

All Known Implementing Classes:
:   `BasicDesktopIconUI.MouseInputHandler`, `BasicInternalFrameUI.BorderListener`, `BasicInternalFrameUI.GlassPaneDispatcher`, `BasicListUI.MouseInputHandler`, `BasicMenuItemUI.MouseInputHandler`, `BasicMenuUI.MouseInputHandler`, `BasicSliderUI.TrackListener`, `BasicTableHeaderUI.MouseInputHandler`, `BasicTableUI.MouseInputHandler`, `BasicToolBarUI.DockingListener`, `BasicTreeUI.MouseInputHandler`, `MetalToolBarUI.MetalDockingListener`, `MouseInputAdapter`

---

public interface MouseInputListener
extends [MouseListener](../../../java/awt/event/MouseListener.md "interface in java.awt.event"), [MouseMotionListener](../../../java/awt/event/MouseMotionListener.md "interface in java.awt.event")

A listener implementing all the methods in both the `MouseListener` and
`MouseMotionListener` interfaces.

See Also:
:   * [`MouseInputAdapter`](MouseInputAdapter.md "class in javax.swing.event")

* ## Method Summary

  ### Methods inherited from interface java.awt.event.[MouseListener](../../../java/awt/event/MouseListener.md "interface in java.awt.event")

  `mouseClicked, mouseEntered, mouseExited, mousePressed, mouseReleased`

  ### Methods inherited from interface java.awt.event.[MouseMotionListener](../../../java/awt/event/MouseMotionListener.md "interface in java.awt.event")

  `mouseDragged, mouseMoved`