Module [java.desktop](../../../../module-summary.md)

Package [java.awt.image.renderable](package-summary.md)

# Class ParameterBlock

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.image.renderable.ParameterBlock

All Implemented Interfaces:
:   `Serializable`, `Cloneable`

---

public class ParameterBlock
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Cloneable](../../../../../java.base/java/lang/Cloneable.md "interface in java.lang"), [Serializable](../../../../../java.base/java/io/Serializable.md "interface in java.io")

A `ParameterBlock` encapsulates all the information about sources and
parameters (Objects) required by a RenderableImageOp, or other
classes that process images.

Although it is possible to place arbitrary objects in the
source Vector, users of this class may impose semantic constraints
such as requiring all sources to be RenderedImages or
RenderableImage. `ParameterBlock` itself is merely a container and
performs no checking on source or parameter types.

All parameters in a `ParameterBlock` are objects; convenience
add and set methods are available that take arguments of base type and
construct the appropriate subclass of Number (such as
Integer or Float). Corresponding get methods perform a
downward cast and have return values of base type; an exception
will be thrown if the stored values do not have the correct type.
There is no way to distinguish between the results of
"short s; add(s)" and "add(Short.valueOf(s))".

Note that the get and set methods operate on references.
Therefore, one must be careful not to share references between
`ParameterBlock`s when this is inappropriate. For example, to create
a new `ParameterBlock` that is equal to an old one except for an
added source, one might be tempted to write:

```
 ParameterBlock addSource(ParameterBlock pb, RenderableImage im) {
     ParameterBlock pb1 = new ParameterBlock(pb.getSources());
     pb1.addSource(im);
     return pb1;
 }
```

This code will have the side effect of altering the original
`ParameterBlock`, since the getSources operation returned a reference
to its source Vector. Both pb and pb1 share their source Vector,
and a change in either is visible to both.

A correct way to write the addSource function is to clone
the source Vector:

```
 ParameterBlock addSource (ParameterBlock pb, RenderableImage im) {
     ParameterBlock pb1 = new ParameterBlock(pb.getSources().clone());
     pb1.addSource(im);
     return pb1;
 }
```

The clone method of `ParameterBlock` has been defined to
perform a clone of both the source and parameter Vectors for
this reason. A standard, shallow clone is available as
shallowClone.

The addSource, setSource, add, and set methods are
defined to return 'this' after adding their argument. This allows
use of syntax like:

