Module [java.desktop](../../module-summary.md)

Package [java.applet](package-summary.md)

# Interface AppletContext

---

[@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java.base/java/lang/Deprecated.md#since())="9",
[forRemoval](../../../java.base/java/lang/Deprecated.md#forRemoval())=true)
public interface AppletContext

Deprecated, for removal: This API element is subject to removal in a future version.

The Applet API is deprecated, no replacement.

This interface corresponds to an applet's environment: the document
containing the applet and the other applets in the same document.

The methods in this interface can be used by an applet to obtain information
about its environment.

Since:
:   1.0

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `Applet`

  `getApplet(String name)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Finds and returns the applet in the document represented by this applet
  context with the given name.

  `Enumeration<Applet>`

  `getApplets()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Finds all the applets in the document represented by this applet context.

  `AudioClip`

  `getAudioClip(URL url)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Creates an audio clip.

  `Image`

  `getImage(URL url)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Returns an `Image` object that can then be painted on the screen.

  `InputStream`

  `getStream(String key)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Returns the stream to which specified key is associated within this
  applet context.

  `Iterator<String>`

  `getStreamKeys()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Finds all the keys of the streams in this applet context.

  `void`

  `setStream(String key,
  InputStream stream)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Associates the specified stream with the specified key in this applet
  context.

  `void`

  `showDocument(URL url)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Requests that the browser or applet viewer show the Web page indicated by
  the `url` argument.

  `void`

  `showDocument(URL url,
  String target)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Requests that the browser or applet viewer show the Web page indicated by
  the `url` argument.

  `void`

  `showStatus(String status)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Requests that the argument string be displayed in the "status window".

* ## Method Details

  + ### getAudioClip

    [AudioClip](AudioClip.md "interface in java.applet") getAudioClip([URL](../../../java.base/java/net/URL.md "class in java.net") url)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Creates an audio clip.

    Parameters:
    :   `url` - an absolute `URL` giving the location of the audio clip

    Returns:
    :   the audio clip at the specified `URL`
  + ### getImage

    [Image](../awt/Image.md "class in java.awt") getImage([URL](../../../java.base/java/net/URL.md "class in java.net") url)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Returns an `Image` object that can then be painted on the screen.
    The `url` argument that is passed as an argument must specify an
    absolute `URL`.

    This method always returns immediately, whether or not the image exists.
    When the applet attempts to draw the image on the screen, the data will
    be loaded. The graphics primitives that draw the image will incrementally
    paint on the screen.

    Parameters:
    :   `url` - an absolute `URL` giving the location of the image

    Returns:
    :   the image at the specified `URL`

    See Also:
    :   - [`Image`](../awt/Image.md "class in java.awt")
  + ### getApplet

    [Applet](Applet.md "class in java.applet") getApplet([String](../../../java.base/java/lang/String.md "class in java.lang") name)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Finds and returns the applet in the document represented by this applet
    context with the given name. The name can be set in the HTML tag by
    setting the `name` attribute.

    Parameters:
    :   `name` - an applet name

    Returns:
    :   the applet with the given name, or `null` if not found
  + ### getApplets

    [Enumeration](../../../java.base/java/util/Enumeration.md "interface in java.util")<[Applet](Applet.md "class in java.applet")> getApplets()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Finds all the applets in the document represented by this applet context.

    Returns:
    :   an enumeration of all applets in the document represented by this
        applet context
  + ### showDocument

    void showDocument([URL](../../../java.base/java/net/URL.md "class in java.net") url)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Requests that the browser or applet viewer show the Web page indicated by
    the `url` argument. The browser or applet viewer determines which
    window or frame to display the Web page. This method may be ignored by
    applet contexts that are not browsers.

    Parameters:
    :   `url` - an absolute `URL` giving the location of the document
  + ### showDocument

    void showDocument([URL](../../../java.base/java/net/URL.md "class in java.net") url,
    [String](../../../java.base/java/lang/String.md "class in java.lang") target)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Requests that the browser or applet viewer show the Web page indicated by
    the `url` argument. The `target` argument indicates in which
    HTML frame the document is to be displayed. The target argument is
    interpreted as follows:

    Target arguments and their descriptions

    | Target Argument Description | |
    | --- | --- |
    | `"_self"` Show in the window and frame that contain the applet.|  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | | `"_parent"` Show in the applet's parent frame. If the applet's frame has no parent frame, acts the same as "\_self".|  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | | `"_top"` Show in the top-level frame of the applet's window. If the applet's frame is the top-level frame, acts the same as "\_self".|  |  |  |  | | --- | --- | --- | --- | | `"_blank"` Show in a new, unnamed top-level window.|  |  | | --- | --- | | *name* Show in the frame or window named *name*. If a target named *name* does not already exist, a new top-level window with the specified name is created, and the document is shown there. | | | | | | | | | |

    An applet viewer or browser is free to ignore `showDocument`.

    Parameters:
    :   `url` - an absolute `URL` giving the location of the document
    :   `target` - a `String` indicating where to display the page
  + ### showStatus

    void showStatus([String](../../../java.base/java/lang/String.md "class in java.lang") status)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Requests that the argument string be displayed in the "status window".
    Many browsers and applet viewers provide such a window, where the
    application can inform users of its current state.

    Parameters:
    :   `status` - a string to display in the status window
  + ### setStream

    void setStream([String](../../../java.base/java/lang/String.md "class in java.lang") key,
    [InputStream](../../../java.base/java/io/InputStream.md "class in java.io") stream)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Deprecated, for removal: This API element is subject to removal in a future version.

    Associates the specified stream with the specified key in this applet
    context. If the applet context previously contained a mapping for this
    key, the old value is replaced.

    For security reasons, mapping of streams and keys exists for each
    codebase. In other words, applet from one codebase cannot access the
    streams created by an applet from a different codebase

    Parameters:
    :   `key` - key with which the specified value is to be associated
    :   `stream` - stream to be associated with the specified key. If this
        parameter is `null`, the specified key is removed in this
        applet context.

    Throws:
    :   `IOException` - if the stream size exceeds a certain size limit. Size
        limit is decided by the implementor of this interface.

    Since:
    :   1.4
  + ### getStream

    [InputStream](../../../java.base/java/io/InputStream.md "class in java.io") getStream([String](../../../java.base/java/lang/String.md "class in java.lang") key)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Returns the stream to which specified key is associated within this
    applet context. Returns `null` if the applet context contains no
    stream for this key.

    For security reasons, mapping of streams and keys exists for each
    codebase. In other words, applet from one codebase cannot access the
    streams created by an applet from a different codebase.

    Parameters:
    :   `key` - key whose associated stream is to be returned

    Returns:
    :   the stream to which this applet context maps the key

    Since:
    :   1.4
  + ### getStreamKeys

    [Iterator](../../../java.base/java/util/Iterator.md "interface in java.util")<[String](../../../java.base/java/lang/String.md "class in java.lang")> getStreamKeys()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Finds all the keys of the streams in this applet context.

    For security reasons, mapping of streams and keys exists for each
    codebase. In other words, applet from one codebase cannot access the
    streams created by an applet from a different codebase.

    Returns:
    :   an `Iterator` of all the names of the streams in this
        applet context

    Since:
    :   1.4