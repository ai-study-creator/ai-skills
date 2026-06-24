Module [java.desktop](../../../module-summary.md)

Package [javax.imageio.metadata](package-summary.md)

# Class IIOMetadata

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.imageio.metadata.IIOMetadata

---

public abstract class IIOMetadata
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

An abstract class to be extended by objects that represent metadata
(non-image data) associated with images and streams. Plug-ins
represent metadata using opaque, plug-in specific objects. These
objects, however, provide the ability to access their internal
information as a tree of `IIOMetadataNode` objects that
support the XML DOM interfaces as well as additional interfaces for
storing non-textual data and retrieving information about legal
data values. The format of such trees is plug-in dependent, but
plug-ins may choose to support a plug-in neutral format described
below. A single plug-in may support multiple metadata formats,
whose names maybe determined by calling
`getMetadataFormatNames`. The plug-in may also support
a single special format, referred to as the "native" format, which
is designed to encode its metadata losslessly. This format will
typically be designed specifically to work with a specific file
format, so that images may be loaded and saved in the same format
with no loss of metadata, but may be less useful for transferring
metadata between an `ImageReader` and an
`ImageWriter` for different image formats. To convert
between two native formats as losslessly as the image file formats
will allow, an `ImageTranscoder` object must be used.

See Also:
:   * [`ImageReader.getImageMetadata(int)`](../ImageReader.md#getImageMetadata(int))
    * [`ImageReader.getStreamMetadata()`](../ImageReader.md#getStreamMetadata())
    * [`ImageReader.readAll(int, javax.imageio.ImageReadParam)`](../ImageReader.md#readAll(int,javax.imageio.ImageReadParam))
    * [`ImageWriter.getDefaultStreamMetadata(javax.imageio.ImageWriteParam)`](../ImageWriter.md#getDefaultStreamMetadata(javax.imageio.ImageWriteParam))
    * [`ImageWriter.getDefaultImageMetadata(javax.imageio.ImageTypeSpecifier, javax.imageio.ImageWriteParam)`](../ImageWriter.md#getDefaultImageMetadata(javax.imageio.ImageTypeSpecifier,javax.imageio.ImageWriteParam))
    * [`ImageWriter.write(javax.imageio.metadata.IIOMetadata, javax.imageio.IIOImage, javax.imageio.ImageWriteParam)`](../ImageWriter.md#write(javax.imageio.metadata.IIOMetadata,javax.imageio.IIOImage,javax.imageio.ImageWriteParam))
    * [`ImageWriter.convertImageMetadata(javax.imageio.metadata.IIOMetadata, javax.imageio.ImageTypeSpecifier, javax.imageio.ImageWriteParam)`](../ImageWriter.md#convertImageMetadata(javax.imageio.metadata.IIOMetadata,javax.imageio.ImageTypeSpecifier,javax.imageio.ImageWriteParam))
    * [`ImageWriter.convertStreamMetadata(javax.imageio.metadata.IIOMetadata, javax.imageio.ImageWriteParam)`](../ImageWriter.md#convertStreamMetadata(javax.imageio.metadata.IIOMetadata,javax.imageio.ImageWriteParam))
    * [`IIOImage`](../IIOImage.md "class in javax.imageio")
    * [`ImageTranscoder`](../ImageTranscoder.md "interface in javax.imageio")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected IIOMetadataController`

  `controller`

  The `IIOMetadataController` that will be
  used to provide settings for this `IIOMetadata`
  object when the `activateController` method
  is called.

  `protected IIOMetadataController`

  `defaultController`

  An `IIOMetadataController` that is suggested for use
  as the controller for this `IIOMetadata` object.

  `protected String[]`

  `extraMetadataFormatClassNames`

  An array of names of classes implementing `IIOMetadataFormat`
  and representing the metadata formats, other than the standard and
  native formats, that are supported by this plug-in,
  initialized to `null` and set via the constructor.

  `protected String[]`

  `extraMetadataFormatNames`

  An array of names of formats, other than the standard and
  native formats, that are supported by this plug-in,
  initialized to `null` and set via the constructor.

  `protected String`

  `nativeMetadataFormatClassName`

  The name of the class implementing `IIOMetadataFormat`
  and representing the native metadata format, initialized to
  `null` and set via the constructor.

  `protected String`

  `nativeMetadataFormatName`

  The name of the native metadata format for this object,
  initialized to `null` and set via the constructor.

  `protected boolean`

  `standardFormatSupported`

  A boolean indicating whether the concrete subclass supports the
  standard metadata format, set via the constructor.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `IIOMetadata()`

  Constructs an empty `IIOMetadata` object.

  `protected`

  `IIOMetadata(boolean standardMetadataFormatSupported,
  String nativeMetadataFormatName,
  String nativeMetadataFormatClassName,
  String[] extraMetadataFormatNames,
  String[] extraMetadataFormatClassNames)`

  Constructs an `IIOMetadata` object with the given
  format names and format class names, as well as a boolean
  indicating whether the standard format is supported.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `activateController()`

  Activates the installed `IIOMetadataController` for
  this `IIOMetadata` object and returns the resulting
  value.

  `abstract Node`

  `getAsTree(String formatName)`

  Returns an XML DOM `Node` object that represents the
  root of a tree of metadata contained within this object
  according to the conventions defined by a given metadata
  format.

  `IIOMetadataController`

  `getController()`

  Returns whatever `IIOMetadataController` is currently
  installed.

  `IIOMetadataController`

  `getDefaultController()`

  Returns the default `IIOMetadataController`, if there
  is one, regardless of the currently installed controller.

  `String[]`

  `getExtraMetadataFormatNames()`

  Returns an array of `String`s containing the names
  of additional metadata formats, other than the native and standard
  formats, recognized by this plug-in's
  `getAsTree`, `setFromTree`, and
  `mergeTree` methods.

  `IIOMetadataFormat`

  `getMetadataFormat(String formatName)`

  Returns an `IIOMetadataFormat` object describing the
  given metadata format, or `null` if no description
  is available.

  `String[]`

  `getMetadataFormatNames()`

  Returns an array of `String`s containing the names
  of all metadata formats, including the native and standard
  formats, recognized by this plug-in's `getAsTree`,
  `setFromTree`, and `mergeTree` methods.

  `String`

  `getNativeMetadataFormatName()`

  Returns the name of the "native" metadata format for this
  plug-in, which typically allows for lossless encoding and
  transmission of the metadata stored in the format handled by
  this plug-in.

  `protected IIOMetadataNode`

  `getStandardChromaNode()`

  Returns an `IIOMetadataNode` representing the chroma
  information of the standard `javax_imageio_1.0`
  metadata format, or `null` if no such information is
  available.

  `protected IIOMetadataNode`

  `getStandardCompressionNode()`

  Returns an `IIOMetadataNode` representing the
  compression information of the standard
  `javax_imageio_1.0` metadata format, or
  `null` if no such information is available.

  `protected IIOMetadataNode`

  `getStandardDataNode()`

  Returns an `IIOMetadataNode` representing the data
  format information of the standard
  `javax_imageio_1.0` metadata format, or
  `null` if no such information is available.

  `protected IIOMetadataNode`

  `getStandardDimensionNode()`

  Returns an `IIOMetadataNode` representing the
  dimension information of the standard
  `javax_imageio_1.0` metadata format, or
  `null` if no such information is available.

  `protected IIOMetadataNode`

  `getStandardDocumentNode()`

  Returns an `IIOMetadataNode` representing the document
  information of the standard `javax_imageio_1.0`
  metadata format, or `null` if no such information is
  available.

  `protected IIOMetadataNode`

  `getStandardTextNode()`

  Returns an `IIOMetadataNode` representing the textual
  information of the standard `javax_imageio_1.0`
  metadata format, or `null` if no such information is
  available.

  `protected IIOMetadataNode`

  `getStandardTileNode()`

  Returns an `IIOMetadataNode` representing the tiling
  information of the standard `javax_imageio_1.0`
  metadata format, or `null` if no such information is
  available.

  `protected IIOMetadataNode`

  `getStandardTransparencyNode()`

  Returns an `IIOMetadataNode` representing the
  transparency information of the standard
  `javax_imageio_1.0` metadata format, or
  `null` if no such information is available.

  `protected final IIOMetadataNode`

  `getStandardTree()`

  A utility method to return a tree of
  `IIOMetadataNode`s representing the metadata
  contained within this object according to the conventions of
  the standard `javax_imageio_1.0` metadata format.

  `boolean`

  `hasController()`

  Returns `true` if there is a controller installed
  for this `IIOMetadata` object.

  `abstract boolean`

  `isReadOnly()`

  Returns `true` if this object does not support the
  `mergeTree`, `setFromTree`, and
  `reset` methods.

  `boolean`

  `isStandardMetadataFormatSupported()`

  Returns `true` if the standard metadata format is
  supported by `getMetadataFormat`,
  `getAsTree`, `setFromTree`, and
  `mergeTree`.

  `abstract void`

  `mergeTree(String formatName,
  Node root)`

  Alters the internal state of this `IIOMetadata`
  object from a tree of XML DOM `Node`s whose syntax
  is defined by the given metadata format.

  `abstract void`

  `reset()`

  Resets all the data stored in this object to default values,
  usually to the state this object was in immediately after
  construction, though the precise semantics are plug-in specific.

  `void`

  `setController(IIOMetadataController controller)`

  Sets the `IIOMetadataController` to be used
  to provide settings for this `IIOMetadata`
  object when the `activateController` method
  is called, overriding any default controller.

  `void`

  `setFromTree(String formatName,
  Node root)`

  Sets the internal state of this `IIOMetadata` object
  from a tree of XML DOM `Node`s whose syntax is
  defined by the given metadata format.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### standardFormatSupported

    protected boolean standardFormatSupported

    A boolean indicating whether the concrete subclass supports the
    standard metadata format, set via the constructor.
  + ### nativeMetadataFormatName

    protected [String](../../../../java.base/java/lang/String.md "class in java.lang") nativeMetadataFormatName

    The name of the native metadata format for this object,
    initialized to `null` and set via the constructor.
  + ### nativeMetadataFormatClassName

    protected [String](../../../../java.base/java/lang/String.md "class in java.lang") nativeMetadataFormatClassName

    The name of the class implementing `IIOMetadataFormat`
    and representing the native metadata format, initialized to
    `null` and set via the constructor.
  + ### extraMetadataFormatNames

    protected [String](../../../../java.base/java/lang/String.md "class in java.lang")[] extraMetadataFormatNames

    An array of names of formats, other than the standard and
    native formats, that are supported by this plug-in,
    initialized to `null` and set via the constructor.
  + ### extraMetadataFormatClassNames

    protected [String](../../../../java.base/java/lang/String.md "class in java.lang")[] extraMetadataFormatClassNames

    An array of names of classes implementing `IIOMetadataFormat`
    and representing the metadata formats, other than the standard and
    native formats, that are supported by this plug-in,
    initialized to `null` and set via the constructor.
  + ### defaultController

    protected [IIOMetadataController](IIOMetadataController.md "interface in javax.imageio.metadata") defaultController

    An `IIOMetadataController` that is suggested for use
    as the controller for this `IIOMetadata` object. It
    may be retrieved via `getDefaultController`. To
    install the default controller, call
    `setController(getDefaultController())`. This
    instance variable should be set by subclasses that choose to
    provide their own default controller, usually a GUI, for
    setting parameters.

    See Also:
    :   - [`IIOMetadataController`](IIOMetadataController.md "interface in javax.imageio.metadata")
        - [`getDefaultController()`](#getDefaultController())
  + ### controller

    protected [IIOMetadataController](IIOMetadataController.md "interface in javax.imageio.metadata") controller

    The `IIOMetadataController` that will be
    used to provide settings for this `IIOMetadata`
    object when the `activateController` method
    is called. This value overrides any default controller,
    even when `null`.

    See Also:
    :   - [`IIOMetadataController`](IIOMetadataController.md "interface in javax.imageio.metadata")
        - [`setController(IIOMetadataController)`](#setController(javax.imageio.metadata.IIOMetadataController))
        - [`hasController()`](#hasController())
        - [`activateController()`](#activateController())
* ## Constructor Details

  + ### IIOMetadata

    protected IIOMetadata()

    Constructs an empty `IIOMetadata` object. The
    subclass is responsible for supplying values for all protected
    instance variables that will allow any non-overridden default
    implementations of methods to satisfy their contracts. For example,
    `extraMetadataFormatNames` should not have length 0.
  + ### IIOMetadata

    protected IIOMetadata(boolean standardMetadataFormatSupported,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") nativeMetadataFormatName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") nativeMetadataFormatClassName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] extraMetadataFormatNames,
    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] extraMetadataFormatClassNames)

    Constructs an `IIOMetadata` object with the given
    format names and format class names, as well as a boolean
    indicating whether the standard format is supported.

    This constructor does not attempt to check the class names
    for validity. Invalid class names may cause exceptions in
    subsequent calls to `getMetadataFormat`.

    Parameters:
    :   `standardMetadataFormatSupported` - `true` if
        this object can return or accept a DOM tree using the standard
        metadata format.
    :   `nativeMetadataFormatName` - the name of the native metadata
        format, as a `String`, or `null` if there
        is no native format.
    :   `nativeMetadataFormatClassName` - the name of the class of
        the native metadata format, or `null` if there is
        no native format.
    :   `extraMetadataFormatNames` - an array of `String`s
        indicating additional formats supported by this object, or
        `null` if there are none.
    :   `extraMetadataFormatClassNames` - an array of `String`s
        indicating the class names of any additional formats supported by
        this object, or `null` if there are none.

    Throws:
    :   `IllegalArgumentException` - if
        `extraMetadataFormatNames` has length 0.
    :   `IllegalArgumentException` - if
        `extraMetadataFormatNames` and
        `extraMetadataFormatClassNames` are neither both
        `null`, nor of the same length.
* ## Method Details

  + ### isStandardMetadataFormatSupported

    public boolean isStandardMetadataFormatSupported()

    Returns `true` if the standard metadata format is
    supported by `getMetadataFormat`,
    `getAsTree`, `setFromTree`, and
    `mergeTree`.

    The default implementation returns the value of the
    `standardFormatSupported` instance variable.

    Returns:
    :   `true` if the standard metadata format
        is supported.

    See Also:
    :   - [`getAsTree(java.lang.String)`](#getAsTree(java.lang.String))
        - [`setFromTree(java.lang.String, org.w3c.dom.Node)`](#setFromTree(java.lang.String,org.w3c.dom.Node))
        - [`mergeTree(java.lang.String, org.w3c.dom.Node)`](#mergeTree(java.lang.String,org.w3c.dom.Node))
        - [`getMetadataFormat(java.lang.String)`](#getMetadataFormat(java.lang.String))
  + ### isReadOnly

    public abstract boolean isReadOnly()

    Returns `true` if this object does not support the
    `mergeTree`, `setFromTree`, and
    `reset` methods.

    Returns:
    :   true if this `IIOMetadata` object cannot be
        modified.
  + ### getNativeMetadataFormatName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getNativeMetadataFormatName()

    Returns the name of the "native" metadata format for this
    plug-in, which typically allows for lossless encoding and
    transmission of the metadata stored in the format handled by
    this plug-in. If no such format is supported,
    `null` will be returned.

    The structure and contents of the "native" metadata format
    are defined by the plug-in that created this
    `IIOMetadata` object. Plug-ins for simple formats
    will usually create a dummy node for the root, and then a
    series of child nodes representing individual tags, chunks, or
    keyword/value pairs. A plug-in may choose whether or not to
    document its native format.

    The default implementation returns the value of the
    `nativeMetadataFormatName` instance variable.

    Returns:
    :   the name of the native format, or `null`.

    See Also:
    :   - [`getExtraMetadataFormatNames()`](#getExtraMetadataFormatNames())
        - [`getMetadataFormatNames()`](#getMetadataFormatNames())
  + ### getExtraMetadataFormatNames

    public [String](../../../../java.base/java/lang/String.md "class in java.lang")[] getExtraMetadataFormatNames()

    Returns an array of `String`s containing the names
    of additional metadata formats, other than the native and standard
    formats, recognized by this plug-in's
    `getAsTree`, `setFromTree`, and
    `mergeTree` methods. If there are no such additional
    formats, `null` is returned.

    The default implementation returns a clone of the
    `extraMetadataFormatNames` instance variable.

    Returns:
    :   an array of `String`s with length at least
        1, or `null`.

    See Also:
    :   - [`getAsTree(java.lang.String)`](#getAsTree(java.lang.String))
        - [`setFromTree(java.lang.String, org.w3c.dom.Node)`](#setFromTree(java.lang.String,org.w3c.dom.Node))
        - [`mergeTree(java.lang.String, org.w3c.dom.Node)`](#mergeTree(java.lang.String,org.w3c.dom.Node))
        - [`getNativeMetadataFormatName()`](#getNativeMetadataFormatName())
        - [`getMetadataFormatNames()`](#getMetadataFormatNames())
  + ### getMetadataFormatNames

    public [String](../../../../java.base/java/lang/String.md "class in java.lang")[] getMetadataFormatNames()

    Returns an array of `String`s containing the names
    of all metadata formats, including the native and standard
    formats, recognized by this plug-in's `getAsTree`,
    `setFromTree`, and `mergeTree` methods.
    If there are no such formats, `null` is returned.

    The default implementation calls
    `getNativeMetadataFormatName`,
    `isStandardMetadataFormatSupported`, and
    `getExtraMetadataFormatNames` and returns the
    combined results.

    Returns:
    :   an array of `String`s.

    See Also:
    :   - [`getNativeMetadataFormatName()`](#getNativeMetadataFormatName())
        - [`isStandardMetadataFormatSupported()`](#isStandardMetadataFormatSupported())
        - [`getExtraMetadataFormatNames()`](#getExtraMetadataFormatNames())
  + ### getMetadataFormat

    public [IIOMetadataFormat](IIOMetadataFormat.md "interface in javax.imageio.metadata") getMetadataFormat([String](../../../../java.base/java/lang/String.md "class in java.lang") formatName)

    Returns an `IIOMetadataFormat` object describing the
    given metadata format, or `null` if no description
    is available. The supplied name must be one of those returned
    by `getMetadataFormatNames` (*i.e.*, either the
    native format name, the standard format name, or one of those
    returned by `getExtraMetadataFormatNames`).

    The default implementation checks the name against the
    global standard metadata format name, and returns that format
    if it is supported. Otherwise, it checks against the native
    format names followed by any additional format names. If a
    match is found, it retrieves the name of the
    `IIOMetadataFormat` class from
    `nativeMetadataFormatClassName` or
    `extraMetadataFormatClassNames` as appropriate, and
    constructs an instance of that class using its
    `getInstance` method.

    Parameters:
    :   `formatName` - the desired metadata format.

    Returns:
    :   an `IIOMetadataFormat` object.

    Throws:
    :   `IllegalArgumentException` - if `formatName`
        is `null` or is not one of the names recognized by
        the plug-in.
    :   `IllegalStateException` - if the class corresponding to
        the format name cannot be loaded.
  + ### getAsTree

    public abstract [Node](../../../../java.xml/org/w3c/dom/Node.md "interface in org.w3c.dom") getAsTree([String](../../../../java.base/java/lang/String.md "class in java.lang") formatName)

    Returns an XML DOM `Node` object that represents the
    root of a tree of metadata contained within this object
    according to the conventions defined by a given metadata
    format.

    The names of the available metadata formats may be queried
    using the `getMetadataFormatNames` method.

    Parameters:
    :   `formatName` - the desired metadata format.

    Returns:
    :   an XML DOM `Node` object forming the
        root of a tree.

    Throws:
    :   `IllegalArgumentException` - if `formatName`
        is `null` or is not one of the names returned by
        `getMetadataFormatNames`.

    See Also:
    :   - [`getMetadataFormatNames()`](#getMetadataFormatNames())
        - [`setFromTree(java.lang.String, org.w3c.dom.Node)`](#setFromTree(java.lang.String,org.w3c.dom.Node))
        - [`mergeTree(java.lang.String, org.w3c.dom.Node)`](#mergeTree(java.lang.String,org.w3c.dom.Node))
  + ### mergeTree

    public abstract void mergeTree([String](../../../../java.base/java/lang/String.md "class in java.lang") formatName,
    [Node](../../../../java.xml/org/w3c/dom/Node.md "interface in org.w3c.dom") root)
    throws [IIOInvalidTreeException](IIOInvalidTreeException.md "class in javax.imageio.metadata")

    Alters the internal state of this `IIOMetadata`
    object from a tree of XML DOM `Node`s whose syntax
    is defined by the given metadata format. The previous state is
    altered only as necessary to accommodate the nodes that are
    present in the given tree. If the tree structure or contents
    are invalid, an `IIOInvalidTreeException` will be
    thrown.

    As the semantics of how a tree or subtree may be merged with
    another tree are completely format-specific, plug-in authors may
    implement this method in whatever manner is most appropriate for
    the format, including simply replacing all existing state with the
    contents of the given tree.

    Parameters:
    :   `formatName` - the desired metadata format.
    :   `root` - an XML DOM `Node` object forming the
        root of a tree.

    Throws:
    :   `IllegalStateException` - if this object is read-only.
    :   `IllegalArgumentException` - if `formatName`
        is `null` or is not one of the names returned by
        `getMetadataFormatNames`.
    :   `IllegalArgumentException` - if `root` is
        `null`.
    :   `IIOInvalidTreeException` - if the tree cannot be parsed
        successfully using the rules of the given format.

    See Also:
    :   - [`getMetadataFormatNames()`](#getMetadataFormatNames())
        - [`getAsTree(java.lang.String)`](#getAsTree(java.lang.String))
        - [`setFromTree(java.lang.String, org.w3c.dom.Node)`](#setFromTree(java.lang.String,org.w3c.dom.Node))
  + ### getStandardChromaNode

    protected [IIOMetadataNode](IIOMetadataNode.md "class in javax.imageio.metadata") getStandardChromaNode()

    Returns an `IIOMetadataNode` representing the chroma
    information of the standard `javax_imageio_1.0`
    metadata format, or `null` if no such information is
    available. This method is intended to be called by the utility
    routine `getStandardTree`.

    The default implementation returns `null`.

    Subclasses should override this method to produce an
    appropriate subtree if they wish to support the standard
    metadata format.

    Returns:
    :   an `IIOMetadataNode`, or `null`.

    See Also:
    :   - [`getStandardTree()`](#getStandardTree())
  + ### getStandardCompressionNode

    protected [IIOMetadataNode](IIOMetadataNode.md "class in javax.imageio.metadata") getStandardCompressionNode()

    Returns an `IIOMetadataNode` representing the
    compression information of the standard
    `javax_imageio_1.0` metadata format, or
    `null` if no such information is available. This
    method is intended to be called by the utility routine
    `getStandardTree`.

    The default implementation returns `null`.

    Subclasses should override this method to produce an
    appropriate subtree if they wish to support the standard
    metadata format.

    Returns:
    :   an `IIOMetadataNode`, or `null`.

    See Also:
    :   - [`getStandardTree()`](#getStandardTree())
  + ### getStandardDataNode

    protected [IIOMetadataNode](IIOMetadataNode.md "class in javax.imageio.metadata") getStandardDataNode()

    Returns an `IIOMetadataNode` representing the data
    format information of the standard
    `javax_imageio_1.0` metadata format, or
    `null` if no such information is available. This
    method is intended to be called by the utility routine
    `getStandardTree`.

    The default implementation returns `null`.

    Subclasses should override this method to produce an
    appropriate subtree if they wish to support the standard
    metadata format.

    Returns:
    :   an `IIOMetadataNode`, or `null`.

    See Also:
    :   - [`getStandardTree()`](#getStandardTree())
  + ### getStandardDimensionNode

    protected [IIOMetadataNode](IIOMetadataNode.md "class in javax.imageio.metadata") getStandardDimensionNode()

    Returns an `IIOMetadataNode` representing the
    dimension information of the standard
    `javax_imageio_1.0` metadata format, or
    `null` if no such information is available. This
    method is intended to be called by the utility routine
    `getStandardTree`.

    The default implementation returns `null`.

    Subclasses should override this method to produce an
    appropriate subtree if they wish to support the standard
    metadata format.

    Returns:
    :   an `IIOMetadataNode`, or `null`.

    See Also:
    :   - [`getStandardTree()`](#getStandardTree())
  + ### getStandardDocumentNode

    protected [IIOMetadataNode](IIOMetadataNode.md "class in javax.imageio.metadata") getStandardDocumentNode()

    Returns an `IIOMetadataNode` representing the document
    information of the standard `javax_imageio_1.0`
    metadata format, or `null` if no such information is
    available. This method is intended to be called by the utility
    routine `getStandardTree`.

    The default implementation returns `null`.

    Subclasses should override this method to produce an
    appropriate subtree if they wish to support the standard
    metadata format.

    Returns:
    :   an `IIOMetadataNode`, or `null`.

    See Also:
    :   - [`getStandardTree()`](#getStandardTree())
  + ### getStandardTextNode

    protected [IIOMetadataNode](IIOMetadataNode.md "class in javax.imageio.metadata") getStandardTextNode()

    Returns an `IIOMetadataNode` representing the textual
    information of the standard `javax_imageio_1.0`
    metadata format, or `null` if no such information is
    available. This method is intended to be called by the utility
    routine `getStandardTree`.

    The default implementation returns `null`.

    Subclasses should override this method to produce an
    appropriate subtree if they wish to support the standard
    metadata format.

    Returns:
    :   an `IIOMetadataNode`, or `null`.

    See Also:
    :   - [`getStandardTree()`](#getStandardTree())
  + ### getStandardTileNode

    protected [IIOMetadataNode](IIOMetadataNode.md "class in javax.imageio.metadata") getStandardTileNode()

    Returns an `IIOMetadataNode` representing the tiling
    information of the standard `javax_imageio_1.0`
    metadata format, or `null` if no such information is
    available. This method is intended to be called by the utility
    routine `getStandardTree`.

    The default implementation returns `null`.

    Subclasses should override this method to produce an
    appropriate subtree if they wish to support the standard
    metadata format.

    Returns:
    :   an `IIOMetadataNode`, or `null`.

    See Also:
    :   - [`getStandardTree()`](#getStandardTree())
  + ### getStandardTransparencyNode

    protected [IIOMetadataNode](IIOMetadataNode.md "class in javax.imageio.metadata") getStandardTransparencyNode()

    Returns an `IIOMetadataNode` representing the
    transparency information of the standard
    `javax_imageio_1.0` metadata format, or
    `null` if no such information is available. This
    method is intended to be called by the utility routine
    `getStandardTree`.

    The default implementation returns `null`.

    Subclasses should override this method to produce an
    appropriate subtree if they wish to support the standard
    metadata format.

    Returns:
    :   an `IIOMetadataNode`, or `null`.
  + ### getStandardTree

    protected final [IIOMetadataNode](IIOMetadataNode.md "class in javax.imageio.metadata") getStandardTree()

    A utility method to return a tree of
    `IIOMetadataNode`s representing the metadata
    contained within this object according to the conventions of
    the standard `javax_imageio_1.0` metadata format.

    This method calls the various `getStandard*Node`
    methods to supply each of the subtrees rooted at the children
    of the root node. If any of those methods returns
    `null`, the corresponding subtree will be omitted.
    If all of them return `null`, a tree consisting of a
    single root node will be returned.

    Returns:
    :   an `IIOMetadataNode` representing the root
        of a metadata tree in the `javax_imageio_1.0`
        format.

    See Also:
    :   - [`getStandardChromaNode()`](#getStandardChromaNode())
        - [`getStandardCompressionNode()`](#getStandardCompressionNode())
        - [`getStandardDataNode()`](#getStandardDataNode())
        - [`getStandardDimensionNode()`](#getStandardDimensionNode())
        - [`getStandardDocumentNode()`](#getStandardDocumentNode())
        - [`getStandardTextNode()`](#getStandardTextNode())
        - [`getStandardTileNode()`](#getStandardTileNode())
        - [`getStandardTransparencyNode()`](#getStandardTransparencyNode())
  + ### setFromTree

    public void setFromTree([String](../../../../java.base/java/lang/String.md "class in java.lang") formatName,
    [Node](../../../../java.xml/org/w3c/dom/Node.md "interface in org.w3c.dom") root)
    throws [IIOInvalidTreeException](IIOInvalidTreeException.md "class in javax.imageio.metadata")

    Sets the internal state of this `IIOMetadata` object
    from a tree of XML DOM `Node`s whose syntax is
    defined by the given metadata format. The previous state is
    discarded. If the tree's structure or contents are invalid, an
    `IIOInvalidTreeException` will be thrown.

    The default implementation calls `reset`
    followed by `mergeTree(formatName, root)`.

    Parameters:
    :   `formatName` - the desired metadata format.
    :   `root` - an XML DOM `Node` object forming the
        root of a tree.

    Throws:
    :   `IllegalStateException` - if this object is read-only.
    :   `IllegalArgumentException` - if `formatName`
        is `null` or is not one of the names returned by
        `getMetadataFormatNames`.
    :   `IllegalArgumentException` - if `root` is
        `null`.
    :   `IIOInvalidTreeException` - if the tree cannot be parsed
        successfully using the rules of the given format.

    See Also:
    :   - [`getMetadataFormatNames()`](#getMetadataFormatNames())
        - [`getAsTree(java.lang.String)`](#getAsTree(java.lang.String))
        - [`mergeTree(java.lang.String, org.w3c.dom.Node)`](#mergeTree(java.lang.String,org.w3c.dom.Node))
  + ### reset

    public abstract void reset()

    Resets all the data stored in this object to default values,
    usually to the state this object was in immediately after
    construction, though the precise semantics are plug-in specific.
    Note that there are many possible default values, depending on
    how the object was created.

    Throws:
    :   `IllegalStateException` - if this object is read-only.

    See Also:
    :   - [`ImageReader.getStreamMetadata()`](../ImageReader.md#getStreamMetadata())
        - [`ImageReader.getImageMetadata(int)`](../ImageReader.md#getImageMetadata(int))
        - [`ImageWriter.getDefaultStreamMetadata(javax.imageio.ImageWriteParam)`](../ImageWriter.md#getDefaultStreamMetadata(javax.imageio.ImageWriteParam))
        - [`ImageWriter.getDefaultImageMetadata(javax.imageio.ImageTypeSpecifier, javax.imageio.ImageWriteParam)`](../ImageWriter.md#getDefaultImageMetadata(javax.imageio.ImageTypeSpecifier,javax.imageio.ImageWriteParam))
  + ### setController

    public void setController([IIOMetadataController](IIOMetadataController.md "interface in javax.imageio.metadata") controller)

    Sets the `IIOMetadataController` to be used
    to provide settings for this `IIOMetadata`
    object when the `activateController` method
    is called, overriding any default controller. If the
    argument is `null`, no controller will be
    used, including any default. To restore the default, use
    `setController(getDefaultController())`.

    The default implementation sets the `controller`
    instance variable to the supplied value.

    Parameters:
    :   `controller` - An appropriate
        `IIOMetadataController`, or `null`.

    See Also:
    :   - [`IIOMetadataController`](IIOMetadataController.md "interface in javax.imageio.metadata")
        - [`getController()`](#getController())
        - [`getDefaultController()`](#getDefaultController())
        - [`hasController()`](#hasController())
        - [`activateController()`](#activateController())
  + ### getController

    public [IIOMetadataController](IIOMetadataController.md "interface in javax.imageio.metadata") getController()

    Returns whatever `IIOMetadataController` is currently
    installed. This could be the default if there is one,
    `null`, or the argument of the most recent call
    to `setController`.

    The default implementation returns the value of the
    `controller` instance variable.

    Returns:
    :   the currently installed
        `IIOMetadataController`, or `null`.

    See Also:
    :   - [`IIOMetadataController`](IIOMetadataController.md "interface in javax.imageio.metadata")
        - [`setController(javax.imageio.metadata.IIOMetadataController)`](#setController(javax.imageio.metadata.IIOMetadataController))
        - [`getDefaultController()`](#getDefaultController())
        - [`hasController()`](#hasController())
        - [`activateController()`](#activateController())
  + ### getDefaultController

    public [IIOMetadataController](IIOMetadataController.md "interface in javax.imageio.metadata") getDefaultController()

    Returns the default `IIOMetadataController`, if there
    is one, regardless of the currently installed controller. If
    there is no default controller, returns `null`.

    The default implementation returns the value of the
    `defaultController` instance variable.

    Returns:
    :   the default `IIOMetadataController`, or
        `null`.

    See Also:
    :   - [`IIOMetadataController`](IIOMetadataController.md "interface in javax.imageio.metadata")
        - [`setController(IIOMetadataController)`](#setController(javax.imageio.metadata.IIOMetadataController))
        - [`getController()`](#getController())
        - [`hasController()`](#hasController())
        - [`activateController()`](#activateController())
  + ### hasController

    public boolean hasController()

    Returns `true` if there is a controller installed
    for this `IIOMetadata` object.

    The default implementation returns `true` if the
    `getController` method returns a
    non-`null` value.

    Returns:
    :   `true` if a controller is installed.

    See Also:
    :   - [`IIOMetadataController`](IIOMetadataController.md "interface in javax.imageio.metadata")
        - [`setController(IIOMetadataController)`](#setController(javax.imageio.metadata.IIOMetadataController))
        - [`getController()`](#getController())
        - [`getDefaultController()`](#getDefaultController())
        - [`activateController()`](#activateController())
  + ### activateController

    public boolean activateController()

    Activates the installed `IIOMetadataController` for
    this `IIOMetadata` object and returns the resulting
    value. When this method returns `true`, all values for this
    `IIOMetadata` object will be ready for the next write
    operation. If `false` is
    returned, no settings in this object will have been disturbed
    (*i.e.*, the user canceled the operation).

    Ordinarily, the controller will be a GUI providing a user
    interface for a subclass of `IIOMetadata` for a
    particular plug-in. Controllers need not be GUIs, however.

    The default implementation calls `getController`
    and the calls `activate` on the returned object if
    `hasController` returns `true`.

    Returns:
    :   `true` if the controller completed normally.

    Throws:
    :   `IllegalStateException` - if there is no controller
        currently installed.

    See Also:
    :   - [`IIOMetadataController`](IIOMetadataController.md "interface in javax.imageio.metadata")
        - [`setController(IIOMetadataController)`](#setController(javax.imageio.metadata.IIOMetadataController))
        - [`getController()`](#getController())
        - [`getDefaultController()`](#getDefaultController())
        - [`hasController()`](#hasController())