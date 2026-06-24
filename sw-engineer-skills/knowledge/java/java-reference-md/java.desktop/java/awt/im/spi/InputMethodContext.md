Module [java.desktop](../../../../module-summary.md)

Package [java.awt.im.spi](package-summary.md)

# Interface InputMethodContext

All Superinterfaces:
:   `InputMethodRequests`

---

public interface InputMethodContext
extends [InputMethodRequests](../InputMethodRequests.md "interface in java.awt.im")

Provides methods that input methods
can use to communicate with their client components or to request
other services. This interface is implemented by the input method
framework, and input methods call its methods on the instance they
receive through
[`InputMethod.setInputMethodContext(java.awt.im.spi.InputMethodContext)`](InputMethod.md#setInputMethodContext(java.awt.im.spi.InputMethodContext)).
There should be no other implementors or callers.

Since:
:   1.3

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `JFrame`

  `createInputMethodJFrame(String title,
  boolean attachToInputContext)`

  Creates a top-level Swing JFrame for use by the input method.

  `Window`

  `createInputMethodWindow(String title,
  boolean attachToInputContext)`

  Creates a top-level window for use by the input method.

  `void`

  `dispatchInputMethodEvent(int id,
  AttributedCharacterIterator text,
  int committedCharacterCount,
  TextHitInfo caret,
  TextHitInfo visiblePosition)`

  Creates an input method event from the arguments given
  and dispatches it to the client component.

  `void`

  `enableClientWindowNotification(InputMethod inputMethod,
  boolean enable)`

  Enables or disables notification of the current client window's
  location and state for the specified input method.

  ### Methods inherited from interface java.awt.im.[InputMethodRequests](../InputMethodRequests.md "interface in java.awt.im")

  `cancelLatestCommittedText, getCommittedText, getCommittedTextLength, getInsertPositionOffset, getLocationOffset, getSelectedText, getTextLocation`

* ## Method Details

  + ### dispatchInputMethodEvent

    void dispatchInputMethodEvent(int id,
    [AttributedCharacterIterator](../../../../../java.base/java/text/AttributedCharacterIterator.md "interface in java.text") text,
    int committedCharacterCount,
    [TextHitInfo](../../font/TextHitInfo.md "class in java.awt.font") caret,
    [TextHitInfo](../../font/TextHitInfo.md "class in java.awt.font") visiblePosition)

    Creates an input method event from the arguments given
    and dispatches it to the client component. For arguments,
    see [`InputMethodEvent(java.awt.Component, int, java.awt.font.TextHitInfo, java.awt.font.TextHitInfo)`](../../event/InputMethodEvent.md#%3Cinit%3E(java.awt.Component,int,java.awt.font.TextHitInfo,java.awt.font.TextHitInfo)).

    Parameters:
    :   `id` - the event type
    :   `text` - the combined committed and composed text
    :   `committedCharacterCount` - the number of committed characters in the text
    :   `caret` - the caret (a.k.a. insertion point); null if
        there's no caret within current composed text
    :   `visiblePosition` - the position that's most important to be
        visible; null if there's no recommendation for a visible
        position within current composed text
  + ### createInputMethodWindow

    [Window](../../Window.md "class in java.awt") createInputMethodWindow([String](../../../../../java.base/java/lang/String.md "class in java.lang") title,
    boolean attachToInputContext)

    Creates a top-level window for use by the input method.
    The intended behavior of this window is:
    - it floats above all document windows and dialogs- it and all components that it contains do not receive the focus- it has lightweight decorations, such as a reduced drag region without titleHowever, the actual behavior with respect to these three items is platform dependent.

    The title may or may not be displayed, depending on the actual type of window created.

    If attachToInputContext is true, the new window will share the input context that
    corresponds to this input method context, so that events for components in the window
    are automatically dispatched to the input method.
    Also, when the window is opened using setVisible(true), the input context will prevent
    deactivate and activate calls to the input method that might otherwise be caused.

    Input methods must call [`Window.dispose`](../../Window.md#dispose()) on the
    returned input method window when it is no longer needed.

    Parameters:
    :   `title` - the title to be displayed in the window's title bar,
        if there is such a title bar.
        A `null` value is treated as an empty string, "".
    :   `attachToInputContext` - whether this window should share the input context
        that corresponds to this input method context

    Returns:
    :   a window with special characteristics for use by input methods

    Throws:
    :   `HeadlessException` - if `GraphicsEnvironment.isHeadless`
        returns `true`
  + ### createInputMethodJFrame

    [JFrame](../../../../javax/swing/JFrame.md "class in javax.swing") createInputMethodJFrame([String](../../../../../java.base/java/lang/String.md "class in java.lang") title,
    boolean attachToInputContext)

    Creates a top-level Swing JFrame for use by the input method.
    The intended behavior of this window is:
    - it floats above all document windows and dialogs- it and all components that it contains do not receive the focus- it has lightweight decorations, such as a reduced drag region without titleHowever, the actual behavior with respect to these three items is platform dependent.

    The title may or may not be displayed, depending on the actual type of window created.

    If attachToInputContext is true, the new window will share the input context that
    corresponds to this input method context, so that events for components in the window
    are automatically dispatched to the input method.
    Also, when the window is opened using setVisible(true), the input context will prevent
    deactivate and activate calls to the input method that might otherwise be caused.

    Input methods must call [`Window.dispose`](../../Window.md#dispose()) on the
    returned input method window when it is no longer needed.

    Parameters:
    :   `title` - the title to be displayed in the window's title bar,
        if there is such a title bar.
        A `null` value is treated as an empty string, "".
    :   `attachToInputContext` - whether this window should share the input context
        that corresponds to this input method context

    Returns:
    :   a JFrame with special characteristics for use by input methods

    Throws:
    :   `HeadlessException` - if `GraphicsEnvironment.isHeadless`
        returns `true`

    Since:
    :   1.4
  + ### enableClientWindowNotification

    void enableClientWindowNotification([InputMethod](InputMethod.md "interface in java.awt.im.spi") inputMethod,
    boolean enable)

    Enables or disables notification of the current client window's
    location and state for the specified input method. When
    notification is enabled, the input method's [`notifyClientWindowChange`](InputMethod.md#notifyClientWindowChange(java.awt.Rectangle)) method is called as described in that
    method's specification. Notification is automatically disabled
    when the input method is disposed.

    Parameters:
    :   `inputMethod` - the input method for which notifications are
        enabled or disabled
    :   `enable` - true to enable, false to disable