Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Interface AutoCloseable

All Known Subinterfaces:
:   `ArenaPREVIEW`, `AsynchronousByteChannel`, `AsynchronousChannel`, `BaseStream<T,S>`, `ByteChannel`, `CachedRowSet`, `CallableStatement`, `Channel`, `Clip`, `Closeable`, `Connection`, `DataLine`, `DirectoryStream<T>`, `DoubleStream`, `ExecutorService`, `FilteredRowSet`, `GatheringByteChannel`, `ImageInputStream`, `ImageOutputStream`, `InterruptibleChannel`, `IntStream`, `JavaFileManager`, `JdbcRowSet`, `JMXConnector`, `JoinRowSet`, `Line`, `LongStream`, `MidiDevice`, `MidiDeviceReceiver`, `MidiDeviceTransmitter`, `Mixer`, `ModuleReader`, `MulticastChannel`, `NetworkChannel`, `ObjectInput`, `ObjectOutput`, `Port`, `PreparedStatement`, `ReadableByteChannel`, `Receiver`, `ResultSet`, `RMIConnection`, `RowSet`, `ScatteringByteChannel`, `ScheduledExecutorService`, `SecureDirectoryStream<T>`, `SeekableByteChannel`, `Sequencer`, `SourceDataLine`, `StandardJavaFileManager`, `Statement`, `Stream<T>`, `SyncResolver`, `Synthesizer`, `TargetDataLine`, `Transmitter`, `WatchService`, `WebRowSet`, `WritableByteChannel`

All Known Implementing Classes:
:   `AbstractExecutorService`, `AbstractInterruptibleChannel`, `AbstractSelectableChannel`, `AbstractSelector`, `AsynchronousFileChannel`, `AsynchronousServerSocketChannel`, `AsynchronousSocketChannel`, `AudioInputStream`, `BufferedInputStream`, `BufferedOutputStream`, `BufferedReader`, `BufferedWriter`, `ByteArrayInputStream`, `ByteArrayOutputStream`, `CharArrayReader`, `CharArrayWriter`, `CheckedInputStream`, `CheckedOutputStream`, `CipherInputStream`, `CipherOutputStream`, `DatagramChannel`, `DatagramSocket`, `DataInputStream`, `DataOutputStream`, `DeflaterInputStream`, `DeflaterOutputStream`, `DigestInputStream`, `DigestOutputStream`, `FileCacheImageInputStream`, `FileCacheImageOutputStream`, `FileChannel`, `FileImageInputStream`, `FileImageOutputStream`, `FileInputStream`, `FileLock`, `FileOutputStream`, `FileReader`, `FileSystem`, `FileWriter`, `FilterInputStream`, `FilterOutputStream`, `FilterReader`, `FilterWriter`, `ForkJoinPool`, `Formatter`, `ForwardingJavaFileManager`, `GZIPInputStream`, `GZIPOutputStream`, `HttpClient`, `ImageInputStreamImpl`, `ImageOutputStreamImpl`, `InflaterInputStream`, `InflaterOutputStream`, `InputStream`, `InputStreamReader`, `JarFile`, `JarInputStream`, `JarOutputStream`, `LineNumberInputStream`, `LineNumberReader`, `LogStream`, `MemoryCacheImageInputStream`, `MemoryCacheImageOutputStream`, `MLet`, `MulticastSocket`, `ObjectInputStream`, `ObjectOutputStream`, `OutputStream`, `OutputStreamWriter`, `Pipe.SinkChannel`, `Pipe.SourceChannel`, `PipedInputStream`, `PipedOutputStream`, `PipedReader`, `PipedWriter`, `PrintStream`, `PrintWriter`, `PrivateMLet`, `ProgressMonitorInputStream`, `PushbackInputStream`, `PushbackReader`, `RandomAccessFile`, `Reader`, `RMIConnectionImpl`, `RMIConnectionImpl_Stub`, `RMIConnector`, `RMIJRMPServerImpl`, `RMIServerImpl`, `Scanner`, `ScheduledThreadPoolExecutor`, `SelectableChannel`, `Selector`, `SequenceInputStream`, `ServerSocket`, `ServerSocketChannel`, `Socket`, `SocketChannel`, `SSLServerSocket`, `SSLSocket`, `StringBufferInputStream`, `StringReader`, `StringWriter`, `StructuredTaskScopePREVIEW`, `StructuredTaskScope.ShutdownOnFailurePREVIEW`, `StructuredTaskScope.ShutdownOnSuccessPREVIEW`, `SubmissionPublisher`, `ThreadPoolExecutor`, `URLClassLoader`, `Writer`, `XMLDecoder`, `XMLEncoder`, `ZipFile`, `ZipInputStream`, `ZipOutputStream`

---

public interface AutoCloseable

An object that may hold resources (such as file or socket handles)
until it is closed. The [`close()`](#close()) method of an `AutoCloseable`
object is called automatically when exiting a `try`-with-resources block for which the object has been declared in
the resource specification header. This construction ensures prompt
release, avoiding resource exhaustion exceptions and errors that
may otherwise occur.

Since:
:   1.7

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `close()`

  Closes this resource, relinquishing any underlying resources.

* ## Method Details

  + ### close

    void close()
    throws [Exception](Exception.md "class in java.lang")

    Closes this resource, relinquishing any underlying resources.
    This method is invoked automatically on objects managed by the
    `try`-with-resources statement.

    Throws:
    :   `Exception` - if this resource cannot be closed