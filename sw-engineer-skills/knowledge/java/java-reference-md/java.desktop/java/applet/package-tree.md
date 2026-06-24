# Hierarchy For Package java.applet

Package Hierarchies:

* [All Packages](../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")
  + javax.accessibility.[AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility")
    - java.awt.[Component.AccessibleAWTComponent](../awt/Component.AccessibleAWTComponent.md "class in java.awt") (implements javax.accessibility.[AccessibleComponent](../../javax/accessibility/AccessibleComponent.md "interface in javax.accessibility"), java.io.[Serializable](../../../java.base/java/io/Serializable.md "interface in java.io"))
      * java.awt.[Container.AccessibleAWTContainer](../awt/Container.AccessibleAWTContainer.md "class in java.awt")
        + java.awt.[Panel.AccessibleAWTPanel](../awt/Panel.AccessibleAWTPanel.md "class in java.awt")
          - java.applet.[Applet.AccessibleApplet](Applet.AccessibleApplet.md "class in java.applet")
  + java.awt.[Component](../awt/Component.md "class in java.awt") (implements java.awt.image.[ImageObserver](../awt/image/ImageObserver.md "interface in java.awt.image"), java.awt.[MenuContainer](../awt/MenuContainer.md "interface in java.awt"), java.io.[Serializable](../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.awt.[Container](../awt/Container.md "class in java.awt")
      * java.awt.[Panel](../awt/Panel.md "class in java.awt") (implements javax.accessibility.[Accessible](../../javax/accessibility/Accessible.md "interface in javax.accessibility"))
        + java.applet.[Applet](Applet.md "class in java.applet")

## Interface Hierarchy

* java.applet.[AppletContext](AppletContext.md "interface in java.applet")
* java.applet.[AppletStub](AppletStub.md "interface in java.applet")
* java.applet.[AudioClip](AudioClip.md "interface in java.applet")