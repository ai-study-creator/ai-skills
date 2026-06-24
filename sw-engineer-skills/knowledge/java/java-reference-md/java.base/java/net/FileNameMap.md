Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Interface FileNameMap

---

public interface FileNameMap

A simple interface which provides a mechanism to map
between a file name and a MIME type string.

Since:
:   1.1

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `getContentTypeFor(String fileName)`

  Gets the MIME type for the specified file name.

* ## Method Details

  + ### getContentTypeFor

    [String](../lang/String.md "class in java.lang") getContentTypeFor([String](../lang/String.md "class in java.lang") fileName)

    Gets the MIME type for the specified file name.

    Parameters:
    :   `fileName` - the specified file name

    Returns:
    :   a `String` indicating the MIME
        type for the specified file name.