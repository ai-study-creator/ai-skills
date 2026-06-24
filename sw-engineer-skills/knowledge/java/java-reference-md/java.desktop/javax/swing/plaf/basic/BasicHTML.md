Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicHTML

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicHTML

---

public class BasicHTML
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

Support for providing html views for the swing components.
This translates a simple html string to a javax.swing.text.View
implementation that can render the html and provide the necessary
layout semantics.

Since:
:   1.3

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `documentBaseKey`

  Key stored as a client property to indicate the base that relative
  references are resolved against.

  `static final String`

  `propertyKey`

  Key to use for the html renderer when stored as a
  client property of a JComponent.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicHTML()`

  Constructs a `BasicHTML`.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static View`

  `createHTMLView(JComponent c,
  String html)`

  Create an html renderer for the given component and
  string of html.

  `static int`

  `getHTMLBaseline(View view,
  int w,
  int h)`

  Returns the baseline for the html renderer.

  `static boolean`

  `isHTMLString(String s)`

  Check the given string to see if it should trigger the
  html rendering logic in a non-text component that supports
  html rendering.

  `static void`

  `updateRenderer(JComponent c,
  String text)`

  Stash the HTML render for the given text into the client
  properties of the given JComponent.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### propertyKey

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") propertyKey

    Key to use for the html renderer when stored as a
    client property of a JComponent.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.basic.BasicHTML.propertyKey)
  + ### documentBaseKey

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") documentBaseKey

    Key stored as a client property to indicate the base that relative
    references are resolved against. For example, lets say you keep
    your images in the directory resources relative to the code path,
    you would use the following the set the base:

    ```
       jComponent.putClientProperty(documentBaseKey,
                                    xxx.class.getResource("resources/"));
    ```

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.basic.BasicHTML.documentBaseKey)
* ## Constructor Details

  + ### BasicHTML

    public BasicHTML()

    Constructs a `BasicHTML`.
* ## Method Details

  + ### createHTMLView

    public static [View](../../text/View.md "class in javax.swing.text") createHTMLView([JComponent](../../JComponent.md "class in javax.swing") c,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") html)

    Create an html renderer for the given component and
    string of html.

    Parameters:
    :   `c` - a component
    :   `html` - an HTML string

    Returns:
    :   an HTML renderer
  + ### getHTMLBaseline

    public static int getHTMLBaseline([View](../../text/View.md "class in javax.swing.text") view,
    int w,
    int h)

    Returns the baseline for the html renderer.

    Parameters:
    :   `view` - the View to get the baseline for
    :   `w` - the width to get the baseline for
    :   `h` - the height to get the baseline for

    Returns:
    :   baseline or a value < 0 indicating there is no reasonable
        baseline

    Throws:
    :   `IllegalArgumentException` - if width or height is < 0

    Since:
    :   1.6

    See Also:
    :   - [`FontMetrics`](../../../../java/awt/FontMetrics.md "class in java.awt")
        - [`JComponent.getBaseline(int,int)`](../../JComponent.md#getBaseline(int,int))
  + ### isHTMLString

    public static boolean isHTMLString([String](../../../../../java.base/java/lang/String.md "class in java.lang") s)

    Check the given string to see if it should trigger the
    html rendering logic in a non-text component that supports
    html rendering.

    Parameters:
    :   `s` - a text

    Returns:
    :   `true` if the given string should trigger the
        html rendering logic in a non-text component
  + ### updateRenderer

    public static void updateRenderer([JComponent](../../JComponent.md "class in javax.swing") c,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") text)

    Stash the HTML render for the given text into the client
    properties of the given JComponent. If the given text is
    *NOT HTML* the property will be cleared of any
    renderer.

    This method is useful for ComponentUI implementations
    that are static (i.e. shared) and get their state
    entirely from the JComponent.

    Parameters:
    :   `c` - a component
    :   `text` - a text