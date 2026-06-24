Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Interface PolicyNode

---

public interface PolicyNode

An immutable valid policy tree node as defined by the PKIX certification
path validation algorithm.

One of the outputs of the PKIX certification path validation
algorithm is a valid policy tree, which includes the policies that
were determined to be valid, how this determination was reached,
and any policy qualifiers encountered. This tree is of depth
*n*, where *n* is the length of the certification
path that has been validated.

Most applications will not need to examine the valid policy tree.
They can achieve their policy processing goals by setting the
policy-related parameters in `PKIXParameters`. However,
the valid policy tree is available for more sophisticated applications,
especially those that process policy qualifiers.

[`PKIXCertPathValidatorResult.getPolicyTree`](PKIXCertPathValidatorResult.md#getPolicyTree()) returns the root node of the
valid policy tree. The tree can be traversed using the
[`getChildren`](#getChildren()) and [`getParent`](#getParent()) methods.
Data about a particular node can be retrieved using other methods of
`PolicyNode`.

**Concurrent Access**

All `PolicyNode` objects must be immutable and
thread-safe. Multiple threads may concurrently invoke the methods defined
in this class on a single `PolicyNode` object (or more than one)
with no ill effects. This stipulation applies to all public fields and
methods of this class and any added or overridden by subclasses.

Since:
:   1.4

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Iterator<? extends PolicyNode>`

  `getChildren()`

  Returns an iterator over the children of this node.

  `int`

  `getDepth()`

  Returns the depth of this node in the valid policy tree.

  `Set<String>`

  `getExpectedPolicies()`

  Returns the set of expected policies that would satisfy this
  node's valid policy in the next certificate to be processed.

  `PolicyNode`

  `getParent()`

  Returns the parent of this node, or `null` if this is the
  root node.

  `Set<? extends PolicyQualifierInfo>`

  `getPolicyQualifiers()`

  Returns the set of policy qualifiers associated with the
  valid policy represented by this node.

  `String`

  `getValidPolicy()`

  Returns the valid policy represented by this node.

  `boolean`

  `isCritical()`

  Returns the criticality indicator of the certificate policy extension
  in the most recently processed certificate.

* ## Method Details

  + ### getParent

    [PolicyNode](PolicyNode.md "interface in java.security.cert") getParent()

    Returns the parent of this node, or `null` if this is the
    root node.

    Returns:
    :   the parent of this node, or `null` if this is the
        root node
  + ### getChildren

    [Iterator](../../util/Iterator.md "interface in java.util")<? extends [PolicyNode](PolicyNode.md "interface in java.security.cert")> getChildren()

    Returns an iterator over the children of this node. Any attempts to
    modify the children of this node through the
    `Iterator`'s remove method must throw an
    `UnsupportedOperationException`.

    Returns:
    :   an iterator over the children of this node
  + ### getDepth

    int getDepth()

    Returns the depth of this node in the valid policy tree.

    Returns:
    :   the depth of this node (0 for the root node, 1 for its
        children, and so on)
  + ### getValidPolicy

    [String](../../lang/String.md "class in java.lang") getValidPolicy()

    Returns the valid policy represented by this node.

    Returns:
    :   the `String` OID of the valid policy
        represented by this node. For the root node, this method always returns
        the special anyPolicy OID: "2.5.29.32.0".
  + ### getPolicyQualifiers

    [Set](../../util/Set.md "interface in java.util")<? extends [PolicyQualifierInfo](PolicyQualifierInfo.md "class in java.security.cert")> getPolicyQualifiers()

    Returns the set of policy qualifiers associated with the
    valid policy represented by this node.

    Returns:
    :   an immutable `Set` of
        `PolicyQualifierInfo`s. For the root node, this
        is always an empty `Set`.
  + ### getExpectedPolicies

    [Set](../../util/Set.md "interface in java.util")<[String](../../lang/String.md "class in java.lang")> getExpectedPolicies()

    Returns the set of expected policies that would satisfy this
    node's valid policy in the next certificate to be processed.

    Returns:
    :   an immutable `Set` of expected policy
        `String` OIDs. For the root node, this method
        always returns a `Set` with one element, the
        special anyPolicy OID: "2.5.29.32.0".
  + ### isCritical

    boolean isCritical()

    Returns the criticality indicator of the certificate policy extension
    in the most recently processed certificate.

    Returns:
    :   `true` if extension marked critical,
        `false` otherwise. For the root node, `false`
        is always returned.