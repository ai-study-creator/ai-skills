Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class StyleContext

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.StyleContext

All Implemented Interfaces:
:   `Serializable`, `AbstractDocument.AttributeContext`

Direct Known Subclasses:
:   `StyleSheet`

---

public class StyleContext
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"), [AbstractDocument.AttributeContext](AbstractDocument.AttributeContext.md "interface in javax.swing.text")

A pool of styles and their associated resources. This class determines
the lifetime of a group of resources by being a container that holds
caches for various resources such as font and color that get reused
by the various style definitions. This can be shared by multiple
documents if desired to maximize the sharing of related resources.

This class also provides efficient support for small sets of attributes
and compresses them by sharing across uses and taking advantage of
their immutable nature. Since many styles are replicated, the potential
for sharing is significant, and copies can be extremely cheap.
Larger sets reduce the possibility of sharing, and therefore revert
automatically to a less space-efficient implementation.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `class`

  `StyleContext.NamedStyle`

  A collection of attributes, typically used to represent
  character and paragraph styles.

  `class`

  `StyleContext.SmallAttributeSet`

  This class holds a small number of attributes in an array.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `DEFAULT_STYLE`

  The name given to the default logical style attached
  to paragraphs.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `StyleContext()`

  Creates a new StyleContext object.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `AttributeSet`

  `addAttribute(AttributeSet old,
  Object name,
  Object value)`

  Adds an attribute to the given set, and returns
  the new representative set.

  `AttributeSet`

  `addAttributes(AttributeSet old,
  AttributeSet attr)`

  Adds a set of attributes to the element.

  `void`

  `addChangeListener(ChangeListener l)`

  Adds a listener to track when styles are added
  or removed.

  `Style`

  `addStyle(String nm,
  Style parent)`

  Adds a new style into the style hierarchy.

  `protected MutableAttributeSet`

  `createLargeAttributeSet(AttributeSet a)`

  Create a large set of attributes that should trade off
  space for time.

  `protected StyleContext.SmallAttributeSet`

  `createSmallAttributeSet(AttributeSet a)`

  Create a compact set of attributes that might be shared.

  `Color`

  `getBackground(AttributeSet attr)`

  Takes a set of attributes and turn it into a background color
  specification.

  `ChangeListener[]`

  `getChangeListeners()`

  Returns an array of all the `ChangeListener`s added
  to this StyleContext with addChangeListener().

  `protected int`

  `getCompressionThreshold()`

  Returns the maximum number of key/value pairs to try and
  compress into unique/immutable sets.

  `static final StyleContext`

  `getDefaultStyleContext()`

  Returns default AttributeContext shared by all documents that
  don't bother to define/supply their own context.

  `AttributeSet`

  `getEmptySet()`

  Fetches an empty AttributeSet.

  `Font`

  `getFont(String family,
  int style,
  int size)`

  Gets a new font.

  `Font`

  `getFont(AttributeSet attr)`

  Gets the font from an attribute set.

  `FontMetrics`

  `getFontMetrics(Font f)`

  Returns font metrics for a font.

  `Color`

  `getForeground(AttributeSet attr)`

  Takes a set of attributes and turn it into a foreground color
  specification.

  `static Object`

  `getStaticAttribute(Object key)`

  Returns the object previously registered with
  `registerStaticAttributeKey`.

  `static Object`

  `getStaticAttributeKey(Object key)`

  Returns the String that `key` will be registered with.

  `Style`

  `getStyle(String nm)`

  Fetches a named style previously added to the document

  `Enumeration<?>`

  `getStyleNames()`

  Fetches the names of the styles defined.

  `void`

  `readAttributes(ObjectInputStream in,
  MutableAttributeSet a)`

  Context-specific handling of reading in attributes

  `static void`

  `readAttributeSet(ObjectInputStream in,
  MutableAttributeSet a)`

  Reads a set of attributes from the given object input
  stream that have been previously written out with
  `writeAttributeSet`.

  `void`

  `reclaim(AttributeSet a)`

  Returns a set no longer needed by the MutableAttributeSet implementation.

  `static void`

  `registerStaticAttributeKey(Object key)`

  Registers an object as a static object that is being
  used as a key in attribute sets.

  `AttributeSet`

  `removeAttribute(AttributeSet old,
  Object name)`

  Removes an attribute from the set.

  `AttributeSet`

  `removeAttributes(AttributeSet old,
  Enumeration<?> names)`

  Removes a set of attributes for the element.

  `AttributeSet`

  `removeAttributes(AttributeSet old,
  AttributeSet attrs)`

  Removes a set of attributes for the element.

  `void`

  `removeChangeListener(ChangeListener l)`

  Removes a listener that was tracking styles being
  added or removed.

  `void`

  `removeStyle(String nm)`

  Removes a named style previously added to the document.

  `String`

  `toString()`

  Converts a StyleContext to a String.

  `void`

  `writeAttributes(ObjectOutputStream out,
  AttributeSet a)`

  Context-specific handling of writing out attributes

  `static void`

  `writeAttributeSet(ObjectOutputStream out,
  AttributeSet a)`

  Writes a set of attributes to the given object stream
  for the purpose of serialization.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### DEFAULT\_STYLE

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") DEFAULT\_STYLE

    The name given to the default logical style attached
    to paragraphs.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.text.StyleContext.DEFAULT_STYLE)
