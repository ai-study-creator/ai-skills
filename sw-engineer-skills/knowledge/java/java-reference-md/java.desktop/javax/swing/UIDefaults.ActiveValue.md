Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Interface UIDefaults.ActiveValue

Enclosing class:
:   `UIDefaults`

---

public static interface UIDefaults.ActiveValue

This class enables one to store an entry in the defaults
table that's constructed each time it's looked up with one of
the `getXXX(key)` methods. Here's an example of
an `ActiveValue` that constructs a
`DefaultListCellRenderer`:

```
  Object cellRendererActiveValue = new UIDefaults.ActiveValue() {
      public Object createValue(UIDefaults table) {
          return new DefaultListCellRenderer();
      }
  };

  uiDefaultsTable.put("MyRenderer", cellRendererActiveValue);
```

See Also:
:   * [`UIDefaults.get(java.lang.Object)`](UIDefaults.md#get(java.lang.Object))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Object`

  `createValue(UIDefaults table)`

  Creates the value retrieved from the `UIDefaults` table.

* ## Method Details

  + ### createValue

    [Object](../../../java.base/java/lang/Object.md "class in java.lang") createValue([UIDefaults](UIDefaults.md "class in javax.swing") table)

    Creates the value retrieved from the `UIDefaults` table.
    The object is created each time it is accessed.

    Parameters:
    :   `table` - a `UIDefaults` table

    Returns:
    :   the created `Object`