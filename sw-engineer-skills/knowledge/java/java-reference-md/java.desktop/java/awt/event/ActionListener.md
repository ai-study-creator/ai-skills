Module [java.desktop](../../../module-summary.md)

Package [java.awt.event](package-summary.md)

# Interface ActionListener

All Superinterfaces:
:   `EventListener`

All Known Subinterfaces:
:   `Action`

All Known Implementing Classes:
:   `AbstractAction`, `AWTEventMulticaster`, `BasicDesktopPaneUI.CloseAction`, `BasicDesktopPaneUI.MaximizeAction`, `BasicDesktopPaneUI.MinimizeAction`, `BasicDesktopPaneUI.NavigateAction`, `BasicDesktopPaneUI.OpenAction`, `BasicFileChooserUI.ApproveSelectionAction`, `BasicFileChooserUI.CancelSelectionAction`, `BasicFileChooserUI.ChangeToParentDirectoryAction`, `BasicFileChooserUI.GoHomeAction`, `BasicFileChooserUI.NewFolderAction`, `BasicFileChooserUI.UpdateAction`, `BasicInternalFrameTitlePane.CloseAction`, `BasicInternalFrameTitlePane.IconifyAction`, `BasicInternalFrameTitlePane.MaximizeAction`, `BasicInternalFrameTitlePane.MoveAction`, `BasicInternalFrameTitlePane.RestoreAction`, `BasicInternalFrameTitlePane.SizeAction`, `BasicOptionPaneUI.ButtonActionListener`, `BasicScrollBarUI.ScrollListener`, `BasicSliderUI.ActionScroller`, `BasicSliderUI.ScrollListener`, `BasicSplitPaneUI.KeyboardDownRightHandler`, `BasicSplitPaneUI.KeyboardEndHandler`, `BasicSplitPaneUI.KeyboardHomeHandler`, `BasicSplitPaneUI.KeyboardResizeToggleHandler`, `BasicSplitPaneUI.KeyboardUpLeftHandler`, `BasicTreeUI.ComponentHandler`, `BasicTreeUI.TreeCancelEditingAction`, `BasicTreeUI.TreeHomeAction`, `BasicTreeUI.TreeIncrementAction`, `BasicTreeUI.TreePageAction`, `BasicTreeUI.TreeToggleAction`, `BasicTreeUI.TreeTraverseAction`, `DefaultCellEditor.EditorDelegate`, `DefaultEditorKit.BeepAction`, `DefaultEditorKit.CopyAction`, `DefaultEditorKit.CutAction`, `DefaultEditorKit.DefaultKeyTypedAction`, `DefaultEditorKit.InsertBreakAction`, `DefaultEditorKit.InsertContentAction`, `DefaultEditorKit.InsertTabAction`, `DefaultEditorKit.PasteAction`, `DefaultTreeCellEditor`, `DropTarget.DropTargetAutoScroller`, `FormView`, `HTMLEditorKit.HTMLTextAction`, `HTMLEditorKit.InsertHTMLTextAction`, `JComboBox`, `List.AccessibleAWTList`, `MetalFileChooserUI.DirectoryComboBoxAction`, `StyledEditorKit.AlignmentAction`, `StyledEditorKit.BoldAction`, `StyledEditorKit.FontFamilyAction`, `StyledEditorKit.FontSizeAction`, `StyledEditorKit.ForegroundAction`, `StyledEditorKit.ItalicAction`, `StyledEditorKit.StyledTextAction`, `StyledEditorKit.UnderlineAction`, `TextAction`, `ToolTipManager.insideTimerAction`, `ToolTipManager.outsideTimerAction`, `ToolTipManager.stillInsideTimerAction`

---

public interface ActionListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

The listener interface for receiving action events.
The class that is interested in processing an action event
implements this interface, and the object created with that
class is registered with a component, using the component's
`addActionListener` method. When the action event
occurs, that object's `actionPerformed` method is
invoked.

Since:
:   1.1

See Also:
:   * [`ActionEvent`](ActionEvent.md "class in java.awt.event")
    * [How to Write an Action Listener](https://docs.oracle.com/javase/tutorial/uiswing/events/actionlistener.html)

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `actionPerformed(ActionEvent e)`

  Invoked when an action occurs.

* ## Method Details

  + ### actionPerformed

    void actionPerformed([ActionEvent](ActionEvent.md "class in java.awt.event") e)

    Invoked when an action occurs.

    Parameters:
    :   `e` - the event to be processed