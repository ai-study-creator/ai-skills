Module [java.desktop](../../module-summary.md)

Package [java.beans](package-summary.md)

# Interface Customizer

---

public interface Customizer

A customizer class provides a complete custom GUI for customizing
a target Java Bean.

Each customizer should inherit from the java.awt.Component class so
it can be instantiated inside an AWT dialog or panel.

Each customizer should have a null constructor.

Since:
:   1.1

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `addPropertyChangeListener(PropertyChangeListener listener)`

  Register a listener for the PropertyChange event.

  `void`

  `removePropertyChangeListener(PropertyChangeListener listener)`

  Remove a listener for the PropertyChange event.

  `void`

  `setObject(Object bean)`

  Set the object to be customized.

* ## Method Details

  + ### setObject

    void setObject([Object](../../../java.base/java/lang/Object.md "class in java.lang") bean)

    Set the object to be customized. This method should be called only
    once, before the Customizer has been added to any parent AWT container.

    Parameters:
    :   `bean` - The object to be customized.
  + ### addPropertyChangeListener

    void addPropertyChangeListener([PropertyChangeListener](PropertyChangeListener.md "interface in java.beans") listener)

    Register a listener for the PropertyChange event. The customizer
    should fire a PropertyChange event whenever it changes the target
    bean in a way that might require the displayed properties to be
    refreshed.

    Parameters:
    :   `listener` - An object to be invoked when a PropertyChange
        event is fired.
  + ### removePropertyChangeListener

    void removePropertyChangeListener([PropertyChangeListener](PropertyChangeListener.md "interface in java.beans") listener)

    Remove a listener for the PropertyChange event.

    Parameters:
    :   `listener` - The PropertyChange listener to be removed.