Module [java.base](../../../module-summary.md)

# Package java.util.regex

---

package java.util.regex

Classes for matching character sequences against patterns specified
by regular expressions.

An instance of the [`Pattern`](Pattern.md "class in java.util.regex") class
represents a regular expression that is specified in string form in
a syntax similar to that used by Perl.

Instances of the [`Matcher`](Matcher.md "class in java.util.regex") class are used
to match character sequences against a given pattern. Input is
provided to matchers via the [`CharSequence`](../../lang/CharSequence.md "interface in java.lang")
interface in order to support matching against characters from a
wide variety of input sources.

Unless otherwise noted, passing a `null` argument to a
method in any class or interface in this package will cause a
[`NullPointerException`](../../lang/NullPointerException.md "class in java.lang") to be
thrown.

## Related Documentation

An excellent tutorial and overview of regular expressions is [*Mastering Regular
Expressions*, Jeffrey E. F. Friedl, O'Reilly and Associates,
1997.](http://www.oreilly.com/catalog/regex/)

Since:
:   1.4

* Related Packages

  Package

  Description

  [java.util](../package-summary.md)

  Contains the collections framework, some internationalization support classes,
  a service loader, properties, random number generation, string parsing
  and scanning classes, base64 encoding and decoding, a bit array, and
  several miscellaneous utility classes.
* All Classes and InterfacesInterfacesClassesException Classes

  Class

  Description

  [Matcher](Matcher.md "class in java.util.regex")

  An engine that performs match operations on a [character sequence](../../lang/CharSequence.md "interface in java.lang") by interpreting a [`Pattern`](Pattern.md "class in java.util.regex").

  [MatchResult](MatchResult.md "interface in java.util.regex")

  The result of a match operation.

  [Pattern](Pattern.md "class in java.util.regex")

  A compiled representation of a regular expression.

  [PatternSyntaxException](PatternSyntaxException.md "class in java.util.regex")

  Unchecked exception thrown to indicate a syntax error in a
  regular-expression pattern.