```
 ParameterBlock pb = new ParameterBlock();
 op = new RenderableImageOp("operation", pb.add(arg1).add(arg2));
```

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#java.awt.image.renderable.ParameterBlock)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Vector<Object>`

  `parameters`

  A Vector of non-source parameters, stored as arbitrary Objects.

  `protected Vector<Object>`

  `sources`

  A Vector of sources, stored as arbitrary Objects.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ParameterBlock()`

  A dummy constructor.

  `ParameterBlock(Vector<Object> sources)`

  Constructs a `ParameterBlock` with a given Vector
  of sources.

  `ParameterBlock(Vector<Object> sources,
  Vector<Object> parameters)`

  Constructs a `ParameterBlock` with a given Vector of sources and
  Vector of parameters.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `ParameterBlock`

  `add(byte b)`

  Adds a Byte to the list of parameters.

  `ParameterBlock`

  `add(char c)`

  Adds a Character to the list of parameters.

  `ParameterBlock`

  `add(double d)`

  Adds a Double to the list of parameters.

  `ParameterBlock`

  `add(float f)`

  Adds a Float to the list of parameters.

  `ParameterBlock`

  `add(int i)`

  Adds a Integer to the list of parameters.

  `ParameterBlock`

  `add(long l)`

  Adds a Long to the list of parameters.

  `ParameterBlock`

  `add(short s)`

  Adds a Short to the list of parameters.

  `ParameterBlock`

  `add(Object obj)`

  Adds an object to the list of parameters.

  `ParameterBlock`

  `addSource(Object source)`

  Adds an image to end of the list of sources.

  `Object`

  `clone()`

  Creates a copy of a `ParameterBlock`.

  `byte`

  `getByteParameter(int index)`

  A convenience method to return a parameter as a byte.

  `char`

  `getCharParameter(int index)`

  A convenience method to return a parameter as a char.

  `double`

  `getDoubleParameter(int index)`

  A convenience method to return a parameter as a double.

  `float`

  `getFloatParameter(int index)`

  A convenience method to return a parameter as a float.

  `int`

  `getIntParameter(int index)`

  A convenience method to return a parameter as an int.

  `long`

  `getLongParameter(int index)`

  A convenience method to return a parameter as a long.

  `int`

  `getNumParameters()`

  Returns the number of parameters (not including source images).

  `int`

  `getNumSources()`

  Returns the number of source images.

  `Object`

  `getObjectParameter(int index)`

  Gets a parameter as an object.

  `Class<?>[]`

  `getParamClasses()`

  Returns an array of Class objects describing the types
  of the parameters.

  `Vector<Object>`

  `getParameters()`

  Returns the entire Vector of parameters.

  `RenderableImage`

  `getRenderableSource(int index)`

  Returns a source as a RenderableImage.

  `RenderedImage`

  `getRenderedSource(int index)`

  Returns a source as a `RenderedImage`.

  `short`

  `getShortParameter(int index)`

  A convenience method to return a parameter as a short.

  `Object`

  `getSource(int index)`

  Returns a source as a general Object.

  `Vector<Object>`

  `getSources()`

  Returns the entire Vector of sources.

  `void`

  `removeParameters()`

  Clears the list of parameters.

  `void`

  `removeSources()`

  Clears the list of source images.

  `ParameterBlock`

  `set(byte b,
  int index)`

  Replaces an Object in the list of parameters with a Byte.

  `ParameterBlock`

  `set(char c,
  int index)`

  Replaces an Object in the list of parameters with a Character.

  `ParameterBlock`

  `set(double d,
  int index)`

  Replaces an Object in the list of parameters with a Double.

  `ParameterBlock`

  `set(float f,
  int index)`

  Replaces an Object in the list of parameters with a Float.

  `ParameterBlock`

  `set(int i,
  int index)`

  Replaces an Object in the list of parameters with an Integer.

  `ParameterBlock`

  `set(long l,
  int index)`

  Replaces an Object in the list of parameters with a Long.

  `ParameterBlock`

  `set(short s,
  int index)`

  Replaces an Object in the list of parameters with a Short.

  `ParameterBlock`

  `set(Object obj,
  int index)`

  Replaces an Object in the list of parameters.

  `void`

  `setParameters(Vector<Object> parameters)`

  Sets the entire Vector of parameters to a given Vector.

  `ParameterBlock`

  `setSource(Object source,
  int index)`

  Replaces an entry in the list of source with a new source.

  `void`

  `setSources(Vector<Object> sources)`

  Sets the entire Vector of sources to a given Vector.

  `Object`

  `shallowClone()`

  Creates a shallow copy of a `ParameterBlock`.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### sources

    protected [Vector](../../../../../java.base/java/util/Vector.md "class in java.util")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")> sources

    A Vector of sources, stored as arbitrary Objects.
  + ### parameters

    protected [Vector](../../../../../java.base/java/util/Vector.md "class in java.util")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")> parameters

    A Vector of non-source parameters, stored as arbitrary Objects.
* ## Constructor Details

  + ### ParameterBlock

    public ParameterBlock()

    A dummy constructor.
  + ### ParameterBlock

    public ParameterBlock([Vector](../../../../../java.base/java/util/Vector.md "class in java.util")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")> sources)

    Constructs a `ParameterBlock` with a given Vector
    of sources.

    Parameters:
    :   `sources` - a `Vector` of source images
  + ### ParameterBlock

    public ParameterBlock([Vector](../../../../../java.base/java/util/Vector.md "class in java.util")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")> sources,
    [Vector](../../../../../java.base/java/util/Vector.md "class in java.util")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")> parameters)

    Constructs a `ParameterBlock` with a given Vector of sources and
    Vector of parameters.

    Parameters:
    :   `sources` - a `Vector` of source images
    :   `parameters` - a `Vector` of parameters to be used in the
        rendering operation
* ## Method Details

  + ### shallowClone

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") shallowClone()

    Creates a shallow copy of a `ParameterBlock`. The source and
    parameter Vectors are copied by reference -- additions or
    changes will be visible to both versions.

    Returns:
    :   an Object clone of the `ParameterBlock`.
  + ### clone

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") clone()

    Creates a copy of a `ParameterBlock`. The source and parameter
    Vectors are cloned, but the actual sources and parameters are
    copied by reference. This allows modifications to the order
    and number of sources and parameters in the clone to be invisible
    to the original `ParameterBlock`. Changes to the shared sources or
    parameters themselves will still be visible.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   an Object clone of the `ParameterBlock`.

    See Also:
    :   - [`Cloneable`](../../../../../java.base/java/lang/Cloneable.md "interface in java.lang")
  + ### addSource

    public [ParameterBlock](ParameterBlock.md "class in java.awt.image.renderable") addSource([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") source)

    Adds an image to end of the list of sources. The image is
    stored as an object in order to allow new node types in the
    future.

    Parameters:
    :   `source` - an image object to be stored in the source list.

    Returns:
    :   a new `ParameterBlock` containing the specified
        `source`.
  + ### getSource

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") getSource(int index)

    Returns a source as a general Object. The caller must cast it into
    an appropriate type.

    Parameters:
    :   `index` - the index of the source to be returned.

    Returns:
    :   an `Object` that represents the source located
        at the specified index in the `sources`
        `Vector`.

    See Also:
    :   - [`setSource(Object, int)`](#setSource(java.lang.Object,int))
  + ### setSource

    public [ParameterBlock](ParameterBlock.md "class in java.awt.image.renderable") setSource([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") source,
    int index)

    Replaces an entry in the list of source with a new source.
    If the index lies beyond the current source list,
    the list is extended with nulls as needed.

    Parameters:
    :   `source` - the specified source image
    :   `index` - the index into the `sources`
        `Vector` at which to
        insert the specified `source`

    Returns:
    :   a new `ParameterBlock` that contains the
        specified `source` at the specified
        `index`.

    See Also:
    :   - [`getSource(int)`](#getSource(int))
  + ### getRenderedSource

    public [RenderedImage](../RenderedImage.md "interface in java.awt.image") getRenderedSource(int index)

    Returns a source as a `RenderedImage`. This method is
    a convenience method.
    An exception will be thrown if the source is not a RenderedImage.

    Parameters:
    :   `index` - the index of the source to be returned

    Returns:
    :   a `RenderedImage` that represents the source
        image that is at the specified index in the
        `sources Vector`.
  + ### getRenderableSource

    public [RenderableImage](RenderableImage.md "interface in java.awt.image.renderable") getRenderableSource(int index)

    Returns a source as a RenderableImage. This method is a
    convenience method.
    An exception will be thrown if the sources is not a RenderableImage.

    Parameters:
    :   `index` - the index of the source to be returned

    Returns:
    :   a `RenderableImage` that represents the source
        image that is at the specified index in the
        `sources Vector`.
  + ### getNumSources

    public int getNumSources()

    Returns the number of source images.

    Returns:
    :   the number of source images in the `sources`
        `Vector`.
  + ### getSources

    public [Vector](../../../../../java.base/java/util/Vector.md "class in java.util")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")> getSources()

    Returns the entire Vector of sources.

    Returns:
    :   the `sources Vector`.

    See Also:
    :   - [`setSources(Vector)`](#setSources(java.util.Vector))
  + ### setSources

    public void setSources([Vector](../../../../../java.base/java/util/Vector.md "class in java.util")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")> sources)

    Sets the entire Vector of sources to a given Vector.

    Parameters:
    :   `sources` - the `Vector` of source images

    See Also:
    :   - [`getSources()`](#getSources())
  + ### removeSources

    public void removeSources()

    Clears the list of source images.
  + ### getNumParameters

    public int getNumParameters()

    Returns the number of parameters (not including source images).

    Returns:
    :   the number of parameters in the `parameters`
        `Vector`.
  + ### getParameters

    public [Vector](../../../../../java.base/java/util/Vector.md "class in java.util")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")> getParameters()

    Returns the entire Vector of parameters.

    Returns:
    :   the `parameters Vector`.

    See Also:
    :   - [`setParameters(Vector)`](#setParameters(java.util.Vector))
  + ### setParameters

    public void setParameters([Vector](../../../../../java.base/java/util/Vector.md "class in java.util")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")> parameters)

    Sets the entire Vector of parameters to a given Vector.

    Parameters:
    :   `parameters` - the specified `Vector` of
        parameters

    See Also:
    :   - [`getParameters()`](#getParameters())
  + ### removeParameters

    public void removeParameters()

    Clears the list of parameters.
  + ### add

    public [ParameterBlock](ParameterBlock.md "class in java.awt.image.renderable") add([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Adds an object to the list of parameters.

    Parameters:
    :   `obj` - the `Object` to add to the
        `parameters Vector`

    Returns:
    :   a new `ParameterBlock` containing
        the specified parameter.
  + ### add

    public [ParameterBlock](ParameterBlock.md "class in java.awt.image.renderable") add(byte b)

    Adds a Byte to the list of parameters.

    Parameters:
    :   `b` - the byte to add to the
        `parameters Vector`

    Returns:
    :   a new `ParameterBlock` containing
        the specified parameter.
  + ### add

    public [ParameterBlock](ParameterBlock.md "class in java.awt.image.renderable") add(char c)

    Adds a Character to the list of parameters.

    Parameters:
    :   `c` - the char to add to the
        `parameters Vector`

    Returns:
    :   a new `ParameterBlock` containing
        the specified parameter.
  + ### add

    public [ParameterBlock](ParameterBlock.md "class in java.awt.image.renderable") add(short s)

    Adds a Short to the list of parameters.

    Parameters:
    :   `s` - the short to add to the
        `parameters Vector`

    Returns:
    :   a new `ParameterBlock` containing
        the specified parameter.
  + ### add

    public [ParameterBlock](ParameterBlock.md "class in java.awt.image.renderable") add(int i)

    Adds a Integer to the list of parameters.

    Parameters:
    :   `i` - the int to add to the
        `parameters Vector`

    Returns:
    :   a new `ParameterBlock` containing
        the specified parameter.
  + ### add

    public [ParameterBlock](ParameterBlock.md "class in java.awt.image.renderable") add(long l)

    Adds a Long to the list of parameters.

    Parameters:
    :   `l` - the long to add to the
        `parameters Vector`

    Returns:
    :   a new `ParameterBlock` containing
        the specified parameter.
  + ### add

    public [ParameterBlock](ParameterBlock.md "class in java.awt.image.renderable") add(float f)

    Adds a Float to the list of parameters.

    Parameters:
    :   `f` - the float to add to the
        `parameters Vector`

    Returns:
    :   a new `ParameterBlock` containing
        the specified parameter.
  + ### add

    public [ParameterBlock](ParameterBlock.md "class in java.awt.image.renderable") add(double d)

    Adds a Double to the list of parameters.

    Parameters:
    :   `d` - the double to add to the
        `parameters Vector`

    Returns:
    :   a new `ParameterBlock` containing
        the specified parameter.
  + ### set

    public [ParameterBlock](ParameterBlock.md "class in java.awt.image.renderable") set([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") obj,
    int index)

    Replaces an Object in the list of parameters.
    If the index lies beyond the current source list,
    the list is extended with nulls as needed.

    Parameters:
    :   `obj` - the parameter that replaces the
        parameter at the specified index in the
        `parameters Vector`
    :   `index` - the index of the parameter to be
        replaced with the specified parameter

    Returns:
    :   a new `ParameterBlock` containing
        the specified parameter.
  + ### set

    public [ParameterBlock](ParameterBlock.md "class in java.awt.image.renderable") set(byte b,
    int index)

    Replaces an Object in the list of parameters with a Byte.
    If the index lies beyond the current source list,
    the list is extended with nulls as needed.

    Parameters:
    :   `b` - the parameter that replaces the
        parameter at the specified index in the
        `parameters Vector`
    :   `index` - the index of the parameter to be
        replaced with the specified parameter

    Returns:
    :   a new `ParameterBlock` containing
        the specified parameter.
  + ### set

    public [ParameterBlock](ParameterBlock.md "class in java.awt.image.renderable") set(char c,
    int index)

    Replaces an Object in the list of parameters with a Character.
    If the index lies beyond the current source list,
    the list is extended with nulls as needed.

    Parameters:
    :   `c` - the parameter that replaces the
        parameter at the specified index in the
        `parameters Vector`
    :   `index` - the index of the parameter to be
        replaced with the specified parameter

    Returns:
    :   a new `ParameterBlock` containing
        the specified parameter.
  + ### set

    public [ParameterBlock](ParameterBlock.md "class in java.awt.image.renderable") set(short s,
    int index)

    Replaces an Object in the list of parameters with a Short.
    If the index lies beyond the current source list,
    the list is extended with nulls as needed.

    Parameters:
    :   `s` - the parameter that replaces the
        parameter at the specified index in the
        `parameters Vector`
    :   `index` - the index of the parameter to be
        replaced with the specified parameter

    Returns:
    :   a new `ParameterBlock` containing
        the specified parameter.
  + ### set

    public [ParameterBlock](ParameterBlock.md "class in java.awt.image.renderable") set(int i,
    int index)

    Replaces an Object in the list of parameters with an Integer.
    If the index lies beyond the current source list,
    the list is extended with nulls as needed.

    Parameters:
    :   `i` - the parameter that replaces the
        parameter at the specified index in the
        `parameters Vector`
    :   `index` - the index of the parameter to be
        replaced with the specified parameter

    Returns:
    :   a new `ParameterBlock` containing
        the specified parameter.
  + ### set

    public [ParameterBlock](ParameterBlock.md "class in java.awt.image.renderable") set(long l,
    int index)

    Replaces an Object in the list of parameters with a Long.
    If the index lies beyond the current source list,
    the list is extended with nulls as needed.

    Parameters:
    :   `l` - the parameter that replaces the
        parameter at the specified index in the
        `parameters Vector`
    :   `index` - the index of the parameter to be
        replaced with the specified parameter

    Returns:
    :   a new `ParameterBlock` containing
        the specified parameter.
  + ### set

    public [ParameterBlock](ParameterBlock.md "class in java.awt.image.renderable") set(float f,
    int index)

    Replaces an Object in the list of parameters with a Float.
    If the index lies beyond the current source list,
    the list is extended with nulls as needed.

    Parameters:
    :   `f` - the parameter that replaces the
        parameter at the specified index in the
        `parameters Vector`
    :   `index` - the index of the parameter to be
        replaced with the specified parameter

    Returns:
    :   a new `ParameterBlock` containing
        the specified parameter.
  + ### set

    public [ParameterBlock](ParameterBlock.md "class in java.awt.image.renderable") set(double d,
    int index)

    Replaces an Object in the list of parameters with a Double.
    If the index lies beyond the current source list,
    the list is extended with nulls as needed.

    Parameters:
    :   `d` - the parameter that replaces the
        parameter at the specified index in the
        `parameters Vector`
    :   `index` - the index of the parameter to be
        replaced with the specified parameter

    Returns:
    :   a new `ParameterBlock` containing
        the specified parameter.
  + ### getObjectParameter

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") getObjectParameter(int index)

    Gets a parameter as an object.

    Parameters:
    :   `index` - the index of the parameter to get

    Returns:
    :   an `Object` representing the
        the parameter at the specified index
        into the `parameters`
        `Vector`.
  + ### getByteParameter

    public byte getByteParameter(int index)

    A convenience method to return a parameter as a byte. An
    exception is thrown if the parameter is
    `null` or not a `Byte`.

    Parameters:
    :   `index` - the index of the parameter to be returned.

    Returns:
    :   the parameter at the specified index
        as a `byte` value.

    Throws:
    :   `ClassCastException` - if the parameter at the
        specified index is not a `Byte`
    :   `NullPointerException` - if the parameter at the specified
        index is `null`
    :   `ArrayIndexOutOfBoundsException` - if `index`
        is negative or not less than the current size of this
        `ParameterBlock` object
  + ### getCharParameter

    public char getCharParameter(int index)

    A convenience method to return a parameter as a char. An
    exception is thrown if the parameter is
    `null` or not a `Character`.

    Parameters:
    :   `index` - the index of the parameter to be returned.

    Returns:
    :   the parameter at the specified index
        as a `char` value.

    Throws:
    :   `ClassCastException` - if the parameter at the
        specified index is not a `Character`
    :   `NullPointerException` - if the parameter at the specified
        index is `null`
    :   `ArrayIndexOutOfBoundsException` - if `index`
        is negative or not less than the current size of this
        `ParameterBlock` object
  + ### getShortParameter

    public short getShortParameter(int index)

    A convenience method to return a parameter as a short. An
    exception is thrown if the parameter is
    `null` or not a `Short`.

    Parameters:
    :   `index` - the index of the parameter to be returned.

    Returns:
    :   the parameter at the specified index
        as a `short` value.

    Throws:
    :   `ClassCastException` - if the parameter at the
        specified index is not a `Short`
    :   `NullPointerException` - if the parameter at the specified
        index is `null`
    :   `ArrayIndexOutOfBoundsException` - if `index`
        is negative or not less than the current size of this
        `ParameterBlock` object
  + ### getIntParameter

    public int getIntParameter(int index)

    A convenience method to return a parameter as an int. An
    exception is thrown if the parameter is
    `null` or not an `Integer`.

    Parameters:
    :   `index` - the index of the parameter to be returned.

    Returns:
    :   the parameter at the specified index
        as an `int` value.

    Throws:
    :   `ClassCastException` - if the parameter at the
        specified index is not an `Integer`
    :   `NullPointerException` - if the parameter at the specified
        index is `null`
    :   `ArrayIndexOutOfBoundsException` - if `index`
        is negative or not less than the current size of this
        `ParameterBlock` object
  + ### getLongParameter

    public long getLongParameter(int index)

    A convenience method to return a parameter as a long. An
    exception is thrown if the parameter is
    `null` or not a `Long`.

    Parameters:
    :   `index` - the index of the parameter to be returned.

    Returns:
    :   the parameter at the specified index
        as a `long` value.

    Throws:
    :   `ClassCastException` - if the parameter at the
        specified index is not a `Long`
    :   `NullPointerException` - if the parameter at the specified
        index is `null`
    :   `ArrayIndexOutOfBoundsException` - if `index`
        is negative or not less than the current size of this
        `ParameterBlock` object
  + ### getFloatParameter

    public float getFloatParameter(int index)

    A convenience method to return a parameter as a float. An
    exception is thrown if the parameter is
    `null` or not a `Float`.

    Parameters:
    :   `index` - the index of the parameter to be returned.

    Returns:
    :   the parameter at the specified index
        as a `float` value.

    Throws:
    :   `ClassCastException` - if the parameter at the
        specified index is not a `Float`
    :   `NullPointerException` - if the parameter at the specified
        index is `null`
    :   `ArrayIndexOutOfBoundsException` - if `index`
        is negative or not less than the current size of this
        `ParameterBlock` object
  + ### getDoubleParameter

    public double getDoubleParameter(int index)

    A convenience method to return a parameter as a double. An
    exception is thrown if the parameter is
    `null` or not a `Double`.

    Parameters:
    :   `index` - the index of the parameter to be returned.

    Returns:
    :   the parameter at the specified index
        as a `double` value.

    Throws:
    :   `ClassCastException` - if the parameter at the
        specified index is not a `Double`
    :   `NullPointerException` - if the parameter at the specified
        index is `null`
    :   `ArrayIndexOutOfBoundsException` - if `index`
        is negative or not less than the current size of this
        `ParameterBlock` object
  + ### getParamClasses

    public [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<?>[] getParamClasses()

    Returns an array of Class objects describing the types
    of the parameters.

    Returns:
    :   an array of `Class` objects.