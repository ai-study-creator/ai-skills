Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.synth](package-summary.md)

# Class SynthStyleFactory

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.synth.SynthStyleFactory

---

public abstract class SynthStyleFactory
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

Factory used for obtaining `SynthStyle`s. Each of the
Synth `ComponentUI`s will call into the current
`SynthStyleFactory` to obtain a `SynthStyle`
for each of the distinct regions they have.

The following example creates a custom `SynthStyleFactory`
that returns a different style based on the `Region`:

```
 class MyStyleFactory extends SynthStyleFactory {
     public SynthStyle getStyle(JComponent c, Region id) {
         if (id == Region.BUTTON) {
             return buttonStyle;
         }
         else if (id == Region.TREE) {
             return treeStyle;
         }
         return defaultStyle;
     }
 }
 SynthLookAndFeel laf = new SynthLookAndFeel();
 UIManager.setLookAndFeel(laf);
 SynthLookAndFeel.setStyleFactory(new MyStyleFactory());
```

Since:
:   1.5

See Also:
:   * [`SynthLookAndFeel`](SynthLookAndFeel.md "class in javax.swing.plaf.synth")
    * [`SynthStyle`](SynthStyle.md "class in javax.swing.plaf.synth")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SynthStyleFactory()`

  Creates a `SynthStyleFactory`.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract SynthStyle`

  `getStyle(JComponent c,
  Region id)`

  Returns the style for the specified Component.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SynthStyleFactory

    public SynthStyleFactory()

    Creates a `SynthStyleFactory`.
* ## Method Details

  + ### getStyle

    public abstract [SynthStyle](SynthStyle.md "class in javax.swing.plaf.synth") getStyle([JComponent](../../JComponent.md "class in javax.swing") c,
    [Region](Region.md "class in javax.swing.plaf.synth") id)

    Returns the style for the specified Component.

    Parameters:
    :   `c` - Component asking for
    :   `id` - Region identifier

    Returns:
    :   SynthStyle for region.