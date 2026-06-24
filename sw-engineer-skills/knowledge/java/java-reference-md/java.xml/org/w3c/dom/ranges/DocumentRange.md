Module [java.xml](../../../../module-summary.md)

Package [org.w3c.dom.ranges](package-summary.md)

# Interface DocumentRange

---

public interface DocumentRange

See also the [Document Object Model (DOM) Level 2 Traversal and Range Specification](http://www.w3.org/TR/2000/REC-DOM-Level-2-Traversal-Range-20001113).

Since:
:   9, DOM Level 2

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Range`

  `createRange()`

  This interface can be obtained from the object implementing the
  `Document` interface using binding-specific casting
  methods.

* ## Method Details

  + ### createRange

    [Range](Range.md "interface in org.w3c.dom.ranges") createRange()

    This interface can be obtained from the object implementing the
    `Document` interface using binding-specific casting
    methods.

    Returns:
    :   The initial state of the Range returned from this method is
        such that both of its boundary-points are positioned at the
        beginning of the corresponding Document, before any content. The
        Range returned can only be used to select content associated with
        this Document, or with DocumentFragments and Attrs for which this
        Document is the `ownerDocument`.