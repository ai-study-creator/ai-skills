Module [java.desktop](../../module-summary.md)

Package [java.beans](package-summary.md)

# Class ParameterDescriptor

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.beans.FeatureDescriptor](FeatureDescriptor.md "class in java.beans")

java.beans.ParameterDescriptor

---

public class ParameterDescriptor
extends [FeatureDescriptor](FeatureDescriptor.md "class in java.beans")

The ParameterDescriptor class allows bean implementors to provide
additional information on each of their parameters, beyond the
low level type information provided by the java.lang.reflect.Method
class.

Currently all our state comes from the FeatureDescriptor base class.

Since:
:   1.1

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ParameterDescriptor()`

  Public default constructor.
* ## Method Summary

  ### Methods inherited from class java.beans.[FeatureDescriptor](FeatureDescriptor.md "class in java.beans")

  `attributeNames, getDisplayName, getName, getShortDescription, getValue, isExpert, isHidden, isPreferred, setDisplayName, setExpert, setHidden, setName, setPreferred, setShortDescription, setValue, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ParameterDescriptor

    public ParameterDescriptor()

    Public default constructor.