# Hierarchy For Package java.util.jar

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../lang/Object.md "class in java.lang")
  + java.util.jar.[Attributes](Attributes.md "class in java.util.jar") (implements java.lang.[Cloneable](../../lang/Cloneable.md "interface in java.lang"), java.util.[Map](../Map.md "interface in java.util")<K,V>)
  + java.util.jar.[Attributes.Name](Attributes.Name.md "class in java.util.jar")
  + java.io.[InputStream](../../io/InputStream.md "class in java.io") (implements java.io.[Closeable](../../io/Closeable.md "interface in java.io"))
    - java.io.[FilterInputStream](../../io/FilterInputStream.md "class in java.io")
      * java.util.zip.[InflaterInputStream](../zip/InflaterInputStream.md "class in java.util.zip")
        + java.util.zip.[ZipInputStream](../zip/ZipInputStream.md "class in java.util.zip")
          - java.util.jar.[JarInputStream](JarInputStream.md "class in java.util.jar")
  + java.util.jar.[Manifest](Manifest.md "class in java.util.jar") (implements java.lang.[Cloneable](../../lang/Cloneable.md "interface in java.lang"))
  + java.io.[OutputStream](../../io/OutputStream.md "class in java.io") (implements java.io.[Closeable](../../io/Closeable.md "interface in java.io"), java.io.[Flushable](../../io/Flushable.md "interface in java.io"))
    - java.io.[FilterOutputStream](../../io/FilterOutputStream.md "class in java.io")
      * java.util.zip.[DeflaterOutputStream](../zip/DeflaterOutputStream.md "class in java.util.zip")
        + java.util.zip.[ZipOutputStream](../zip/ZipOutputStream.md "class in java.util.zip")
          - java.util.jar.[JarOutputStream](JarOutputStream.md "class in java.util.jar")
  + java.lang.[Throwable](../../lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../../lang/Exception.md "class in java.lang")
      * java.io.[IOException](../../io/IOException.md "class in java.io")
        + java.util.zip.[ZipException](../zip/ZipException.md "class in java.util.zip")
          - java.util.jar.[JarException](JarException.md "class in java.util.jar")
  + java.util.zip.[ZipEntry](../zip/ZipEntry.md "class in java.util.zip") (implements java.lang.[Cloneable](../../lang/Cloneable.md "interface in java.lang"))
    - java.util.jar.[JarEntry](JarEntry.md "class in java.util.jar")
  + java.util.zip.[ZipFile](../zip/ZipFile.md "class in java.util.zip") (implements java.io.[Closeable](../../io/Closeable.md "interface in java.io"))
    - java.util.jar.[JarFile](JarFile.md "class in java.util.jar")