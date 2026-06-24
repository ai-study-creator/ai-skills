Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Interface UIClientPropertyKey

---

public interface UIClientPropertyKey

This interface is used only for tagging keys for client properties for
`JComponent` set by UI which needs to be cleared on L&F
change and serialization.

All such keys are removed from client properties in
`JComponent.setUI()` method after uninstalling old UI and before
installing the new one. They are also removed prior to serialization.

Since:
:   9