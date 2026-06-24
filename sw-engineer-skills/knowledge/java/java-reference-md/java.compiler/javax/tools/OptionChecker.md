Module [java.compiler](../../module-summary.md)

Package [javax.tools](package-summary.md)

# Interface OptionChecker

All Known Subinterfaces:
:   `DocumentationTool`, `JavaCompiler`, `JavaFileManager`, `StandardJavaFileManager`

All Known Implementing Classes:
:   `ForwardingJavaFileManager`

---

public interface OptionChecker

Interface for recognizing options.

Since:
:   1.6

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `int`

  `isSupportedOption(String option)`

  Determines if the given option is supported and if so, the
  number of arguments the option takes.

* ## Method Details

  + ### isSupportedOption

    int isSupportedOption([String](../../../java.base/java/lang/String.md "class in java.lang") option)

    Determines if the given option is supported and if so, the
    number of arguments the option takes.

    Parameters:
    :   `option` - an option

    Returns:
    :   the number of arguments the given option takes or -1 if
        the option is not supported