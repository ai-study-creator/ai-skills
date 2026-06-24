Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Interface UIDefaults.LazyValue

All Known Implementing Classes:
:   `UIDefaults.LazyInputMap`, `UIDefaults.ProxyLazyValue`

Enclosing class:
:   `UIDefaults`

---

public static interface UIDefaults.LazyValue

This class enables one to store an entry in the defaults
table that isn't constructed until the first time it's
looked up with one of the `getXXX(key)` methods.
Lazy values are useful for defaults that are expensive
to construct or are seldom retrieved. The first time
a `LazyValue` is retrieved its "real value" is computed
by calling `LazyValue.createValue()` and the real
value is used to replace the `LazyValue` in the
`UIDefaults`
table. Subsequent lookups for the same key return
the real value. Here's an example of a `LazyValue`
that constructs a `Border`:

```
  Object borderLazyValue = new UIDefaults.LazyValue() {
      public Object createValue(UIDefaults table) {
          return new BorderFactory.createLoweredBevelBorder();
      }
  };

  uiDefaultsTable.put("MyBorder", borderLazyValue);
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

  Creates the actual value retrieved from the `UIDefaults`
  table.

* ## Method Details

  + ### createValue

    [Object](../../../java.base/java/lang/Object.md "class in java.lang") createValue([UIDefaults](UIDefaults.md "class in javax.swing") table)

    Creates the actual value retrieved from the `UIDefaults`
    table. When an object that implements this interface is
    retrieved from the table, this method is used to create
    the real value, which is then stored in the table and
    returned to the calling method.

    Parameters:
    :   `table` - a `UIDefaults` table

    Returns:
    :   the created `Object`