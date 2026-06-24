Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class ImageIcon

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.ImageIcon

All Implemented Interfaces:
:   `Serializable`, `Accessible`, `Icon`

---

public class ImageIcon
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Icon](Icon.md "interface in javax.swing"), [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io"), [Accessible](../accessibility/Accessible.md "interface in javax.accessibility")

An implementation of the Icon interface that paints Icons
from Images. Images that are created from a URL, filename or byte array
are preloaded using MediaTracker to monitor the loaded state
of the image.

For further information and examples of using image icons, see
[How to Use Icons](https://docs.oracle.com/javase/tutorial/uiswing/components/icon.html)
in *The Java Tutorial.*

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../java/beans/XMLEncoder.md "class in java.beans").

Since:
:   1.2

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `ImageIcon.AccessibleImageIcon`

  This class implements accessibility support for the
  `ImageIcon` class.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected static final Component`

  `component`

  Deprecated.

  since 1.8

  `protected static final MediaTracker`

  `tracker`

  Deprecated.

  since 1.8
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ImageIcon()`

  Creates an uninitialized image icon.

  `ImageIcon(byte[] imageData)`

  Creates an ImageIcon from an array of bytes which were
  read from an image file containing a supported image format,
  such as GIF, JPEG, or (as of 1.3) PNG.

  `ImageIcon(byte[] imageData,
  String description)`

  Creates an ImageIcon from an array of bytes which were
  read from an image file containing a supported image format,
  such as GIF, JPEG, or (as of 1.3) PNG.

  `ImageIcon(Image image)`

  Creates an ImageIcon from an image object.

  `ImageIcon(Image image,
  String description)`

  Creates an ImageIcon from the image.

  `ImageIcon(String filename)`

  Creates an ImageIcon from the specified file.

  `ImageIcon(String filename,
  String description)`

  Creates an ImageIcon from the specified file.

  `ImageIcon(URL location)`

  Creates an ImageIcon from the specified URL.

  `ImageIcon(URL location,
  String description)`

  Creates an ImageIcon from the specified URL.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the AccessibleContext associated with this ImageIcon.

  `String`

  `getDescription()`

  Gets the description of the image.

  `int`

  `getIconHeight()`

  Gets the height of the icon.

  `int`

  `getIconWidth()`

  Gets the width of the icon.

  `Image`

  `getImage()`

  Returns this icon's `Image`.

  `int`

  `getImageLoadStatus()`

  Returns the status of the image loading operation.

  `ImageObserver`

  `getImageObserver()`

  Returns the image observer for the image.

  `protected void`

  `loadImage(Image image)`

  Loads the image, returning only when the image is loaded.

  `void`

  `paintIcon(Component c,
  Graphics g,
  int x,
  int y)`

  Paints the icon.

  `void`

  `setDescription(String description)`

  Sets the description of the image.

  `void`

  `setImage(Image image)`

  Sets the image displayed by this icon.

  `void`

  `setImageObserver(ImageObserver observer)`

  Sets the image observer for the image.

  `String`

  `toString()`

  Returns a string representation of this image.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### component

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected static final [Component](../../java/awt/Component.md "class in java.awt") component

    Deprecated.

    since 1.8

    Do not use this shared component, which is used to track image loading.
    It is left for backward compatibility only.
  + ### tracker

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected static final [MediaTracker](../../java/awt/MediaTracker.md "class in java.awt") tracker

    Deprecated.

    since 1.8

    Do not use this shared media tracker, which is used to load images.
    It is left for backward compatibility only.
* ## Constructor Details

  + ### ImageIcon

    public ImageIcon([String](../../../java.base/java/lang/String.md "class in java.lang") filename,
    [String](../../../java.base/java/lang/String.md "class in java.lang") description)

    Creates an ImageIcon from the specified file. The image will
    be preloaded by using MediaTracker to monitor the loading state
    of the image.

    Parameters:
    :   `filename` - the name of the file containing the image
    :   `description` - a brief textual description of the image

    See Also:
    :   - [`ImageIcon(String)`](#%3Cinit%3E(java.lang.String))
  + ### ImageIcon

    [@ConstructorProperties](../../java/beans/ConstructorProperties.md "annotation interface in java.beans")("description")
    public ImageIcon([String](../../../java.base/java/lang/String.md "class in java.lang") filename)

    Creates an ImageIcon from the specified file. The image will
    be preloaded by using MediaTracker to monitor the loading state
    of the image. The specified String can be a file name or a
    file path. When specifying a path, use the Internet-standard
    forward-slash ("/") as a separator.
    (The string is converted to an URL, so the forward-slash works
    on all systems.)
    For example, specify:

    ```
        new ImageIcon("images/myImage.gif")
    ```

    The description is initialized to the `filename` string.

    Parameters:
    :   `filename` - a String specifying a filename or path

    See Also:
    :   - [`getDescription()`](#getDescription())
  + ### ImageIcon

    public ImageIcon([URL](../../../java.base/java/net/URL.md "class in java.net") location,
    [String](../../../java.base/java/lang/String.md "class in java.lang") description)

    Creates an ImageIcon from the specified URL. The image will
    be preloaded by using MediaTracker to monitor the loaded state
    of the image.

    Parameters:
    :   `location` - the URL for the image
    :   `description` - a brief textual description of the image

    See Also:
    :   - [`ImageIcon(String)`](#%3Cinit%3E(java.lang.String))
  + ### ImageIcon

    public ImageIcon([URL](../../../java.base/java/net/URL.md "class in java.net") location)

    Creates an ImageIcon from the specified URL. The image will
    be preloaded by using MediaTracker to monitor the loaded state
    of the image.
    The icon's description is initialized to be
    a string representation of the URL.

    Parameters:
    :   `location` - the URL for the image

    See Also:
    :   - [`getDescription()`](#getDescription())
  + ### ImageIcon

    public ImageIcon([Image](../../java/awt/Image.md "class in java.awt") image,
    [String](../../../java.base/java/lang/String.md "class in java.lang") description)

    Creates an ImageIcon from the image.

    Parameters:
    :   `image` - the image
    :   `description` - a brief textual description of the image
  + ### ImageIcon

    public ImageIcon([Image](../../java/awt/Image.md "class in java.awt") image)

    Creates an ImageIcon from an image object.
    If the image has a "comment" property that is a string,
    then the string is used as the description of this icon.

    Parameters:
    :   `image` - the image

    See Also:
    :   - [`getDescription()`](#getDescription())
        - [`Image.getProperty(java.lang.String, java.awt.image.ImageObserver)`](../../java/awt/Image.md#getProperty(java.lang.String,java.awt.image.ImageObserver))
  + ### ImageIcon

    public ImageIcon(byte[] imageData,
    [String](../../../java.base/java/lang/String.md "class in java.lang") description)

    Creates an ImageIcon from an array of bytes which were
    read from an image file containing a supported image format,
    such as GIF, JPEG, or (as of 1.3) PNG.
    Normally this array is created
    by reading an image using Class.getResourceAsStream(), but
    the byte array may also be statically stored in a class.

    Parameters:
    :   `imageData` - an array of pixels in an image format supported
        by the AWT Toolkit, such as GIF, JPEG, or (as of 1.3) PNG
    :   `description` - a brief textual description of the image

    See Also:
    :   - [`Toolkit.createImage(java.lang.String)`](../../java/awt/Toolkit.md#createImage(java.lang.String))
  + ### ImageIcon

    public ImageIcon(byte[] imageData)

    Creates an ImageIcon from an array of bytes which were
    read from an image file containing a supported image format,
    such as GIF, JPEG, or (as of 1.3) PNG.
    Normally this array is created
    by reading an image using Class.getResourceAsStream(), but
    the byte array may also be statically stored in a class.
    If the resulting image has a "comment" property that is a string,
    then the string is used as the description of this icon.

    Parameters:
    :   `imageData` - an array of pixels in an image format supported by
        the AWT Toolkit, such as GIF, JPEG, or (as of 1.3) PNG

    See Also:
    :   - [`Toolkit.createImage(java.lang.String)`](../../java/awt/Toolkit.md#createImage(java.lang.String))
        - [`getDescription()`](#getDescription())
        - [`Image.getProperty(java.lang.String, java.awt.image.ImageObserver)`](../../java/awt/Image.md#getProperty(java.lang.String,java.awt.image.ImageObserver))
  + ### ImageIcon

    public ImageIcon()

    Creates an uninitialized image icon.
* ## Method Details

  + ### loadImage

    protected void loadImage([Image](../../java/awt/Image.md "class in java.awt") image)

    Loads the image, returning only when the image is loaded.

    Parameters:
    :   `image` - the image
  + ### getImageLoadStatus

    public int getImageLoadStatus()

    Returns the status of the image loading operation.

    Returns:
    :   the loading status as defined by java.awt.MediaTracker

    See Also:
    :   - [`MediaTracker.ABORTED`](../../java/awt/MediaTracker.md#ABORTED)
        - [`MediaTracker.ERRORED`](../../java/awt/MediaTracker.md#ERRORED)
        - [`MediaTracker.COMPLETE`](../../java/awt/MediaTracker.md#COMPLETE)
  + ### getImage

    public [Image](../../java/awt/Image.md "class in java.awt") getImage()

    Returns this icon's `Image`.

    Returns:
    :   the `Image` object for this `ImageIcon`
  + ### setImage

    public void setImage([Image](../../java/awt/Image.md "class in java.awt") image)

    Sets the image displayed by this icon.

    Parameters:
    :   `image` - the image
  + ### getDescription

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getDescription()

    Gets the description of the image. This is meant to be a brief
    textual description of the object. For example, it might be
    presented to a blind user to give an indication of the purpose
    of the image.
    The description may be null.

    Returns:
    :   a brief textual description of the image
  + ### setDescription

    public void setDescription([String](../../../java.base/java/lang/String.md "class in java.lang") description)

    Sets the description of the image. This is meant to be a brief
    textual description of the object. For example, it might be
    presented to a blind user to give an indication of the purpose
    of the image.

    Parameters:
    :   `description` - a brief textual description of the image
  + ### paintIcon

    public void paintIcon([Component](../../java/awt/Component.md "class in java.awt") c,
    [Graphics](../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y)

    Paints the icon.
    The top-left corner of the icon is drawn at
    the point (`x`, `y`)
    in the coordinate space of the graphics context `g`.
    If this icon has no image observer,
    this method uses the `c` component
    as the observer.

    Specified by:
    :   `paintIcon` in interface `Icon`

    Parameters:
    :   `c` - the component to be used as the observer
        if this icon has no image observer
    :   `g` - the graphics context
    :   `x` - the X coordinate of the icon's top-left corner
    :   `y` - the Y coordinate of the icon's top-left corner
  + ### getIconWidth

    public int getIconWidth()

    Gets the width of the icon.

    Specified by:
    :   `getIconWidth` in interface `Icon`

    Returns:
    :   the width in pixels of this icon
  + ### getIconHeight

    public int getIconHeight()

    Gets the height of the icon.

    Specified by:
    :   `getIconHeight` in interface `Icon`

    Returns:
    :   the height in pixels of this icon
  + ### setImageObserver

    public void setImageObserver([ImageObserver](../../java/awt/image/ImageObserver.md "interface in java.awt.image") observer)

    Sets the image observer for the image. Set this
    property if the ImageIcon contains an animated GIF, so
    the observer is notified to update its display.
    For example:

    ```
         icon = new ImageIcon(...)
         button.setIcon(icon);
         icon.setImageObserver(button);
    ```

    Parameters:
    :   `observer` - the image observer
  + ### getImageObserver

    public [ImageObserver](../../java/awt/image/ImageObserver.md "interface in java.awt.image") getImageObserver()

    Returns the image observer for the image.

    Returns:
    :   the image observer, which may be null
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of this image.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representing this image
  + ### getAccessibleContext

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([expert](../../java/beans/BeanProperty.md#expert())=true,
    [description](../../java/beans/BeanProperty.md#description())="The AccessibleContext associated with this ImageIcon.")
    public [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the AccessibleContext associated with this ImageIcon.
    For image icons, the AccessibleContext takes the form of an
    AccessibleImageIcon.
    A new AccessibleImageIcon instance is created if necessary.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Returns:
    :   an AccessibleImageIcon that serves as the
        AccessibleContext of this ImageIcon

    Since:
    :   1.3