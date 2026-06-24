# Module java.base

---

module java.base

Defines the foundational APIs of the Java SE Platform.

Providers:
:   The JDK implementation of this module provides an implementation of
    the jrt [file system provider](java/nio/file/spi/FileSystemProvider.md "class in java.nio.file.spi") to enumerate and read the class and resource
    files in a run-time image.
    The jrt file system can be created by calling
    [`FileSystems.getFileSystem(URI.create("jrt:/"))`](java/nio/file/FileSystems.md#getFileSystem(java.net.URI)).

Since:
:   9

* ## Packages

  Exports

  Package

  Description

  [java.io](java/io/package-summary.md)

  Provides for system input and output through data streams,
  serialization and the file system.

  [java.lang](java/lang/package-summary.md)

  Provides classes that are fundamental to the design of the Java
  programming language.

  [java.lang.annotation](java/lang/annotation/package-summary.md)

  Provides library support for the Java programming language
  annotation facility.

  [java.lang.constant](java/lang/constant/package-summary.md)

  Classes and interfaces to represent *nominal descriptors* for run-time
  entities such as classes or method handles, and classfile entities such as
  constant pool entries or `invokedynamic` call sites.

  [java.lang.foreign](java/lang/foreign/package-summary.md)

  Provides low-level access to memory and functions outside the Java runtime.

  [java.lang.invoke](java/lang/invoke/package-summary.md)

  The `java.lang.invoke` package provides low-level primitives for interacting
  with the Java Virtual Machine.

  [java.lang.module](java/lang/module/package-summary.md)

  Classes to support module descriptors and creating configurations of modules
  by means of resolution and service binding.

  [java.lang.ref](java/lang/ref/package-summary.md)

  Provides reference-object classes, which support a limited degree
  of interaction with the garbage collector.

  [java.lang.reflect](java/lang/reflect/package-summary.md)

  Provides classes and interfaces for obtaining reflective information about
  classes and objects.

  [java.lang.runtime](java/lang/runtime/package-summary.md)

  The `java.lang.runtime` package provides low-level runtime support
  for the Java language.

  [java.math](java/math/package-summary.md)

  Provides classes for performing arbitrary-precision integer
  arithmetic (`BigInteger`) and arbitrary-precision decimal
  arithmetic (`BigDecimal`).

  [java.net](java/net/package-summary.md)

  Provides the classes for implementing networking applications.

  [java.net.spi](java/net/spi/package-summary.md)

  Service-provider classes for the [`java.net`](java/net/package-summary.md) package.

  [java.nio](java/nio/package-summary.md)

  Defines buffers, which are containers for data, and provides an
  overview of the other NIO packages.

  [java.nio.channels](java/nio/channels/package-summary.md)

  Defines channels, which represent connections to entities that are capable of
  performing I/O operations, such as files and sockets; defines selectors, for
  multiplexed, non-blocking I/O operations.

  [java.nio.channels.spi](java/nio/channels/spi/package-summary.md)

  Service-provider classes for the [`java.nio.channels`](java/nio/channels/package-summary.md)
  package.

  [java.nio.charset](java/nio/charset/package-summary.md)

  Defines charsets, decoders, and encoders, for translating between
  bytes and Unicode characters.

  [java.nio.charset.spi](java/nio/charset/spi/package-summary.md)

  Service-provider classes for the [`java.nio.charset`](java/nio/charset/package-summary.md) package.

  [java.nio.file](java/nio/file/package-summary.md)

  Defines interfaces and classes for the Java virtual machine to access files,
  file attributes, and file systems.

  [java.nio.file.attribute](java/nio/file/attribute/package-summary.md)

  Interfaces and classes providing access to file and file system attributes.

  [java.nio.file.spi](java/nio/file/spi/package-summary.md)

  Service-provider classes for the [`java.nio.file`](java/nio/file/package-summary.md) package.

  [java.security](java/security/package-summary.md)

  Provides the classes and interfaces for the security framework.

  [java.security.cert](java/security/cert/package-summary.md)

  Provides classes and interfaces for parsing and managing
  certificates, certificate revocation lists (CRLs), and
  certification paths.

  [java.security.interfaces](java/security/interfaces/package-summary.md)

  Provides interfaces for generating RSA (Rivest, Shamir and
  Adleman AsymmetricCipher algorithm)
  keys as defined in the RSA Laboratory Technical Note
  PKCS#1, and DSA (Digital Signature
  Algorithm) keys as defined in NIST's FIPS-186.

  [java.security.spec](java/security/spec/package-summary.md)

  Provides classes and interfaces for key specifications and algorithm
  parameter specifications.

  [java.text](java/text/package-summary.md)

  Provides classes and interfaces for handling text, dates, numbers,
  and messages in a manner independent of natural languages.

  [java.text.spi](java/text/spi/package-summary.md)

  Service provider classes for the classes in the java.text package.

  [java.time](java/time/package-summary.md)

  The main API for dates, times, instants, and durations.

  [java.time.chrono](java/time/chrono/package-summary.md)

  Generic API for calendar systems other than the default ISO.

  [java.time.format](java/time/format/package-summary.md)

  Provides classes to print and parse dates and times.

  [java.time.temporal](java/time/temporal/package-summary.md)

  Access to date and time using fields and units, and date time adjusters.

  [java.time.zone](java/time/zone/package-summary.md)

  Support for time-zones and their rules.

  [java.util](java/util/package-summary.md)

  Contains the collections framework, some internationalization support classes,
  a service loader, properties, random number generation, string parsing
  and scanning classes, base64 encoding and decoding, a bit array, and
  several miscellaneous utility classes.

  [java.util.concurrent](java/util/concurrent/package-summary.md)

  Utility classes commonly useful in concurrent programming.

  [java.util.concurrent.atomic](java/util/concurrent/atomic/package-summary.md)

  A small toolkit of classes that support lock-free thread-safe
  programming on single variables.

  [java.util.concurrent.locks](java/util/concurrent/locks/package-summary.md)

  Interfaces and classes providing a framework for locking and waiting
  for conditions that is distinct from built-in synchronization and
  monitors.

  [java.util.function](java/util/function/package-summary.md)

  *Functional interfaces* provide target types for lambda expressions
  and method references.

  [java.util.jar](java/util/jar/package-summary.md)

  Provides classes for reading and writing the JAR (Java ARchive)
  file format, which is based on the standard ZIP file format with an
  optional manifest file.

  [java.util.random](java/util/random/package-summary.md)

  This package contains classes and interfaces that support a generic API
  for random number generation.

  [java.util.regex](java/util/regex/package-summary.md)

  Classes for matching character sequences against patterns specified
  by regular expressions.

  [java.util.spi](java/util/spi/package-summary.md)

  Service provider classes for the classes in the java.util package.

  [java.util.stream](java/util/stream/package-summary.md)

  Classes to support functional-style operations on streams of elements, such
  as map-reduce transformations on collections.

  [java.util.zip](java/util/zip/package-summary.md)

  Provides classes for reading and writing the standard ZIP and GZIP file
  formats.

  [javax.crypto](javax/crypto/package-summary.md)

  Provides the classes and interfaces for cryptographic
  operations.

  [javax.crypto.interfaces](javax/crypto/interfaces/package-summary.md)

  Provides interfaces for Diffie-Hellman keys as defined in RSA
  Laboratories' PKCS #3.

  [javax.crypto.spec](javax/crypto/spec/package-summary.md)

  Provides classes and interfaces for key specifications and
  algorithm parameter specifications.

  [javax.net](javax/net/package-summary.md)

  Provides classes for networking applications.

  [javax.net.ssl](javax/net/ssl/package-summary.md)

  Provides classes for the secure socket package.

  [javax.security.auth](javax/security/auth/package-summary.md)

  This package provides a framework for authentication and
  authorization.

  [javax.security.auth.callback](javax/security/auth/callback/package-summary.md)

  This package provides the classes necessary for services
  to interact with applications in order to retrieve
  information (authentication data including usernames
  or passwords, for example) or to display information
  (error and warning messages, for example).

  [javax.security.auth.login](javax/security/auth/login/package-summary.md)

  This package provides a pluggable authentication framework.

  [javax.security.auth.spi](javax/security/auth/spi/package-summary.md)

  This package provides the interface to be used for
  implementing pluggable authentication modules.

  [javax.security.auth.x500](javax/security/auth/x500/package-summary.md)

  This package contains the classes that should be used to store
  X500 Principal and X500 Private Credentials in a
  *Subject*.

  [javax.security.cert](javax/security/cert/package-summary.md)

  Provides classes for public key certificates.
