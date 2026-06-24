Module [java.desktop](../../../module-summary.md)

# Package javax.swing.border

---

package javax.swing.border

Provides classes and interface for drawing specialized borders around a Swing
component. You can subclass these classes to create customized borders for
your components instead of using the default borders provided by the
look-and-feel being used.

**Note:**
Most of the Swing API is *not* thread safe. For details, see
[Concurrency in Swing](https://docs.oracle.com/javase/tutorial/uiswing/concurrency/index.html),
a section in
*[The Java Tutorial](https://docs.oracle.com/javase/tutorial/)*.

## Related Documentation

For overviews, tutorials, examples, guides, and tool documentation,
please see:

* [How to Use Borders](https://docs.oracle.com/javase/tutorial/uiswing/components/border.html),
  a section in *The Java Tutorial*

Since:
:   1.2

* Related Packages

  Package

  Description

  [javax.swing](../package-summary.md)

  Provides a set of "lightweight" (all-Java language) components
  that, to the maximum degree possible, work the same on all platforms.
* All Classes and InterfacesInterfacesClasses

  Class

  Description

  [AbstractBorder](AbstractBorder.md "class in javax.swing.border")

  A class that implements an empty border with no size.

  [BevelBorder](BevelBorder.md "class in javax.swing.border")

  A class which implements a simple two-line bevel border.

  [Border](Border.md "interface in javax.swing.border")

  Interface describing an object capable of rendering a border
  around the edges of a swing component.

  [CompoundBorder](CompoundBorder.md "class in javax.swing.border")

  A composite Border class used to compose two Border objects
  into a single border by nesting an inside Border object within
  the insets of an outside Border object.

  [EmptyBorder](EmptyBorder.md "class in javax.swing.border")

  A class which provides an empty, transparent border which
  takes up space but does no drawing.

  [EtchedBorder](EtchedBorder.md "class in javax.swing.border")

  A class which implements a simple etched border which can
  either be etched-in or etched-out.

  [LineBorder](LineBorder.md "class in javax.swing.border")

  A class which implements a line border of arbitrary thickness
  and of a single color.

  [MatteBorder](MatteBorder.md "class in javax.swing.border")

  A class which provides a matte-like border of either a solid color
  or a tiled icon.

  [SoftBevelBorder](SoftBevelBorder.md "class in javax.swing.border")

  A class which implements a raised or lowered bevel with
  softened corners.

  [StrokeBorder](StrokeBorder.md "class in javax.swing.border")

  A class which implements a border of an arbitrary stroke.

  [TitledBorder](TitledBorder.md "class in javax.swing.border")

  A class which implements an arbitrary border
  with the addition of a String title in a
  specified position and justification.