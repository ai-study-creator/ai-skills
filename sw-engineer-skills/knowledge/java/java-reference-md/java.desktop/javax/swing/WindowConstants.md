Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Interface WindowConstants

All Known Implementing Classes:
:   `JDialog`, `JFrame`, `JInternalFrame`

---

public interface WindowConstants

Constants used to control the window-closing operation.
The `setDefaultCloseOperation` and
`getDefaultCloseOperation` methods
provided by `JFrame`,
`JInternalFrame`, and
`JDialog`
use these constants.
For examples of setting the default window-closing operation, see
[Responding to Window-Closing Events](https://docs.oracle.com/javase/tutorial/uiswing/components/frame.html#windowevents),
a section in *The Java Tutorial*.

Since:
:   1.2

See Also:
:   * [`JFrame.setDefaultCloseOperation(int)`](JFrame.md#setDefaultCloseOperation(int))
    * [`JDialog.setDefaultCloseOperation(int)`](JDialog.md#setDefaultCloseOperation(int))
    * [`JInternalFrame.setDefaultCloseOperation(int)`](JInternalFrame.md#setDefaultCloseOperation(int))

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `DISPOSE_ON_CLOSE`

  The dispose-window default window close operation.

  `static final int`

  `DO_NOTHING_ON_CLOSE`

  The do-nothing default window close operation.

  `static final int`

  `EXIT_ON_CLOSE`

  The exit application default window close operation.

  `static final int`

  `HIDE_ON_CLOSE`

  The hide-window default window close operation

* ## Field Details

  + ### DO\_NOTHING\_ON\_CLOSE

    static final int DO\_NOTHING\_ON\_CLOSE

    The do-nothing default window close operation.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.WindowConstants.DO_NOTHING_ON_CLOSE)
  + ### HIDE\_ON\_CLOSE

    static final int HIDE\_ON\_CLOSE

    The hide-window default window close operation

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.WindowConstants.HIDE_ON_CLOSE)
  + ### DISPOSE\_ON\_CLOSE

    static final int DISPOSE\_ON\_CLOSE

    The dispose-window default window close operation.

    **Note**: When the last displayable window
    within the Java virtual machine (VM) is disposed of, the VM may
    terminate. See [AWT Threading Issues](../../java/awt/doc-files/AWTThreadIssues.md) for more information.

    See Also:
    :   - [`Window.dispose()`](../../java/awt/Window.md#dispose())
        - [`JInternalFrame.dispose()`](JInternalFrame.md#dispose())
        - [Constant Field Values](../../../constant-values.md#javax.swing.WindowConstants.DISPOSE_ON_CLOSE)
  + ### EXIT\_ON\_CLOSE

    static final int EXIT\_ON\_CLOSE

    The exit application default window close operation. Attempting
    to set this on Windows that support this, such as
    `JFrame`, may throw a `SecurityException` based
    on the `SecurityManager`.
    It is recommended you only use this in an application.

    Since:
    :   1.4

    See Also:
    :   - [`JFrame.setDefaultCloseOperation(int)`](JFrame.md#setDefaultCloseOperation(int))
        - [Constant Field Values](../../../constant-values.md#javax.swing.WindowConstants.EXIT_ON_CLOSE)