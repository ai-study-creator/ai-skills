Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Interface ViewFactory

All Known Implementing Classes:
:   `BasicEditorPaneUI`, `BasicFormattedTextFieldUI`, `BasicPasswordFieldUI`, `BasicTextAreaUI`, `BasicTextFieldUI`, `BasicTextPaneUI`, `BasicTextUI`, `DefaultTextUI`, `HTMLEditorKit.HTMLFactory`, `MetalTextFieldUI`, `SynthEditorPaneUI`, `SynthFormattedTextFieldUI`, `SynthPasswordFieldUI`, `SynthTextAreaUI`, `SynthTextFieldUI`, `SynthTextPaneUI`

---

public interface ViewFactory

A factory to create a view of some portion of document subject.
This is intended to enable customization of how views get
mapped over a document model.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `View`

  `create(Element elem)`

  Creates a view from the given structural element of a
  document.

* ## Method Details

  + ### create

    [View](View.md "class in javax.swing.text") create([Element](Element.md "interface in javax.swing.text") elem)

    Creates a view from the given structural element of a
    document.

    Parameters:
    :   `elem` - the piece of the document to build a view of

    Returns:
    :   the view

    See Also:
    :   - [`View`](View.md "class in javax.swing.text")