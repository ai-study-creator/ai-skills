Module [java.xml](../../../../module-summary.md)

Package [org.w3c.dom.views](package-summary.md)

# Interface DocumentView

---

public interface DocumentView

The `DocumentView` interface is implemented by
`Document` objects in DOM implementations supporting DOM
Views. It provides an attribute to retrieve the default view of a
document.

See also the [Document Object Model (DOM) Level 2 Views Specification](http://www.w3.org/TR/2000/REC-DOM-Level-2-Views-20001113).

Since:
:   1.8, DOM Level 2

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `AbstractView`

  `getDefaultView()`

  The default `AbstractView` for this `Document`,
  or `null` if none available.

* ## Method Details

  + ### getDefaultView

    [AbstractView](AbstractView.md "interface in org.w3c.dom.views") getDefaultView()

    The default `AbstractView` for this `Document`,
    or `null` if none available.