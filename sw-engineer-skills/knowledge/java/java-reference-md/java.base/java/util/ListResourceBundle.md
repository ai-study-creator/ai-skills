Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class ListResourceBundle

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.util.ResourceBundle](ResourceBundle.md "class in java.util")

java.util.ListResourceBundle

Direct Known Subclasses:
:   `AccessibleResourceBundle`

---

public abstract class ListResourceBundle
extends [ResourceBundle](ResourceBundle.md "class in java.util")

`ListResourceBundle` is an abstract subclass of
`ResourceBundle` that manages resources for a locale
in a convenient and easy to use list. See `ResourceBundle` for
more information about resource bundles in general.

Subclasses must override `getContents` and provide an array,
where each item in the array is a pair of objects.
The first element of each pair is the key, which must be a
`String`, and the second element is the value associated with
that key.

The following example shows two members of a resource
bundle family with the base name "MyResources".
"MyResources" is the default member of the bundle family, and
"MyResources\_fr" is the French member.
These members are based on `ListResourceBundle`
(a related [example](PropertyResourceBundle.md#sample) shows
how you can add a bundle to this family that's based on a properties file).
The keys in this example are of the form "s1" etc. The actual
keys are entirely up to your choice, so long as they are the same as
the keys you use in your program to retrieve the objects from the bundle.
Keys are case-sensitive.

Copy![Copy snippet](../../../copy.svg)

```
public class MyResources extends ListResourceBundle {
    protected Object[][] getContents() {
        return new Object[][] {
        // LOCALIZE THIS
            {"s1", "The disk \"{1}\" contains {0}."},  // MessageFormat pattern
            {"s2", "1"},                               // location of {0} in pattern
            {"s3", "My Disk"},                         // sample disk name
            {"s4", "no files"},                        // first ChoiceFormat choice
            {"s5", "one file"},                        // second ChoiceFormat choice
            {"s6", "{0,number} files"},                // third ChoiceFormat choice
            {"s7", "3 Mar 96"},                        // sample date
            {"s8", new Dimension(1,5)}                 // real object, not just string
        // END OF MATERIAL TO LOCALIZE
        };
    }
}

public class MyResources_fr extends ListResourceBundle {
    protected Object[][] getContents() {
        return new Object[][] {
        // LOCALIZE THIS
            {"s1", "Le disque \"{1}\" {0}."},          // MessageFormat pattern
            {"s2", "1"},                               // location of {0} in pattern
            {"s3", "Mon disque"},                      // sample disk name
            {"s4", "ne contient pas de fichiers"},     // first ChoiceFormat choice
            {"s5", "contient un fichier"},             // second ChoiceFormat choice
            {"s6", "contient {0,number} fichiers"},    // third ChoiceFormat choice
            {"s7", "3 mars 1996"},                     // sample date
            {"s8", new Dimension(1,3)}                 // real object, not just string
        // END OF MATERIAL TO LOCALIZE
        };
    }
}
```

The implementation of a `ListResourceBundle` subclass must be thread-safe
if it's simultaneously used by multiple threads. The default implementations
of the methods in this class are thread-safe.

Since:
:   1.1

See Also:
:   * [`ResourceBundle`](ResourceBundle.md "class in java.util")
    * [`PropertyResourceBundle`](PropertyResourceBundle.md "class in java.util")

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.util.[ResourceBundle](ResourceBundle.md "class in java.util")

  `ResourceBundle.Control`
* ## Field Summary

  ### Fields inherited from class java.util.[ResourceBundle](ResourceBundle.md "class in java.util")

  `parent`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ListResourceBundle()`

  Sole constructor.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected abstract Object[][]`

  `getContents()`

  Returns an array in which each item is a pair of objects in an
  `Object` array.

  `Enumeration<String>`

  `getKeys()`

  Returns an `Enumeration` of the keys contained in
  this `ResourceBundle` and its parent bundles.

  `final Object`

  `handleGetObject(String key)`

  Gets an object for the given key from this resource bundle.

  `protected Set<String>`

  `handleKeySet()`

  Returns a `Set` of the keys contained
  *only* in this `ResourceBundle`.

  ### Methods inherited from class java.util.[ResourceBundle](ResourceBundle.md "class in java.util")

  `clearCache, clearCache, containsKey, getBaseBundleName, getBundle, getBundle, getBundle, getBundle, getBundle, getBundle, getBundle, getBundle, getLocale, getObject, getString, getStringArray, keySet, setParent`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ListResourceBundle

    public ListResourceBundle()

    Sole constructor. (For invocation by subclass constructors, typically
    implicit.)
* ## Method Details

  + ### handleGetObject

    public final [Object](../lang/Object.md "class in java.lang") handleGetObject([String](../lang/String.md "class in java.lang") key)

    Description copied from class: `ResourceBundle`

    Gets an object for the given key from this resource bundle.
    Returns null if this resource bundle does not contain an
    object for the given key.

    Specified by:
    :   `handleGetObject` in class `ResourceBundle`

    Parameters:
    :   `key` - the key for the desired object

    Returns:
    :   the object for the given key, or null
  + ### getKeys

    public [Enumeration](Enumeration.md "interface in java.util")<[String](../lang/String.md "class in java.lang")> getKeys()

    Returns an `Enumeration` of the keys contained in
    this `ResourceBundle` and its parent bundles.

    Specified by:
    :   `getKeys` in class `ResourceBundle`

    Returns:
    :   an `Enumeration` of the keys contained in
        this `ResourceBundle` and its parent bundles.

    See Also:
    :   - [`ResourceBundle.keySet()`](ResourceBundle.md#keySet())
  + ### handleKeySet

    protected [Set](Set.md "interface in java.util")<[String](../lang/String.md "class in java.lang")> handleKeySet()

    Returns a `Set` of the keys contained
    *only* in this `ResourceBundle`.

    Overrides:
    :   `handleKeySet` in class `ResourceBundle`

    Returns:
    :   a `Set` of the keys contained only in this
        `ResourceBundle`

    Since:
    :   1.6

    See Also:
    :   - [`ResourceBundle.keySet()`](ResourceBundle.md#keySet())
  + ### getContents

    protected abstract [Object](../lang/Object.md "class in java.lang")[][] getContents()

    Returns an array in which each item is a pair of objects in an
    `Object` array. The first element of each pair is
    the key, which must be a `String`, and the second
    element is the value associated with that key. See the class
    description for details.

    Returns:
    :   an array of an `Object` array representing a
        key-value pair.