Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Interface RootPaneContainer

All Known Implementing Classes:
:   `JApplet`, `JDialog`, `JFrame`, `JInternalFrame`, `JWindow`

---

public interface RootPaneContainer

This interface is implemented by components that have a single
JRootPane child: JDialog, JFrame, JWindow, JApplet, JInternalFrame.
The methods in this interface are just *covers* for the JRootPane
properties, e.g. `getContentPane()` is generally implemented
like this:

```
     public Container getContentPane() {
         return getRootPane().getContentPane();
     }
```

This interface serves as a *marker* for Swing GUI builders
that need to treat components like JFrame, that contain a
single JRootPane, specially. For example in a GUI builder,
dropping a component on a RootPaneContainer would be interpreted
as `frame.getContentPane().add(child)`.

As a convenience, the standard classes that implement this interface
(such as `JFrame`, `JDialog`, `JWindow`, `JApplet`,
and `JInternalFrame`) have their `add`, `remove`,
and `setLayout` methods overridden, so that they delegate calls
to the corresponding methods of the `ContentPane`.
For example, you can add a child component to a frame as follows:

```
       frame.add(child);
```

instead of:

```
       frame.getContentPane().add(child);
```

The behavior of the `add` and
`setLayout` methods for
`JFrame`, `JDialog`, `JWindow`,
`JApplet` and `JInternalFrame` is controlled by
the `rootPaneCheckingEnabled` property. If this property is
true (the default), then calls to these methods are
forwarded to the `contentPane`; if false, these
methods operate directly on the `RootPaneContainer`. This
property is only intended for subclasses, and is therefore protected.

Since:
:   1.2

See Also:
:   * [`JRootPane`](JRootPane.md "class in javax.swing")
    * [`JFrame`](JFrame.md "class in javax.swing")
    * [`JDialog`](JDialog.md "class in javax.swing")
    * [`JWindow`](JWindow.md "class in javax.swing")
    * [`JApplet`](JApplet.md "class in javax.swing")
    * [`JInternalFrame`](JInternalFrame.md "class in javax.swing")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Container`

  `getContentPane()`

  Returns the contentPane.

  `Component`

  `getGlassPane()`

  Returns the glassPane.

  `JLayeredPane`

  `getLayeredPane()`

  Returns the layeredPane.

  `JRootPane`

  `getRootPane()`

  Return this component's single JRootPane child.

  `void`

  `setContentPane(Container contentPane)`

  The "contentPane" is the primary container for application
  specific components.

  `void`

  `setGlassPane(Component glassPane)`

  The glassPane is always the first child of the rootPane
  and the rootPanes layout manager ensures that it's always
  as big as the rootPane.

  `void`

  `setLayeredPane(JLayeredPane layeredPane)`

  A Container that manages the contentPane and in some cases a menu bar.

* ## Method Details

  + ### getRootPane

    [JRootPane](JRootPane.md "class in javax.swing") getRootPane()

    Return this component's single JRootPane child. A conventional
    implementation of this interface will have all of the other
    methods indirect through this one. The rootPane has two
    children: the glassPane and the layeredPane.

    Returns:
    :   this components single JRootPane child.

    See Also:
    :   - [`JRootPane`](JRootPane.md "class in javax.swing")
  + ### setContentPane

    void setContentPane([Container](../../java/awt/Container.md "class in java.awt") contentPane)

    The "contentPane" is the primary container for application
    specific components. Applications should add children to
    the contentPane, set its layout manager, and so on.

    The contentPane may not be null.

    Generally implemented with
    `getRootPane().setContentPane(contentPane);`

    Parameters:
    :   `contentPane` - the Container to use for the contents of this
        JRootPane

    Throws:
    :   `IllegalComponentStateException` - (a runtime
        exception) if the content pane parameter is null

    See Also:
    :   - [`JRootPane.getContentPane()`](JRootPane.md#getContentPane())
        - [`getContentPane()`](#getContentPane())
  + ### getContentPane

    [Container](../../java/awt/Container.md "class in java.awt") getContentPane()

    Returns the contentPane.

    Returns:
    :   the value of the contentPane property.

    See Also:
    :   - [`setContentPane(java.awt.Container)`](#setContentPane(java.awt.Container))
  + ### setLayeredPane

    void setLayeredPane([JLayeredPane](JLayeredPane.md "class in javax.swing") layeredPane)

    A Container that manages the contentPane and in some cases a menu bar.
    The layeredPane can be used by descendants that want to add a child
    to the RootPaneContainer that isn't layout managed. For example
    an internal dialog or a drag and drop effect component.

    The layeredPane may not be null.

    Generally implemented with

    ```
        getRootPane().setLayeredPane(layeredPane);
    ```

    Parameters:
    :   `layeredPane` - the layered pane

    Throws:
    :   `IllegalComponentStateException` - (a runtime
        exception) if the layered pane parameter is null

    See Also:
    :   - [`getLayeredPane()`](#getLayeredPane())
        - [`JRootPane.getLayeredPane()`](JRootPane.md#getLayeredPane())
  + ### getLayeredPane

    [JLayeredPane](JLayeredPane.md "class in javax.swing") getLayeredPane()

    Returns the layeredPane.

    Returns:
    :   the value of the layeredPane property.

    See Also:
    :   - [`setLayeredPane(javax.swing.JLayeredPane)`](#setLayeredPane(javax.swing.JLayeredPane))
  + ### setGlassPane

    void setGlassPane([Component](../../java/awt/Component.md "class in java.awt") glassPane)

    The glassPane is always the first child of the rootPane
    and the rootPanes layout manager ensures that it's always
    as big as the rootPane. By default it's transparent and
    not visible. It can be used to temporarily grab all keyboard
    and mouse input by adding listeners and then making it visible.
    by default it's not visible.

    The glassPane may not be null.

    Generally implemented with
    `getRootPane().setGlassPane(glassPane);`

    Parameters:
    :   `glassPane` - the glass pane

    See Also:
    :   - [`getGlassPane()`](#getGlassPane())
        - [`JRootPane.setGlassPane(java.awt.Component)`](JRootPane.md#setGlassPane(java.awt.Component))
  + ### getGlassPane

    [Component](../../java/awt/Component.md "class in java.awt") getGlassPane()

    Returns the glassPane.

    Returns:
    :   the value of the glassPane property.

    See Also:
    :   - [`setGlassPane(java.awt.Component)`](#setGlassPane(java.awt.Component))