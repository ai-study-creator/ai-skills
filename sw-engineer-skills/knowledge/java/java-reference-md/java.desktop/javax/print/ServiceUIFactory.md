Module [java.desktop](../../module-summary.md)

Package [javax.print](package-summary.md)

# Class ServiceUIFactory

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.print.ServiceUIFactory

---

public abstract class ServiceUIFactory
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

Services may optionally provide UIs which allow different styles of
interaction in different roles. One role may be end-user browsing and setting
of print options. Another role may be administering the print service.

Although the Print Service API does not presently provide standardised
support for administering a print service, monitoring of the print service is
possible and a UI may provide for private update mechanisms.

The basic design intent is to allow applications to lazily locate and
initialize services only when needed without any API dependencies except in
an environment in which they are used.

Swing UIs are preferred as they provide a more consistent L&F and
can support accessibility APIs.

Example usage:

```
  ServiceUIFactory factory = printService.getServiceUIFactory();
  if (factory != null) {
      JComponent swingui = (JComponent)factory.getUI(
                                         ServiceUIFactory.MAIN_UIROLE,
                                         ServiceUIFactory.JCOMPONENT_UI);
      if (swingui != null) {
          tabbedpane.add("Custom UI", swingui);
      }
  }
```

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `ABOUT_UIROLE`

  Denotes a UI which performs an informative "About" role.

  `static final int`

  `ADMIN_UIROLE`

  Denotes a UI which performs an administrative role.

  `static final String`

  `DIALOG_UI`

  Denotes a UI implemented as an AWT dialog.

  `static final String`

  `JCOMPONENT_UI`

  Denotes a UI implemented as a Swing component.

  `static final String`

  `JDIALOG_UI`

  Denotes a UI implemented as a Swing dialog.

  `static final int`

  `MAIN_UIROLE`

  Denotes a UI which performs the normal end user role.

  `static final String`

  `PANEL_UI`

  Denotes a UI implemented as an AWT panel.

  `static final int`

  `RESERVED_UIROLE`

  Not a valid role but role id's greater than this may be used for private
  roles supported by a service.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ServiceUIFactory()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract Object`

  `getUI(int role,
  String ui)`

  Get a UI object which may be cast to the requested UI type by the
  application and used in its user interface.

  `abstract String[]`

  `getUIClassNamesForRole(int role)`

  Given a UI role obtained from this factory obtain the UI types available
  from this factory which implement this role.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### JCOMPONENT\_UI

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") JCOMPONENT\_UI

    Denotes a UI implemented as a Swing component. The value of the string is
    the fully qualified classname : "javax.swing.JComponent".

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.print.ServiceUIFactory.JCOMPONENT_UI)
  + ### PANEL\_UI

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") PANEL\_UI

    Denotes a UI implemented as an AWT panel. The value of the string is the
    fully qualified classname : "java.awt.Panel"

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.print.ServiceUIFactory.PANEL_UI)
  + ### DIALOG\_UI

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") DIALOG\_UI

    Denotes a UI implemented as an AWT dialog. The value of the string is the
    fully qualified classname : "java.awt.Dialog"

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.print.ServiceUIFactory.DIALOG_UI)
  + ### JDIALOG\_UI

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") JDIALOG\_UI

    Denotes a UI implemented as a Swing dialog. The value of the string is
    the fully qualified classname : "javax.swing.JDialog"

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.print.ServiceUIFactory.JDIALOG_UI)
  + ### ABOUT\_UIROLE

    public static final int ABOUT\_UIROLE

    Denotes a UI which performs an informative "About" role.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.print.ServiceUIFactory.ABOUT_UIROLE)
  + ### ADMIN\_UIROLE

    public static final int ADMIN\_UIROLE

    Denotes a UI which performs an administrative role.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.print.ServiceUIFactory.ADMIN_UIROLE)
  + ### MAIN\_UIROLE

    public static final int MAIN\_UIROLE

    Denotes a UI which performs the normal end user role.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.print.ServiceUIFactory.MAIN_UIROLE)
  + ### RESERVED\_UIROLE

    public static final int RESERVED\_UIROLE

    Not a valid role but role id's greater than this may be used for private
    roles supported by a service. Knowledge of the function performed by this
    role is required to make proper use of it.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.print.ServiceUIFactory.RESERVED_UIROLE)
* ## Constructor Details

  + ### ServiceUIFactory

    protected ServiceUIFactory()

    Constructor for subclasses to call.
* ## Method Details

  + ### getUI

    public abstract [Object](../../../java.base/java/lang/Object.md "class in java.lang") getUI(int role,
    [String](../../../java.base/java/lang/String.md "class in java.lang") ui)

    Get a UI object which may be cast to the requested UI type by the
    application and used in its user interface.

    Parameters:
    :   `role` - requested. Must be one of the standard roles or a private
        role supported by this factory.
    :   `ui` - type in which the role is requested

    Returns:
    :   the UI role or `null` if the requested UI role is not
        available from this factory

    Throws:
    :   `IllegalArgumentException` - if the role or ui is neither one of the
        standard ones, nor a private one supported by the factory
  + ### getUIClassNamesForRole

    public abstract [String](../../../java.base/java/lang/String.md "class in java.lang")[] getUIClassNamesForRole(int role)

    Given a UI role obtained from this factory obtain the UI types available
    from this factory which implement this role. The returned `Strings`
    should refer to the static variables defined in this class so that
    applications can use equality of reference ("==").

    Parameters:
    :   `role` - to be looked up

    Returns:
    :   the UI types supported by this class for the specified role,
        `null` if no UIs are available for the role

    Throws:
    :   `IllegalArgumentException` - is the role is a non-standard role not
        supported by this factory