* ## Services

  Provides

  Type

  Description

  [FileSystemProvider](java/nio/file/spi/FileSystemProvider.md "class in java.nio.file.spi")

  Service-provider class for file systems.

  Uses

  Type

  Description

  [AbstractChronology](java/time/chrono/AbstractChronology.md "class in java.time.chrono")

  An abstract implementation of a calendar system, used to organize and identify dates.

  [AsynchronousChannelProvider](java/nio/channels/spi/AsynchronousChannelProvider.md "class in java.nio.channels.spi")

  Service-provider class for asynchronous channels.

  [BreakIteratorProvider](java/text/spi/BreakIteratorProvider.md "class in java.text.spi")

  An abstract class for service providers that
  provide concrete implementations of the
  [`BreakIterator`](java/text/BreakIterator.md "class in java.text") class.

  [CalendarDataProvider](java/util/spi/CalendarDataProvider.md "class in java.util.spi")

  An abstract class for service providers that provide locale-dependent [`Calendar`](java/util/Calendar.md "class in java.util") parameters.

  [CalendarNameProvider](java/util/spi/CalendarNameProvider.md "class in java.util.spi")

  An abstract class for service providers that provide localized string
  representations (display names) of `Calendar` field values.

  [CharsetProvider](java/nio/charset/spi/CharsetProvider.md "class in java.nio.charset.spi")

  Charset service-provider class.

  [Chronology](java/time/chrono/Chronology.md "interface in java.time.chrono")

  A calendar system, used to organize and identify dates.

  [CollatorProvider](java/text/spi/CollatorProvider.md "class in java.text.spi")

  An abstract class for service providers that
  provide concrete implementations of the
  [`Collator`](java/text/Collator.md "class in java.text") class.

  [ContentHandlerFactory](java/net/ContentHandlerFactory.md "interface in java.net")

  This interface defines a factory for content handlers.

  [CurrencyNameProvider](java/util/spi/CurrencyNameProvider.md "class in java.util.spi")

  An abstract class for service providers that
  provide localized currency symbols and display names for the
  [`Currency`](java/util/Currency.md "class in java.util") class.

  [DateFormatProvider](java/text/spi/DateFormatProvider.md "class in java.text.spi")

  An abstract class for service providers that
  provide concrete implementations of the
  [`DateFormat`](java/text/DateFormat.md "class in java.text") class.

  [DateFormatSymbolsProvider](java/text/spi/DateFormatSymbolsProvider.md "class in java.text.spi")

  An abstract class for service providers that
  provide instances of the
  [`DateFormatSymbols`](java/text/DateFormatSymbols.md "class in java.text") class.

  [DecimalFormatSymbolsProvider](java/text/spi/DecimalFormatSymbolsProvider.md "class in java.text.spi")

  An abstract class for service providers that
  provide instances of the
  [`DecimalFormatSymbols`](java/text/DecimalFormatSymbols.md "class in java.text") class.

  [FileSystemProvider](java/nio/file/spi/FileSystemProvider.md "class in java.nio.file.spi")

  Service-provider class for file systems.

  [FileTypeDetector](java/nio/file/spi/FileTypeDetector.md "class in java.nio.file.spi")

  A file type detector for probing a file to guess its file type.

  [LocaleNameProvider](java/util/spi/LocaleNameProvider.md "class in java.util.spi")

  An abstract class for service providers that
  provide localized names for the
  [`Locale`](java/util/Locale.md "class in java.util") class.

  [LoginModule](javax/security/auth/spi/LoginModule.md "interface in javax.security.auth.spi")

  Service-provider interface for authentication technology providers.

  [NumberFormatProvider](java/text/spi/NumberFormatProvider.md "class in java.text.spi")

  An abstract class for service providers that
  provide concrete implementations of the
  [`NumberFormat`](java/text/NumberFormat.md "class in java.text") class.

  [Provider](java/security/Provider.md "class in java.security")

  This class represents a "provider" for the
  Java Security API, where a provider implements some or all parts of
  Java Security.

  [ResourceBundleControlProvider](java/util/spi/ResourceBundleControlProvider.md "interface in java.util.spi")

  An interface for service providers that provide implementations of [`ResourceBundle.Control`](java/util/ResourceBundle.Control.md "class in java.util").

  [ResourceBundleProvider](java/util/spi/ResourceBundleProvider.md "interface in java.util.spi")

  `ResourceBundleProvider` is a service provider interface for
  resource bundles.

  [SelectorProvider](java/nio/channels/spi/SelectorProvider.md "class in java.nio.channels.spi")

  Service-provider class for selectors and selectable channels.

  [System.LoggerFinder](java/lang/System.LoggerFinder.md "class in java.lang")

  The `LoggerFinder` service is responsible for creating, managing,
  and configuring loggers to the underlying framework it uses.

  [TimeZoneNameProvider](java/util/spi/TimeZoneNameProvider.md "class in java.util.spi")

  An abstract class for service providers that
  provide localized time zone names for the
  [`TimeZone`](java/util/TimeZone.md "class in java.util") class.

  [ToolProvider](java/util/spi/ToolProvider.md "interface in java.util.spi")

  An interface for command-line tools to provide a way to
  be invoked without necessarily starting a new VM.

  [URLStreamHandlerProvider](java/net/spi/URLStreamHandlerProvider.md "class in java.net.spi")

  URL stream handler service-provider class.

  [ZoneRulesProvider](java/time/zone/ZoneRulesProvider.md "class in java.time.zone")

  Provider of time-zone rules to the system.