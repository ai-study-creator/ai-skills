# Hierarchy For Package java.nio.channels.spi

Package Hierarchies:

* [All Packages](../../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../lang/Object.md "class in java.lang")
  + java.nio.channels.spi.[AbstractInterruptibleChannel](AbstractInterruptibleChannel.md "class in java.nio.channels.spi") (implements java.nio.channels.[Channel](../Channel.md "interface in java.nio.channels"), java.nio.channels.[InterruptibleChannel](../InterruptibleChannel.md "interface in java.nio.channels"))
    - java.nio.channels.[SelectableChannel](../SelectableChannel.md "class in java.nio.channels") (implements java.nio.channels.[Channel](../Channel.md "interface in java.nio.channels"))
      * java.nio.channels.spi.[AbstractSelectableChannel](AbstractSelectableChannel.md "class in java.nio.channels.spi")
  + java.nio.channels.spi.[AsynchronousChannelProvider](AsynchronousChannelProvider.md "class in java.nio.channels.spi")
  + java.nio.channels.[SelectionKey](../SelectionKey.md "class in java.nio.channels")
    - java.nio.channels.spi.[AbstractSelectionKey](AbstractSelectionKey.md "class in java.nio.channels.spi")
  + java.nio.channels.[Selector](../Selector.md "class in java.nio.channels") (implements java.io.[Closeable](../../../io/Closeable.md "interface in java.io"))
    - java.nio.channels.spi.[AbstractSelector](AbstractSelector.md "class in java.nio.channels.spi")
  + java.nio.channels.spi.[SelectorProvider](SelectorProvider.md "class in java.nio.channels.spi")