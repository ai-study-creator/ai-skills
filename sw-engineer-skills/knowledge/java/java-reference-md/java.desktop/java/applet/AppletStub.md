Module [java.desktop](../../module-summary.md)

Package [java.applet](package-summary.md)

# Interface AppletStub

---

[@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java.base/java/lang/Deprecated.md#since())="9",
[forRemoval](../../../java.base/java/lang/Deprecated.md#forRemoval())=true)
public interface AppletStub

Deprecated, for removal: This API element is subject to removal in a future version.

The Applet API is deprecated, no replacement.

When an applet is first created, an applet stub is attached to it using the
applet's `setStub` method. This stub serves as the interface between
the applet and the browser environment or applet viewer environment in which
the application is running.

Since:
:   1.0

See Also:
:   * [`Applet.setStub(java.applet.AppletStub)`](Applet.md#setStub(java.applet.AppletStub))

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `appletResize(int width,
  int height)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Called when the applet wants to be resized.

  `AppletContext`

  `getAppletContext()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Returns the applet's context.

  `URL`

  `getCodeBase()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Gets the base `URL`.

  `URL`

  `getDocumentBase()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Gets the `URL` of the document in which the applet is embedded.

  `String`

  `getParameter(String name)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Returns the value of the named parameter in the HTML tag.

  `boolean`

  `isActive()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Determines if the applet is active.

* ## Method Details

  + ### isActive

    boolean isActive()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Determines if the applet is active. An applet is active just before its
    `start` method is called. It becomes inactive just before its
    `stop` method is called.

    Returns:
    :   `true` if the applet is active; `false` otherwise
  + ### getDocumentBase

    [URL](../../../java.base/java/net/URL.md "class in java.net") getDocumentBase()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Gets the `URL` of the document in which the applet is embedded. For
    example, suppose an applet is contained within the document:
    > ```
    >     http://www.oracle.com/technetwork/java/index.html
    > ```

    The document base is:
    > ```
    >     http://www.oracle.com/technetwork/java/index.html
    > ```

    Returns:
    :   the [`URL`](../../../java.base/java/net/URL.md "class in java.net") of the document that contains the applet

    See Also:
    :   - [`getCodeBase()`](#getCodeBase())
  + ### getCodeBase

    [URL](../../../java.base/java/net/URL.md "class in java.net") getCodeBase()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Gets the base `URL`. This is the `URL` of the directory which
    contains the applet.

    Returns:
    :   the base [`URL`](../../../java.base/java/net/URL.md "class in java.net") of the directory which contains the
        applet

    See Also:
    :   - [`getDocumentBase()`](#getDocumentBase())
  + ### getParameter

    [String](../../../java.base/java/lang/String.md "class in java.lang") getParameter([String](../../../java.base/java/lang/String.md "class in java.lang") name)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Returns the value of the named parameter in the HTML tag. For example, if
    an applet is specified as
    > ```
    >  <applet code="Clock" width=50 height=50>
    >  <param name=Color value="blue">
    >  </applet>
    > ```

    then a call to `getParameter("Color")` returns the value
    `"blue"`.

    Parameters:
    :   `name` - a parameter name

    Returns:
    :   the value of the named parameter, or `null` if not set
  + ### getAppletContext

    [AppletContext](AppletContext.md "interface in java.applet") getAppletContext()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Returns the applet's context.

    Returns:
    :   the applet's context
  + ### appletResize

    void appletResize(int width,
    int height)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Called when the applet wants to be resized.

    Parameters:
    :   `width` - the new requested width for the applet
    :   `height` - the new requested height for the applet