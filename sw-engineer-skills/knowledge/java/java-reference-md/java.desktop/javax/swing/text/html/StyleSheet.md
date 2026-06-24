Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.text.html](package-summary.md)

# Class StyleSheet

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.StyleContext](../StyleContext.md "class in javax.swing.text")

javax.swing.text.html.StyleSheet

All Implemented Interfaces:
:   `Serializable`, `AbstractDocument.AttributeContext`

---

public class StyleSheet
extends [StyleContext](../StyleContext.md "class in javax.swing.text")

Support for defining the visual characteristics of
HTML views being rendered. The StyleSheet is used to
translate the HTML model into visual characteristics.
This enables views to be customized by a look-and-feel,
multiple views over the same model can be rendered
differently, etc. This can be thought of as a CSS
rule repository. The key for CSS attributes is an
object of type CSS.Attribute. The type of the value
is up to the StyleSheet implementation, but the
`toString` method is required
to return a string representation of CSS value.

The primary entry point for HTML View implementations
to get their attributes is the
[`getViewAttributes`](#getViewAttributes(javax.swing.text.View))
method. This should be implemented to establish the
desired policy used to associate attributes with the view.
Each HTMLEditorKit (i.e. and therefore each associated
JEditorPane) can have its own StyleSheet, but by default one
sheet will be shared by all of the HTMLEditorKit instances.
HTMLDocument instance can also have a StyleSheet, which
holds the document-specific CSS specifications.

In order for Views to store less state and therefore be
more lightweight, the StyleSheet can act as a factory for
painters that handle some of the rendering tasks. This allows
implementations to determine what they want to cache
and have the sharing potentially at the level that a
selector is common to multiple views. Since the StyleSheet
may be used by views over multiple documents and typically
the HTML attributes don't effect the selector being used,
the potential for sharing is significant.

The rules are stored as named styles, and other information
is stored to translate the context of an element to a
rule quickly. The following code fragment will display
the named styles, and therefore the CSS rules contained.

```
  
   import java.util.*;
   import javax.swing.text.*;
   import javax.swing.text.html.*;
  
   public class ShowStyles {
  
       public static void main(String[] args) {
         HTMLEditorKit kit = new HTMLEditorKit();
         HTMLDocument doc = (HTMLDocument) kit.createDefaultDocument();
         StyleSheet styles = doc.getStyleSheet();
  
         Enumeration rules = styles.getStyleNames();
         while (rules.hasMoreElements()) {
             String name = (String) rules.nextElement();
             Style rule = styles.getStyle(name);
             System.out.println(rule.toString());
         }
         System.exit(0);
       }
   }
  
```

The semantics for when a CSS style should override visual attributes
defined by an element are not well defined. For example, the html
`<body bgcolor=red>` makes the body have a red
background. But if the html file also contains the CSS rule
`body { background: blue }` it becomes less clear as to
what color the background of the body should be. The current
implementation gives visual attributes defined in the element the
highest precedence, that is they are always checked before any styles.
Therefore, in the previous example the background would have a
red color as the body element defines the background color to be red.

As already mentioned this supports CSS. We don't support the full CSS
spec. Refer to the javadoc of the CSS class to see what properties
we support. The two major CSS parsing related
concepts we do not currently
support are pseudo selectors, such as `A:link { color: red }`,
and the `important` modifier.

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static final class`

  `StyleSheet.BoxPainter`

  Class to carry out some of the duties of
  CSS formatting.

  `static final class`

  `StyleSheet.ListPainter`

  Class to carry out some of the duties of CSS list
  formatting.

  ## Nested classes/interfaces inherited from class javax.swing.text.[StyleContext](../StyleContext.md "class in javax.swing.text")

  `StyleContext.NamedStyle, StyleContext.SmallAttributeSet`
* ## Field Summary

  ### Fields inherited from class javax.swing.text.[StyleContext](../StyleContext.md "class in javax.swing.text")

  `DEFAULT_STYLE`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `StyleSheet()`

  Construct a StyleSheet
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `AttributeSet`

  `addAttribute(AttributeSet old,
  Object key,
  Object value)`

  Adds an attribute to the given set, and returns
  the new representative set.

  `AttributeSet`

  `addAttributes(AttributeSet old,
  AttributeSet attr)`

  Adds a set of attributes to the element.

  `void`

  `addCSSAttribute(MutableAttributeSet attr,
  CSS.Attribute key,
  String value)`

  Adds a CSS attribute to the given set.

  `boolean`

  `addCSSAttributeFromHTML(MutableAttributeSet attr,
  CSS.Attribute key,
  String value)`

  Adds a CSS attribute to the given set.

  `void`

  `addRule(String rule)`

  Adds a set of rules to the sheet.

  `void`

  `addStyleSheet(StyleSheet ss)`

  Adds the rules from the StyleSheet `ss` to those of
  the receiver.

  `protected MutableAttributeSet`

  `createLargeAttributeSet(AttributeSet a)`

  Creates a large set of attributes that should trade off
  space for time.

  `protected StyleContext.SmallAttributeSet`

  `createSmallAttributeSet(AttributeSet a)`

  Creates a compact set of attributes that might be shared.

  `Color`

  `getBackground(AttributeSet a)`

  Takes a set of attributes and turn it into a background color
  specification.

  `URL`

  `getBase()`

  Returns the base.

  `StyleSheet.BoxPainter`

  `getBoxPainter(AttributeSet a)`

  Fetches the box formatter to use for the given set
  of CSS attributes.

  `AttributeSet`

  `getDeclaration(String decl)`

  Translates a CSS declaration to an AttributeSet that represents
  the CSS declaration.

  `Font`

  `getFont(AttributeSet a)`

  Fetches the font to use for the given set of attributes.

  `Color`

  `getForeground(AttributeSet a)`

  Takes a set of attributes and turn it into a foreground color
  specification.

  `static int`

  `getIndexOfSize(float pt)`

  Returns the index of HTML/CSS size model.

  `StyleSheet.ListPainter`

  `getListPainter(AttributeSet a)`

  Fetches the list formatter to use for the given set
  of CSS attributes.

  `float`

  `getPointSize(int index)`

  Returns the point size, given a size index.

  `float`

  `getPointSize(String size)`

  Given a string such as "+2", "-2", or "2",
  returns a point size value.

  `Style`

  `getRule(String selector)`

  Fetches the rule that best matches the selector given
  in string form.

  `Style`

  `getRule(HTML.Tag t,
  Element e)`

  Fetches the style to use to render the given type
  of HTML tag.

  `StyleSheet[]`

  `getStyleSheets()`

  Returns an array of the linked StyleSheets.

  `AttributeSet`

  `getViewAttributes(View v)`

  Fetches a set of attributes to use in the view for
  displaying.

  `void`

  `importStyleSheet(URL url)`

  Imports a style sheet from `url`.

  `void`

  `loadRules(Reader in,
  URL ref)`

  Loads a set of rules that have been specified in terms of
  CSS1 grammar.

  `AttributeSet`

  `removeAttribute(AttributeSet old,
  Object key)`

  Removes an attribute from the set.

  `AttributeSet`

  `removeAttributes(AttributeSet old,
  Enumeration<?> names)`

  Removes a set of attributes for the element.

  `AttributeSet`

  `removeAttributes(AttributeSet old,
  AttributeSet attrs)`

  Removes a set of attributes.

  `void`

  `removeStyle(String nm)`

  Removes a named style previously added to the document.

  `void`

  `removeStyleSheet(StyleSheet ss)`

  Removes the StyleSheet `ss` from those of the receiver.

  `void`

  `setBase(URL base)`

  Sets the base.

  `void`

  `setBaseFontSize(int sz)`

  Sets the base font size, with valid values between 1 and 7.

  `void`

  `setBaseFontSize(String size)`

  Sets the base font size from the passed in String.

  `Color`

  `stringToColor(String string)`

  Converts a color string such as "RED" or "#NNNNNN" to a Color.

  `AttributeSet`

  `translateHTMLToCSS(AttributeSet htmlAttrSet)`

  Converts a set of HTML attributes to an equivalent
  set of CSS attributes.

  ### Methods inherited from class javax.swing.text.[StyleContext](../StyleContext.md "class in javax.swing.text")

  `addChangeListener, addStyle, getChangeListeners, getCompressionThreshold, getDefaultStyleContext, getEmptySet, getFont, getFontMetrics, getStaticAttribute, getStaticAttributeKey, getStyle, getStyleNames, readAttributes, readAttributeSet, reclaim, registerStaticAttributeKey, removeChangeListener, toString, writeAttributes, writeAttributeSet`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### StyleSheet

    public StyleSheet()

    Construct a StyleSheet
* ## Method Details

  + ### getRule

    public [Style](../Style.md "interface in javax.swing.text") getRule([HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") t,
    [Element](../Element.md "interface in javax.swing.text") e)

    Fetches the style to use to render the given type
    of HTML tag. The element given is representing
    the tag and can be used to determine the nesting
    for situations where the attributes will differ
    if nesting inside of elements.

    Parameters:
    :   `t` - the type to translate to visual attributes
    :   `e` - the element representing the tag; the element
        can be used to determine the nesting for situations where
        the attributes will differ if nested inside of other
        elements

    Returns:
    :   the set of CSS attributes to use to render
        the tag
  + ### getRule

    public [Style](../Style.md "interface in javax.swing.text") getRule([String](../../../../../java.base/java/lang/String.md "class in java.lang") selector)

    Fetches the rule that best matches the selector given
    in string form. Where `selector` is a space separated
    String of the element names. For example, `selector`
    might be 'html body tr td''

    The attributes of the returned Style will change
    as rules are added and removed. That is if you to ask for a rule
    with a selector "table p" and a new rule was added with a selector
    of "p" the returned Style would include the new attributes from
    the rule "p".

    Parameters:
    :   `selector` - a space separated String of the element names.

    Returns:
    :   the rule that best matches the selector.
  + ### addRule

    public void addRule([String](../../../../../java.base/java/lang/String.md "class in java.lang") rule)

    Adds a set of rules to the sheet. The rules are expected to
    be in valid CSS format. Typically this would be called as
    a result of parsing a <style> tag.

    Parameters:
    :   `rule` - a set of rules
  + ### getDeclaration

    public [AttributeSet](../AttributeSet.md "interface in javax.swing.text") getDeclaration([String](../../../../../java.base/java/lang/String.md "class in java.lang") decl)

    Translates a CSS declaration to an AttributeSet that represents
    the CSS declaration. Typically this would be called as a
    result of encountering an HTML style attribute.

    Parameters:
    :   `decl` - a CSS declaration

    Returns:
    :   a set of attributes that represents the CSS declaration.
  + ### loadRules

    public void loadRules([Reader](../../../../../java.base/java/io/Reader.md "class in java.io") in,
    [URL](../../../../../java.base/java/net/URL.md "class in java.net") ref)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Loads a set of rules that have been specified in terms of
    CSS1 grammar. If there are collisions with existing rules,
    the newly specified rule will win.

    Parameters:
    :   `in` - the stream to read the CSS grammar from
    :   `ref` - the reference URL. This value represents the
        location of the stream and may be null. All relative
        URLs specified in the stream will be based upon this
        parameter.

    Throws:
    :   `IOException` - if I/O error occurred.
  + ### getViewAttributes

    public [AttributeSet](../AttributeSet.md "interface in javax.swing.text") getViewAttributes([View](../View.md "class in javax.swing.text") v)

    Fetches a set of attributes to use in the view for
    displaying. This is basically a set of attributes that
    can be used for View.getAttributes.

    Parameters:
    :   `v` - a view

    Returns:
    :   the of attributes
  + ### removeStyle

    public void removeStyle([String](../../../../../java.base/java/lang/String.md "class in java.lang") nm)

    Removes a named style previously added to the document.

    Overrides:
    :   `removeStyle` in class `StyleContext`

    Parameters:
    :   `nm` - the name of the style to remove
  + ### addStyleSheet

    public void addStyleSheet([StyleSheet](StyleSheet.md "class in javax.swing.text.html") ss)

    Adds the rules from the StyleSheet `ss` to those of
    the receiver. `ss's` rules will override the rules of
    any previously added style sheets. An added StyleSheet will never
    override the rules of the receiving style sheet.

    Parameters:
    :   `ss` - a StyleSheet

    Since:
    :   1.3
  + ### removeStyleSheet

    public void removeStyleSheet([StyleSheet](StyleSheet.md "class in javax.swing.text.html") ss)

    Removes the StyleSheet `ss` from those of the receiver.

    Parameters:
    :   `ss` - a StyleSheet

    Since:
    :   1.3
  + ### getStyleSheets

    public [StyleSheet](StyleSheet.md "class in javax.swing.text.html")[] getStyleSheets()

    Returns an array of the linked StyleSheets. Will return null
    if there are no linked StyleSheets.

    Returns:
    :   an array of StyleSheets.

    Since:
    :   1.3
  + ### importStyleSheet

    public void importStyleSheet([URL](../../../../../java.base/java/net/URL.md "class in java.net") url)

    Imports a style sheet from `url`. The resulting rules
    are directly added to the receiver. If you do not want the rules
    to become part of the receiver, create a new StyleSheet and use
    addStyleSheet to link it in.

    Parameters:
    :   `url` - an url

    Since:
    :   1.3
  + ### setBase

    public void setBase([URL](../../../../../java.base/java/net/URL.md "class in java.net") base)

    Sets the base. All import statements that are relative, will be
    relative to `base`.

    Parameters:
    :   `base` - a base.

    Since:
    :   1.3
  + ### getBase

    public [URL](../../../../../java.base/java/net/URL.md "class in java.net") getBase()

    Returns the base.

    Returns:
    :   the base.

    Since:
    :   1.3
  + ### addCSSAttribute

    public void addCSSAttribute([MutableAttributeSet](../MutableAttributeSet.md "interface in javax.swing.text") attr,
    [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") key,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") value)

    Adds a CSS attribute to the given set.

    Parameters:
    :   `attr` - a set of attributes
    :   `key` - a CSS property
    :   `value` - an HTML attribute value

    Since:
    :   1.3
  + ### addCSSAttributeFromHTML

    public boolean addCSSAttributeFromHTML([MutableAttributeSet](../MutableAttributeSet.md "interface in javax.swing.text") attr,
    [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") key,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") value)

    Adds a CSS attribute to the given set.

    Parameters:
    :   `attr` - a set of attributes
    :   `key` - a CSS property
    :   `value` - an HTML attribute value

    Returns:
    :   `true` if an HTML attribute `value` can be converted
        to a CSS attribute, false otherwise.

    Since:
    :   1.3
  + ### translateHTMLToCSS

    public [AttributeSet](../AttributeSet.md "interface in javax.swing.text") translateHTMLToCSS([AttributeSet](../AttributeSet.md "interface in javax.swing.text") htmlAttrSet)

    Converts a set of HTML attributes to an equivalent
    set of CSS attributes.

    Parameters:
    :   `htmlAttrSet` - AttributeSet containing the HTML attributes.

    Returns:
    :   the set of CSS attributes.
  + ### addAttribute

    public [AttributeSet](../AttributeSet.md "interface in javax.swing.text") addAttribute([AttributeSet](../AttributeSet.md "interface in javax.swing.text") old,
    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") key,
    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") value)

    Adds an attribute to the given set, and returns
    the new representative set. This is reimplemented to
    convert StyleConstant attributes to CSS prior to forwarding
    to the superclass behavior. The StyleConstants attribute
    has no corresponding CSS entry, the StyleConstants attribute
    is stored (but will likely be unused).

    Specified by:
    :   `addAttribute` in interface `AbstractDocument.AttributeContext`

    Overrides:
    :   `addAttribute` in class `StyleContext`

    Parameters:
    :   `old` - the old attribute set
    :   `key` - the non-null attribute key
    :   `value` - the attribute value

    Returns:
    :   the updated attribute set

    See Also:
    :   - [`MutableAttributeSet.addAttribute(java.lang.Object, java.lang.Object)`](../MutableAttributeSet.md#addAttribute(java.lang.Object,java.lang.Object))
  + ### addAttributes

    public [AttributeSet](../AttributeSet.md "interface in javax.swing.text") addAttributes([AttributeSet](../AttributeSet.md "interface in javax.swing.text") old,
    [AttributeSet](../AttributeSet.md "interface in javax.swing.text") attr)

    Adds a set of attributes to the element. If any of these attributes
    are StyleConstants attributes, they will be converted to CSS prior
    to forwarding to the superclass behavior.

    Specified by:
    :   `addAttributes` in interface `AbstractDocument.AttributeContext`

    Overrides:
    :   `addAttributes` in class `StyleContext`

    Parameters:
    :   `old` - the old attribute set
    :   `attr` - the attributes to add

    Returns:
    :   the updated attribute set

    See Also:
    :   - [`MutableAttributeSet.addAttribute(java.lang.Object, java.lang.Object)`](../MutableAttributeSet.md#addAttribute(java.lang.Object,java.lang.Object))
  + ### removeAttribute

    public [AttributeSet](../AttributeSet.md "interface in javax.swing.text") removeAttribute([AttributeSet](../AttributeSet.md "interface in javax.swing.text") old,
    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") key)

    Removes an attribute from the set. If the attribute is a StyleConstants
    attribute, the request will be converted to a CSS attribute prior to
    forwarding to the superclass behavior.

    Specified by:
    :   `removeAttribute` in interface `AbstractDocument.AttributeContext`

    Overrides:
    :   `removeAttribute` in class `StyleContext`

    Parameters:
    :   `old` - the old set of attributes
    :   `key` - the non-null attribute name

    Returns:
    :   the updated attribute set

    See Also:
    :   - [`MutableAttributeSet.removeAttribute(java.lang.Object)`](../MutableAttributeSet.md#removeAttribute(java.lang.Object))
  + ### removeAttributes

    public [AttributeSet](../AttributeSet.md "interface in javax.swing.text") removeAttributes([AttributeSet](../AttributeSet.md "interface in javax.swing.text") old,
    [Enumeration](../../../../../java.base/java/util/Enumeration.md "interface in java.util")<?> names)

    Removes a set of attributes for the element. If any of the attributes
    is a StyleConstants attribute, the request will be converted to a CSS
    attribute prior to forwarding to the superclass behavior.

    Specified by:
    :   `removeAttributes` in interface `AbstractDocument.AttributeContext`

    Overrides:
    :   `removeAttributes` in class `StyleContext`

    Parameters:
    :   `old` - the old attribute set
    :   `names` - the attribute names

    Returns:
    :   the updated attribute set

    See Also:
    :   - [`MutableAttributeSet.removeAttributes(java.util.Enumeration<?>)`](../MutableAttributeSet.md#removeAttributes(java.util.Enumeration))
  + ### removeAttributes

    public [AttributeSet](../AttributeSet.md "interface in javax.swing.text") removeAttributes([AttributeSet](../AttributeSet.md "interface in javax.swing.text") old,
    [AttributeSet](../AttributeSet.md "interface in javax.swing.text") attrs)

    Removes a set of attributes. If any of the attributes
    is a StyleConstants attribute, the request will be converted to a CSS
    attribute prior to forwarding to the superclass behavior.

    Specified by:
    :   `removeAttributes` in interface `AbstractDocument.AttributeContext`

    Overrides:
    :   `removeAttributes` in class `StyleContext`

    Parameters:
    :   `old` - the old attribute set
    :   `attrs` - the attributes

    Returns:
    :   the updated attribute set

    See Also:
    :   - [`MutableAttributeSet.removeAttributes(java.util.Enumeration<?>)`](../MutableAttributeSet.md#removeAttributes(java.util.Enumeration))
  + ### createSmallAttributeSet

    protected [StyleContext.SmallAttributeSet](../StyleContext.SmallAttributeSet.md "class in javax.swing.text") createSmallAttributeSet([AttributeSet](../AttributeSet.md "interface in javax.swing.text") a)

    Creates a compact set of attributes that might be shared.
    This is a hook for subclasses that want to alter the
    behavior of SmallAttributeSet. This can be reimplemented
    to return an AttributeSet that provides some sort of
    attribute conversion.

    Overrides:
    :   `createSmallAttributeSet` in class `StyleContext`

    Parameters:
    :   `a` - The set of attributes to be represented in the
        the compact form.

    Returns:
    :   a compact set of attributes that might be shared
  + ### createLargeAttributeSet

    protected [MutableAttributeSet](../MutableAttributeSet.md "interface in javax.swing.text") createLargeAttributeSet([AttributeSet](../AttributeSet.md "interface in javax.swing.text") a)

    Creates a large set of attributes that should trade off
    space for time. This set will not be shared. This is
    a hook for subclasses that want to alter the behavior
    of the larger attribute storage format (which is
    SimpleAttributeSet by default). This can be reimplemented
    to return a MutableAttributeSet that provides some sort of
    attribute conversion.

    Overrides:
    :   `createLargeAttributeSet` in class `StyleContext`

    Parameters:
    :   `a` - The set of attributes to be represented in the
        the larger form.

    Returns:
    :   a large set of attributes that should trade off
        space for time
  + ### getFont

    public [Font](../../../../java/awt/Font.md "class in java.awt") getFont([AttributeSet](../AttributeSet.md "interface in javax.swing.text") a)

    Fetches the font to use for the given set of attributes.

    Overrides:
    :   `getFont` in class `StyleContext`

    Parameters:
    :   `a` - the attribute set

    Returns:
    :   the font
  + ### getForeground

    public [Color](../../../../java/awt/Color.md "class in java.awt") getForeground([AttributeSet](../AttributeSet.md "interface in javax.swing.text") a)

    Takes a set of attributes and turn it into a foreground color
    specification. This might be used to specify things
    like brighter, more hue, etc.

    Overrides:
    :   `getForeground` in class `StyleContext`

    Parameters:
    :   `a` - the set of attributes

    Returns:
    :   the color
  + ### getBackground

    public [Color](../../../../java/awt/Color.md "class in java.awt") getBackground([AttributeSet](../AttributeSet.md "interface in javax.swing.text") a)

    Takes a set of attributes and turn it into a background color
    specification. This might be used to specify things
    like brighter, more hue, etc.

    Overrides:
    :   `getBackground` in class `StyleContext`

    Parameters:
    :   `a` - the set of attributes

    Returns:
    :   the color
  + ### getBoxPainter

    public [StyleSheet.BoxPainter](StyleSheet.BoxPainter.md "class in javax.swing.text.html") getBoxPainter([AttributeSet](../AttributeSet.md "interface in javax.swing.text") a)

    Fetches the box formatter to use for the given set
    of CSS attributes.

    Parameters:
    :   `a` - a set of CSS attributes

    Returns:
    :   the box formatter.
  + ### getListPainter

    public [StyleSheet.ListPainter](StyleSheet.ListPainter.md "class in javax.swing.text.html") getListPainter([AttributeSet](../AttributeSet.md "interface in javax.swing.text") a)

    Fetches the list formatter to use for the given set
    of CSS attributes.

    Parameters:
    :   `a` - a set of CSS attributes

    Returns:
    :   the list formatter.
  + ### setBaseFontSize

    public void setBaseFontSize(int sz)

    Sets the base font size, with valid values between 1 and 7.

    Parameters:
    :   `sz` - a font size.
  + ### setBaseFontSize

    public void setBaseFontSize([String](../../../../../java.base/java/lang/String.md "class in java.lang") size)

    Sets the base font size from the passed in String. The string
    can either identify a specific font size, with legal values between
    1 and 7, or identify a relative font size such as +1 or -2.

    Parameters:
    :   `size` - a font size.
  + ### getIndexOfSize

    public static int getIndexOfSize(float pt)

    Returns the index of HTML/CSS size model.

    Parameters:
    :   `pt` - a size of point

    Returns:
    :   the index of HTML/CSS size model.
  + ### getPointSize

    public float getPointSize(int index)

    Returns the point size, given a size index.

    Parameters:
    :   `index` - a size index

    Returns:
    :   the point size value.
  + ### getPointSize

    public float getPointSize([String](../../../../../java.base/java/lang/String.md "class in java.lang") size)

    Given a string such as "+2", "-2", or "2",
    returns a point size value.

    Parameters:
    :   `size` - a CSS string describing font size

    Returns:
    :   the point size value.
  + ### stringToColor

    public [Color](../../../../java/awt/Color.md "class in java.awt") stringToColor([String](../../../../../java.base/java/lang/String.md "class in java.lang") string)

    Converts a color string such as "RED" or "#NNNNNN" to a Color.
    Note: This will only convert the HTML3.2 color strings
    or a string of length 7;
    otherwise, it will return null.

    Parameters:
    :   `string` - color string such as "RED" or "#NNNNNN"

    Returns:
    :   the color