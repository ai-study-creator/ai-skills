# Hierarchy For Package java.beans

Package Hierarchies:

* [All Packages](../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")
  + java.beans.[Beans](Beans.md "class in java.beans")
  + java.beans.[Encoder](Encoder.md "class in java.beans")
    - java.beans.[XMLEncoder](XMLEncoder.md "class in java.beans") (implements java.lang.[AutoCloseable](../../../java.base/java/lang/AutoCloseable.md "interface in java.lang"))
  + java.beans.[EventHandler](EventHandler.md "class in java.beans") (implements java.lang.reflect.[InvocationHandler](../../../java.base/java/lang/reflect/InvocationHandler.md "interface in java.lang.reflect"))
  + java.util.[EventListenerProxy](../../../java.base/java/util/EventListenerProxy.md "class in java.util")<T> (implements java.util.[EventListener](../../../java.base/java/util/EventListener.md "interface in java.util"))
    - java.beans.[PropertyChangeListenerProxy](PropertyChangeListenerProxy.md "class in java.beans") (implements java.beans.[PropertyChangeListener](PropertyChangeListener.md "interface in java.beans"))
    - java.beans.[VetoableChangeListenerProxy](VetoableChangeListenerProxy.md "class in java.beans") (implements java.beans.[VetoableChangeListener](VetoableChangeListener.md "interface in java.beans"))
  + java.util.[EventObject](../../../java.base/java/util/EventObject.md "class in java.util") (implements java.io.[Serializable](../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.beans.[PropertyChangeEvent](PropertyChangeEvent.md "class in java.beans")
      * java.beans.[IndexedPropertyChangeEvent](IndexedPropertyChangeEvent.md "class in java.beans")
  + java.beans.[FeatureDescriptor](FeatureDescriptor.md "class in java.beans")
    - java.beans.[BeanDescriptor](BeanDescriptor.md "class in java.beans")
    - java.beans.[EventSetDescriptor](EventSetDescriptor.md "class in java.beans")
    - java.beans.[MethodDescriptor](MethodDescriptor.md "class in java.beans")
    - java.beans.[ParameterDescriptor](ParameterDescriptor.md "class in java.beans")
    - java.beans.[PropertyDescriptor](PropertyDescriptor.md "class in java.beans")
      * java.beans.[IndexedPropertyDescriptor](IndexedPropertyDescriptor.md "class in java.beans")
  + java.beans.[Introspector](Introspector.md "class in java.beans")
  + java.beans.[PersistenceDelegate](PersistenceDelegate.md "class in java.beans")
    - java.beans.[DefaultPersistenceDelegate](DefaultPersistenceDelegate.md "class in java.beans")
  + java.beans.[PropertyChangeSupport](PropertyChangeSupport.md "class in java.beans") (implements java.io.[Serializable](../../../java.base/java/io/Serializable.md "interface in java.io"))
  + java.beans.[PropertyEditorManager](PropertyEditorManager.md "class in java.beans")
  + java.beans.[PropertyEditorSupport](PropertyEditorSupport.md "class in java.beans") (implements java.beans.[PropertyEditor](PropertyEditor.md "interface in java.beans"))
  + java.beans.[SimpleBeanInfo](SimpleBeanInfo.md "class in java.beans") (implements java.beans.[BeanInfo](BeanInfo.md "interface in java.beans"))
  + java.beans.[Statement](Statement.md "class in java.beans")
    - java.beans.[Expression](Expression.md "class in java.beans")
  + java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../../../java.base/java/lang/Exception.md "class in java.lang")
      * java.beans.[IntrospectionException](IntrospectionException.md "class in java.beans")
      * java.beans.[PropertyVetoException](PropertyVetoException.md "class in java.beans")
  + java.beans.[VetoableChangeSupport](VetoableChangeSupport.md "class in java.beans") (implements java.io.[Serializable](../../../java.base/java/io/Serializable.md "interface in java.io"))
  + java.beans.[XMLDecoder](XMLDecoder.md "class in java.beans") (implements java.lang.[AutoCloseable](../../../java.base/java/lang/AutoCloseable.md "interface in java.lang"))

## Interface Hierarchy

* java.beans.[AppletInitializer](AppletInitializer.md "interface in java.beans")
* java.beans.[BeanInfo](BeanInfo.md "interface in java.beans")
* java.beans.[Customizer](Customizer.md "interface in java.beans")
* java.beans.[DesignMode](DesignMode.md "interface in java.beans")
* java.util.[EventListener](../../../java.base/java/util/EventListener.md "interface in java.util")
  + java.beans.[PropertyChangeListener](PropertyChangeListener.md "interface in java.beans")
  + java.beans.[VetoableChangeListener](VetoableChangeListener.md "interface in java.beans")
* java.beans.[ExceptionListener](ExceptionListener.md "interface in java.beans")
* java.beans.[PropertyEditor](PropertyEditor.md "interface in java.beans")
* java.beans.[Visibility](Visibility.md "interface in java.beans")

## Annotation Interface Hierarchy

* java.beans.[BeanProperty](BeanProperty.md "annotation interface in java.beans") (implements java.lang.annotation.[Annotation](../../../java.base/java/lang/annotation/Annotation.md "interface in java.lang.annotation"))
* java.beans.[ConstructorProperties](ConstructorProperties.md "annotation interface in java.beans") (implements java.lang.annotation.[Annotation](../../../java.base/java/lang/annotation/Annotation.md "interface in java.lang.annotation"))
* java.beans.[JavaBean](JavaBean.md "annotation interface in java.beans") (implements java.lang.annotation.[Annotation](../../../java.base/java/lang/annotation/Annotation.md "interface in java.lang.annotation"))
* java.beans.[Transient](Transient.md "annotation interface in java.beans") (implements java.lang.annotation.[Annotation](../../../java.base/java/lang/annotation/Annotation.md "interface in java.lang.annotation"))