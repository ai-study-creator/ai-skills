Module [java.instrument](../../../module-summary.md)

Package [java.lang.instrument](package-summary.md)

# Class ClassDefinition

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.lang.instrument.ClassDefinition

---

public final class ClassDefinition
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

This class serves as a parameter block to the `Instrumentation.redefineClasses` method.
Serves to bind the `Class` that needs redefining together with the new class file bytes.

Since:
:   1.5

See Also:
:   * [`Instrumentation.redefineClasses(java.lang.instrument.ClassDefinition...)`](Instrumentation.md#redefineClasses(java.lang.instrument.ClassDefinition...))

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ClassDefinition(Class<?> theClass,
  byte[] theClassFile)`

  Creates a new `ClassDefinition` binding using the supplied
  class and class file bytes.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Class<?>`

  `getDefinitionClass()`

  Returns the class.

  `byte[]`

  `getDefinitionClassFile()`

  Returns the array of bytes that contains the new class file.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ClassDefinition

    public ClassDefinition([Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> theClass,
    byte[] theClassFile)

    Creates a new `ClassDefinition` binding using the supplied
    class and class file bytes. Does not copy the supplied buffer, just captures a reference to it.

    Parameters:
    :   `theClass` - the `Class` that needs redefining
    :   `theClassFile` - the new class file bytes

    Throws:
    :   `NullPointerException` - if the supplied class or array is `null`.
* ## Method Details

  + ### getDefinitionClass

    public [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> getDefinitionClass()

    Returns the class.

    Returns:
    :   the `Class` object referred to.
  + ### getDefinitionClassFile

    public byte[] getDefinitionClassFile()

    Returns the array of bytes that contains the new class file.

    Returns:
    :   the class file bytes.