Module [java.naming](../../../module-summary.md)

Package [javax.naming.ldap](package-summary.md)

# Class SortKey

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.naming.ldap.SortKey

---

public class SortKey
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

A sort key and its associated sort parameters.
This class implements a sort key which is used by the LDAPv3
Control for server-side sorting of search results as defined in
[RFC 2891](http://www.ietf.org/rfc/rfc2891.txt).

Since:
:   1.5

See Also:
:   * [`SortControl`](SortControl.md "class in javax.naming.ldap")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SortKey(String attrID)`

  Creates the default sort key for an attribute.

  `SortKey(String attrID,
  boolean ascendingOrder,
  String matchingRuleID)`

  Creates a sort key for an attribute.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getAttributeID()`

  Retrieves the attribute ID of the sort key.

  `String`

  `getMatchingRuleID()`

  Retrieves the matching rule ID used to order the attribute values.

  `boolean`

  `isAscending()`

  Determines the sort order.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SortKey

    public SortKey([String](../../../../java.base/java/lang/String.md "class in java.lang") attrID)

    Creates the default sort key for an attribute. Entries will be sorted
    according to the specified attribute in ascending order using the
    ordering matching rule defined for use with that attribute.

    Parameters:
    :   `attrID` - The non-null ID of the attribute to be used as a sort
        key.
  + ### SortKey

    public SortKey([String](../../../../java.base/java/lang/String.md "class in java.lang") attrID,
    boolean ascendingOrder,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") matchingRuleID)

    Creates a sort key for an attribute. Entries will be sorted according to
    the specified attribute in the specified sort order and using the
    specified matching rule, if supplied.

    Parameters:
    :   `attrID` - The non-null ID of the attribute to be used as
        a sort key.
    :   `ascendingOrder` - If true then entries are arranged in ascending
        order. Otherwise there are arranged in
        descending order.
    :   `matchingRuleID` - The possibly null ID of the matching rule to
        use to order the attribute values. If not
        specified then the ordering matching rule
        defined for the sort key attribute is used.
* ## Method Details

  + ### getAttributeID

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getAttributeID()

    Retrieves the attribute ID of the sort key.

    Returns:
    :   The non-null Attribute ID of the sort key.
  + ### isAscending

    public boolean isAscending()

    Determines the sort order.

    Returns:
    :   true if the sort order is ascending, false if descending.
  + ### getMatchingRuleID

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getMatchingRuleID()

    Retrieves the matching rule ID used to order the attribute values.

    Returns:
    :   The possibly null matching rule ID. If null then the
        ordering matching rule defined for the sort key attribute
        is used.