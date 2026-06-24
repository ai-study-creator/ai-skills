Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Interface ObjectInputValidation

---

public interface ObjectInputValidation

Callback interface to allow validation of objects within a graph.
Allows an object to be called when a complete graph of objects has
been deserialized.

Since:
:   1.1

See Also:
:   * [`ObjectInputStream`](ObjectInputStream.md "class in java.io")
    * [`ObjectInputStream.registerValidation(java.io.ObjectInputValidation, int)`](ObjectInputStream.md#registerValidation(java.io.ObjectInputValidation,int))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `validateObject()`

  Validates the object.

* ## Method Details

  + ### validateObject

    void validateObject()
    throws [InvalidObjectException](InvalidObjectException.md "class in java.io")

    Validates the object.

    Throws:
    :   `InvalidObjectException` - If the object cannot validate itself.