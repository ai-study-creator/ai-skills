Module [java.desktop](../../module-summary.md)

Package [javax.accessibility](package-summary.md)

# Class AccessibleResourceBundle

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.ResourceBundle](../../../java.base/java/util/ResourceBundle.md "class in java.util")

[java.util.ListResourceBundle](../../../java.base/java/util/ListResourceBundle.md "class in java.util")

javax.accessibility.AccessibleResourceBundle

---

[@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
public class AccessibleResourceBundle
extends [ListResourceBundle](../../../java.base/java/util/ListResourceBundle.md "class in java.util")

Deprecated.

This class is deprecated as of version 1.3 of the Java Platform

A resource bundle containing the localized strings in the accessibility
package. This is meant only for internal use by Java Accessibility and is not
meant to be used by assistive technologies or applications.

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.util.[ResourceBundle](../../../java.base/java/util/ResourceBundle.md "class in java.util")

  `ResourceBundle.Control`
* ## Field Summary

  ### Fields inherited from class java.util.[ResourceBundle](../../../java.base/java/util/ResourceBundle.md "class in java.util")

  `parent`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AccessibleResourceBundle()`

  Deprecated.

  Constructs an `AccessibleResourceBundle`.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `Object[][]`

  `getContents()`

  Deprecated.

  Returns the mapping between the programmatic keys and the localized
  display strings.

  ### Methods inherited from class java.util.[ListResourceBundle](../../../java.base/java/util/ListResourceBundle.md "class in java.util")

  `getKeys, handleGetObject, handleKeySet`

  ### Methods inherited from class java.util.[ResourceBundle](../../../java.base/java/util/ResourceBundle.md "class in java.util")

  `clearCache, clearCache, containsKey, getBaseBundleName, getBundle, getBundle, getBundle, getBundle, getBundle, getBundle, getBundle, getBundle, getLocale, getObject, getString, getStringArray, keySet, setParent`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AccessibleResourceBundle

    public AccessibleResourceBundle()

    Deprecated.

    Constructs an `AccessibleResourceBundle`.
* ## Method Details

  + ### getContents

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang")[][] getContents()

    Deprecated.

    Returns the mapping between the programmatic keys and the localized
    display strings.

    Specified by:
    :   `getContents` in class `ListResourceBundle`

    Returns:
    :   an array of an `Object` array representing a key-value pair