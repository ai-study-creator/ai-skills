# External Specifications

All Specificationswww.iana.orgwww.iso.orgwww.rfc-editor.orgwww.unicode.orgwww.w3.orgLocal

Specification

Referenced In

[Character Sets](http://www.iana.org/assignments/character-sets)

* `class java.nio.charset.Charset`
* `java.nio.charset.Charset.isRegistered()`

[Date and Time Formats](https://www.w3.org/TR/NOTE-datetime)

* `class java.util.Formatter`
* `java.nio.file.attribute.FileTime.toString()`

[Extensible Markup Language (XML) 1.0 (Fifth Edition)](https://www.w3.org/TR/xml)

* `java.util.Properties.loadFromXML(InputStream)`
* `java.util.Properties.storeToXML(OutputStream, String, Charset)`
* `java.util.Properties.storeToXML(OutputStream, String, String)`

[HTML 4.01 Specification](https://www.w3.org/TR/html4)

* `class java.net.URLEncoder`
* `java.net.URLDecoder.decode(String, Charset)`
* `java.net.URLEncoder.encode(String, Charset)`

[ISO - ISO 4217 - Currency codes](http://www.iso.org/iso/home/standards/currency_codes.htm)

* `class java.util.Currency`

[JAR File Specification](../specs/jar/jar.md)

* `class java.util.jar.Attributes`
* `class java.util.jar.Attributes.Name`
* `class java.util.jar.Manifest`
* `package java.util.jar`

[Java Native Interface Specification](../specs/jni/index.md)

* `class java.lang.Runtime`
* `class java.lang.reflect.AccessibleObject`
* `java.lang.Runtime.load(String)`
* `java.lang.Runtime.loadLibrary(String)`
* `java.lang.System.load(String)`
* `java.lang.System.loadLibrary(String)`
* `java.lang.Thread.setName(String)`
* `java.lang.reflect.AccessibleObject.canAccess(Object)`
* `java.lang.reflect.AccessibleObject.setAccessible(boolean)`
* `java.lang.reflect.AccessibleObject.setAccessible(boolean)`
* `java.lang.reflect.AccessibleObject.setAccessible(boolean)`
* `java.lang.reflect.AccessibleObject.setAccessible(boolean)`
* `java.lang.reflect.AccessibleObject.trySetAccessible()`
* `package java.lang.foreign`

[Java Object Serialization Specification](../specs/serialization/index.md)

* `annotation interface java.io.Serial`
* `class java.io.ObjectInputStream`
* `class java.io.ObjectOutputStream`
* `class java.io.ObjectStreamClass`
* `class java.lang.Enum`
* `class java.lang.Record`
* `interface java.io.Serializable`
* `java.io.ObjectOutputStream.writeClassDescriptor(ObjectStreamClass)`
* `package java.io`

[RFC5646 2.1.1. Formatting of Language Tags](https://www.rfc-editor.org/rfc/rfc5646#section-2.1.1)

* `java.util.Locale.caseFoldLanguageTag(String)`

[RFC5646 2.1. Syntax](https://www.rfc-editor.org/rfc/rfc5646.html#section-2.1)

* `java.util.Locale.caseFoldLanguageTag(String)`

[RFC 790: Assigned numbers](https://www.rfc-editor.org/info/rfc790)

* `class java.net.Inet4Address`
* `class java.net.InetAddress`

[RFC 793: Transmission Control Protocol](https://www.rfc-editor.org/info/rfc793)

* `java.net.StandardSocketOptions.SO_REUSEADDR`

[RFC 822: STANDARD FOR THE FORMAT OF ARPA INTERNET TEXT MESSAGES](https://www.rfc-editor.org/info/rfc822)

* `class java.util.Formatter`

[RFC 919: Broadcasting Internet Datagrams](https://www.rfc-editor.org/info/rfc919)

* `java.net.StandardSocketOptions.SO_BROADCAST`

[RFC 1122: Requirements for Internet Hosts - Communication Layers](https://www.rfc-editor.org/info/rfc1122)

* `class java.net.IDN`
* `java.net.StandardSocketOptions.SO_KEEPALIVE`
* `java.net.StandardSocketOptions.TCP_NODELAY`

[RFC 1123: Requirements for Internet Hosts - Application and Support](https://www.rfc-editor.org/info/rfc1123)

* `class java.net.IDN`

[RFC 1323: TCP Extensions for High Performance](https://www.rfc-editor.org/info/rfc1323)

* `java.net.StandardSocketOptions.SO_RCVBUF`

[RFC 1349: Type of Service in the Internet Protocol Suite](https://www.rfc-editor.org/info/rfc1349)

* `java.net.StandardSocketOptions.IP_TOS`

[RFC 1918: Address Allocation for Private Internets](https://www.rfc-editor.org/info/rfc1918)

* `class java.net.Inet4Address`
* `class java.net.InetAddress`

[RFC 1950: ZLIB Compressed Data Format Specification version 3.3](https://www.rfc-editor.org/info/rfc1950)

* `package java.util.zip`

[RFC 1951: DEFLATE Compressed Data Format Specification version 1.3](https://www.rfc-editor.org/info/rfc1951)

* `package java.util.zip`

[RFC 1952: GZIP file format specification version 4.3](https://www.rfc-editor.org/info/rfc1952)

* `package java.util.zip`

[RFC 2045: Multipurpose Internet Mail Extensions (MIME) Part One: Format of Internet Message Bodies](https://www.rfc-editor.org/info/rfc2045)

* `class java.util.Base64`
* `java.nio.file.Files.probeContentType(Path)`
* `java.nio.file.spi.FileTypeDetector.probeContentType(Path)`

[RFC 2109: HTTP State Management Mechanism](https://www.rfc-editor.org/info/rfc2109)

* `class java.net.HttpCookie`

[RFC 2236: Internet Group Management Protocol, Version 2](https://www.rfc-editor.org/info/rfc2236)

* `interface java.nio.channels.MulticastChannel`

[RFC 2278: IANA Charset Registration Procedures](https://www.rfc-editor.org/info/rfc2278)

* `class java.nio.charset.Charset`
* `package java.nio.charset`

[RFC 2279: UTF-8, a transformation format of ISO 10646](https://www.rfc-editor.org/info/rfc2279)

* `class java.net.URI`
* `class java.nio.charset.Charset`

[RFC 2296: HTTP Remote Variant Selection Algorithm -- RVSA/1.0](https://www.rfc-editor.org/info/rfc2296)

* `class java.net.URLPermission`

[RFC 2365: Administratively Scoped IP Multicast](https://www.rfc-editor.org/info/rfc2365)

* `class java.net.Inet4Address`
* `class java.net.InetAddress`

[RFC 2373: IP Version 6 Addressing Architecture](https://www.rfc-editor.org/info/rfc2373)

* `class java.net.Inet6Address`
* `class java.net.InetAddress`
* `class java.net.URI`
* `java.net.InetAddress.getAllByName(String)`
* `java.net.InetAddress.getByName(String)`
* `java.net.URI.URI(String)`
* `java.net.URI.getHost()`
* `java.net.URL.URL(String, String, int, String)`

[RFC 2396: Uniform Resource Identifiers (URI): Generic Syntax](https://www.rfc-editor.org/info/rfc2396)

* `class java.net.URI`
* `class java.net.URL`
* `java.net.URI.URI(String)`
* `java.net.URI.URI(String, String, String, String, String)`
* `java.net.URI.URI(String, String, String, int, String, String, String)`
* `java.net.URI.normalize()`
* `java.net.URI.parseServerAuthority()`
* `java.net.URI.resolve(URI)`
* `java.net.URI.toString()`

[RFC 2474: Definition of the Differentiated Services Field (DS Field) in the IPv4 and IPv6 Headers](https://www.rfc-editor.org/info/rfc2474)

* `java.net.StandardSocketOptions.IP_TOS`

[RFC 2616: Hypertext Transfer Protocol -- HTTP/1.1](https://www.rfc-editor.org/info/rfc2616)

* `class java.net.ResponseCache`
* `class java.net.URLConnection`
* `java.util.Locale.LanguageRange.parse(String)`
* `java.util.Locale.LanguageRange.parse(String, Map<String, List<String>>)`

[RFC 2710: Multicast Listener Discovery (MLD) for IPv6](https://www.rfc-editor.org/info/rfc2710)

* `interface java.nio.channels.MulticastChannel`

[RFC 2732: Format for Literal IPv6 Addresses in URL's](https://www.rfc-editor.org/info/rfc2732)

* `class java.net.SocketPermission`
* `class java.net.URI`
* `class java.net.URL`
* `class java.net.URLPermission`
* `java.net.URI.URI(String)`
* `java.net.URL.URL(String, String, int, String)`

[RFC 2781: UTF-16, an encoding of ISO 10646](https://www.rfc-editor.org/info/rfc2781)

* `class java.nio.charset.Charset`

[RFC 2965: HTTP State Management Mechanism](https://www.rfc-editor.org/info/rfc2965)

* `class java.net.CookieHandler`
* `class java.net.CookieManager`
* `class java.net.HttpCookie`

[RFC 3330: Special-Use IPv4 Addresses](https://www.rfc-editor.org/info/rfc3330)

* `java.net.InetAddress.getAllByName(String)`
* `java.net.InetAddress.getByName(String)`

[RFC 3376: Internet Group Management Protocol, Version 3](https://www.rfc-editor.org/info/rfc3376)

* `interface java.nio.channels.MulticastChannel`

[RFC 3454: Preparation of Internationalized Strings ("stringprep")](https://www.rfc-editor.org/info/rfc3454)

* `class java.net.IDN`

[RFC 3490: Internationalizing Domain Names in Applications (IDNA)](https://www.rfc-editor.org/info/rfc3490)

* `class java.net.IDN`
* `java.net.IDN.toASCII(String)`
* `java.net.IDN.toASCII(String, int)`
* `java.net.IDN.toUnicode(String)`
* `java.net.IDN.toUnicode(String, int)`

[RFC 3491: Nameprep: A Stringprep Profile for Internationalized Domain Names (IDN)](https://www.rfc-editor.org/info/rfc3491)

* `class java.net.IDN`

[RFC 3492: Punycode: A Bootstring encoding of Unicode for Internationalized Domain Names in Applications (IDNA)](https://www.rfc-editor.org/info/rfc3492)

* `class java.net.IDN`

[RFC 3530: Network File System (NFS) version 4 Protocol](https://www.rfc-editor.org/info/rfc3530)

* `class java.nio.file.attribute.AclEntry`
* `interface java.nio.file.attribute.AclFileAttributeView`
* `java.nio.file.attribute.AclEntryPermission.READ_NAMED_ATTRS`
* `java.nio.file.attribute.AclEntryPermission.WRITE_NAMED_ATTRS`
* `package java.nio.file.attribute`

[RFC 3720: Internet Small Computer Systems Interface (iSCSI)](https://www.rfc-editor.org/info/rfc3720)

* `class java.util.zip.CRC32C`
* `package java.util.zip`

[RFC 3810: Multicast Listener Discovery Version 2 (MLDv2) for IPv6](https://www.rfc-editor.org/info/rfc3810)

* `interface java.nio.channels.MulticastChannel`

[RFC 3986: Uniform Resource Identifier (URI): Generic Syntax](https://www.rfc-editor.org/info/rfc3986)

* `class java.net.URI`
* `class java.net.URL`
* `interface javax.annotation.processing.Filer`
* `interface javax.tools.JavaFileManager`

[RFC 4122: A Universally Unique IDentifier (UUID) URN Namespace](https://www.rfc-editor.org/info/rfc4122)

* `class java.util.UUID`
* `java.util.UUID.variant()`

[RFC 4234: Augmented BNF for Syntax Specifications: ABNF](https://www.rfc-editor.org/info/rfc4234)

* `class java.util.Locale.LanguageRange`

[RFC 4647: Matching of Language Tags](https://www.rfc-editor.org/info/rfc4647)

* `class java.util.Locale`
* `class java.util.Locale.LanguageRange`
* `enum class java.util.Locale.FilteringMode`

[RFC 4648: The Base16, Base32, and Base64 Data Encodings](https://www.rfc-editor.org/info/rfc4648)

* `class java.util.Base64`

[RFC 5646: Tags for Identifying Languages](https://www.rfc-editor.org/info/rfc5646)

* `class java.util.Locale`

[Time Zone Database](https://www.iana.org/time-zones)

* `java.util.spi.TimeZoneNameProvider.getDisplayName(String, boolean, int, Locale)`

[Unicode 3.1.0](https://www.unicode.org/reports/tr27)

* `class java.lang.Character`

[Unicode Character Database](https://www.unicode.org/reports/tr44)

* `java.lang.Character.isUnicodeIdentifierPart(char)`
* `java.lang.Character.isUnicodeIdentifierPart(int)`
* `java.lang.Character.isUnicodeIdentifierStart(char)`
* `java.lang.Character.isUnicodeIdentifierStart(int)`

[Unicode Identifier and Pattern Syntax](https://www.unicode.org/reports/tr31)

* `java.lang.Character.isUnicodeIdentifierPart(char)`
* `java.lang.Character.isUnicodeIdentifierPart(int)`
* `java.lang.Character.isUnicodeIdentifierStart(char)`
* `java.lang.Character.isUnicodeIdentifierStart(int)`

[Unicode Locale Data Markup Language (LDML)](https://www.unicode.org/reports/tr35)

* `class java.text.CompactNumberFormat`
* `java.text.Collator.getInstance(Locale)`
* `java.text.CompactNumberFormat.CompactNumberFormat(String, DecimalFormatSymbols, String[], String)`
* `java.text.DateFormatSymbols.getMonths()`
* `java.text.DateFormatSymbols.getShortMonths()`
* `java.text.NumberFormat.getCurrencyInstance(Locale)`
* `java.time.format.DateTimeFormatter.ofLocalizedPattern(String)`
* `java.time.format.DateTimeFormatterBuilder.appendDayPeriodText(TextStyle)`
* `java.time.format.DateTimeFormatterBuilder.appendLocalized(String)`

[Unicode Normalization Forms](https://www.unicode.org/reports/tr15)

* `class java.text.Normalizer`
* `enum class java.text.Normalizer.Form`
* `java.text.Collator.CANONICAL_DECOMPOSITION`
* `java.text.Collator.FULL_DECOMPOSITION`

[Unicode Regular Expressions](https://www.unicode.org/reports/tr18)

* `class java.util.regex.Pattern`
* `java.util.regex.Pattern.UNICODE_CHARACTER_CLASS`

[Unicode Script Property](https://www.unicode.org/reports/tr24)

* `enum class java.lang.Character.UnicodeScript`

[Unicode Security Considerations](https://www.unicode.org/reports/tr36)

* `class java.net.IDN`

[XML Schema Part 2: Datatypes Second Edition](https://www.w3.org/TR/xmlschema-2)

* `java.nio.file.attribute.FileTime.toString()`