* ## Constructor Details

  + ### StyleContext

    public StyleContext()

    Creates a new StyleContext object.
* ## Method Details

  + ### getDefaultStyleContext

    public static final [StyleContext](StyleContext.md "class in javax.swing.text") getDefaultStyleContext()

    Returns default AttributeContext shared by all documents that
    don't bother to define/supply their own context.

    Returns:
    :   the context
  + ### addStyle

    public [Style](Style.md "interface in javax.swing.text") addStyle([String](../../../../java.base/java/lang/String.md "class in java.lang") nm,
    [Style](Style.md "interface in javax.swing.text") parent)

    Adds a new style into the style hierarchy. Style attributes
    resolve from bottom up so an attribute specified in a child
    will override an attribute specified in the parent.

    Parameters:
    :   `nm` - the name of the style (must be unique within the
        collection of named styles in the document). The name may
        be null if the style is unnamed, but the caller is responsible
        for managing the reference returned as an unnamed style can't
        be fetched by name. An unnamed style may be useful for things
        like character attribute overrides such as found in a style
        run.
    :   `parent` - the parent style. This may be null if unspecified
        attributes need not be resolved in some other style.

    Returns:
    :   the created style
  + ### removeStyle

    public void removeStyle([String](../../../../java.base/java/lang/String.md "class in java.lang") nm)

    Removes a named style previously added to the document.

    Parameters:
    :   `nm` - the name of the style to remove
  + ### getStyle

    public [Style](Style.md "interface in javax.swing.text") getStyle([String](../../../../java.base/java/lang/String.md "class in java.lang") nm)

    Fetches a named style previously added to the document

    Parameters:
    :   `nm` - the name of the style

    Returns:
    :   the style
  + ### getStyleNames

    public [Enumeration](../../../../java.base/java/util/Enumeration.md "interface in java.util")<?> getStyleNames()

    Fetches the names of the styles defined.

    Returns:
    :   the list of names as an enumeration
  + ### addChangeListener

    public void addChangeListener([ChangeListener](../event/ChangeListener.md "interface in javax.swing.event") l)

    Adds a listener to track when styles are added
    or removed.

    Parameters:
    :   `l` - the change listener
  + ### removeChangeListener

    public void removeChangeListener([ChangeListener](../event/ChangeListener.md "interface in javax.swing.event") l)

    Removes a listener that was tracking styles being
    added or removed.

    Parameters:
    :   `l` - the change listener
  + ### getChangeListeners

    public [ChangeListener](../event/ChangeListener.md "interface in javax.swing.event")[] getChangeListeners()

    Returns an array of all the `ChangeListener`s added
    to this StyleContext with addChangeListener().

    Returns:
    :   all of the `ChangeListener`s added or an empty
        array if no listeners have been added

    Since:
    :   1.4
  + ### getFont

    public [Font](../../../java/awt/Font.md "class in java.awt") getFont([AttributeSet](AttributeSet.md "interface in javax.swing.text") attr)

    Gets the font from an attribute set. This is
    implemented to try and fetch a cached font
    for the given AttributeSet, and if that fails
    the font features are resolved and the
    font is fetched from the low-level font cache.

    Parameters:
    :   `attr` - the attribute set

    Returns:
    :   the font
  + ### getForeground

    public [Color](../../../java/awt/Color.md "class in java.awt") getForeground([AttributeSet](AttributeSet.md "interface in javax.swing.text") attr)

    Takes a set of attributes and turn it into a foreground color
    specification. This might be used to specify things
    like brighter, more hue, etc. By default it simply returns
    the value specified by the StyleConstants.Foreground attribute.

    Parameters:
    :   `attr` - the set of attributes

    Returns:
    :   the color
  + ### getBackground

    public [Color](../../../java/awt/Color.md "class in java.awt") getBackground([AttributeSet](AttributeSet.md "interface in javax.swing.text") attr)

    Takes a set of attributes and turn it into a background color
    specification. This might be used to specify things
    like brighter, more hue, etc. By default it simply returns
    the value specified by the StyleConstants.Background attribute.

    Parameters:
    :   `attr` - the set of attributes

    Returns:
    :   the color
  + ### getFont

    public [Font](../../../java/awt/Font.md "class in java.awt") getFont([String](../../../../java.base/java/lang/String.md "class in java.lang") family,
    int style,
    int size)

    Gets a new font. This returns a Font from a cache
    if a cached font exists. If not, a Font is added to
    the cache. This is basically a low-level cache for
    1.1 font features.

    Parameters:
    :   `family` - the font family (such as "Monospaced")
    :   `style` - the style of the font (such as Font.PLAIN)
    :   `size` - the point size >= 1

    Returns:
    :   the new font
  + ### getFontMetrics

    public [FontMetrics](../../../java/awt/FontMetrics.md "class in java.awt") getFontMetrics([Font](../../../java/awt/Font.md "class in java.awt") f)

    Returns font metrics for a font.

    Parameters:
    :   `f` - the font

    Returns:
    :   the metrics
  + ### addAttribute

    public [AttributeSet](AttributeSet.md "interface in javax.swing.text") addAttribute([AttributeSet](AttributeSet.md "interface in javax.swing.text") old,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") name,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") value)

    Adds an attribute to the given set, and returns
    the new representative set.

    This method is thread safe, although most Swing methods
    are not. Please see
    [Concurrency
    in Swing](https://docs.oracle.com/javase/tutorial/uiswing/concurrency/index.html) for more information.

    Specified by:
    :   `addAttribute` in interface `AbstractDocument.AttributeContext`

    Parameters:
    :   `old` - the old attribute set
    :   `name` - the non-null attribute name
    :   `value` - the attribute value

    Returns:
    :   the updated attribute set

    See Also:
    :   - [`MutableAttributeSet.addAttribute(java.lang.Object, java.lang.Object)`](MutableAttributeSet.md#addAttribute(java.lang.Object,java.lang.Object))
  + ### addAttributes

    public [AttributeSet](AttributeSet.md "interface in javax.swing.text") addAttributes([AttributeSet](AttributeSet.md "interface in javax.swing.text") old,
    [AttributeSet](AttributeSet.md "interface in javax.swing.text") attr)

    Adds a set of attributes to the element.

    This method is thread safe, although most Swing methods
    are not. Please see
    [Concurrency
    in Swing](https://docs.oracle.com/javase/tutorial/uiswing/concurrency/index.html) for more information.

    Specified by:
    :   `addAttributes` in interface `AbstractDocument.AttributeContext`

    Parameters:
    :   `old` - the old attribute set
    :   `attr` - the attributes to add

    Returns:
    :   the updated attribute set

    See Also:
    :   - [`MutableAttributeSet.addAttribute(java.lang.Object, java.lang.Object)`](MutableAttributeSet.md#addAttribute(java.lang.Object,java.lang.Object))
  + ### removeAttribute

    public [AttributeSet](AttributeSet.md "interface in javax.swing.text") removeAttribute([AttributeSet](AttributeSet.md "interface in javax.swing.text") old,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") name)

    Removes an attribute from the set.

    This method is thread safe, although most Swing methods
    are not. Please see
    [Concurrency
    in Swing](https://docs.oracle.com/javase/tutorial/uiswing/concurrency/index.html) for more information.

    Specified by:
    :   `removeAttribute` in interface `AbstractDocument.AttributeContext`

    Parameters:
    :   `old` - the old set of attributes
    :   `name` - the non-null attribute name

    Returns:
    :   the updated attribute set

    See Also:
    :   - [`MutableAttributeSet.removeAttribute(java.lang.Object)`](MutableAttributeSet.md#removeAttribute(java.lang.Object))
  + ### removeAttributes

    public [AttributeSet](AttributeSet.md "interface in javax.swing.text") removeAttributes([AttributeSet](AttributeSet.md "interface in javax.swing.text") old,
    [Enumeration](../../../../java.base/java/util/Enumeration.md "interface in java.util")<?> names)

    Removes a set of attributes for the element.

    This method is thread safe, although most Swing methods
    are not. Please see
    [Concurrency
    in Swing](https://docs.oracle.com/javase/tutorial/uiswing/concurrency/index.html) for more information.

    Specified by:
    :   `removeAttributes` in interface `AbstractDocument.AttributeContext`

    Parameters:
    :   `old` - the old attribute set
    :   `names` - the attribute names

    Returns:
    :   the updated attribute set

    See Also:
    :   - [`MutableAttributeSet.removeAttributes(java.util.Enumeration<?>)`](MutableAttributeSet.md#removeAttributes(java.util.Enumeration))
  + ### removeAttributes

    public [AttributeSet](AttributeSet.md "interface in javax.swing.text") removeAttributes([AttributeSet](AttributeSet.md "interface in javax.swing.text") old,
    [AttributeSet](AttributeSet.md "interface in javax.swing.text") attrs)

    Removes a set of attributes for the element.

    This method is thread safe, although most Swing methods
    are not. Please see
    [Concurrency
    in Swing](https://docs.oracle.com/javase/tutorial/uiswing/concurrency/index.html) for more information.

    Specified by:
    :   `removeAttributes` in interface `AbstractDocument.AttributeContext`

    Parameters:
    :   `old` - the old attribute set
    :   `attrs` - the attributes

    Returns:
    :   the updated attribute set

    See Also:
    :   - [`MutableAttributeSet.removeAttributes(java.util.Enumeration<?>)`](MutableAttributeSet.md#removeAttributes(java.util.Enumeration))
  + ### getEmptySet

    public [AttributeSet](AttributeSet.md "interface in javax.swing.text") getEmptySet()

    Fetches an empty AttributeSet.

    Specified by:
    :   `getEmptySet` in interface `AbstractDocument.AttributeContext`

    Returns:
    :   the set
  + ### reclaim

    public void reclaim([AttributeSet](AttributeSet.md "interface in javax.swing.text") a)

    Returns a set no longer needed by the MutableAttributeSet implementation.
    This is useful for operation under 1.1 where there are no weak
    references. This would typically be called by the finalize method
    of the MutableAttributeSet implementation.

    This method is thread safe, although most Swing methods
    are not. Please see
    [Concurrency
    in Swing](https://docs.oracle.com/javase/tutorial/uiswing/concurrency/index.html) for more information.

    Specified by:
    :   `reclaim` in interface `AbstractDocument.AttributeContext`

    Parameters:
    :   `a` - the set to reclaim
  + ### getCompressionThreshold

    protected int getCompressionThreshold()

    Returns the maximum number of key/value pairs to try and
    compress into unique/immutable sets. Any sets above this
    limit will use hashtables and be a MutableAttributeSet.

    Returns:
    :   the threshold
  + ### createSmallAttributeSet

    protected [StyleContext.SmallAttributeSet](StyleContext.SmallAttributeSet.md "class in javax.swing.text") createSmallAttributeSet([AttributeSet](AttributeSet.md "interface in javax.swing.text") a)

    Create a compact set of attributes that might be shared.
    This is a hook for subclasses that want to alter the
    behavior of SmallAttributeSet. This can be reimplemented
    to return an AttributeSet that provides some sort of
    attribute conversion.

    Parameters:
    :   `a` - The set of attributes to be represented in the
        the compact form.

    Returns:
    :   a compact set of attributes that might be shared
  + ### createLargeAttributeSet

    protected [MutableAttributeSet](MutableAttributeSet.md "interface in javax.swing.text") createLargeAttributeSet([AttributeSet](AttributeSet.md "interface in javax.swing.text") a)

    Create a large set of attributes that should trade off
    space for time. This set will not be shared. This is
    a hook for subclasses that want to alter the behavior
    of the larger attribute storage format (which is
    SimpleAttributeSet by default). This can be reimplemented
    to return a MutableAttributeSet that provides some sort of
    attribute conversion.

    Parameters:
    :   `a` - The set of attributes to be represented in the
        the larger form.

    Returns:
    :   a large set of attributes that should trade off
        space for time
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Converts a StyleContext to a String.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   the string
  + ### writeAttributes

    public void writeAttributes([ObjectOutputStream](../../../../java.base/java/io/ObjectOutputStream.md "class in java.io") out,
    [AttributeSet](AttributeSet.md "interface in javax.swing.text") a)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Context-specific handling of writing out attributes

    Parameters:
    :   `out` - the output stream
    :   `a` - the attribute set

    Throws:
    :   `IOException` - on any I/O error
  + ### readAttributes

    public void readAttributes([ObjectInputStream](../../../../java.base/java/io/ObjectInputStream.md "class in java.io") in,
    [MutableAttributeSet](MutableAttributeSet.md "interface in javax.swing.text") a)
    throws [ClassNotFoundException](../../../../java.base/java/lang/ClassNotFoundException.md "class in java.lang"),
    [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Context-specific handling of reading in attributes

    Parameters:
    :   `in` - the object stream to read the attribute data from.
    :   `a` - the attribute set to place the attribute
        definitions in.

    Throws:
    :   `ClassNotFoundException` - passed upward if encountered
        when reading the object stream.
    :   `IOException` - passed upward if encountered when
        reading the object stream.
  + ### writeAttributeSet

    public static void writeAttributeSet([ObjectOutputStream](../../../../java.base/java/io/ObjectOutputStream.md "class in java.io") out,
    [AttributeSet](AttributeSet.md "interface in javax.swing.text") a)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Writes a set of attributes to the given object stream
    for the purpose of serialization. This will take
    special care to deal with static attribute keys that
    have been registered with the
    `registerStaticAttributeKey` method.
    Any attribute key not registered as a static key
    will be serialized directly. All values are expected
    to be serializable.

    Parameters:
    :   `out` - the output stream
    :   `a` - the attribute set

    Throws:
    :   `IOException` - on any I/O error
  + ### readAttributeSet

    public static void readAttributeSet([ObjectInputStream](../../../../java.base/java/io/ObjectInputStream.md "class in java.io") in,
    [MutableAttributeSet](MutableAttributeSet.md "interface in javax.swing.text") a)
    throws [ClassNotFoundException](../../../../java.base/java/lang/ClassNotFoundException.md "class in java.lang"),
    [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Reads a set of attributes from the given object input
    stream that have been previously written out with
    `writeAttributeSet`. This will try to restore
    keys that were static objects to the static objects in
    the current virtual machine considering only those keys
    that have been registered with the
    `registerStaticAttributeKey` method.
    The attributes retrieved from the stream will be placed
    into the given mutable set.

    Parameters:
    :   `in` - the object stream to read the attribute data from.
    :   `a` - the attribute set to place the attribute
        definitions in.

    Throws:
    :   `ClassNotFoundException` - passed upward if encountered
        when reading the object stream.
    :   `IOException` - passed upward if encountered when
        reading the object stream.
  + ### registerStaticAttributeKey

    public static void registerStaticAttributeKey([Object](../../../../java.base/java/lang/Object.md "class in java.lang") key)

    Registers an object as a static object that is being
    used as a key in attribute sets. This allows the key
    to be treated specially for serialization.

    For operation under a 1.1 virtual machine, this
    uses the value returned by `toString`
    concatenated to the classname. The value returned
    by toString should not have the class reference
    in it (ie it should be reimplemented from the
    definition in Object) in order to be the same when
    recomputed later.

    Parameters:
    :   `key` - the non-null object key
  + ### getStaticAttribute

    public static [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getStaticAttribute([Object](../../../../java.base/java/lang/Object.md "class in java.lang") key)

    Returns the object previously registered with
    `registerStaticAttributeKey`.

    Parameters:
    :   `key` - the object key

    Returns:
    :   Returns the object previously registered with
        `registerStaticAttributeKey`
  + ### getStaticAttributeKey

    public static [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getStaticAttributeKey([Object](../../../../java.base/java/lang/Object.md "class in java.lang") key)

    Returns the String that `key` will be registered with.

    Parameters:
    :   `key` - the object key

    Returns:
    :   the String that `key` will be registered with

    See Also:
    :   - [`getStaticAttribute(java.lang.Object)`](#getStaticAttribute(java.lang.Object))
        - [`registerStaticAttributeKey(java.lang.Object)`](#registerStaticAttributeKey(java.lang.Object))