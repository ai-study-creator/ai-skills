Module [java.base](../../module-summary.md)

Package [java.text](package-summary.md)

# Class Annotation

[java.lang.Object](../lang/Object.md "class in java.lang")

java.text.Annotation

---

public class Annotation
extends [Object](../lang/Object.md "class in java.lang")

An Annotation object is used as a wrapper for a text attribute value if
the attribute has annotation characteristics. These characteristics are:

* The text range that the attribute is applied to is critical to the
  semantics of the range. That means, the attribute cannot be applied to subranges
  of the text range that it applies to, and, if two adjacent text ranges have
  the same value for this attribute, the attribute still cannot be applied to
  the combined range as a whole with this value.* The attribute or its value usually do no longer apply if the underlying text is
    changed.

An example is grammatical information attached to a sentence:
For the previous sentence, you can say that "an example"
is the subject, but you cannot say the same about "an", "example", or "exam".
When the text is changed, the grammatical information typically becomes invalid.
Another example is Japanese reading information (yomi).

Wrapping the attribute value into an Annotation object guarantees that
adjacent text runs don't get merged even if the attribute values are equal,
and indicates to text containers that the attribute should be discarded if
the underlying text is modified.

Since:
:   1.2

See Also:
:   * [`AttributedCharacterIterator`](AttributedCharacterIterator.md "interface in java.text")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Annotation(Object value)`

  Constructs an annotation record with the given value, which
  may be null.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `getValue()`

  Returns the value of the attribute, which may be null.

  `String`

  `toString()`

  Returns the String representation of this Annotation.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### Annotation

    public Annotation([Object](../lang/Object.md "class in java.lang") value)

    Constructs an annotation record with the given value, which
    may be null.

    Parameters:
    :   `value` - the value of the attribute
* ## Method Details

  + ### getValue

    public [Object](../lang/Object.md "class in java.lang") getValue()

    Returns the value of the attribute, which may be null.

    Returns:
    :   the value of the attribute
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Returns the String representation of this Annotation.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   the `String` representation of this `Annotation`