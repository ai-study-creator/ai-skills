Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Interface MBeanServerDelegateMBean

All Known Implementing Classes:
:   `MBeanServerDelegate`

---

public interface MBeanServerDelegateMBean

Defines the management interface of an object of class MBeanServerDelegate.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `getImplementationName()`

  Returns the JMX implementation name (the name of this product).

  `String`

  `getImplementationVendor()`

  Returns the JMX implementation vendor (the vendor of this product).

  `String`

  `getImplementationVersion()`

  Returns the JMX implementation version (the version of this product).

  `String`

  `getMBeanServerId()`

  Returns the MBean server agent identity.

  `String`

  `getSpecificationName()`

  Returns the full name of the JMX specification implemented
  by this product.

  `String`

  `getSpecificationVendor()`

  Returns the vendor of the JMX specification implemented
  by this product.

  `String`

  `getSpecificationVersion()`

  Returns the version of the JMX specification implemented
  by this product.

* ## Method Details

  + ### getMBeanServerId

    [String](../../../java.base/java/lang/String.md "class in java.lang") getMBeanServerId()

    Returns the MBean server agent identity.

    Returns:
    :   the agent identity.
  + ### getSpecificationName

    [String](../../../java.base/java/lang/String.md "class in java.lang") getSpecificationName()

    Returns the full name of the JMX specification implemented
    by this product.

    Returns:
    :   the specification name.
  + ### getSpecificationVersion

    [String](../../../java.base/java/lang/String.md "class in java.lang") getSpecificationVersion()

    Returns the version of the JMX specification implemented
    by this product.

    Returns:
    :   the specification version.
  + ### getSpecificationVendor

    [String](../../../java.base/java/lang/String.md "class in java.lang") getSpecificationVendor()

    Returns the vendor of the JMX specification implemented
    by this product.

    Returns:
    :   the specification vendor.
  + ### getImplementationName

    [String](../../../java.base/java/lang/String.md "class in java.lang") getImplementationName()

    Returns the JMX implementation name (the name of this product).

    Returns:
    :   the implementation name.
  + ### getImplementationVersion

    [String](../../../java.base/java/lang/String.md "class in java.lang") getImplementationVersion()

    Returns the JMX implementation version (the version of this product).

    Returns:
    :   the implementation version.
  + ### getImplementationVendor

    [String](../../../java.base/java/lang/String.md "class in java.lang") getImplementationVendor()

    Returns the JMX implementation vendor (the vendor of this product).

    Returns:
    :   the implementation vendor.