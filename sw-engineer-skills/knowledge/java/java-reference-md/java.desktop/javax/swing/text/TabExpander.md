Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Interface TabExpander

All Known Implementing Classes:
:   `FieldView`, `ParagraphView`, `ParagraphView`, `PasswordView`, `PlainView`, `WrappedPlainView`

---

public interface TabExpander

Simple interface to allow for different types of
implementations of tab expansion.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `float`

  `nextTabStop(float x,
  int tabOffset)`

  Returns the next tab stop position given a reference
  position.

* ## Method Details

  + ### nextTabStop

    float nextTabStop(float x,
    int tabOffset)

    Returns the next tab stop position given a reference
    position. Values are expressed in points.

    Parameters:
    :   `x` - the position in points >= 0
    :   `tabOffset` - the position within the text stream
        that the tab occurred at >= 0.

    Returns:
    :   the next tab stop >= 0