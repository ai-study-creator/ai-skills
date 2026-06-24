Module [java.desktop](../../../module-summary.md)

Package [java.awt.font](package-summary.md)

# Interface MultipleMaster

---

public interface MultipleMaster

The `MultipleMaster` interface represents Type 1
Multiple Master fonts.
A particular [`Font`](../Font.md "class in java.awt") object can implement this interface.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Font`

  `deriveMMFont(float[] axes)`

  Creates a new instance of a multiple master font based on the design
  axis values contained in the specified array.

  `Font`

  `deriveMMFont(float[] glyphWidths,
  float avgStemWidth,
  float typicalCapHeight,
  float typicalXHeight,
  float italicAngle)`

  Creates a new instance of a multiple master font based on detailed metric
  information.

  `float[]`

  `getDesignAxisDefaults()`

  Returns an array of default design values for each axis.

  `String[]`

  `getDesignAxisNames()`

  Returns the name for each design axis.

  `float[]`

  `getDesignAxisRanges()`

  Returns an array of design limits interleaved in the form [from→to]
  for each axis.

  `int`

  `getNumDesignAxes()`

  Returns the number of multiple master design controls.

* ## Method Details

  + ### getNumDesignAxes

    int getNumDesignAxes()

    Returns the number of multiple master design controls.
    Design axes include things like width, weight and optical scaling.

    Returns:
    :   the number of multiple master design controls
  + ### getDesignAxisRanges

    float[] getDesignAxisRanges()

    Returns an array of design limits interleaved in the form [from→to]
    for each axis. For example,
    design limits for weight could be from 0.1 to 1.0. The values are
    returned in the same order returned by
    `getDesignAxisNames`.

    Returns:
    :   an array of design limits for each axis.
  + ### getDesignAxisDefaults

    float[] getDesignAxisDefaults()

    Returns an array of default design values for each axis. For example,
    the default value for weight could be 1.6. The values are returned
    in the same order returned by `getDesignAxisNames`.

    Returns:
    :   an array of default design values for each axis.
  + ### getDesignAxisNames

    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] getDesignAxisNames()

    Returns the name for each design axis. This also determines the order in
    which the values for each axis are returned.

    Returns:
    :   an array containing the names of each design axis.
  + ### deriveMMFont

    [Font](../Font.md "class in java.awt") deriveMMFont(float[] axes)

    Creates a new instance of a multiple master font based on the design
    axis values contained in the specified array. The size of the array
    must correspond to the value returned from
    `getNumDesignAxes` and the values of the array elements
    must fall within limits specified by
    `getDesignAxesLimits`. In case of an error,
    `null` is returned.

    Parameters:
    :   `axes` - an array containing axis values

    Returns:
    :   a [`Font`](../Font.md "class in java.awt") object that is an instance of
        `MultipleMaster` and is based on the design axis values
        provided by `axes`.
  + ### deriveMMFont

    [Font](../Font.md "class in java.awt") deriveMMFont(float[] glyphWidths,
    float avgStemWidth,
    float typicalCapHeight,
    float typicalXHeight,
    float italicAngle)

    Creates a new instance of a multiple master font based on detailed metric
    information. In case of an error, `null` is returned.

    Parameters:
    :   `glyphWidths` - an array of floats representing the desired width
        of each glyph in font space
    :   `avgStemWidth` - the average stem width for the overall font in
        font space
    :   `typicalCapHeight` - the height of a typical upper case char
    :   `typicalXHeight` - the height of a typical lower case char
    :   `italicAngle` - the angle at which the italics lean, in degrees
        counterclockwise from vertical

    Returns:
    :   a `Font` object that is an instance of
        `MultipleMaster` and is based on the specified metric
        information.