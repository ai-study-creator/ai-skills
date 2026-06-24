# Hierarchy For Package javax.swing.tree

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")
  + javax.swing.tree.[AbstractLayoutCache](AbstractLayoutCache.md "class in javax.swing.tree") (implements javax.swing.tree.[RowMapper](RowMapper.md "interface in javax.swing.tree"))
    - javax.swing.tree.[FixedHeightLayoutCache](FixedHeightLayoutCache.md "class in javax.swing.tree")
    - javax.swing.tree.[VariableHeightLayoutCache](VariableHeightLayoutCache.md "class in javax.swing.tree")
  + javax.swing.tree.[AbstractLayoutCache.NodeDimensions](AbstractLayoutCache.NodeDimensions.md "class in javax.swing.tree")
  + java.awt.[Component](../../../java/awt/Component.md "class in java.awt") (implements java.awt.image.[ImageObserver](../../../java/awt/image/ImageObserver.md "interface in java.awt.image"), java.awt.[MenuContainer](../../../java/awt/MenuContainer.md "interface in java.awt"), java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.awt.[Container](../../../java/awt/Container.md "class in java.awt")
      * javax.swing.tree.[DefaultTreeCellEditor.EditorContainer](DefaultTreeCellEditor.EditorContainer.md "class in javax.swing.tree")
      * javax.swing.[JComponent](../JComponent.md "class in javax.swing") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
        + javax.swing.[JLabel](../JLabel.md "class in javax.swing") (implements javax.accessibility.[Accessible](../../accessibility/Accessible.md "interface in javax.accessibility"), javax.swing.[SwingConstants](../SwingConstants.md "interface in javax.swing"))
          - javax.swing.tree.[DefaultTreeCellRenderer](DefaultTreeCellRenderer.md "class in javax.swing.tree") (implements javax.swing.tree.[TreeCellRenderer](TreeCellRenderer.md "interface in javax.swing.tree"))
        + javax.swing.text.[JTextComponent](../text/JTextComponent.md "class in javax.swing.text") (implements javax.accessibility.[Accessible](../../accessibility/Accessible.md "interface in javax.accessibility"), javax.swing.[Scrollable](../Scrollable.md "interface in javax.swing"))
          - javax.swing.[JTextField](../JTextField.md "class in javax.swing") (implements javax.swing.[SwingConstants](../SwingConstants.md "interface in javax.swing"))
            * javax.swing.tree.[DefaultTreeCellEditor.DefaultTextField](DefaultTreeCellEditor.DefaultTextField.md "class in javax.swing.tree")
  + javax.swing.tree.[DefaultMutableTreeNode](DefaultMutableTreeNode.md "class in javax.swing.tree") (implements java.lang.[Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang"), javax.swing.tree.[MutableTreeNode](MutableTreeNode.md "interface in javax.swing.tree"), java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
  + javax.swing.tree.[DefaultTreeCellEditor](DefaultTreeCellEditor.md "class in javax.swing.tree") (implements java.awt.event.[ActionListener](../../../java/awt/event/ActionListener.md "interface in java.awt.event"), javax.swing.tree.[TreeCellEditor](TreeCellEditor.md "interface in javax.swing.tree"), javax.swing.event.[TreeSelectionListener](../event/TreeSelectionListener.md "interface in javax.swing.event"))
  + javax.swing.tree.[DefaultTreeModel](DefaultTreeModel.md "class in javax.swing.tree") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"), javax.swing.tree.[TreeModel](TreeModel.md "interface in javax.swing.tree"))
  + javax.swing.tree.[DefaultTreeSelectionModel](DefaultTreeSelectionModel.md "class in javax.swing.tree") (implements java.lang.[Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang"), java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"), javax.swing.tree.[TreeSelectionModel](TreeSelectionModel.md "interface in javax.swing.tree"))
  + java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")
      * javax.swing.tree.[ExpandVetoException](ExpandVetoException.md "class in javax.swing.tree")
  + javax.swing.tree.[TreePath](TreePath.md "class in javax.swing.tree") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))

## Interface Hierarchy

* javax.swing.[CellEditor](../CellEditor.md "interface in javax.swing")
  + javax.swing.tree.[TreeCellEditor](TreeCellEditor.md "interface in javax.swing.tree")
* javax.swing.tree.[RowMapper](RowMapper.md "interface in javax.swing.tree")
* javax.swing.tree.[TreeCellRenderer](TreeCellRenderer.md "interface in javax.swing.tree")
* javax.swing.tree.[TreeModel](TreeModel.md "interface in javax.swing.tree")
* javax.swing.tree.[TreeNode](TreeNode.md "interface in javax.swing.tree")
  + javax.swing.tree.[MutableTreeNode](MutableTreeNode.md "interface in javax.swing.tree")
* javax.swing.tree.[TreeSelectionModel](TreeSelectionModel.md "interface in javax.swing.tree")