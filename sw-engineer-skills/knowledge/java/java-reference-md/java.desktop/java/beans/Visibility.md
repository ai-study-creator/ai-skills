Module [java.desktop](../../module-summary.md)

Package [java.beans](package-summary.md)

# Interface Visibility

All Known Subinterfaces:
:   `BeanContext`, `BeanContextServices`

All Known Implementing Classes:
:   `BeanContextServicesSupport`, `BeanContextSupport`

---

public interface Visibility

Under some circumstances a bean may be run on servers where a GUI
is not available. This interface can be used to query a bean to
determine whether it absolutely needs a gui, and to advise the
bean whether a GUI is available.

This interface is for expert developers, and is not needed
for normal simple beans. To avoid confusing end-users we
avoid using getXXX setXXX design patterns for these methods.

Since:
:   1.1

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `avoidingGui()`

  Determines whether this bean is avoiding using a GUI.

  `void`

  `dontUseGui()`

  This method instructs the bean that it should not use the Gui.

  `boolean`

  `needsGui()`

  Determines whether this bean needs a GUI.

  `void`

  `okToUseGui()`

  This method instructs the bean that it is OK to use the Gui.

* ## Method Details

  + ### needsGui

    boolean needsGui()

    Determines whether this bean needs a GUI.

    Returns:
    :   True if the bean absolutely needs a GUI available in
        order to get its work done.
  + ### dontUseGui

    void dontUseGui()

    This method instructs the bean that it should not use the Gui.
  + ### okToUseGui

    void okToUseGui()

    This method instructs the bean that it is OK to use the Gui.
  + ### avoidingGui

    boolean avoidingGui()

    Determines whether this bean is avoiding using a GUI.

    Returns:
    :   true if the bean is currently avoiding use of the Gui.
        e.g. due to a call on dontUseGui().