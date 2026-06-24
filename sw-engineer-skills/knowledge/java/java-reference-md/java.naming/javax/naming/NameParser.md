Module [java.naming](../../module-summary.md)

Package [javax.naming](package-summary.md)

# Interface NameParser

---

public interface NameParser

This interface is used for parsing names from a hierarchical
namespace. The NameParser contains knowledge of the syntactic
information (like left-to-right orientation, name separator, etc.)
needed to parse names.
The equals() method, when used to compare two NameParsers, returns
true if and only if they serve the same namespace.

Since:
:   1.3

See Also:
:   * [`CompoundName`](CompoundName.md "class in javax.naming")
    * [`Name`](Name.md "interface in javax.naming")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Name`

  `parse(String name)`

  Parses a name into its components.

* ## Method Details

  + ### parse

    [Name](Name.md "interface in javax.naming") parse([String](../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [NamingException](NamingException.md "class in javax.naming")

    Parses a name into its components.

    Parameters:
    :   `name` - The non-null string name to parse.

    Returns:
    :   A non-null parsed form of the name using the naming convention
        of this parser.

    Throws:
    :   `InvalidNameException` - If name does not conform to
        syntax defined for the namespace.
    :   `NamingException` - If a naming exception was encountered.