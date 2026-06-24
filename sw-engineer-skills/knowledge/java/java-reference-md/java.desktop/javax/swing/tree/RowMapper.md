Module [java.desktop](../../../module-summary.md)

Package [javax.swing.tree](package-summary.md)

# Interface RowMapper

All Known Implementing Classes:
:   `AbstractLayoutCache`, `FixedHeightLayoutCache`, `VariableHeightLayoutCache`

---

public interface RowMapper

Defines the requirements for an object that translates paths in
the tree into display rows.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `int[]`

  `getRowsForPaths(TreePath[] path)`

  Returns the rows that the TreePath instances in `path`
  are being displayed at.

* ## Method Details

  + ### getRowsForPaths

    int[] getRowsForPaths([TreePath](TreePath.md "class in javax.swing.tree")[] path)

    Returns the rows that the TreePath instances in `path`
    are being displayed at. The receiver should return an array of
    the same length as that passed in, and if one of the TreePaths
    in `path` is not valid its entry in the array should
    be set to -1.

    Parameters:
    :   `path` - array of TreePath to parse

    Returns:
    :   the rows that the TreePath instances in `path` are
        being displayed at