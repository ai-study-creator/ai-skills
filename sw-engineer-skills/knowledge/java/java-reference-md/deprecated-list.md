# Deprecated API

## Contents

* [Terminally Deprecated](#for-removal)
* [Interfaces](#interface)
* [Classes](#class)
* [Exception Classes](#exception-class)
* [Fields](#field)
* [Methods](#method)
* [Constructors](#constructor)

* Terminally Deprecated Elements

  Element

  Description

  [java.applet.Applet](java.desktop/java/applet/Applet.md "class in java.applet")

  The Applet API is deprecated, no replacement.

  [java.applet.AppletContext](java.desktop/java/applet/AppletContext.md "interface in java.applet")

  The Applet API is deprecated, no replacement.

  [java.applet.AppletStub](java.desktop/java/applet/AppletStub.md "interface in java.applet")

  The Applet API is deprecated, no replacement.

  [java.applet.AudioClip](java.desktop/java/applet/AudioClip.md "interface in java.applet")

  The Applet API is deprecated, no replacement.

  [java.awt.Graphics.finalize()](java.desktop/java/awt/Graphics.md#finalize())

  Finalization has been deprecated for removal. See
  [`Object.finalize()`](java.base/java/lang/Object.md#finalize()) for background information and details
  about migration options.

  [java.awt.PrintJob.finalize()](java.desktop/java/awt/PrintJob.md#finalize())

  Finalization has been deprecated for removal. See
  [`Object.finalize()`](java.base/java/lang/Object.md#finalize()) for background information and details
  about migration options.

  [java.beans.AppletInitializer](java.desktop/java/beans/AppletInitializer.md "interface in java.beans")

  The Applet API is deprecated. See the
   [java.applet package
  documentation](./java.desktop/java/beans/../applet/package-summary.md) for further information.

  [java.beans.Beans.instantiate(ClassLoader, String, BeanContext, AppletInitializer)](java.desktop/java/beans/Beans.md#instantiate(java.lang.ClassLoader,java.lang.String,java.beans.beancontext.BeanContext,java.beans.AppletInitializer))

  It is recommended to use
  [`Beans.instantiate(ClassLoader, String, BeanContext)`](java.desktop/java/beans/Beans.md#instantiate(java.lang.ClassLoader,java.lang.String,java.beans.beancontext.BeanContext)),
  because the Applet API is deprecated. See the
   [java.applet package
  documentation](./java.desktop/java/beans/../../java/applet/package-summary.md) for further information.

  [java.lang.Boolean(boolean)](java.base/java/lang/Boolean.md#%3Cinit%3E(boolean))

  It is rarely appropriate to use this constructor. The static factory
  [`Boolean.valueOf(boolean)`](java.base/java/lang/Boolean.md#valueOf(boolean)) is generally a better choice, as it is
  likely to yield significantly better space and time performance.
  Also consider using the final fields [`Boolean.TRUE`](java.base/java/lang/Boolean.md#TRUE) and [`Boolean.FALSE`](java.base/java/lang/Boolean.md#FALSE)
  if possible.

  [java.lang.Boolean(String)](java.base/java/lang/Boolean.md#%3Cinit%3E(java.lang.String))

  It is rarely appropriate to use this constructor.
  Use [`Boolean.parseBoolean(String)`](java.base/java/lang/Boolean.md#parseBoolean(java.lang.String)) to convert a string to a
  `boolean` primitive, or use [`Boolean.valueOf(String)`](java.base/java/lang/Boolean.md#valueOf(java.lang.String))
  to convert a string to a `Boolean` object.

  [java.lang.Byte(byte)](java.base/java/lang/Byte.md#%3Cinit%3E(byte))

  It is rarely appropriate to use this constructor. The static factory
  [`Byte.valueOf(byte)`](java.base/java/lang/Byte.md#valueOf(byte)) is generally a better choice, as it is
  likely to yield significantly better space and time performance.

  [java.lang.Byte(String)](java.base/java/lang/Byte.md#%3Cinit%3E(java.lang.String))

  It is rarely appropriate to use this constructor.
  Use [`Byte.parseByte(String)`](java.base/java/lang/Byte.md#parseByte(java.lang.String)) to convert a string to a
  `byte` primitive, or use [`Byte.valueOf(String)`](java.base/java/lang/Byte.md#valueOf(java.lang.String))
  to convert a string to a `Byte` object.

  [java.lang.Character(char)](java.base/java/lang/Character.md#%3Cinit%3E(char))

  It is rarely appropriate to use this constructor. The static factory
  [`Character.valueOf(char)`](java.base/java/lang/Character.md#valueOf(char)) is generally a better choice, as it is
  likely to yield significantly better space and time performance.

  [java.lang.Double(double)](java.base/java/lang/Double.md#%3Cinit%3E(double))

  It is rarely appropriate to use this constructor. The static factory
  [`Double.valueOf(double)`](java.base/java/lang/Double.md#valueOf(double)) is generally a better choice, as it is
  likely to yield significantly better space and time performance.

  [java.lang.Double(String)](java.base/java/lang/Double.md#%3Cinit%3E(java.lang.String))

  It is rarely appropriate to use this constructor.
  Use [`Double.parseDouble(String)`](java.base/java/lang/Double.md#parseDouble(java.lang.String)) to convert a string to a
  `double` primitive, or use [`Double.valueOf(String)`](java.base/java/lang/Double.md#valueOf(java.lang.String))
  to convert a string to a `Double` object.

  [java.lang.Enum.finalize()](java.base/java/lang/Enum.md#finalize())

  Finalization has been deprecated for removal. See
  [`Object.finalize()`](java.base/java/lang/Object.md#finalize()) for background information and details
  about migration options.

  [java.lang.Float(double)](java.base/java/lang/Float.md#%3Cinit%3E(double))

  It is rarely appropriate to use this constructor. Instead, use the
  static factory method [`Float.valueOf(float)`](java.base/java/lang/Float.md#valueOf(float)) method as follows:
  `Float.valueOf((float)value)`.

  [java.lang.Float(float)](java.base/java/lang/Float.md#%3Cinit%3E(float))

  It is rarely appropriate to use this constructor. The static factory
  [`Float.valueOf(float)`](java.base/java/lang/Float.md#valueOf(float)) is generally a better choice, as it is
  likely to yield significantly better space and time performance.

  [java.lang.Float(String)](java.base/java/lang/Float.md#%3Cinit%3E(java.lang.String))

  It is rarely appropriate to use this constructor.
  Use [`Float.parseFloat(String)`](java.base/java/lang/Float.md#parseFloat(java.lang.String)) to convert a string to a
  `float` primitive, or use [`Float.valueOf(String)`](java.base/java/lang/Float.md#valueOf(java.lang.String))
  to convert a string to a `Float` object.

  [java.lang.Integer(int)](java.base/java/lang/Integer.md#%3Cinit%3E(int))

  It is rarely appropriate to use this constructor. The static factory
  [`Integer.valueOf(int)`](java.base/java/lang/Integer.md#valueOf(int)) is generally a better choice, as it is
  likely to yield significantly better space and time performance.

  [java.lang.Integer(String)](java.base/java/lang/Integer.md#%3Cinit%3E(java.lang.String))

  It is rarely appropriate to use this constructor.
  Use [`Integer.parseInt(String)`](java.base/java/lang/Integer.md#parseInt(java.lang.String)) to convert a string to a
  `int` primitive, or use [`Integer.valueOf(String)`](java.base/java/lang/Integer.md#valueOf(java.lang.String))
  to convert a string to an `Integer` object.

  [java.lang.Long(long)](java.base/java/lang/Long.md#%3Cinit%3E(long))

  It is rarely appropriate to use this constructor. The static factory
  [`Long.valueOf(long)`](java.base/java/lang/Long.md#valueOf(long)) is generally a better choice, as it is
  likely to yield significantly better space and time performance.

  [java.lang.Long(String)](java.base/java/lang/Long.md#%3Cinit%3E(java.lang.String))

  It is rarely appropriate to use this constructor.
  Use [`Long.parseLong(String)`](java.base/java/lang/Long.md#parseLong(java.lang.String)) to convert a string to a
  `long` primitive, or use [`Long.valueOf(String)`](java.base/java/lang/Long.md#valueOf(java.lang.String))
  to convert a string to a `Long` object.

  [java.lang.Object.finalize()](java.base/java/lang/Object.md#finalize())

  Finalization is deprecated and subject to removal in a future
  release. The use of finalization can lead to problems with security,
  performance, and reliability.
  See [JEP 421](https://openjdk.org/jeps/421) for
  discussion and alternatives.

  Subclasses that override `finalize` to perform cleanup should use
  alternative cleanup mechanisms and remove the `finalize` method.
  Use [`Cleaner`](java.base/java/lang/ref/Cleaner.md "class in java.lang.ref") and
  [`PhantomReference`](java.base/java/lang/ref/PhantomReference.md "class in java.lang.ref") as safer ways to release resources
  when an object becomes unreachable. Alternatively, add a `close`
  method to explicitly release resources, and implement
  `AutoCloseable` to enable use of the `try`-with-resources
  statement.

  This method will remain in place until finalizers have been removed from
  most existing code.

  [java.lang.Runtime.runFinalization()](java.base/java/lang/Runtime.md#runFinalization())

  Finalization has been deprecated for removal. See
  [`Object.finalize()`](java.base/java/lang/Object.md#finalize()) for background information and details
  about migration options.

  When running in a JVM in which finalization has been disabled or removed,
  no objects will be pending finalization, so this method does nothing.

  [java.lang.SecurityManager](java.base/java/lang/SecurityManager.md "class in java.lang")

  The Security Manager is deprecated and subject to removal in a
  future release. There is no replacement for the Security Manager.
  See [JEP 411](https://openjdk.org/jeps/411) for
  discussion and alternatives.

  [java.lang.SecurityManager.checkMulticast(InetAddress, byte)](java.base/java/lang/SecurityManager.md#checkMulticast(java.net.InetAddress,byte))

  [java.lang.Short(short)](java.base/java/lang/Short.md#%3Cinit%3E(short))

  It is rarely appropriate to use this constructor. The static factory
  [`Short.valueOf(short)`](java.base/java/lang/Short.md#valueOf(short)) is generally a better choice, as it is
  likely to yield significantly better space and time performance.

  [java.lang.Short(String)](java.base/java/lang/Short.md#%3Cinit%3E(java.lang.String))

  It is rarely appropriate to use this constructor.
  Use [`Short.parseShort(String)`](java.base/java/lang/Short.md#parseShort(java.lang.String)) to convert a string to a
  `short` primitive, or use [`Short.valueOf(String)`](java.base/java/lang/Short.md#valueOf(java.lang.String))
  to convert a string to a `Short` object.

  [java.lang.System.getSecurityManager()](java.base/java/lang/System.md#getSecurityManager())

  This method is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is
  deprecated and subject to removal in a future release.
  Consequently, this method is also deprecated and subject to
  removal. There is no replacement for the Security Manager or this
  method.

  [java.lang.System.runFinalization()](java.base/java/lang/System.md#runFinalization())

  Finalization has been deprecated for removal. See
  [`Object.finalize()`](java.base/java/lang/Object.md#finalize()) for background information and details
  about migration options.

  When running in a JVM in which finalization has been disabled or removed,
  no objects will be pending finalization, so this method does nothing.

  [java.lang.System.setSecurityManager(SecurityManager)](java.base/java/lang/System.md#setSecurityManager(java.lang.SecurityManager))

  This method is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is
  deprecated and subject to removal in a future release.
  Consequently, this method is also deprecated and subject to
  removal. There is no replacement for the Security Manager or this
  method.

  [java.lang.Thread.checkAccess()](java.base/java/lang/Thread.md#checkAccess())

  This method is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is
  deprecated and subject to removal in a future release.
  Consequently, this method is also deprecated and subject to
  removal. There is no replacement for the Security Manager or this
  method.

  [java.lang.Thread.countStackFrames()](java.base/java/lang/Thread.md#countStackFrames())

  This method was originally designed to count the number of
  stack frames but the results were never well-defined and it
  depended on thread-suspension.
  This method is subject to removal in a future version of Java SE.

  [java.lang.Thread.resume()](java.base/java/lang/Thread.md#resume())

  This method was originally specified to resume a thread
  suspended with [`Thread.suspend()`](java.base/java/lang/Thread.md#suspend()). Suspending a thread was
  inherently deadlock-prone.
  For more information, see
  [Why
  are Thread.stop, Thread.suspend and Thread.resume Deprecated?](./java.base/java/lang/doc-files/threadPrimitiveDeprecation.md).

  [java.lang.Thread.stop()](java.base/java/lang/Thread.md#stop())

  This method was originally specified to "stop" a victim
  thread by causing the victim thread to throw a [`ThreadDeath`](java.base/java/lang/ThreadDeath.md "class in java.lang").
  It was inherently unsafe. Stopping a thread caused it to unlock
  all of the monitors that it had locked (as a natural consequence
  of the `ThreadDeath` exception propagating up the stack). If
  any of the objects previously protected by these monitors were in
  an inconsistent state, the damaged objects became visible to
  other threads, potentially resulting in arbitrary behavior.
  Usages of `stop` should be replaced by code that simply
  modifies some variable to indicate that the target thread should
  stop running. The target thread should check this variable
  regularly, and return from its run method in an orderly fashion
  if the variable indicates that it is to stop running. If the
  target thread waits for long periods (on a condition variable,
  for example), the `interrupt` method should be used to
  interrupt the wait.
  For more information, see
  [Why
  are Thread.stop, Thread.suspend and Thread.resume Deprecated?](./java.base/java/lang/doc-files/threadPrimitiveDeprecation.md).

  [java.lang.Thread.suspend()](java.base/java/lang/Thread.md#suspend())

  This method was originally specified to suspend a thread.
  It was inherently deadlock-prone. If the target thread held a lock on
  a monitor protecting a critical system resource when it was suspended,
  no thread could access the resource until the target thread was resumed.
  If the thread intending to resume the target thread attempted to lock
  the monitor prior to calling `resume`, deadlock would result.
  Such deadlocks typically manifested themselves as "frozen" processes.
  For more information, see
  [Why
  are Thread.stop, Thread.suspend and Thread.resume Deprecated?](./java.base/java/lang/doc-files/threadPrimitiveDeprecation.md).

  [java.lang.ThreadDeath](java.base/java/lang/ThreadDeath.md "class in java.lang")

  [`Thread.stop()`](java.base/java/lang/Thread.md#stop()) was originally specified to "stop" a victim
  thread by causing the victim thread to throw a `ThreadDeath`. It
  was inherently unsafe and deprecated in an early JDK release. The ability
  to "stop" a thread with `Thread.stop` has been removed and the
  `Thread.stop` method changed to throw an exception. Consequently,
  `ThreadDeath` is also deprecated, for removal.

  [java.lang.ThreadGroup.checkAccess()](java.base/java/lang/ThreadGroup.md#checkAccess())

  This method is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is
  deprecated and subject to removal in a future release.
  Consequently, this method is also deprecated and subject to
  removal. There is no replacement for the Security Manager or this
  method.

  [java.lang.ThreadGroup.destroy()](java.base/java/lang/ThreadGroup.md#destroy())

  This method was originally specified to destroy an empty
  thread group. The ability to explicitly destroy a thread group
  no longer exists. A thread group is eligible to be GC'ed when
  there are no live threads in the group and it is otherwise
  unreachable.

  [java.lang.ThreadGroup.isDaemon()](java.base/java/lang/ThreadGroup.md#isDaemon())

  This method originally indicated if the thread group is a
  *daemon thread group* that is automatically destroyed
  when its last thread terminates. The concept of daemon
  thread group no longer exists.
  A thread group is eligible to be GC'ed when there are no
  live threads in the group and it is otherwise unreachable.

  [java.lang.ThreadGroup.isDestroyed()](java.base/java/lang/ThreadGroup.md#isDestroyed())

  This method originally indicated if the thread group is
  destroyed. The ability to destroy a thread group and the
  concept of a destroyed thread group no longer exists.
  A thread group is eligible to be GC'ed when there are no
  live threads in the group and it is otherwise unreachable.

  [java.lang.ThreadGroup.resume()](java.base/java/lang/ThreadGroup.md#resume())

  This method was originally specified to resume all threads
  in the thread group.

  [java.lang.ThreadGroup.setDaemon(boolean)](java.base/java/lang/ThreadGroup.md#setDaemon(boolean))

  This method originally configured whether the thread group is
  a *daemon thread group* that is automatically destroyed
  when its last thread terminates. The concept of daemon thread
  group no longer exists. A thread group is eligible to be GC'ed
  when there are no live threads in the group and it is otherwise
  unreachable.

  [java.lang.ThreadGroup.stop()](java.base/java/lang/ThreadGroup.md#stop())

  This method was originally specified to stop all threads in
  the thread group. It was inherently unsafe.

  [java.lang.ThreadGroup.suspend()](java.base/java/lang/ThreadGroup.md#suspend())

  This method was originally specified to suspend all threads
  in the thread group.

  [java.rmi.RMISecurityManager](java.rmi/java/rmi/RMISecurityManager.md "class in java.rmi")

  This class is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is deprecated
  and subject to removal in a future release. Consequently, this class
  is also deprecated and subject to removal. There is no replacement for
  the Security Manager or this class.

  [java.security.AccessControlContext](java.base/java/security/AccessControlContext.md "class in java.security")

  This class is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is deprecated
  and subject to removal in a future release. Consequently, this class
  is also deprecated and subject to removal. There is no replacement for
  the Security Manager or this class.

  [java.security.AccessControlException](java.base/java/security/AccessControlException.md "class in java.security")

  This class is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is deprecated
  and subject to removal in a future release. Consequently, this class
  is also deprecated and subject to removal. There is no replacement for
  the Security Manager or this class.

  [java.security.AccessController](java.base/java/security/AccessController.md "class in java.security")

  This class is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is deprecated
  and subject to removal in a future release. Consequently, this class
  is also deprecated and subject to removal. There is no replacement for
  the Security Manager or this class.

  [java.security.Certificate](java.base/java/security/Certificate.md "interface in java.security")

  This class is deprecated and subject to removal in a future
  version of Java SE. It has been replaced by
  `java.security.cert.Certificate` and related classes.

  [java.security.DomainCombiner](java.base/java/security/DomainCombiner.md "interface in java.security")

  This class is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is deprecated
  and subject to removal in a future release. Consequently, this class
  is also deprecated and subject to removal. There is no replacement for
  the Security Manager or this class.

  [java.security.Identity](java.base/java/security/Identity.md "class in java.security")

  This class is deprecated and subject to removal in a future
  version of Java SE. It has been replaced by
  `java.security.KeyStore`, the `java.security.cert` package,
  and `java.security.Principal`.

  [java.security.IdentityScope](java.base/java/security/IdentityScope.md "class in java.security")

  This class is deprecated and subject to removal in a future
  version of Java SE. It has been replaced by
  `java.security.KeyStore`, the `java.security.cert` package,
  and `java.security.Principal`.

  [java.security.Policy](java.base/java/security/Policy.md "class in java.security")

  This class is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is deprecated
  and subject to removal in a future release. Consequently, this class
  is also deprecated and subject to removal. There is no replacement for
  the Security Manager or this class.

  [java.security.Policy.Parameters](java.base/java/security/Policy.Parameters.md "interface in java.security")

  This class is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is
  deprecated and subject to removal in a future release.
  Consequently, this class is also deprecated and subject to removal.
  There is no replacement for the Security Manager or this class.

  [java.security.PolicySpi](java.base/java/security/PolicySpi.md "class in java.security")

  This class is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is deprecated
  and subject to removal in a future release. Consequently, this class
  is also deprecated and subject to removal. There is no replacement for
  the Security Manager or this class.

  [java.security.Signer](java.base/java/security/Signer.md "class in java.security")

  This class is deprecated and subject to removal in a future
  version of Java SE. It has been replaced by
  `java.security.KeyStore`, the `java.security.cert` package,
  and `java.security.Principal`.

  [java.util.concurrent.Executors.privilegedCallable(Callable<T>)](java.base/java/util/concurrent/Executors.md#privilegedCallable(java.util.concurrent.Callable))

  This method is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is
  deprecated and subject to removal in a future release.
  Consequently, this method is also deprecated and subject to
  removal. There is no replacement for the Security Manager or this
  method.

  [java.util.concurrent.Executors.privilegedCallableUsingCurrentClassLoader(Callable<T>)](java.base/java/util/concurrent/Executors.md#privilegedCallableUsingCurrentClassLoader(java.util.concurrent.Callable))

  This method is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is
  deprecated and subject to removal in a future release.
  Consequently, this method is also deprecated and subject to
  removal. There is no replacement for the Security Manager or this
  method.

  [java.util.concurrent.Executors.privilegedThreadFactory()](java.base/java/util/concurrent/Executors.md#privilegedThreadFactory())

  This method is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is
  deprecated and subject to removal in a future release.
  Consequently, this method is also deprecated and subject to
  removal. There is no replacement for the Security Manager or this
  method.

  [java.util.concurrent.ThreadPoolExecutor.finalize()](java.base/java/util/concurrent/ThreadPoolExecutor.md#finalize())

  Finalization has been deprecated for removal. See
  [`Object.finalize()`](java.base/java/lang/Object.md#finalize()) for background information and details
  about migration options.

  [java.util.logging.LogManager.checkAccess()](java.logging/java/util/logging/LogManager.md#checkAccess())

  This method is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is
  deprecated and subject to removal in a future release.
  Consequently, this method is also deprecated and subject to
  removal. There is no replacement for the Security Manager or this
  method.

  [javax.imageio.spi.ServiceRegistry.finalize()](java.desktop/javax/imageio/spi/ServiceRegistry.md#finalize())

  Finalization has been deprecated for removal. See
  [`Object.finalize()`](java.base/java/lang/Object.md#finalize()) for background information and details
  about migration options.

  [javax.imageio.stream.FileCacheImageInputStream.finalize()](java.desktop/javax/imageio/stream/FileCacheImageInputStream.md#finalize())

  Finalization has been deprecated for removal. See
  [`Object.finalize()`](java.base/java/lang/Object.md#finalize()) for background information and details
  about migration options.

  [javax.imageio.stream.FileImageInputStream.finalize()](java.desktop/javax/imageio/stream/FileImageInputStream.md#finalize())

  Finalization has been deprecated for removal. See
  [`Object.finalize()`](java.base/java/lang/Object.md#finalize()) for background information and details
  about migration options.

  [javax.imageio.stream.FileImageOutputStream.finalize()](java.desktop/javax/imageio/stream/FileImageOutputStream.md#finalize())

  Finalization has been deprecated for removal. See
  [`Object.finalize()`](java.base/java/lang/Object.md#finalize()) for background information and details
  about migration options.

  [javax.imageio.stream.ImageInputStreamImpl.finalize()](java.desktop/javax/imageio/stream/ImageInputStreamImpl.md#finalize())

  Finalization has been deprecated for removal. See
  [`Object.finalize()`](java.base/java/lang/Object.md#finalize()) for background information and details
  about migration options.

  [javax.imageio.stream.MemoryCacheImageInputStream.finalize()](java.desktop/javax/imageio/stream/MemoryCacheImageInputStream.md#finalize())

  Finalization has been deprecated for removal. See
  [`Object.finalize()`](java.base/java/lang/Object.md#finalize()) for background information and details
  about migration options.

  [javax.management.loading.MLet](java.management/javax/management/loading/MLet.md "class in javax.management.loading")

  This API is part of Management Applets (m-lets), which is a legacy feature that allows loading
  of remote MBeans. This feature is not usable without a Security Manager, which is deprecated and subject to
  removal in a future release. Consequently, this API is also deprecated and subject to removal. There is no replacement.

  [javax.management.loading.MLetContent](java.management/javax/management/loading/MLetContent.md "class in javax.management.loading")

  This API is part of Management Applets (m-lets), which is a legacy feature that allows loading
  of remote MBeans. This feature is not usable without a Security Manager, which is deprecated and subject to
  removal in a future release. Consequently, this API is also deprecated and subject to removal. There is no replacement.

  [javax.management.loading.MLetMBean](java.management/javax/management/loading/MLetMBean.md "interface in javax.management.loading")

  This API is part of Management Applets (m-lets), which is a legacy feature that allows loading
  of remote MBeans. This feature is not usable without a Security Manager, which is deprecated and subject to
  removal in a future release. Consequently, this API is also deprecated and subject to removal. There is no replacement.

  [javax.management.loading.PrivateMLet](java.management/javax/management/loading/PrivateMLet.md "class in javax.management.loading")

  This API is part of Management Applets (m-lets), which is a legacy feature that allows loading
  of remote MBeans. This feature is not usable without a Security Manager, which is deprecated and subject to
  removal in a future release. Consequently, this API is also deprecated and subject to removal. There is no replacement.

  [javax.management.relation.RoleStatus()](java.management/javax/management/relation/RoleStatus.md#%3Cinit%3E())

  [javax.management.remote.JMXConnector.getMBeanServerConnection(Subject)](java.management/javax/management/remote/JMXConnector.md#getMBeanServerConnection(javax.security.auth.Subject))

  This method supported the legacy Subject Delegation feature,
  and is only useful in conjunction with other APIs which are deprecated and
  subject to removal in a future release. Consequently, this method is also
  deprecated and subject to removal. There is no replacement.

  [javax.naming.Context.APPLET](java.naming/javax/naming/Context.md#APPLET)

  An environment property with this name is ignored
  while constructing an initial context.
  This constant was originally used as a property name to specify an
  `Applet` to retrieve parameters from, when creating an initial
  context. Currently any applet properties that need to be passed to an
  initial context should be copied into the environment hashtable:

  ```
       Hashtable env = new Hashtable();
       env.put(Context.INITIAL_CONTEXT_FACTORY,
         ((Applet) this).getParameter(Context.INITIAL_CONTEXT_FACTORY));
       env.put(Context.PROVIDER_URL,
         ((Applet) this).getParameter(Context.PROVIDER_URL));
       // ... other properties ...

       Context ctx = new InitialContext(env);
  ```

  [javax.net.ssl.HandshakeCompletedEvent.getPeerCertificateChain()](java.base/javax/net/ssl/HandshakeCompletedEvent.md#getPeerCertificateChain())

  The [`HandshakeCompletedEvent.getPeerCertificates()`](java.base/javax/net/ssl/HandshakeCompletedEvent.md#getPeerCertificates()) method that returns an
  array of `java.security.cert.Certificate` should
  be used instead.

  [javax.net.ssl.SSLSession.getPeerCertificateChain()](java.base/javax/net/ssl/SSLSession.md#getPeerCertificateChain())

  The [`SSLSession.getPeerCertificates()`](java.base/javax/net/ssl/SSLSession.md#getPeerCertificates()) method that returns an
  array of `java.security.cert.Certificate` should
  be used instead.

  [javax.security.auth.Subject.doAs(Subject, PrivilegedAction<T>)](java.base/javax/security/auth/Subject.md#doAs(javax.security.auth.Subject,java.security.PrivilegedAction))

  This method depends on [`AccessControlContext`](java.base/java/security/AccessControlContext.md "class in java.security")
  which, in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), is deprecated
  and subject to removal in a future release. However, performing
  work as a Subject is useful independent of the Security Manager.
  Thus, a replacement API named [`Subject.callAs(javax.security.auth.Subject, java.util.concurrent.Callable<T>)`](java.base/javax/security/auth/Subject.md#callAs(javax.security.auth.Subject,java.util.concurrent.Callable)) has been added
  which can be used to perform the same work.

  [javax.security.auth.Subject.doAs(Subject, PrivilegedExceptionAction<T>)](java.base/javax/security/auth/Subject.md#doAs(javax.security.auth.Subject,java.security.PrivilegedExceptionAction))

  This method depends on [`AccessControlContext`](java.base/java/security/AccessControlContext.md "class in java.security")
  which, in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), is deprecated
  and subject to removal in a future release. However, performing
  work as a Subject is useful independent of the Security Manager.
  Thus, a replacement API named [`Subject.callAs(javax.security.auth.Subject, java.util.concurrent.Callable<T>)`](java.base/javax/security/auth/Subject.md#callAs(javax.security.auth.Subject,java.util.concurrent.Callable)) has been added
  which can be used to perform the same work.

  [javax.security.auth.Subject.doAsPrivileged(Subject, PrivilegedAction<T>, AccessControlContext)](java.base/javax/security/auth/Subject.md#doAsPrivileged(javax.security.auth.Subject,java.security.PrivilegedAction,java.security.AccessControlContext))

  This method is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is
  deprecated and subject to removal in a future release.
  Consequently, this method is also deprecated and subject to
  removal. There is no replacement for the Security Manager or this
  method.

  [javax.security.auth.Subject.doAsPrivileged(Subject, PrivilegedExceptionAction<T>, AccessControlContext)](java.base/javax/security/auth/Subject.md#doAsPrivileged(javax.security.auth.Subject,java.security.PrivilegedExceptionAction,java.security.AccessControlContext))

  This method is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is
  deprecated and subject to removal in a future release.
  Consequently, this method is also deprecated and subject to
  removal. There is no replacement for the Security Manager or this
  method.

  [javax.security.auth.Subject.getSubject(AccessControlContext)](java.base/javax/security/auth/Subject.md#getSubject(java.security.AccessControlContext))

  This method depends on [`AccessControlContext`](java.base/java/security/AccessControlContext.md "class in java.security")
  which, in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), is deprecated
  and subject to removal in a future release. However,
  obtaining a Subject is useful independent of the Security Manager.
  Thus, a replacement API named [`Subject.current()`](java.base/javax/security/auth/Subject.md#current()) has been added
  which can be used to obtain the current subject.

  [javax.security.auth.SubjectDomainCombiner](java.base/javax/security/auth/SubjectDomainCombiner.md "class in javax.security.auth")

  This class is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is deprecated
  and subject to removal in a future release. Consequently, this class
  is also deprecated and subject to removal. There is no replacement for
  the Security Manager or this class.

  [javax.security.cert.Certificate](java.base/javax/security/cert/Certificate.md "class in javax.security.cert")

  Use the classes in `java.security.cert` instead.

  [javax.security.cert.CertificateEncodingException](java.base/javax/security/cert/CertificateEncodingException.md "class in javax.security.cert")

  Use the classes in `java.security.cert` instead.

  [javax.security.cert.CertificateException](java.base/javax/security/cert/CertificateException.md "class in javax.security.cert")

  Use the classes in `java.security.cert` instead.

  [javax.security.cert.CertificateExpiredException](java.base/javax/security/cert/CertificateExpiredException.md "class in javax.security.cert")

  Use the classes in `java.security.cert` instead.

  [javax.security.cert.CertificateNotYetValidException](java.base/javax/security/cert/CertificateNotYetValidException.md "class in javax.security.cert")

  Use the classes in `java.security.cert` instead.

  [javax.security.cert.CertificateParsingException](java.base/javax/security/cert/CertificateParsingException.md "class in javax.security.cert")

  Use the classes in `java.security.cert` instead.

  [javax.security.cert.X509Certificate](java.base/javax/security/cert/X509Certificate.md "class in javax.security.cert")

  Use the classes in `java.security.cert` instead.

  [javax.swing.JApplet](java.desktop/javax/swing/JApplet.md "class in javax.swing")

  The Applet API is deprecated, no replacement.

  [javax.swing.plaf.basic.BasicDirectoryModel.intervalAdded(ListDataEvent)](java.desktop/javax/swing/plaf/basic/BasicDirectoryModel.md#intervalAdded(javax.swing.event.ListDataEvent))

  Obsolete method, not used anymore.

  [javax.swing.plaf.basic.BasicDirectoryModel.intervalRemoved(ListDataEvent)](java.desktop/javax/swing/plaf/basic/BasicDirectoryModel.md#intervalRemoved(javax.swing.event.ListDataEvent))

  Obsolete method, not used anymore.

  [javax.swing.plaf.basic.BasicDirectoryModel.lt(File, File)](java.desktop/javax/swing/plaf/basic/BasicDirectoryModel.md#lt(java.io.File,java.io.File))

  Obsolete method, not used anymore.

  [javax.swing.plaf.basic.BasicMenuItemUI.MouseInputHandler](java.desktop/javax/swing/plaf/basic/BasicMenuItemUI.MouseInputHandler.md "class in javax.swing.plaf.basic")

  [javax.swing.plaf.basic.BasicScrollPaneUI.HSBChangeListener](java.desktop/javax/swing/plaf/basic/BasicScrollPaneUI.HSBChangeListener.md "class in javax.swing.plaf.basic")

  [javax.swing.plaf.basic.BasicScrollPaneUI.PropertyChangeHandler](java.desktop/javax/swing/plaf/basic/BasicScrollPaneUI.PropertyChangeHandler.md "class in javax.swing.plaf.basic")

  [javax.swing.plaf.basic.BasicScrollPaneUI.ViewportChangeHandler](java.desktop/javax/swing/plaf/basic/BasicScrollPaneUI.ViewportChangeHandler.md "class in javax.swing.plaf.basic")

  [javax.swing.plaf.basic.BasicScrollPaneUI.VSBChangeListener](java.desktop/javax/swing/plaf/basic/BasicScrollPaneUI.VSBChangeListener.md "class in javax.swing.plaf.basic")

  [javax.swing.plaf.basic.BasicToolBarUI.createFloatingFrame(JToolBar)](java.desktop/javax/swing/plaf/basic/BasicToolBarUI.md#createFloatingFrame(javax.swing.JToolBar))

  It is recommended that [`BasicToolBarUI.createFloatingWindow(JToolBar)`](java.desktop/javax/swing/plaf/basic/BasicToolBarUI.md#createFloatingWindow(javax.swing.JToolBar))
  be used instead

  [javax.swing.plaf.synth.SynthLookAndFeel.load(URL)](java.desktop/javax/swing/plaf/synth/SynthLookAndFeel.md#load(java.net.URL))

  Use [`SynthLookAndFeel.load(InputStream, Class)`](java.desktop/javax/swing/plaf/synth/SynthLookAndFeel.md#load(java.io.InputStream,java.lang.Class)) or
  [`setStyleFactory(SynthStyleFactory)`](java.desktop/javax/swing/plaf/synth/SynthLookAndFeel.md#setStyleFactory(javax.swing.plaf.synth.SynthStyleFactory)) instead

  [javax.swing.RepaintManager.addDirtyRegion(Applet, int, int, int, int)](java.desktop/javax/swing/RepaintManager.md#addDirtyRegion(java.applet.Applet,int,int,int,int))

  The Applet API is deprecated. See the
   [java.applet package
  documentation](./java.desktop/javax/swing/../../java/applet/package-summary.md) for further information.

* Deprecated Interfaces

  Interface

  Description

  [java.applet.AppletContext](java.desktop/java/applet/AppletContext.md "interface in java.applet")

  The Applet API is deprecated, no replacement.

  [java.applet.AppletStub](java.desktop/java/applet/AppletStub.md "interface in java.applet")

  The Applet API is deprecated, no replacement.

  [java.applet.AudioClip](java.desktop/java/applet/AudioClip.md "interface in java.applet")

  The Applet API is deprecated, no replacement.

  [java.beans.AppletInitializer](java.desktop/java/beans/AppletInitializer.md "interface in java.beans")

  The Applet API is deprecated. See the
   [java.applet package
  documentation](./java.desktop/java/beans/../applet/package-summary.md) for further information.

  [java.rmi.registry.RegistryHandler](java.rmi/java/rmi/registry/RegistryHandler.md "interface in java.rmi.registry")

  no replacement

  [java.rmi.server.LoaderHandler](java.rmi/java/rmi/server/LoaderHandler.md "interface in java.rmi.server")

  no replacement

  [java.rmi.server.RemoteCall](java.rmi/java/rmi/server/RemoteCall.md "interface in java.rmi.server")

  no replacement.

  [java.rmi.server.ServerRef](java.rmi/java/rmi/server/ServerRef.md "interface in java.rmi.server")

  No replacement. This interface is unused and is obsolete.

  [java.rmi.server.Skeleton](java.rmi/java/rmi/server/Skeleton.md "interface in java.rmi.server")

  no replacement. Skeletons are no longer required for remote
  method calls in the Java 2 platform v1.2 and greater.

  [java.security.Certificate](java.base/java/security/Certificate.md "interface in java.security")

  This class is deprecated and subject to removal in a future
  version of Java SE. It has been replaced by
  `java.security.cert.Certificate` and related classes.

  [java.security.DomainCombiner](java.base/java/security/DomainCombiner.md "interface in java.security")

  This class is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is deprecated
  and subject to removal in a future release. Consequently, this class
  is also deprecated and subject to removal. There is no replacement for
  the Security Manager or this class.

  [java.security.Policy.Parameters](java.base/java/security/Policy.Parameters.md "interface in java.security")

  This class is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is
  deprecated and subject to removal in a future release.
  Consequently, this class is also deprecated and subject to removal.
  There is no replacement for the Security Manager or this class.

  [java.util.logging.LoggingMXBean](java.logging/java/util/logging/LoggingMXBean.md "interface in java.util.logging")

  `LoggingMXBean` is no longer a [`platform MXBean`](java.management/java/lang/management/PlatformManagedObject.md "interface in java.lang.management") and is replaced
  with [`PlatformLoggingMXBean`](java.management/java/lang/management/PlatformLoggingMXBean.md "interface in java.lang.management").
  It will not register in the platform `MBeanServer`.
  Use `ManagementFactory.getPlatformMXBean(PlatformLoggingMXBean.class)`
  instead.

  [java.util.Observer](java.base/java/util/Observer.md "interface in java.util")

  This interface has been deprecated. See the [`Observable`](java.base/java/util/Observable.md "class in java.util")
  class for further information.

  [javax.management.loading.MLetMBean](java.management/javax/management/loading/MLetMBean.md "interface in javax.management.loading")

  This API is part of Management Applets (m-lets), which is a legacy feature that allows loading
  of remote MBeans. This feature is not usable without a Security Manager, which is deprecated and subject to
  removal in a future release. Consequently, this API is also deprecated and subject to removal. There is no replacement.

  [org.xml.sax.AttributeList](java.xml/org/xml/sax/AttributeList.md "interface in org.xml.sax")

  This interface has been replaced by the SAX2
  [`Attributes`](java.xml/org/xml/sax/Attributes.md "interface in org.xml.sax")
  interface, which includes Namespace support.

  [org.xml.sax.DocumentHandler](java.xml/org/xml/sax/DocumentHandler.md "interface in org.xml.sax")

  This interface has been replaced by the SAX2
  [`ContentHandler`](java.xml/org/xml/sax/ContentHandler.md "interface in org.xml.sax")
  interface, which includes Namespace support.

  [org.xml.sax.Parser](java.xml/org/xml/sax/Parser.md "interface in org.xml.sax")

  This interface has been replaced by the SAX2
  [`XMLReader`](java.xml/org/xml/sax/XMLReader.md "interface in org.xml.sax")
  interface, which includes Namespace support.

* Deprecated Classes

  Class

  Description

  [java.applet.Applet](java.desktop/java/applet/Applet.md "class in java.applet")

  The Applet API is deprecated, no replacement.

  [java.awt.Event](java.desktop/java/awt/Event.md "class in java.awt")

  It is recommended that `AWTEvent` and its subclasses be
  used instead

  [java.io.LineNumberInputStream](java.base/java/io/LineNumberInputStream.md "class in java.io")

  This class incorrectly assumes that bytes adequately represent
  characters. As of JDK 1.1, the preferred way to operate on
  character streams is via the new character-stream classes, which
  include a class for counting line numbers.

  [java.io.StringBufferInputStream](java.base/java/io/StringBufferInputStream.md "class in java.io")

  This class does not properly convert characters into bytes. As
  of JDK 1.1, the preferred way to create a stream from a
  string is via the `StringReader` class.

  [java.lang.SecurityManager](java.base/java/lang/SecurityManager.md "class in java.lang")

  The Security Manager is deprecated and subject to removal in a
  future release. There is no replacement for the Security Manager.
  See [JEP 411](https://openjdk.org/jeps/411) for
  discussion and alternatives.

  [java.rmi.RMISecurityManager](java.rmi/java/rmi/RMISecurityManager.md "class in java.rmi")

  This class is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is deprecated
  and subject to removal in a future release. Consequently, this class
  is also deprecated and subject to removal. There is no replacement for
  the Security Manager or this class.

  [java.rmi.server.LogStream](java.rmi/java/rmi/server/LogStream.md "class in java.rmi.server")

  no replacement

  [java.rmi.server.Operation](java.rmi/java/rmi/server/Operation.md "class in java.rmi.server")

  no replacement

  [java.rmi.server.RemoteStub](java.rmi/java/rmi/server/RemoteStub.md "class in java.rmi.server")

  Statically generated stubs are deprecated, since
  stubs are generated dynamically. See [`UnicastRemoteObject`](java.rmi/java/rmi/server/UnicastRemoteObject.md "class in java.rmi.server")
  for information about dynamic stub generation.

  [java.security.AccessControlContext](java.base/java/security/AccessControlContext.md "class in java.security")

  This class is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is deprecated
  and subject to removal in a future release. Consequently, this class
  is also deprecated and subject to removal. There is no replacement for
  the Security Manager or this class.

  [java.security.AccessController](java.base/java/security/AccessController.md "class in java.security")

  This class is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is deprecated
  and subject to removal in a future release. Consequently, this class
  is also deprecated and subject to removal. There is no replacement for
  the Security Manager or this class.

  [java.security.Identity](java.base/java/security/Identity.md "class in java.security")

  This class is deprecated and subject to removal in a future
  version of Java SE. It has been replaced by
  `java.security.KeyStore`, the `java.security.cert` package,
  and `java.security.Principal`.

  [java.security.IdentityScope](java.base/java/security/IdentityScope.md "class in java.security")

  This class is deprecated and subject to removal in a future
  version of Java SE. It has been replaced by
  `java.security.KeyStore`, the `java.security.cert` package,
  and `java.security.Principal`.

  [java.security.Policy](java.base/java/security/Policy.md "class in java.security")

  This class is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is deprecated
  and subject to removal in a future release. Consequently, this class
  is also deprecated and subject to removal. There is no replacement for
  the Security Manager or this class.

  [java.security.PolicySpi](java.base/java/security/PolicySpi.md "class in java.security")

  This class is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is deprecated
  and subject to removal in a future release. Consequently, this class
  is also deprecated and subject to removal. There is no replacement for
  the Security Manager or this class.

  [java.security.Signer](java.base/java/security/Signer.md "class in java.security")

  This class is deprecated and subject to removal in a future
  version of Java SE. It has been replaced by
  `java.security.KeyStore`, the `java.security.cert` package,
  and `java.security.Principal`.

  [java.util.Observable](java.base/java/util/Observable.md "class in java.util")

  This class and the [`Observer`](java.base/java/util/Observer.md "interface in java.util") interface have been deprecated.
  The event model supported by `Observer` and `Observable`
  is quite limited, the order of notifications delivered by
  `Observable` is unspecified, and state changes are not in
  one-for-one correspondence with notifications.
  For a richer event model, consider using the
  [`java.beans`](java.desktop/java/beans/package-summary.md) package. For reliable and ordered
  messaging among threads, consider using one of the concurrent data
  structures in the [`java.util.concurrent`](java.base/java/util/concurrent/package-summary.md) package.
  For reactive streams style programming, see the
  [`Flow`](java.base/java/util/concurrent/Flow.md "class in java.util.concurrent") API.

  [javax.accessibility.AccessibleResourceBundle](java.desktop/javax/accessibility/AccessibleResourceBundle.md "class in javax.accessibility")

  This class is deprecated as of version 1.3 of the Java Platform

  [javax.management.DefaultLoaderRepository](java.management/javax/management/DefaultLoaderRepository.md "class in javax.management")

  Use
  [`MBeanServer.getClassLoaderRepository()`](java.management/javax/management/MBeanServer.md#getClassLoaderRepository())
  instead.

  [javax.management.loading.DefaultLoaderRepository](java.management/javax/management/loading/DefaultLoaderRepository.md "class in javax.management.loading")

  Use
  [`MBeanServer.getClassLoaderRepository()`](java.management/javax/management/MBeanServer.md#getClassLoaderRepository())
  instead.

  [javax.management.loading.MLet](java.management/javax/management/loading/MLet.md "class in javax.management.loading")

  This API is part of Management Applets (m-lets), which is a legacy feature that allows loading
  of remote MBeans. This feature is not usable without a Security Manager, which is deprecated and subject to
  removal in a future release. Consequently, this API is also deprecated and subject to removal. There is no replacement.

  [javax.management.loading.MLetContent](java.management/javax/management/loading/MLetContent.md "class in javax.management.loading")

  This API is part of Management Applets (m-lets), which is a legacy feature that allows loading
  of remote MBeans. This feature is not usable without a Security Manager, which is deprecated and subject to
  removal in a future release. Consequently, this API is also deprecated and subject to removal. There is no replacement.

  [javax.management.loading.PrivateMLet](java.management/javax/management/loading/PrivateMLet.md "class in javax.management.loading")

  This API is part of Management Applets (m-lets), which is a legacy feature that allows loading
  of remote MBeans. This feature is not usable without a Security Manager, which is deprecated and subject to
  removal in a future release. Consequently, this API is also deprecated and subject to removal. There is no replacement.

  [javax.security.auth.SubjectDomainCombiner](java.base/javax/security/auth/SubjectDomainCombiner.md "class in javax.security.auth")

  This class is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is deprecated
  and subject to removal in a future release. Consequently, this class
  is also deprecated and subject to removal. There is no replacement for
  the Security Manager or this class.

  [javax.security.cert.Certificate](java.base/javax/security/cert/Certificate.md "class in javax.security.cert")

  Use the classes in `java.security.cert` instead.

  [javax.security.cert.X509Certificate](java.base/javax/security/cert/X509Certificate.md "class in javax.security.cert")

  Use the classes in `java.security.cert` instead.

  [javax.swing.JApplet](java.desktop/javax/swing/JApplet.md "class in javax.swing")

  The Applet API is deprecated, no replacement.

  [javax.swing.JComponent.AccessibleJComponent.AccessibleFocusHandler](java.desktop/javax/swing/JComponent.AccessibleJComponent.AccessibleFocusHandler.md "class in javax.swing")

  This class is no longer used or needed.
  `java.awt.Component.AccessibleAWTComponent` provides
  the same functionality and it is handled in `Component`.

  [javax.swing.plaf.basic.BasicMenuItemUI.MouseInputHandler](java.desktop/javax/swing/plaf/basic/BasicMenuItemUI.MouseInputHandler.md "class in javax.swing.plaf.basic")

  [javax.swing.plaf.basic.BasicScrollPaneUI.HSBChangeListener](java.desktop/javax/swing/plaf/basic/BasicScrollPaneUI.HSBChangeListener.md "class in javax.swing.plaf.basic")

  [javax.swing.plaf.basic.BasicScrollPaneUI.PropertyChangeHandler](java.desktop/javax/swing/plaf/basic/BasicScrollPaneUI.PropertyChangeHandler.md "class in javax.swing.plaf.basic")

  [javax.swing.plaf.basic.BasicScrollPaneUI.ViewportChangeHandler](java.desktop/javax/swing/plaf/basic/BasicScrollPaneUI.ViewportChangeHandler.md "class in javax.swing.plaf.basic")

  [javax.swing.plaf.basic.BasicScrollPaneUI.VSBChangeListener](java.desktop/javax/swing/plaf/basic/BasicScrollPaneUI.VSBChangeListener.md "class in javax.swing.plaf.basic")

  [javax.swing.plaf.metal.MetalComboBoxUI.MetalComboPopup](java.desktop/javax/swing/plaf/metal/MetalComboBoxUI.MetalComboPopup.md "class in javax.swing.plaf.metal")

  As of Java 2 platform v1.4.

  [javax.swing.plaf.metal.MetalFileChooserUI.FileRenderer](java.desktop/javax/swing/plaf/metal/MetalFileChooserUI.FileRenderer.md "class in javax.swing.plaf.metal")

  As of JDK version 9. Obsolete class.

  [javax.swing.plaf.metal.MetalFileChooserUI.SingleClickListener](java.desktop/javax/swing/plaf/metal/MetalFileChooserUI.SingleClickListener.md "class in javax.swing.plaf.metal")

  As of JDK version 9. Obsolete class.

  [javax.swing.text.DefaultTextUI](java.desktop/javax/swing/text/DefaultTextUI.md "class in javax.swing.text")

  [javax.swing.text.TableView.TableCell](java.desktop/javax/swing/text/TableView.TableCell.md "class in javax.swing.text")

  A table cell can now be any View implementation.

  [org.xml.sax.HandlerBase](java.xml/org/xml/sax/HandlerBase.md "class in org.xml.sax")

  This class works with the deprecated
  [`DocumentHandler`](java.xml/org/xml/sax/DocumentHandler.md "interface in org.xml.sax")
  interface. It has been replaced by the SAX2
  [`DefaultHandler`](java.xml/org/xml/sax/helpers/DefaultHandler.md "class in org.xml.sax.helpers")
  class.

  [org.xml.sax.helpers.AttributeListImpl](java.xml/org/xml/sax/helpers/AttributeListImpl.md "class in org.xml.sax.helpers")

  This class implements a deprecated interface,
  [`AttributeList`](java.xml/org/xml/sax/AttributeList.md "interface in org.xml.sax");
  that interface has been replaced by
  [`Attributes`](java.xml/org/xml/sax/Attributes.md "interface in org.xml.sax"),
  which is implemented in the
  [`AttributesImpl`](java.xml/org/xml/sax/helpers/AttributesImpl.md "class in org.xml.sax.helpers") helper class.

  [org.xml.sax.helpers.ParserFactory](java.xml/org/xml/sax/helpers/ParserFactory.md "class in org.xml.sax.helpers")

  This class works with the deprecated
  [`Parser`](java.xml/org/xml/sax/Parser.md "interface in org.xml.sax")
  interface.

  [org.xml.sax.helpers.XMLReaderFactory](java.xml/org/xml/sax/helpers/XMLReaderFactory.md "class in org.xml.sax.helpers")

  It is recommended to use [`SAXParserFactory`](java.xml/javax/xml/parsers/SAXParserFactory.md "class in javax.xml.parsers")
  instead.

* Deprecated Exception Classes

  Exception Class

  Description

  [java.lang.ThreadDeath](java.base/java/lang/ThreadDeath.md "class in java.lang")

  [`Thread.stop()`](java.base/java/lang/Thread.md#stop()) was originally specified to "stop" a victim
  thread by causing the victim thread to throw a `ThreadDeath`. It
  was inherently unsafe and deprecated in an early JDK release. The ability
  to "stop" a thread with `Thread.stop` has been removed and the
  `Thread.stop` method changed to throw an exception. Consequently,
  `ThreadDeath` is also deprecated, for removal.

  [java.rmi.RMISecurityException](java.rmi/java/rmi/RMISecurityException.md "class in java.rmi")

  Use [`SecurityException`](java.base/java/lang/SecurityException.md "class in java.lang") instead.
  Application code should never directly reference this class, and
  `RMISecurityManager` no longer throws this subclass of
  `java.lang.SecurityException`.

  [java.rmi.server.SkeletonMismatchException](java.rmi/java/rmi/server/SkeletonMismatchException.md "class in java.rmi.server")

  no replacement. Skeletons are no longer required for remote
  method calls in the Java 2 platform v1.2 and greater.

  [java.rmi.server.SkeletonNotFoundException](java.rmi/java/rmi/server/SkeletonNotFoundException.md "class in java.rmi.server")

  no replacement. Skeletons are no longer required for remote
  method calls in the Java 2 platform v1.2 and greater.

  [java.rmi.server.SocketSecurityException](java.rmi/java/rmi/server/SocketSecurityException.md "class in java.rmi.server")

  This class is obsolete. Use [`ExportException`](java.rmi/java/rmi/server/ExportException.md "class in java.rmi.server") instead.

  [java.rmi.ServerRuntimeException](java.rmi/java/rmi/ServerRuntimeException.md "class in java.rmi")

  no replacement

  [java.security.AccessControlException](java.base/java/security/AccessControlException.md "class in java.security")

  This class is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is deprecated
  and subject to removal in a future release. Consequently, this class
  is also deprecated and subject to removal. There is no replacement for
  the Security Manager or this class.

  [javax.security.cert.CertificateEncodingException](java.base/javax/security/cert/CertificateEncodingException.md "class in javax.security.cert")

  Use the classes in `java.security.cert` instead.

  [javax.security.cert.CertificateException](java.base/javax/security/cert/CertificateException.md "class in javax.security.cert")

  Use the classes in `java.security.cert` instead.

  [javax.security.cert.CertificateExpiredException](java.base/javax/security/cert/CertificateExpiredException.md "class in javax.security.cert")

  Use the classes in `java.security.cert` instead.

  [javax.security.cert.CertificateNotYetValidException](java.base/javax/security/cert/CertificateNotYetValidException.md "class in javax.security.cert")

  Use the classes in `java.security.cert` instead.

  [javax.security.cert.CertificateParsingException](java.base/javax/security/cert/CertificateParsingException.md "class in javax.security.cert")

  Use the classes in `java.security.cert` instead.

* Deprecated Fields

  Field

  Description

  [java.awt.Cursor.predefined](java.desktop/java/awt/Cursor.md#predefined)

  As of JDK version 1.7, the [`Cursor.getPredefinedCursor(int)`](java.desktop/java/awt/Cursor.md#getPredefinedCursor(int))
  method should be used instead.

  [java.awt.datatransfer.DataFlavor.plainTextFlavor](java.datatransfer/java/awt/datatransfer/DataFlavor.md#plainTextFlavor)

  as of 1.3. Use [`DataFlavor.getReaderForText(java.awt.datatransfer.Transferable)`](java.datatransfer/java/awt/datatransfer/DataFlavor.md#getReaderForText(java.awt.datatransfer.Transferable)) instead of
  `Transferable.getTransferData(DataFlavor.plainTextFlavor)`.

  [java.awt.event.InputEvent.ALT\_GRAPH\_MASK](java.desktop/java/awt/event/InputEvent.md#ALT_GRAPH_MASK)

  It is recommended that ALT\_GRAPH\_DOWN\_MASK and
  [`InputEvent.getModifiersEx()`](java.desktop/java/awt/event/InputEvent.md#getModifiersEx()) be used instead

  [java.awt.event.InputEvent.ALT\_MASK](java.desktop/java/awt/event/InputEvent.md#ALT_MASK)

  It is recommended that ALT\_DOWN\_MASK and
  [`InputEvent.getModifiersEx()`](java.desktop/java/awt/event/InputEvent.md#getModifiersEx()) be used instead

  [java.awt.event.InputEvent.BUTTON1\_MASK](java.desktop/java/awt/event/InputEvent.md#BUTTON1_MASK)

  It is recommended that BUTTON1\_DOWN\_MASK and
  [`InputEvent.getModifiersEx()`](java.desktop/java/awt/event/InputEvent.md#getModifiersEx()) be used instead

  [java.awt.event.InputEvent.BUTTON2\_MASK](java.desktop/java/awt/event/InputEvent.md#BUTTON2_MASK)

  It is recommended that BUTTON2\_DOWN\_MASK and
  [`InputEvent.getModifiersEx()`](java.desktop/java/awt/event/InputEvent.md#getModifiersEx()) be used instead. Note that
  BUTTON2\_MASK has the same value as ALT\_MASK.

  [java.awt.event.InputEvent.BUTTON3\_MASK](java.desktop/java/awt/event/InputEvent.md#BUTTON3_MASK)

  It is recommended that BUTTON3\_DOWN\_MASK and
  [`InputEvent.getModifiersEx()`](java.desktop/java/awt/event/InputEvent.md#getModifiersEx()) be used instead. Note that
  BUTTON3\_MASK has the same value as META\_MASK.

  [java.awt.event.InputEvent.CTRL\_MASK](java.desktop/java/awt/event/InputEvent.md#CTRL_MASK)

  It is recommended that CTRL\_DOWN\_MASK and
  [`InputEvent.getModifiersEx()`](java.desktop/java/awt/event/InputEvent.md#getModifiersEx()) be used instead

  [java.awt.event.InputEvent.META\_MASK](java.desktop/java/awt/event/InputEvent.md#META_MASK)

  It is recommended that META\_DOWN\_MASK and
  [`InputEvent.getModifiersEx()`](java.desktop/java/awt/event/InputEvent.md#getModifiersEx()) be used instead

  [java.awt.event.InputEvent.SHIFT\_MASK](java.desktop/java/awt/event/InputEvent.md#SHIFT_MASK)

  It is recommended that SHIFT\_DOWN\_MASK and
  [`InputEvent.getModifiersEx()`](java.desktop/java/awt/event/InputEvent.md#getModifiersEx()) be used instead

  [java.awt.Frame.CROSSHAIR\_CURSOR](java.desktop/java/awt/Frame.md#CROSSHAIR_CURSOR)

  replaced by `Cursor.CROSSHAIR_CURSOR`.

  [java.awt.Frame.DEFAULT\_CURSOR](java.desktop/java/awt/Frame.md#DEFAULT_CURSOR)

  replaced by `Cursor.DEFAULT_CURSOR`.

  [java.awt.Frame.E\_RESIZE\_CURSOR](java.desktop/java/awt/Frame.md#E_RESIZE_CURSOR)

  replaced by `Cursor.E_RESIZE_CURSOR`.

  [java.awt.Frame.HAND\_CURSOR](java.desktop/java/awt/Frame.md#HAND_CURSOR)

  replaced by `Cursor.HAND_CURSOR`.

  [java.awt.Frame.MOVE\_CURSOR](java.desktop/java/awt/Frame.md#MOVE_CURSOR)

  replaced by `Cursor.MOVE_CURSOR`.

  [java.awt.Frame.N\_RESIZE\_CURSOR](java.desktop/java/awt/Frame.md#N_RESIZE_CURSOR)

  replaced by `Cursor.N_RESIZE_CURSOR`.

  [java.awt.Frame.NE\_RESIZE\_CURSOR](java.desktop/java/awt/Frame.md#NE_RESIZE_CURSOR)

  replaced by `Cursor.NE_RESIZE_CURSOR`.

  [java.awt.Frame.NW\_RESIZE\_CURSOR](java.desktop/java/awt/Frame.md#NW_RESIZE_CURSOR)

  replaced by `Cursor.NW_RESIZE_CURSOR`.

  [java.awt.Frame.S\_RESIZE\_CURSOR](java.desktop/java/awt/Frame.md#S_RESIZE_CURSOR)

  replaced by `Cursor.S_RESIZE_CURSOR`.

  [java.awt.Frame.SE\_RESIZE\_CURSOR](java.desktop/java/awt/Frame.md#SE_RESIZE_CURSOR)

  replaced by `Cursor.SE_RESIZE_CURSOR`.

  [java.awt.Frame.SW\_RESIZE\_CURSOR](java.desktop/java/awt/Frame.md#SW_RESIZE_CURSOR)

  replaced by `Cursor.SW_RESIZE_CURSOR`.

  [java.awt.Frame.TEXT\_CURSOR](java.desktop/java/awt/Frame.md#TEXT_CURSOR)

  replaced by `Cursor.TEXT_CURSOR`.

  [java.awt.Frame.W\_RESIZE\_CURSOR](java.desktop/java/awt/Frame.md#W_RESIZE_CURSOR)

  replaced by `Cursor.W_RESIZE_CURSOR`.

  [java.awt.Frame.WAIT\_CURSOR](java.desktop/java/awt/Frame.md#WAIT_CURSOR)

  replaced by `Cursor.WAIT_CURSOR`.

  [java.io.WriteAbortedException.detail](java.base/java/io/WriteAbortedException.md#detail)

  This field predates the general-purpose exception
  chaining facility. The [`Throwable.getCause()`](java.base/java/lang/Throwable.md#getCause()) method is
  now the preferred means of obtaining this information.

  [java.lang.Character.UnicodeBlock.SURROGATES\_AREA](java.base/java/lang/Character.UnicodeBlock.md#SURROGATES_AREA)

  Instead of `SURROGATES_AREA`, use [`Character.UnicodeBlock.HIGH_SURROGATES`](java.base/java/lang/Character.UnicodeBlock.md#HIGH_SURROGATES),
  [`Character.UnicodeBlock.HIGH_PRIVATE_USE_SURROGATES`](java.base/java/lang/Character.UnicodeBlock.md#HIGH_PRIVATE_USE_SURROGATES), and [`Character.UnicodeBlock.LOW_SURROGATES`](java.base/java/lang/Character.UnicodeBlock.md#LOW_SURROGATES).
  These constants match the block definitions of the Unicode Standard.
  The [`Character.UnicodeBlock.of(char)`](java.base/java/lang/Character.UnicodeBlock.md#of(char)) and [`Character.UnicodeBlock.of(int)`](java.base/java/lang/Character.UnicodeBlock.md#of(int)) methods return the
  standard constants.

  [java.math.BigDecimal.ROUND\_CEILING](java.base/java/math/BigDecimal.md#ROUND_CEILING)

  Use [`RoundingMode.CEILING`](java.base/java/math/RoundingMode.md#CEILING) instead.

  [java.math.BigDecimal.ROUND\_DOWN](java.base/java/math/BigDecimal.md#ROUND_DOWN)

  Use [`RoundingMode.DOWN`](java.base/java/math/RoundingMode.md#DOWN) instead.

  [java.math.BigDecimal.ROUND\_FLOOR](java.base/java/math/BigDecimal.md#ROUND_FLOOR)

  Use [`RoundingMode.FLOOR`](java.base/java/math/RoundingMode.md#FLOOR) instead.

  [java.math.BigDecimal.ROUND\_HALF\_DOWN](java.base/java/math/BigDecimal.md#ROUND_HALF_DOWN)

  Use [`RoundingMode.HALF_DOWN`](java.base/java/math/RoundingMode.md#HALF_DOWN) instead.

  [java.math.BigDecimal.ROUND\_HALF\_EVEN](java.base/java/math/BigDecimal.md#ROUND_HALF_EVEN)

  Use [`RoundingMode.HALF_EVEN`](java.base/java/math/RoundingMode.md#HALF_EVEN) instead.

  [java.math.BigDecimal.ROUND\_HALF\_UP](java.base/java/math/BigDecimal.md#ROUND_HALF_UP)

  Use [`RoundingMode.HALF_UP`](java.base/java/math/RoundingMode.md#HALF_UP) instead.

  [java.math.BigDecimal.ROUND\_UNNECESSARY](java.base/java/math/BigDecimal.md#ROUND_UNNECESSARY)

  Use [`RoundingMode.UNNECESSARY`](java.base/java/math/RoundingMode.md#UNNECESSARY) instead.

  [java.math.BigDecimal.ROUND\_UP](java.base/java/math/BigDecimal.md#ROUND_UP)

  Use [`RoundingMode.UP`](java.base/java/math/RoundingMode.md#UP) instead.

  [java.net.HttpURLConnection.HTTP\_SERVER\_ERROR](java.base/java/net/HttpURLConnection.md#HTTP_SERVER_ERROR)

  it is misplaced and shouldn't have existed.

  [java.rmi.server.RemoteRef.serialVersionUID](java.rmi/java/rmi/server/RemoteRef.md#serialVersionUID)

  A `serialVersionUID` field in an interface is
  ineffectual. Do not use; no replacement.

  [java.rmi.server.ServerRef.serialVersionUID](java.rmi/java/rmi/server/ServerRef.md#serialVersionUID)

  A `serialVersionUID` field in an interface is
  ineffectual. Do not use; no replacement.

  [java.security.interfaces.DSAPrivateKey.serialVersionUID](java.base/java/security/interfaces/DSAPrivateKey.md#serialVersionUID)

  A `serialVersionUID` field in an interface is
  ineffectual. Do not use; no replacement.

  [java.security.interfaces.DSAPublicKey.serialVersionUID](java.base/java/security/interfaces/DSAPublicKey.md#serialVersionUID)

  A `serialVersionUID` field in an interface is
  ineffectual. Do not use; no replacement.

  [java.security.interfaces.ECPrivateKey.serialVersionUID](java.base/java/security/interfaces/ECPrivateKey.md#serialVersionUID)

  A `serialVersionUID` field in an interface is
  ineffectual. Do not use; no replacement.

  [java.security.interfaces.ECPublicKey.serialVersionUID](java.base/java/security/interfaces/ECPublicKey.md#serialVersionUID)

  A `serialVersionUID` field in an interface is
  ineffectual. Do not use; no replacement.

  [java.security.interfaces.RSAMultiPrimePrivateCrtKey.serialVersionUID](java.base/java/security/interfaces/RSAMultiPrimePrivateCrtKey.md#serialVersionUID)

  A `serialVersionUID` field in an interface is
  ineffectual. Do not use; no replacement.

  [java.security.interfaces.RSAPrivateCrtKey.serialVersionUID](java.base/java/security/interfaces/RSAPrivateCrtKey.md#serialVersionUID)

  A `serialVersionUID` field in an interface is
  ineffectual. Do not use; no replacement.

  [java.security.interfaces.RSAPrivateKey.serialVersionUID](java.base/java/security/interfaces/RSAPrivateKey.md#serialVersionUID)

  A `serialVersionUID` field in an interface is
  ineffectual. Do not use; no replacement.

  [java.security.interfaces.RSAPublicKey.serialVersionUID](java.base/java/security/interfaces/RSAPublicKey.md#serialVersionUID)

  A `serialVersionUID` field in an interface is
  ineffectual. Do not use; no replacement.

  [java.security.Key.serialVersionUID](java.base/java/security/Key.md#serialVersionUID)

  A `serialVersionUID` field in an interface is
  ineffectual. Do not use; no replacement.

  [java.security.PrivateKey.serialVersionUID](java.base/java/security/PrivateKey.md#serialVersionUID)

  A `serialVersionUID` field in an interface is
  ineffectual. Do not use; no replacement.

  [java.security.PublicKey.serialVersionUID](java.base/java/security/PublicKey.md#serialVersionUID)

  A `serialVersionUID` field in an interface is
  ineffectual. Do not use; no replacement.

  [java.security.spec.PSSParameterSpec.DEFAULT](java.base/java/security/spec/PSSParameterSpec.md#DEFAULT)

  This field uses the default values defined in the PKCS #1
  standard. Some of these defaults are no longer recommended due
  to advances in cryptanalysis -- see the
  [PKCS#1 v2.2](https://tools.ietf.org/rfc/rfc8017.txt)
  standard for more details. Thus, it is recommended to create
  a new `PSSParameterSpec` with the desired parameter values
  using the
  [`PSSParameterSpec(String, String, AlgorithmParameterSpec, int, int)`](java.base/java/security/spec/PSSParameterSpec.md#%3Cinit%3E(java.lang.String,java.lang.String,java.security.spec.AlgorithmParameterSpec,int,int)) constructor.

  [java.util.jar.Attributes.Name.EXTENSION\_INSTALLATION](java.base/java/util/jar/Attributes.Name.md#EXTENSION_INSTALLATION)

  Extension mechanism is no longer supported.

  [java.util.jar.Attributes.Name.IMPLEMENTATION\_URL](java.base/java/util/jar/Attributes.Name.md#IMPLEMENTATION_URL)

  Extension mechanism is no longer supported.

  [java.util.jar.Attributes.Name.IMPLEMENTATION\_VENDOR\_ID](java.base/java/util/jar/Attributes.Name.md#IMPLEMENTATION_VENDOR_ID)

  Extension mechanism is no longer supported.

  [java.util.logging.Logger.global](java.logging/java/util/logging/Logger.md#global)

  Initialization of this field is prone to deadlocks.
  The field must be initialized by the Logger class initialization
  which may cause deadlocks with the LogManager class initialization.
  In such cases two class initialization wait for each other to complete.
  The preferred way to get the global logger object is via the call
  `Logger.getGlobal()`.
  For compatibility with old JDK versions where the
  `Logger.getGlobal()` is not available use the call
  `Logger.getLogger(Logger.GLOBAL_LOGGER_NAME)`
  or `Logger.getLogger("global")`.

  [javax.crypto.interfaces.DHPrivateKey.serialVersionUID](java.base/javax/crypto/interfaces/DHPrivateKey.md#serialVersionUID)

  A `serialVersionUID` field in an interface is
  ineffectual. Do not use; no replacement.

  [javax.crypto.interfaces.DHPublicKey.serialVersionUID](java.base/javax/crypto/interfaces/DHPublicKey.md#serialVersionUID)

  A `serialVersionUID` field in an interface is
  ineffectual. Do not use; no replacement.

  [javax.crypto.interfaces.PBEKey.serialVersionUID](java.base/javax/crypto/interfaces/PBEKey.md#serialVersionUID)

  A `serialVersionUID` field in an interface is
  ineffectual. Do not use; no replacement.

  [javax.crypto.SecretKey.serialVersionUID](java.base/javax/crypto/SecretKey.md#serialVersionUID)

  A `serialVersionUID` field in an interface is
  ineffectual. Do not use; no replacement.

  [javax.crypto.spec.OAEPParameterSpec.DEFAULT](java.base/javax/crypto/spec/OAEPParameterSpec.md#DEFAULT)

  This field uses the default values defined in the PKCS #1
  standard. Some of these defaults are no longer recommended due
  to advances in cryptanalysis -- see
  [Appendix B.1 of PKCS #1](https://www.rfc-editor.org/rfc/rfc8017#appendix-B.1)
  for more details. Thus, it is recommended to create
  a new `OAEPParameterSpec` with the desired parameter values
  using the
  [`OAEPParameterSpec(String, String, AlgorithmParameterSpec, PSource)`](java.base/javax/crypto/spec/OAEPParameterSpec.md#%3Cinit%3E(java.lang.String,java.lang.String,java.security.spec.AlgorithmParameterSpec,javax.crypto.spec.PSource)) constructor.

  [javax.imageio.spi.ImageReaderSpi.STANDARD\_INPUT\_TYPE](java.desktop/javax/imageio/spi/ImageReaderSpi.md#STANDARD_INPUT_TYPE)

  Instead of using this field, directly create
  the equivalent array `{ ImageInputStream.class }`.

  [javax.imageio.spi.ImageWriterSpi.STANDARD\_OUTPUT\_TYPE](java.desktop/javax/imageio/spi/ImageWriterSpi.md#STANDARD_OUTPUT_TYPE)

  Instead of using this field, directly create
  the equivalent array `{ ImageOutputStream.class }`.

  [javax.management.monitor.Monitor.alreadyNotified](java.management/javax/management/monitor/Monitor.md#alreadyNotified)

  equivalent to [`Monitor.alreadyNotifieds`](java.management/javax/management/monitor/Monitor.md#alreadyNotifieds)[0].

  [javax.management.monitor.Monitor.dbgTag](java.management/javax/management/monitor/Monitor.md#dbgTag)

  No replacement.

  [javax.management.openmbean.OpenType.ALLOWED\_CLASSNAMES](java.management/javax/management/openmbean/OpenType.md#ALLOWED_CLASSNAMES)

  Use [`ALLOWED_CLASSNAMES_LIST`](java.management/javax/management/openmbean/OpenType.md#ALLOWED_CLASSNAMES_LIST) instead.

  [javax.naming.Context.APPLET](java.naming/javax/naming/Context.md#APPLET)

  An environment property with this name is ignored
  while constructing an initial context.
  This constant was originally used as a property name to specify an
  `Applet` to retrieve parameters from, when creating an initial
  context. Currently any applet properties that need to be passed to an
  initial context should be copied into the environment hashtable:

  ```
       Hashtable env = new Hashtable();
       env.put(Context.INITIAL_CONTEXT_FACTORY,
         ((Applet) this).getParameter(Context.INITIAL_CONTEXT_FACTORY));
       env.put(Context.PROVIDER_URL,
         ((Applet) this).getParameter(Context.PROVIDER_URL));
       // ... other properties ...

       Context ctx = new InitialContext(env);
  ```

  [javax.naming.directory.Attribute.serialVersionUID](java.naming/javax/naming/directory/Attribute.md#serialVersionUID)

  A `serialVersionUID` field in an interface is
  ineffectual. Do not use; no replacement.

  [javax.naming.Name.serialVersionUID](java.naming/javax/naming/Name.md#serialVersionUID)

  A `serialVersionUID` field in an interface is
  ineffectual. Do not use; no replacement.

  [javax.sql.rowset.CachedRowSet.COMMIT\_ON\_ACCEPT\_CHANGES](java.sql.rowset/javax/sql/rowset/CachedRowSet.md#COMMIT_ON_ACCEPT_CHANGES)

  Because this field is final (it is part of an interface),
  its value cannot be changed.

  [javax.swing.ImageIcon.component](java.desktop/javax/swing/ImageIcon.md#component)

  since 1.8

  [javax.swing.ImageIcon.tracker](java.desktop/javax/swing/ImageIcon.md#tracker)

  since 1.8

  [javax.swing.JComponent.AccessibleJComponent.accessibleFocusHandler](java.desktop/javax/swing/JComponent.AccessibleJComponent.md#accessibleFocusHandler)

  [javax.swing.JViewport.backingStore](java.desktop/javax/swing/JViewport.md#backingStore)

  As of Java 2 platform v1.3

  [javax.swing.plaf.basic.BasicDesktopPaneUI.closeKey](java.desktop/javax/swing/plaf/basic/BasicDesktopPaneUI.md#closeKey)

  As of 1.3.

  [javax.swing.plaf.basic.BasicDesktopPaneUI.maximizeKey](java.desktop/javax/swing/plaf/basic/BasicDesktopPaneUI.md#maximizeKey)

  As of 1.3.

  [javax.swing.plaf.basic.BasicDesktopPaneUI.minimizeKey](java.desktop/javax/swing/plaf/basic/BasicDesktopPaneUI.md#minimizeKey)

  As of 1.3.

  [javax.swing.plaf.basic.BasicDesktopPaneUI.navigateKey](java.desktop/javax/swing/plaf/basic/BasicDesktopPaneUI.md#navigateKey)

  As of 1.3.

  [javax.swing.plaf.basic.BasicDesktopPaneUI.navigateKey2](java.desktop/javax/swing/plaf/basic/BasicDesktopPaneUI.md#navigateKey2)

  As of 1.3.

  [javax.swing.plaf.basic.BasicInternalFrameUI.openMenuKey](java.desktop/javax/swing/plaf/basic/BasicInternalFrameUI.md#openMenuKey)

  As of Java 2 platform v1.3.

  [javax.swing.plaf.basic.BasicSplitPaneUI.dividerResizeToggleKey](java.desktop/javax/swing/plaf/basic/BasicSplitPaneUI.md#dividerResizeToggleKey)

  As of Java 2 platform v1.3.

  [javax.swing.plaf.basic.BasicSplitPaneUI.downKey](java.desktop/javax/swing/plaf/basic/BasicSplitPaneUI.md#downKey)

  As of Java 2 platform v1.3.

  [javax.swing.plaf.basic.BasicSplitPaneUI.endKey](java.desktop/javax/swing/plaf/basic/BasicSplitPaneUI.md#endKey)

  As of Java 2 platform v1.3.

  [javax.swing.plaf.basic.BasicSplitPaneUI.homeKey](java.desktop/javax/swing/plaf/basic/BasicSplitPaneUI.md#homeKey)

  As of Java 2 platform v1.3.

  [javax.swing.plaf.basic.BasicSplitPaneUI.keyboardDownRightListener](java.desktop/javax/swing/plaf/basic/BasicSplitPaneUI.md#keyboardDownRightListener)

  As of Java 2 platform v1.3.

  [javax.swing.plaf.basic.BasicSplitPaneUI.keyboardEndListener](java.desktop/javax/swing/plaf/basic/BasicSplitPaneUI.md#keyboardEndListener)

  As of Java 2 platform v1.3.

  [javax.swing.plaf.basic.BasicSplitPaneUI.keyboardHomeListener](java.desktop/javax/swing/plaf/basic/BasicSplitPaneUI.md#keyboardHomeListener)

  As of Java 2 platform v1.3.

  [javax.swing.plaf.basic.BasicSplitPaneUI.keyboardResizeToggleListener](java.desktop/javax/swing/plaf/basic/BasicSplitPaneUI.md#keyboardResizeToggleListener)

  As of Java 2 platform v1.3.

  [javax.swing.plaf.basic.BasicSplitPaneUI.keyboardUpLeftListener](java.desktop/javax/swing/plaf/basic/BasicSplitPaneUI.md#keyboardUpLeftListener)

  As of Java 2 platform v1.3.

  [javax.swing.plaf.basic.BasicSplitPaneUI.leftKey](java.desktop/javax/swing/plaf/basic/BasicSplitPaneUI.md#leftKey)

  As of Java 2 platform v1.3.

  [javax.swing.plaf.basic.BasicSplitPaneUI.rightKey](java.desktop/javax/swing/plaf/basic/BasicSplitPaneUI.md#rightKey)

  As of Java 2 platform v1.3.

  [javax.swing.plaf.basic.BasicSplitPaneUI.upKey](java.desktop/javax/swing/plaf/basic/BasicSplitPaneUI.md#upKey)

  As of Java 2 platform v1.3.

  [javax.swing.plaf.basic.BasicTabbedPaneUI.downKey](java.desktop/javax/swing/plaf/basic/BasicTabbedPaneUI.md#downKey)

  As of Java 2 platform v1.3.

  [javax.swing.plaf.basic.BasicTabbedPaneUI.leftKey](java.desktop/javax/swing/plaf/basic/BasicTabbedPaneUI.md#leftKey)

  As of Java 2 platform v1.3.

  [javax.swing.plaf.basic.BasicTabbedPaneUI.rightKey](java.desktop/javax/swing/plaf/basic/BasicTabbedPaneUI.md#rightKey)

  As of Java 2 platform v1.3.

  [javax.swing.plaf.basic.BasicTabbedPaneUI.upKey](java.desktop/javax/swing/plaf/basic/BasicTabbedPaneUI.md#upKey)

  As of Java 2 platform v1.3.

  [javax.swing.plaf.basic.BasicToolBarUI.downKey](java.desktop/javax/swing/plaf/basic/BasicToolBarUI.md#downKey)

  As of Java 2 platform v1.3.

  [javax.swing.plaf.basic.BasicToolBarUI.leftKey](java.desktop/javax/swing/plaf/basic/BasicToolBarUI.md#leftKey)

  As of Java 2 platform v1.3.

  [javax.swing.plaf.basic.BasicToolBarUI.rightKey](java.desktop/javax/swing/plaf/basic/BasicToolBarUI.md#rightKey)

  As of Java 2 platform v1.3.

  [javax.swing.plaf.basic.BasicToolBarUI.upKey](java.desktop/javax/swing/plaf/basic/BasicToolBarUI.md#upKey)

  As of Java 2 platform v1.3.

  [javax.swing.table.TableColumn.resizedPostingDisableCount](java.desktop/javax/swing/table/TableColumn.md#resizedPostingDisableCount)

  as of Java 2 platform v1.3

  [javax.swing.text.html.FormView.RESET](java.desktop/javax/swing/text/html/FormView.md#RESET)

  As of 1.3, value comes from UIManager UIManager property
  FormView.resetButtonText

  [javax.swing.text.html.FormView.SUBMIT](java.desktop/javax/swing/text/html/FormView.md#SUBMIT)

  As of 1.3, value now comes from UIManager property
  FormView.submitButtonText

* Deprecated Methods

  Method

  Description

  [java.awt.AWTKeyStroke.registerSubclass(Class<?>)](java.desktop/java/awt/AWTKeyStroke.md#registerSubclass(java.lang.Class))

  [java.awt.BorderLayout.addLayoutComponent(String, Component)](java.desktop/java/awt/BorderLayout.md#addLayoutComponent(java.lang.String,java.awt.Component))

  replaced by `addLayoutComponent(Component, Object)`.

  [java.awt.CardLayout.addLayoutComponent(String, Component)](java.desktop/java/awt/CardLayout.md#addLayoutComponent(java.lang.String,java.awt.Component))

  replaced by
  `addLayoutComponent(Component, Object)`.

  [java.awt.CheckboxGroup.getCurrent()](java.desktop/java/awt/CheckboxGroup.md#getCurrent())

  As of JDK version 1.1,
  replaced by `getSelectedCheckbox()`.

  [java.awt.CheckboxGroup.setCurrent(Checkbox)](java.desktop/java/awt/CheckboxGroup.md#setCurrent(java.awt.Checkbox))

  As of JDK version 1.1,
  replaced by `setSelectedCheckbox(Checkbox)`.

  [java.awt.Choice.countItems()](java.desktop/java/awt/Choice.md#countItems())

  As of JDK version 1.1,
  replaced by `getItemCount()`.

  [java.awt.Component.action(Event, Object)](java.desktop/java/awt/Component.md#action(java.awt.Event,java.lang.Object))

  As of JDK version 1.1,
  should register this component as ActionListener on component
  which fires action events.

  [java.awt.Component.bounds()](java.desktop/java/awt/Component.md#bounds())

  As of JDK version 1.1,
  replaced by `getBounds()`.

  [java.awt.Component.deliverEvent(Event)](java.desktop/java/awt/Component.md#deliverEvent(java.awt.Event))

  As of JDK version 1.1,
  replaced by `dispatchEvent(AWTEvent e)`.

  [java.awt.Component.disable()](java.desktop/java/awt/Component.md#disable())

  As of JDK version 1.1,
  replaced by `setEnabled(boolean)`.

  [java.awt.Component.enable()](java.desktop/java/awt/Component.md#enable())

  As of JDK version 1.1,
  replaced by `setEnabled(boolean)`.

  [java.awt.Component.enable(boolean)](java.desktop/java/awt/Component.md#enable(boolean))

  As of JDK version 1.1,
  replaced by `setEnabled(boolean)`.

  [java.awt.Component.gotFocus(Event, Object)](java.desktop/java/awt/Component.md#gotFocus(java.awt.Event,java.lang.Object))

  As of JDK version 1.1,
  replaced by processFocusEvent(FocusEvent).

  [java.awt.Component.handleEvent(Event)](java.desktop/java/awt/Component.md#handleEvent(java.awt.Event))

  As of JDK version 1.1
  replaced by processEvent(AWTEvent).

  [java.awt.Component.hide()](java.desktop/java/awt/Component.md#hide())

  As of JDK version 1.1,
  replaced by `setVisible(boolean)`.

  [java.awt.Component.inside(int, int)](java.desktop/java/awt/Component.md#inside(int,int))

  As of JDK version 1.1,
  replaced by contains(int, int).

  [java.awt.Component.isFocusTraversable()](java.desktop/java/awt/Component.md#isFocusTraversable())

  As of 1.4, replaced by `isFocusable()`.

  [java.awt.Component.keyDown(Event, int)](java.desktop/java/awt/Component.md#keyDown(java.awt.Event,int))

  As of JDK version 1.1,
  replaced by processKeyEvent(KeyEvent).

  [java.awt.Component.keyUp(Event, int)](java.desktop/java/awt/Component.md#keyUp(java.awt.Event,int))

  As of JDK version 1.1,
  replaced by processKeyEvent(KeyEvent).

  [java.awt.Component.layout()](java.desktop/java/awt/Component.md#layout())

  As of JDK version 1.1,
  replaced by `doLayout()`.

  [java.awt.Component.locate(int, int)](java.desktop/java/awt/Component.md#locate(int,int))

  As of JDK version 1.1,
  replaced by getComponentAt(int, int).

  [java.awt.Component.location()](java.desktop/java/awt/Component.md#location())

  As of JDK version 1.1,
  replaced by `getLocation()`.

  [java.awt.Component.lostFocus(Event, Object)](java.desktop/java/awt/Component.md#lostFocus(java.awt.Event,java.lang.Object))

  As of JDK version 1.1,
  replaced by processFocusEvent(FocusEvent).

  [java.awt.Component.minimumSize()](java.desktop/java/awt/Component.md#minimumSize())

  As of JDK version 1.1,
  replaced by `getMinimumSize()`.

  [java.awt.Component.mouseDown(Event, int, int)](java.desktop/java/awt/Component.md#mouseDown(java.awt.Event,int,int))

  As of JDK version 1.1,
  replaced by processMouseEvent(MouseEvent).

  [java.awt.Component.mouseDrag(Event, int, int)](java.desktop/java/awt/Component.md#mouseDrag(java.awt.Event,int,int))

  As of JDK version 1.1,
  replaced by processMouseMotionEvent(MouseEvent).

  [java.awt.Component.mouseEnter(Event, int, int)](java.desktop/java/awt/Component.md#mouseEnter(java.awt.Event,int,int))

  As of JDK version 1.1,
  replaced by processMouseEvent(MouseEvent).

  [java.awt.Component.mouseExit(Event, int, int)](java.desktop/java/awt/Component.md#mouseExit(java.awt.Event,int,int))

  As of JDK version 1.1,
  replaced by processMouseEvent(MouseEvent).

  [java.awt.Component.mouseMove(Event, int, int)](java.desktop/java/awt/Component.md#mouseMove(java.awt.Event,int,int))

  As of JDK version 1.1,
  replaced by processMouseMotionEvent(MouseEvent).

  [java.awt.Component.mouseUp(Event, int, int)](java.desktop/java/awt/Component.md#mouseUp(java.awt.Event,int,int))

  As of JDK version 1.1,
  replaced by processMouseEvent(MouseEvent).

  [java.awt.Component.move(int, int)](java.desktop/java/awt/Component.md#move(int,int))

  As of JDK version 1.1,
  replaced by `setLocation(int, int)`.

  [java.awt.Component.nextFocus()](java.desktop/java/awt/Component.md#nextFocus())

  As of JDK version 1.1,
  replaced by transferFocus().

  [java.awt.Component.postEvent(Event)](java.desktop/java/awt/Component.md#postEvent(java.awt.Event))

  As of JDK version 1.1,
  replaced by dispatchEvent(AWTEvent).

  [java.awt.Component.preferredSize()](java.desktop/java/awt/Component.md#preferredSize())

  As of JDK version 1.1,
  replaced by `getPreferredSize()`.

  [java.awt.Component.reshape(int, int, int, int)](java.desktop/java/awt/Component.md#reshape(int,int,int,int))

  As of JDK version 1.1,
  replaced by `setBounds(int, int, int, int)`.

  [java.awt.Component.resize(int, int)](java.desktop/java/awt/Component.md#resize(int,int))

  As of JDK version 1.1,
  replaced by `setSize(int, int)`.

  [java.awt.Component.resize(Dimension)](java.desktop/java/awt/Component.md#resize(java.awt.Dimension))

  As of JDK version 1.1,
  replaced by `setSize(Dimension)`.

  [java.awt.Component.show()](java.desktop/java/awt/Component.md#show())

  As of JDK version 1.1,
  replaced by `setVisible(boolean)`.

  [java.awt.Component.show(boolean)](java.desktop/java/awt/Component.md#show(boolean))

  As of JDK version 1.1,
  replaced by `setVisible(boolean)`.

  [java.awt.Component.size()](java.desktop/java/awt/Component.md#size())

  As of JDK version 1.1,
  replaced by `getSize()`.

  [java.awt.ComponentOrientation.getOrientation(ResourceBundle)](java.desktop/java/awt/ComponentOrientation.md#getOrientation(java.util.ResourceBundle))

  As of J2SE 1.4, use [`ComponentOrientation.getOrientation(java.util.Locale)`](java.desktop/java/awt/ComponentOrientation.md#getOrientation(java.util.Locale)).

  [java.awt.Container.countComponents()](java.desktop/java/awt/Container.md#countComponents())

  As of JDK version 1.1,
  replaced by getComponentCount().

  [java.awt.Container.deliverEvent(Event)](java.desktop/java/awt/Container.md#deliverEvent(java.awt.Event))

  As of JDK version 1.1,
  replaced by `dispatchEvent(AWTEvent e)`

  [java.awt.Container.insets()](java.desktop/java/awt/Container.md#insets())

  As of JDK version 1.1,
  replaced by `getInsets()`.

  [java.awt.Container.layout()](java.desktop/java/awt/Container.md#layout())

  As of JDK version 1.1,
  replaced by `doLayout()`.

  [java.awt.Container.locate(int, int)](java.desktop/java/awt/Container.md#locate(int,int))

  As of JDK version 1.1,
  replaced by `getComponentAt(int, int)`.

  [java.awt.Container.minimumSize()](java.desktop/java/awt/Container.md#minimumSize())

  As of JDK version 1.1,
  replaced by `getMinimumSize()`.

  [java.awt.Container.preferredSize()](java.desktop/java/awt/Container.md#preferredSize())

  As of JDK version 1.1,
  replaced by `getPreferredSize()`.

  [java.awt.datatransfer.DataFlavor.equals(String)](java.datatransfer/java/awt/datatransfer/DataFlavor.md#equals(java.lang.String))

  As inconsistent with `hashCode()` contract, use
  [`DataFlavor.isMimeTypeEqual(String)`](java.datatransfer/java/awt/datatransfer/DataFlavor.md#isMimeTypeEqual(java.lang.String)) instead.

  [java.awt.datatransfer.DataFlavor.normalizeMimeType(String)](java.datatransfer/java/awt/datatransfer/DataFlavor.md#normalizeMimeType(java.lang.String))

  This method is never invoked by this implementation from 1.1
  onwards

  [java.awt.datatransfer.DataFlavor.normalizeMimeTypeParameter(String, String)](java.datatransfer/java/awt/datatransfer/DataFlavor.md#normalizeMimeTypeParameter(java.lang.String,java.lang.String))

  This method is never invoked by this implementation from 1.1
  onwards

  [java.awt.Dialog.hide()](java.desktop/java/awt/Dialog.md#hide())

  As of JDK version 1.5, replaced by
  [`setVisible(boolean)`](java.desktop/java/awt/Dialog.md#setVisible(boolean)).

  [java.awt.Dialog.show()](java.desktop/java/awt/Dialog.md#show())

  As of JDK version 1.5, replaced by
  [`setVisible(boolean)`](java.desktop/java/awt/Dialog.md#setVisible(boolean)).

  [java.awt.event.InputEvent.getModifiers()](java.desktop/java/awt/event/InputEvent.md#getModifiers())

  It is recommended that extended modifier keys and
  [`InputEvent.getModifiersEx()`](java.desktop/java/awt/event/InputEvent.md#getModifiersEx()) be used instead

  [java.awt.event.KeyEvent.getKeyModifiersText(int)](java.desktop/java/awt/event/KeyEvent.md#getKeyModifiersText(int))

  It is recommended that extended modifier keys and
  [`InputEvent.getModifiersExText(int)`](java.desktop/java/awt/event/InputEvent.md#getModifiersExText(int)) be used instead

  [java.awt.event.KeyEvent.setModifiers(int)](java.desktop/java/awt/event/KeyEvent.md#setModifiers(int))

  as of JDK1.1.4

  [java.awt.FontMetrics.getMaxDecent()](java.desktop/java/awt/FontMetrics.md#getMaxDecent())

  As of JDK version 1.1.1,
  replaced by `getMaxDescent()`.

  [java.awt.Frame.getCursorType()](java.desktop/java/awt/Frame.md#getCursorType())

  As of JDK version 1.1,
  replaced by `Component.getCursor()`.

  [java.awt.Frame.setCursor(int)](java.desktop/java/awt/Frame.md#setCursor(int))

  As of JDK version 1.1,
  replaced by `Component.setCursor(Cursor)`.

  [java.awt.Graphics.finalize()](java.desktop/java/awt/Graphics.md#finalize())

  Finalization has been deprecated for removal. See
  [`Object.finalize()`](java.base/java/lang/Object.md#finalize()) for background information and details
  about migration options.

  [java.awt.Graphics.getClipRect()](java.desktop/java/awt/Graphics.md#getClipRect())

  As of JDK version 1.1,
  replaced by `getClipBounds()`.

  [java.awt.image.renderable.RenderContext.concetenateTransform(AffineTransform)](java.desktop/java/awt/image/renderable/RenderContext.md#concetenateTransform(java.awt.geom.AffineTransform))

  replaced by
  `concatenateTransform(AffineTransform)`.

  [java.awt.image.renderable.RenderContext.preConcetenateTransform(AffineTransform)](java.desktop/java/awt/image/renderable/RenderContext.md#preConcetenateTransform(java.awt.geom.AffineTransform))

  replaced by
  `preConcatenateTransform(AffineTransform)`.

  [java.awt.List.addItem(String)](java.desktop/java/awt/List.md#addItem(java.lang.String))

  replaced by `add(String)`.

  [java.awt.List.addItem(String, int)](java.desktop/java/awt/List.md#addItem(java.lang.String,int))

  replaced by `add(String, int)`.

  [java.awt.List.allowsMultipleSelections()](java.desktop/java/awt/List.md#allowsMultipleSelections())

  As of JDK version 1.1,
  replaced by `isMultipleMode()`.

  [java.awt.List.clear()](java.desktop/java/awt/List.md#clear())

  As of JDK version 1.1,
  replaced by `removeAll()`.

  [java.awt.List.countItems()](java.desktop/java/awt/List.md#countItems())

  As of JDK version 1.1,
  replaced by `getItemCount()`.

  [java.awt.List.delItem(int)](java.desktop/java/awt/List.md#delItem(int))

  replaced by `remove(String)`
  and `remove(int)`.

  [java.awt.List.delItems(int, int)](java.desktop/java/awt/List.md#delItems(int,int))

  As of JDK version 1.1,
  Not for public use in the future.
  This method is expected to be retained only as a package
  private method.

  [java.awt.List.isSelected(int)](java.desktop/java/awt/List.md#isSelected(int))

  As of JDK version 1.1,
  replaced by `isIndexSelected(int)`.

  [java.awt.List.minimumSize()](java.desktop/java/awt/List.md#minimumSize())

  As of JDK version 1.1,
  replaced by `getMinimumSize()`.

  [java.awt.List.minimumSize(int)](java.desktop/java/awt/List.md#minimumSize(int))

  As of JDK version 1.1,
  replaced by `getMinimumSize(int)`.

  [java.awt.List.preferredSize()](java.desktop/java/awt/List.md#preferredSize())

  As of JDK version 1.1,
  replaced by `getPreferredSize()`.

  [java.awt.List.preferredSize(int)](java.desktop/java/awt/List.md#preferredSize(int))

  As of JDK version 1.1,
  replaced by `getPreferredSize(int)`.

  [java.awt.List.setMultipleSelections(boolean)](java.desktop/java/awt/List.md#setMultipleSelections(boolean))

  As of JDK version 1.1,
  replaced by `setMultipleMode(boolean)`.

  [java.awt.Menu.countItems()](java.desktop/java/awt/Menu.md#countItems())

  As of JDK version 1.1,
  replaced by `getItemCount()`.

  [java.awt.MenuBar.countMenus()](java.desktop/java/awt/MenuBar.md#countMenus())

  As of JDK version 1.1,
  replaced by `getMenuCount()`.

  [java.awt.MenuComponent.postEvent(Event)](java.desktop/java/awt/MenuComponent.md#postEvent(java.awt.Event))

  As of JDK version 1.1, replaced by [`dispatchEvent`](java.desktop/java/awt/MenuComponent.md#dispatchEvent(java.awt.AWTEvent)).

  [java.awt.MenuContainer.postEvent(Event)](java.desktop/java/awt/MenuContainer.md#postEvent(java.awt.Event))

  As of JDK version 1.1
  replaced by dispatchEvent(AWTEvent).

  [java.awt.MenuItem.disable()](java.desktop/java/awt/MenuItem.md#disable())

  As of JDK version 1.1,
  replaced by `setEnabled(boolean)`.

  [java.awt.MenuItem.enable()](java.desktop/java/awt/MenuItem.md#enable())

  As of JDK version 1.1,
  replaced by `setEnabled(boolean)`.

  [java.awt.MenuItem.enable(boolean)](java.desktop/java/awt/MenuItem.md#enable(boolean))

  As of JDK version 1.1,
  replaced by `setEnabled(boolean)`.

  [java.awt.Polygon.getBoundingBox()](java.desktop/java/awt/Polygon.md#getBoundingBox())

  As of JDK version 1.1,
  replaced by `getBounds()`.

  [java.awt.Polygon.inside(int, int)](java.desktop/java/awt/Polygon.md#inside(int,int))

  As of JDK version 1.1,
  replaced by `contains(int, int)`.

  [java.awt.PrintJob.finalize()](java.desktop/java/awt/PrintJob.md#finalize())

  Finalization has been deprecated for removal. See
  [`Object.finalize()`](java.base/java/lang/Object.md#finalize()) for background information and details
  about migration options.

  [java.awt.Rectangle.inside(int, int)](java.desktop/java/awt/Rectangle.md#inside(int,int))

  As of JDK version 1.1,
  replaced by `contains(int, int)`.

  [java.awt.Rectangle.move(int, int)](java.desktop/java/awt/Rectangle.md#move(int,int))

  As of JDK version 1.1,
  replaced by `setLocation(int, int)`.

  [java.awt.Rectangle.reshape(int, int, int, int)](java.desktop/java/awt/Rectangle.md#reshape(int,int,int,int))

  As of JDK version 1.1,
  replaced by `setBounds(int, int, int, int)`.

  [java.awt.Rectangle.resize(int, int)](java.desktop/java/awt/Rectangle.md#resize(int,int))

  As of JDK version 1.1,
  replaced by `setSize(int, int)`.

  [java.awt.Scrollbar.getLineIncrement()](java.desktop/java/awt/Scrollbar.md#getLineIncrement())

  As of JDK version 1.1,
  replaced by `getUnitIncrement()`.

  [java.awt.Scrollbar.getPageIncrement()](java.desktop/java/awt/Scrollbar.md#getPageIncrement())

  As of JDK version 1.1,
  replaced by `getBlockIncrement()`.

  [java.awt.Scrollbar.getVisible()](java.desktop/java/awt/Scrollbar.md#getVisible())

  As of JDK version 1.1,
  replaced by `getVisibleAmount()`.

  [java.awt.Scrollbar.setLineIncrement(int)](java.desktop/java/awt/Scrollbar.md#setLineIncrement(int))

  As of JDK version 1.1,
  replaced by `setUnitIncrement(int)`.

  [java.awt.Scrollbar.setPageIncrement(int)](java.desktop/java/awt/Scrollbar.md#setPageIncrement(int))

  As of JDK version 1.1,
  replaced by `setBlockIncrement()`.

  [java.awt.ScrollPane.layout()](java.desktop/java/awt/ScrollPane.md#layout())

  As of JDK version 1.1,
  replaced by `doLayout()`.

  [java.awt.TextArea.appendText(String)](java.desktop/java/awt/TextArea.md#appendText(java.lang.String))

  As of JDK version 1.1,
  replaced by `append(String)`.

  [java.awt.TextArea.insertText(String, int)](java.desktop/java/awt/TextArea.md#insertText(java.lang.String,int))

  As of JDK version 1.1,
  replaced by `insert(String, int)`.

  [java.awt.TextArea.minimumSize()](java.desktop/java/awt/TextArea.md#minimumSize())

  As of JDK version 1.1,
  replaced by `getMinimumSize()`.

  [java.awt.TextArea.minimumSize(int, int)](java.desktop/java/awt/TextArea.md#minimumSize(int,int))

  As of JDK version 1.1,
  replaced by `getMinimumSize(int, int)`.

  [java.awt.TextArea.preferredSize()](java.desktop/java/awt/TextArea.md#preferredSize())

  As of JDK version 1.1,
  replaced by `getPreferredSize()`.

  [java.awt.TextArea.preferredSize(int, int)](java.desktop/java/awt/TextArea.md#preferredSize(int,int))

  As of JDK version 1.1,
  replaced by `getPreferredSize(int, int)`.

  [java.awt.TextArea.replaceText(String, int, int)](java.desktop/java/awt/TextArea.md#replaceText(java.lang.String,int,int))

  As of JDK version 1.1,
  replaced by `replaceRange(String, int, int)`.

  [java.awt.TextField.minimumSize()](java.desktop/java/awt/TextField.md#minimumSize())

  As of JDK version 1.1,
  replaced by `getMinimumSize()`.

  [java.awt.TextField.minimumSize(int)](java.desktop/java/awt/TextField.md#minimumSize(int))

  As of JDK version 1.1,
  replaced by `getMinimumSize(int)`.

  [java.awt.TextField.preferredSize()](java.desktop/java/awt/TextField.md#preferredSize())

  As of JDK version 1.1,
  replaced by `getPreferredSize()`.

  [java.awt.TextField.preferredSize(int)](java.desktop/java/awt/TextField.md#preferredSize(int))

  As of JDK version 1.1,
  replaced by `getPreferredSize(int)`.

  [java.awt.TextField.setEchoCharacter(char)](java.desktop/java/awt/TextField.md#setEchoCharacter(char))

  As of JDK version 1.1,
  replaced by `setEchoChar(char)`.

  [java.awt.Toolkit.getFontList()](java.desktop/java/awt/Toolkit.md#getFontList())

  see [`GraphicsEnvironment.getAvailableFontFamilyNames()`](java.desktop/java/awt/GraphicsEnvironment.md#getAvailableFontFamilyNames())

  [java.awt.Toolkit.getFontMetrics(Font)](java.desktop/java/awt/Toolkit.md#getFontMetrics(java.awt.Font))

  As of JDK version 1.2, replaced by the `Font`
  method `getLineMetrics`.

  [java.awt.Toolkit.getMenuShortcutKeyMask()](java.desktop/java/awt/Toolkit.md#getMenuShortcutKeyMask())

  It is recommended that extended modifier keys and
  [`Toolkit.getMenuShortcutKeyMaskEx()`](java.desktop/java/awt/Toolkit.md#getMenuShortcutKeyMaskEx()) be used instead

  [java.awt.Window.applyResourceBundle(String)](java.desktop/java/awt/Window.md#applyResourceBundle(java.lang.String))

  As of J2SE 1.4, replaced by
  [`Component.applyComponentOrientation`](java.desktop/java/awt/Component.md#applyComponentOrientation(java.awt.ComponentOrientation)).

  [java.awt.Window.applyResourceBundle(ResourceBundle)](java.desktop/java/awt/Window.md#applyResourceBundle(java.util.ResourceBundle))

  As of J2SE 1.4, replaced by
  [`Component.applyComponentOrientation`](java.desktop/java/awt/Component.md#applyComponentOrientation(java.awt.ComponentOrientation)).

  [java.awt.Window.hide()](java.desktop/java/awt/Window.md#hide())

  As of JDK version 1.5, replaced by
  [`Window.setVisible(boolean)`](java.desktop/java/awt/Window.md#setVisible(boolean)).

  [java.awt.Window.postEvent(Event)](java.desktop/java/awt/Window.md#postEvent(java.awt.Event))

  As of JDK version 1.1
  replaced by `dispatchEvent(AWTEvent)`.

  [java.awt.Window.reshape(int, int, int, int)](java.desktop/java/awt/Window.md#reshape(int,int,int,int))

  As of JDK version 1.1,
  replaced by `setBounds(int, int, int, int)`.

  [java.awt.Window.show()](java.desktop/java/awt/Window.md#show())

  As of JDK version 1.5, replaced by
  [`Window.setVisible(boolean)`](java.desktop/java/awt/Window.md#setVisible(boolean)).

  [java.beans.Beans.instantiate(ClassLoader, String, BeanContext, AppletInitializer)](java.desktop/java/beans/Beans.md#instantiate(java.lang.ClassLoader,java.lang.String,java.beans.beancontext.BeanContext,java.beans.AppletInitializer))

  It is recommended to use
  [`Beans.instantiate(ClassLoader, String, BeanContext)`](java.desktop/java/beans/Beans.md#instantiate(java.lang.ClassLoader,java.lang.String,java.beans.beancontext.BeanContext)),
  because the Applet API is deprecated. See the
   [java.applet package
  documentation](./java.desktop/java/beans/../../java/applet/package-summary.md) for further information.

  [java.io.ByteArrayOutputStream.toString(int)](java.base/java/io/ByteArrayOutputStream.md#toString(int))

  This method does not properly convert bytes into characters.
  As of JDK 1.1, the preferred way to do this is via the
  [`ByteArrayOutputStream.toString(String charsetName)`](java.base/java/io/ByteArrayOutputStream.md#toString(java.lang.String)) or [`ByteArrayOutputStream.toString(Charset charset)`](java.base/java/io/ByteArrayOutputStream.md#toString(java.nio.charset.Charset))
  method, which takes an encoding-name or charset argument,
  or the `toString()` method, which uses the default charset.

  [java.io.DataInputStream.readLine()](java.base/java/io/DataInputStream.md#readLine())

  This method does not properly convert bytes to characters.
  As of JDK 1.1, the preferred way to read lines of text is via the
  `BufferedReader.readLine()` method. Programs that use the
  `DataInputStream` class to read lines can be converted to use
  the `BufferedReader` class by replacing code of the form:
  > ```
  >      DataInputStream d = new DataInputStream(in);
  > ```

  with:
  > ```
  >      BufferedReader d
  >           = new BufferedReader(new InputStreamReader(in));
  > ```

  [java.io.File.toURL()](java.base/java/io/File.md#toURL())

  This method does not automatically escape characters that
  are illegal in URLs. It is recommended that new code convert an
  abstract pathname into a URL by first converting it into a URI, via the
  [`toURI`](java.base/java/io/File.md#toURI()) method, and then converting the URI into a URL
  via the [`URI.toURL`](java.base/java/net/URI.md#toURL()) method.

  [java.io.ObjectInputStream.readLine()](java.base/java/io/ObjectInputStream.md#readLine())

  This method does not properly convert bytes to characters.
  see DataInputStream for the details and alternatives.

  [java.io.ObjectOutputStream.PutField.write(ObjectOutput)](java.base/java/io/ObjectOutputStream.PutField.md#write(java.io.ObjectOutput))

  This method does not write the values contained by this
  `PutField` object in a proper format, and may
  result in corruption of the serialization stream. The
  correct way to write `PutField` data is by
  calling the [`ObjectOutputStream.writeFields()`](java.base/java/io/ObjectOutputStream.md#writeFields())
  method.

  [java.lang.Character.isJavaLetter(char)](java.base/java/lang/Character.md#isJavaLetter(char))

  Replaced by isJavaIdentifierStart(char).

  [java.lang.Character.isJavaLetterOrDigit(char)](java.base/java/lang/Character.md#isJavaLetterOrDigit(char))

  Replaced by isJavaIdentifierPart(char).

  [java.lang.Character.isSpace(char)](java.base/java/lang/Character.md#isSpace(char))

  Replaced by isWhitespace(char).

  [java.lang.Class.newInstance()](java.base/java/lang/Class.md#newInstance())

  This method propagates any exception thrown by the
  nullary constructor, including a checked exception. Use of
  this method effectively bypasses the compile-time exception
  checking that would otherwise be performed by the compiler.
  The [`Constructor.newInstance`](java.base/java/lang/reflect/Constructor.md#newInstance(java.lang.Object...)) method avoids this problem by wrapping
  any exception thrown by the constructor in a (checked) [`InvocationTargetException`](java.base/java/lang/reflect/InvocationTargetException.md "class in java.lang.reflect").

  The call

  Copy![Copy snippet](copy.svg)

  ```
  clazz.newInstance()
  ```

  can be replaced by

  Copy![Copy snippet](copy.svg)

  ```
  clazz.getDeclaredConstructor().newInstance()
  ```

  The latter sequence of calls is inferred to be able to throw
  the additional exception types [`InvocationTargetException`](java.base/java/lang/reflect/InvocationTargetException.md "class in java.lang.reflect") and [`NoSuchMethodException`](java.base/java/lang/NoSuchMethodException.md "class in java.lang"). Both of these exception types are
  subclasses of [`ReflectiveOperationException`](java.base/java/lang/ReflectiveOperationException.md "class in java.lang").

  [java.lang.ClassLoader.defineClass(byte[], int, int)](java.base/java/lang/ClassLoader.md#defineClass(byte%5B%5D,int,int))

  Replaced by [`defineClass(String, byte[], int, int)`](java.base/java/lang/ClassLoader.md#defineClass(java.lang.String,byte%5B%5D,int,int))

  [java.lang.ClassLoader.getPackage(String)](java.base/java/lang/ClassLoader.md#getPackage(java.lang.String))

  If multiple class loaders delegate to each other and define classes
  with the same package name, and one such loader relies on the lookup
  behavior of `getPackage` to return a `Package` from
  a parent loader, then the properties exposed by the `Package`
  may not be as expected in the rest of the program.
  For example, the `Package` will only expose annotations from the
  `package-info.class` file defined by the parent loader, even if
  annotations exist in a `package-info.class` file defined by
  a child loader. A more robust approach is to use the
  [`ClassLoader.getDefinedPackage(java.lang.String)`](java.base/java/lang/ClassLoader.md#getDefinedPackage(java.lang.String)) method which returns
  a `Package` for the specified class loader.

  [java.lang.Enum.finalize()](java.base/java/lang/Enum.md#finalize())

  Finalization has been deprecated for removal. See
  [`Object.finalize()`](java.base/java/lang/Object.md#finalize()) for background information and details
  about migration options.

  [java.lang.invoke.MethodHandles.Lookup.hasPrivateAccess()](java.base/java/lang/invoke/MethodHandles.Lookup.md#hasPrivateAccess())

  This method was originally designed to test `PRIVATE` access
  that implies full privilege access but `MODULE` access has since become
  independent of `PRIVATE` access. It is recommended to call
  [`MethodHandles.Lookup.hasFullPrivilegeAccess()`](java.base/java/lang/invoke/MethodHandles.Lookup.md#hasFullPrivilegeAccess()) instead.

  [java.lang.management.MemoryMXBean.getObjectPendingFinalizationCount()](java.management/java/lang/management/MemoryMXBean.md#getObjectPendingFinalizationCount())

  Finalization has been deprecated for removal. See
  [`Object.finalize()`](java.base/java/lang/Object.md#finalize()) for details.

  [java.lang.Object.finalize()](java.base/java/lang/Object.md#finalize())

  Finalization is deprecated and subject to removal in a future
  release. The use of finalization can lead to problems with security,
  performance, and reliability.
  See [JEP 421](https://openjdk.org/jeps/421) for
  discussion and alternatives.

  Subclasses that override `finalize` to perform cleanup should use
  alternative cleanup mechanisms and remove the `finalize` method.
  Use [`Cleaner`](java.base/java/lang/ref/Cleaner.md "class in java.lang.ref") and
  [`PhantomReference`](java.base/java/lang/ref/PhantomReference.md "class in java.lang.ref") as safer ways to release resources
  when an object becomes unreachable. Alternatively, add a `close`
  method to explicitly release resources, and implement
  `AutoCloseable` to enable use of the `try`-with-resources
  statement.

  This method will remain in place until finalizers have been removed from
  most existing code.

  [java.lang.Package.getPackage(String)](java.base/java/lang/Package.md#getPackage(java.lang.String))

  If multiple class loaders delegate to each other and define classes
  with the same package name, and one such loader relies on the lookup
  behavior of `getPackage` to return a `Package` from
  a parent loader, then the properties exposed by the `Package`
  may not be as expected in the rest of the program.
  For example, the `Package` will only expose annotations from the
  `package-info.class` file defined by the parent loader, even if
  annotations exist in a `package-info.class` file defined by
  a child loader. A more robust approach is to use the
  [`ClassLoader.getDefinedPackage(java.lang.String)`](java.base/java/lang/ClassLoader.md#getDefinedPackage(java.lang.String)) method which returns
  a `Package` for the specified class loader.

  [java.lang.ref.Reference.isEnqueued()](java.base/java/lang/ref/Reference.md#isEnqueued())

  This method was originally specified to test if a reference object has
  been cleared and enqueued but was never implemented to do this test.
  This method could be misused due to the inherent race condition
  or without an associated `ReferenceQueue`.
  An application relying on this method to release critical resources
  could cause serious performance issue.
  An application should use [`ReferenceQueue`](java.base/java/lang/ref/ReferenceQueue.md "class in java.lang.ref") to reliably determine
  what reference objects that have been enqueued or
  [`refersTo(null)`](java.base/java/lang/ref/Reference.md#refersTo(T)) to determine if this reference
  object has been cleared.

  [java.lang.reflect.AccessibleObject.isAccessible()](java.base/java/lang/reflect/AccessibleObject.md#isAccessible())

  This method is deprecated because its name hints that it checks
  if the reflected object is accessible when it actually indicates
  if the checks for Java language access control are suppressed.
  This method may return `false` on a reflected object that is
  accessible to the caller. To test if this reflected object is accessible,
  it should use [`AccessibleObject.canAccess(Object)`](java.base/java/lang/reflect/AccessibleObject.md#canAccess(java.lang.Object)).

  [java.lang.reflect.Proxy.getProxyClass(ClassLoader, Class<?>...)](java.base/java/lang/reflect/Proxy.md#getProxyClass(java.lang.ClassLoader,java.lang.Class...))

  Proxy classes generated in a named module are encapsulated
  and not accessible to code outside its module.
  [`Constructor.newInstance`](java.base/java/lang/reflect/Constructor.md#newInstance(java.lang.Object...))
  will throw `IllegalAccessException` when it is called on
  an inaccessible proxy class.
  Use [`Proxy.newProxyInstance(ClassLoader, Class[], InvocationHandler)`](java.base/java/lang/reflect/Proxy.md#newProxyInstance(java.lang.ClassLoader,java.lang.Class%5B%5D,java.lang.reflect.InvocationHandler))
  to create a proxy instance instead.

  [java.lang.Runtime.exec(String)](java.base/java/lang/Runtime.md#exec(java.lang.String))

  This method is error-prone and should not be used, the corresponding method
  [`Runtime.exec(String[])`](java.base/java/lang/Runtime.md#exec(java.lang.String%5B%5D)) or [`ProcessBuilder`](java.base/java/lang/ProcessBuilder.md "class in java.lang") should be used instead.
  The command string is broken into tokens using only whitespace characters.
  For an argument with an embedded space, such as a filename, this can cause problems
  as the token does not include the full filename.

  [java.lang.Runtime.exec(String, String[])](java.base/java/lang/Runtime.md#exec(java.lang.String,java.lang.String%5B%5D))

  This method is error-prone and should not be used, the corresponding method
  [`Runtime.exec(String[], String[])`](java.base/java/lang/Runtime.md#exec(java.lang.String%5B%5D,java.lang.String%5B%5D)) or [`ProcessBuilder`](java.base/java/lang/ProcessBuilder.md "class in java.lang") should be used instead.
  The command string is broken into tokens using only whitespace characters.
  For an argument with an embedded space, such as a filename, this can cause problems
  as the token does not include the full filename.

  [java.lang.Runtime.exec(String, String[], File)](java.base/java/lang/Runtime.md#exec(java.lang.String,java.lang.String%5B%5D,java.io.File))

  This method is error-prone and should not be used, the corresponding method
  [`Runtime.exec(String[], String[], File)`](java.base/java/lang/Runtime.md#exec(java.lang.String%5B%5D,java.lang.String%5B%5D,java.io.File)) or [`ProcessBuilder`](java.base/java/lang/ProcessBuilder.md "class in java.lang") should be used instead.
  The command string is broken into tokens using only whitespace characters.
  For an argument with an embedded space, such as a filename, this can cause problems
  as the token does not include the full filename.

  [java.lang.Runtime.runFinalization()](java.base/java/lang/Runtime.md#runFinalization())

  Finalization has been deprecated for removal. See
  [`Object.finalize()`](java.base/java/lang/Object.md#finalize()) for background information and details
  about migration options.

  When running in a JVM in which finalization has been disabled or removed,
  no objects will be pending finalization, so this method does nothing.

  [java.lang.Runtime.Version.major()](java.base/java/lang/Runtime.Version.md#major())

  As of Java SE 10, the first element of a version
  number is not the major-release number but the feature-release
  counter, incremented for every time-based release. Use the [`Runtime.Version.feature()`](java.base/java/lang/Runtime.Version.md#feature()) method in preference to this method. For compatibility,
  this method returns the value of the [feature](./java.base/java/lang/Runtime.Version.md#FEATURE)
  element.

  [java.lang.Runtime.Version.minor()](java.base/java/lang/Runtime.Version.md#minor())

  As of Java SE 10, the second element of a version
  number is not the minor-release number but the interim-release
  counter, incremented for every interim release. Use the [`Runtime.Version.interim()`](java.base/java/lang/Runtime.Version.md#interim()) method in preference to this method. For compatibility,
  this method returns the value of the [interim](./java.base/java/lang/Runtime.Version.md#INTERIM)
  element, or zero if it is absent.

  [java.lang.Runtime.Version.security()](java.base/java/lang/Runtime.Version.md#security())

  As of Java SE 10, the third element of a version
  number is not the security level but the update-release counter,
  incremented for every update release. Use the [`Runtime.Version.update()`](java.base/java/lang/Runtime.Version.md#update())
  method in preference to this method. For compatibility, this method
  returns the value of the [update](./java.base/java/lang/Runtime.Version.md#UPDATE) element, or
  zero if it is absent.

  [java.lang.SecurityManager.checkMulticast(InetAddress, byte)](java.base/java/lang/SecurityManager.md#checkMulticast(java.net.InetAddress,byte))

  [java.lang.String.getBytes(int, int, byte[], int)](java.base/java/lang/String.md#getBytes(int,int,byte%5B%5D,int))

  This method does not properly convert characters into
  bytes. As of JDK 1.1, the preferred way to do this is via the
  [`String.getBytes()`](java.base/java/lang/String.md#getBytes()) method, which uses the [`default charset`](java.base/java/nio/charset/Charset.md#defaultCharset()).

  [java.lang.System.getSecurityManager()](java.base/java/lang/System.md#getSecurityManager())

  This method is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is
  deprecated and subject to removal in a future release.
  Consequently, this method is also deprecated and subject to
  removal. There is no replacement for the Security Manager or this
  method.

  [java.lang.System.runFinalization()](java.base/java/lang/System.md#runFinalization())

  Finalization has been deprecated for removal. See
  [`Object.finalize()`](java.base/java/lang/Object.md#finalize()) for background information and details
  about migration options.

  When running in a JVM in which finalization has been disabled or removed,
  no objects will be pending finalization, so this method does nothing.

  [java.lang.System.setSecurityManager(SecurityManager)](java.base/java/lang/System.md#setSecurityManager(java.lang.SecurityManager))

  This method is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is
  deprecated and subject to removal in a future release.
  Consequently, this method is also deprecated and subject to
  removal. There is no replacement for the Security Manager or this
  method.

  [java.lang.Thread.checkAccess()](java.base/java/lang/Thread.md#checkAccess())

  This method is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is
  deprecated and subject to removal in a future release.
  Consequently, this method is also deprecated and subject to
  removal. There is no replacement for the Security Manager or this
  method.

  [java.lang.Thread.countStackFrames()](java.base/java/lang/Thread.md#countStackFrames())

  This method was originally designed to count the number of
  stack frames but the results were never well-defined and it
  depended on thread-suspension.
  This method is subject to removal in a future version of Java SE.

  [java.lang.Thread.getId()](java.base/java/lang/Thread.md#getId())

  This method is not final and may be overridden to return a
  value that is not the thread ID. Use [`Thread.threadId()`](java.base/java/lang/Thread.md#threadId()) instead.

  [java.lang.Thread.resume()](java.base/java/lang/Thread.md#resume())

  This method was originally specified to resume a thread
  suspended with [`Thread.suspend()`](java.base/java/lang/Thread.md#suspend()). Suspending a thread was
  inherently deadlock-prone.
  For more information, see
  [Why
  are Thread.stop, Thread.suspend and Thread.resume Deprecated?](./java.base/java/lang/doc-files/threadPrimitiveDeprecation.md).

  [java.lang.Thread.stop()](java.base/java/lang/Thread.md#stop())

  This method was originally specified to "stop" a victim
  thread by causing the victim thread to throw a [`ThreadDeath`](java.base/java/lang/ThreadDeath.md "class in java.lang").
  It was inherently unsafe. Stopping a thread caused it to unlock
  all of the monitors that it had locked (as a natural consequence
  of the `ThreadDeath` exception propagating up the stack). If
  any of the objects previously protected by these monitors were in
  an inconsistent state, the damaged objects became visible to
  other threads, potentially resulting in arbitrary behavior.
  Usages of `stop` should be replaced by code that simply
  modifies some variable to indicate that the target thread should
  stop running. The target thread should check this variable
  regularly, and return from its run method in an orderly fashion
  if the variable indicates that it is to stop running. If the
  target thread waits for long periods (on a condition variable,
  for example), the `interrupt` method should be used to
  interrupt the wait.
  For more information, see
  [Why
  are Thread.stop, Thread.suspend and Thread.resume Deprecated?](./java.base/java/lang/doc-files/threadPrimitiveDeprecation.md).

  [java.lang.Thread.suspend()](java.base/java/lang/Thread.md#suspend())

  This method was originally specified to suspend a thread.
  It was inherently deadlock-prone. If the target thread held a lock on
  a monitor protecting a critical system resource when it was suspended,
  no thread could access the resource until the target thread was resumed.
  If the thread intending to resume the target thread attempted to lock
  the monitor prior to calling `resume`, deadlock would result.
  Such deadlocks typically manifested themselves as "frozen" processes.
  For more information, see
  [Why
  are Thread.stop, Thread.suspend and Thread.resume Deprecated?](./java.base/java/lang/doc-files/threadPrimitiveDeprecation.md).

  [java.lang.ThreadGroup.checkAccess()](java.base/java/lang/ThreadGroup.md#checkAccess())

  This method is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is
  deprecated and subject to removal in a future release.
  Consequently, this method is also deprecated and subject to
  removal. There is no replacement for the Security Manager or this
  method.

  [java.lang.ThreadGroup.destroy()](java.base/java/lang/ThreadGroup.md#destroy())

  This method was originally specified to destroy an empty
  thread group. The ability to explicitly destroy a thread group
  no longer exists. A thread group is eligible to be GC'ed when
  there are no live threads in the group and it is otherwise
  unreachable.

  [java.lang.ThreadGroup.isDaemon()](java.base/java/lang/ThreadGroup.md#isDaemon())

  This method originally indicated if the thread group is a
  *daemon thread group* that is automatically destroyed
  when its last thread terminates. The concept of daemon
  thread group no longer exists.
  A thread group is eligible to be GC'ed when there are no
  live threads in the group and it is otherwise unreachable.

  [java.lang.ThreadGroup.isDestroyed()](java.base/java/lang/ThreadGroup.md#isDestroyed())

  This method originally indicated if the thread group is
  destroyed. The ability to destroy a thread group and the
  concept of a destroyed thread group no longer exists.
  A thread group is eligible to be GC'ed when there are no
  live threads in the group and it is otherwise unreachable.

  [java.lang.ThreadGroup.resume()](java.base/java/lang/ThreadGroup.md#resume())

  This method was originally specified to resume all threads
  in the thread group.

  [java.lang.ThreadGroup.setDaemon(boolean)](java.base/java/lang/ThreadGroup.md#setDaemon(boolean))

  This method originally configured whether the thread group is
  a *daemon thread group* that is automatically destroyed
  when its last thread terminates. The concept of daemon thread
  group no longer exists. A thread group is eligible to be GC'ed
  when there are no live threads in the group and it is otherwise
  unreachable.

  [java.lang.ThreadGroup.stop()](java.base/java/lang/ThreadGroup.md#stop())

  This method was originally specified to stop all threads in
  the thread group. It was inherently unsafe.

  [java.lang.ThreadGroup.suspend()](java.base/java/lang/ThreadGroup.md#suspend())

  This method was originally specified to suspend all threads
  in the thread group.

  [java.math.BigDecimal.divide(BigDecimal, int)](java.base/java/math/BigDecimal.md#divide(java.math.BigDecimal,int))

  The method [`BigDecimal.divide(BigDecimal, RoundingMode)`](java.base/java/math/BigDecimal.md#divide(java.math.BigDecimal,java.math.RoundingMode))
  should be used in preference to this legacy method.

  [java.math.BigDecimal.divide(BigDecimal, int, int)](java.base/java/math/BigDecimal.md#divide(java.math.BigDecimal,int,int))

  The method [`BigDecimal.divide(BigDecimal, int, RoundingMode)`](java.base/java/math/BigDecimal.md#divide(java.math.BigDecimal,int,java.math.RoundingMode))
  should be used in preference to this legacy method.

  [java.math.BigDecimal.setScale(int, int)](java.base/java/math/BigDecimal.md#setScale(int,int))

  The method [`BigDecimal.setScale(int, RoundingMode)`](java.base/java/math/BigDecimal.md#setScale(int,java.math.RoundingMode)) should
  be used in preference to this legacy method.

  [java.net.DatagramSocket.setDatagramSocketImplFactory(DatagramSocketImplFactory)](java.base/java/net/DatagramSocket.md#setDatagramSocketImplFactory(java.net.DatagramSocketImplFactory))

  Use [`DatagramChannel`](java.base/java/nio/channels/DatagramChannel.md "class in java.nio.channels"), or subclass `DatagramSocket`
  directly.
    
   This method provided a way in early JDK releases to replace the
  system wide implementation of `DatagramSocket`. It has been mostly
  obsolete since Java 1.4. If required, a `DatagramSocket` can be
  created to use a custom implementation by extending `DatagramSocket`
  and using the [protected
  constructor](java.base/java/net/DatagramSocket.md#%3Cinit%3E(java.net.DatagramSocketImpl)) that takes an [implementation](java.base/java/net/DatagramSocketImpl.md "class in java.net")
  as a parameter.

  [java.net.DatagramSocketImpl.getTTL()](java.base/java/net/DatagramSocketImpl.md#getTTL())

  use getTimeToLive instead.

  [java.net.DatagramSocketImpl.setTTL(byte)](java.base/java/net/DatagramSocketImpl.md#setTTL(byte))

  use setTimeToLive instead.

  [java.net.MulticastSocket.getInterface()](java.base/java/net/MulticastSocket.md#getInterface())

  The network interface may not be uniquely identified by
  the InetAddress returned.
  Use [`MulticastSocket.getNetworkInterface()`](java.base/java/net/MulticastSocket.md#getNetworkInterface()) instead.

  [java.net.MulticastSocket.getLoopbackMode()](java.base/java/net/MulticastSocket.md#getLoopbackMode())

  Use [`DatagramSocket.getOption(SocketOption)`](java.base/java/net/DatagramSocket.md#getOption(java.net.SocketOption)) with
  [`StandardSocketOptions.IP_MULTICAST_LOOP`](java.base/java/net/StandardSocketOptions.md#IP_MULTICAST_LOOP)
  instead.

  [java.net.MulticastSocket.getTTL()](java.base/java/net/MulticastSocket.md#getTTL())

  use the [`MulticastSocket.getTimeToLive()`](java.base/java/net/MulticastSocket.md#getTimeToLive()) method instead,
  which returns an **int** instead of a **byte**.

  [java.net.MulticastSocket.joinGroup(InetAddress)](java.base/java/net/MulticastSocket.md#joinGroup(java.net.InetAddress))

  This method does not accept the network interface on
  which to join the multicast group. Use
  [`MulticastSocket.joinGroup(SocketAddress, NetworkInterface)`](java.base/java/net/MulticastSocket.md#joinGroup(java.net.SocketAddress,java.net.NetworkInterface)) instead.

  [java.net.MulticastSocket.leaveGroup(InetAddress)](java.base/java/net/MulticastSocket.md#leaveGroup(java.net.InetAddress))

  This method does not accept the network interface on which
  to leave the multicast group. Use
  [`MulticastSocket.leaveGroup(SocketAddress, NetworkInterface)`](java.base/java/net/MulticastSocket.md#leaveGroup(java.net.SocketAddress,java.net.NetworkInterface)) instead.

  [java.net.MulticastSocket.send(DatagramPacket, byte)](java.base/java/net/MulticastSocket.md#send(java.net.DatagramPacket,byte))

  Use the following code or its equivalent instead:

  ```
    ......
    int ttl = mcastSocket.getOption(StandardSocketOptions.IP_MULTICAST_TTL);
    mcastSocket.setOption(StandardSocketOptions.IP_MULTICAST_TTL, newttl);
    mcastSocket.send(p);
    mcastSocket.setOption(StandardSocketOptions.IP_MULTICAST_TTL, ttl);
    ......
  ```

  [java.net.MulticastSocket.setInterface(InetAddress)](java.base/java/net/MulticastSocket.md#setInterface(java.net.InetAddress))

  The InetAddress may not uniquely identify
  the network interface. Use
  [`MulticastSocket.setNetworkInterface(NetworkInterface)`](java.base/java/net/MulticastSocket.md#setNetworkInterface(java.net.NetworkInterface)) instead.

  [java.net.MulticastSocket.setLoopbackMode(boolean)](java.base/java/net/MulticastSocket.md#setLoopbackMode(boolean))

  Use [`DatagramSocket.setOption(SocketOption, Object)`](java.base/java/net/DatagramSocket.md#setOption(java.net.SocketOption,T)) with
  [`StandardSocketOptions.IP_MULTICAST_LOOP`](java.base/java/net/StandardSocketOptions.md#IP_MULTICAST_LOOP)
  instead. The loopback mode is enabled by default,
  `MulticastSocket.setOption(StandardSocketOptions.IP_MULTICAST_LOOP, false)`
  disables it.

  [java.net.MulticastSocket.setTTL(byte)](java.base/java/net/MulticastSocket.md#setTTL(byte))

  use the [`MulticastSocket.setTimeToLive(int)`](java.base/java/net/MulticastSocket.md#setTimeToLive(int)) method instead, which uses
  **int** instead of **byte** as the type for ttl.

  [java.net.ServerSocket.setSocketFactory(SocketImplFactory)](java.base/java/net/ServerSocket.md#setSocketFactory(java.net.SocketImplFactory))

  Use a [`ServerSocketFactory`](java.base/javax/net/ServerSocketFactory.md "class in javax.net") and subclass `ServerSocket`
  directly.
    
   This method provided a way in early JDK releases to replace the
  system wide implementation of `ServerSocket`. It has been mostly
  obsolete since Java 1.4. If required, a `ServerSocket` can be
  created to use a custom implementation by extending `ServerSocket`
  and using the [protected
  constructor](java.base/java/net/ServerSocket.md#%3Cinit%3E(java.net.SocketImpl)) that takes an [implementation](java.base/java/net/SocketImpl.md "class in java.net")
  as a parameter.

  [java.net.Socket.setSocketImplFactory(SocketImplFactory)](java.base/java/net/Socket.md#setSocketImplFactory(java.net.SocketImplFactory))

  Use a [`SocketFactory`](java.base/javax/net/SocketFactory.md "class in javax.net") and subclass `Socket`
  directly.
    
   This method provided a way in early JDK releases to replace the
  system wide implementation of `Socket`. It has been mostly
  obsolete since Java 1.4. If required, a `Socket` can be
  created to use a custom implementation by extending `Socket`
  and using the [protected
  constructor](java.base/java/net/Socket.md#%3Cinit%3E(java.net.SocketImpl)) that takes an [implementation](java.base/java/net/SocketImpl.md "class in java.net")
  as a parameter.

  [java.net.URLConnection.getDefaultRequestProperty(String)](java.base/java/net/URLConnection.md#getDefaultRequestProperty(java.lang.String))

  The instance specific getRequestProperty method
  should be used after an appropriate instance of URLConnection
  is obtained.

  [java.net.URLConnection.setDefaultRequestProperty(String, String)](java.base/java/net/URLConnection.md#setDefaultRequestProperty(java.lang.String,java.lang.String))

  The instance specific setRequestProperty method
  should be used after an appropriate instance of URLConnection
  is obtained. Invoking this method will have no effect.

  [java.net.URLDecoder.decode(String)](java.base/java/net/URLDecoder.md#decode(java.lang.String))

  The resulting string may vary depending on the
  default charset. Instead, use the decode(String,String) method
  to specify the encoding.

  [java.net.URLEncoder.encode(String)](java.base/java/net/URLEncoder.md#encode(java.lang.String))

  The resulting string may vary depending on the
  default charset. Instead, use the encode(String,String)
  method to specify the encoding.

  [java.net.URLStreamHandler.setURL(URL, String, String, int, String, String)](java.base/java/net/URLStreamHandler.md#setURL(java.net.URL,java.lang.String,java.lang.String,int,java.lang.String,java.lang.String))

  Use setURL(URL, String, String, int, String, String, String,
  String);

  [java.rmi.dgc.VMID.isUnique()](java.rmi/java/rmi/dgc/VMID.md#isUnique())

  [java.rmi.registry.RegistryHandler.registryImpl(int)](java.rmi/java/rmi/registry/RegistryHandler.md#registryImpl(int))

  no replacement. As of the Java 2 platform v1.2, RMI no
  longer uses the `RegistryHandler` to obtain the registry's
  implementation.

  [java.rmi.registry.RegistryHandler.registryStub(String, int)](java.rmi/java/rmi/registry/RegistryHandler.md#registryStub(java.lang.String,int))

  no replacement. As of the Java 2 platform v1.2, RMI no
  longer uses the `RegistryHandler` to obtain the registry's
  stub.

  [java.rmi.server.LoaderHandler.getSecurityContext(ClassLoader)](java.rmi/java/rmi/server/LoaderHandler.md#getSecurityContext(java.lang.ClassLoader))

  no replacement

  [java.rmi.server.LoaderHandler.loadClass(String)](java.rmi/java/rmi/server/LoaderHandler.md#loadClass(java.lang.String))

  no replacement

  [java.rmi.server.LoaderHandler.loadClass(URL, String)](java.rmi/java/rmi/server/LoaderHandler.md#loadClass(java.net.URL,java.lang.String))

  no replacement

  [java.rmi.server.LogStream.getDefaultStream()](java.rmi/java/rmi/server/LogStream.md#getDefaultStream())

  no replacement

  [java.rmi.server.LogStream.getOutputStream()](java.rmi/java/rmi/server/LogStream.md#getOutputStream())

  no replacement

  [java.rmi.server.LogStream.log(String)](java.rmi/java/rmi/server/LogStream.md#log(java.lang.String))

  no replacement

  [java.rmi.server.LogStream.parseLevel(String)](java.rmi/java/rmi/server/LogStream.md#parseLevel(java.lang.String))

  no replacement

  [java.rmi.server.LogStream.setDefaultStream(PrintStream)](java.rmi/java/rmi/server/LogStream.md#setDefaultStream(java.io.PrintStream))

  no replacement

  [java.rmi.server.LogStream.setOutputStream(OutputStream)](java.rmi/java/rmi/server/LogStream.md#setOutputStream(java.io.OutputStream))

  no replacement

  [java.rmi.server.LogStream.toString()](java.rmi/java/rmi/server/LogStream.md#toString())

  no replacement

  [java.rmi.server.LogStream.write(byte[], int, int)](java.rmi/java/rmi/server/LogStream.md#write(byte%5B%5D,int,int))

  no replacement

  [java.rmi.server.LogStream.write(int)](java.rmi/java/rmi/server/LogStream.md#write(int))

  no replacement

  [java.rmi.server.Operation.getOperation()](java.rmi/java/rmi/server/Operation.md#getOperation())

  no replacement

  [java.rmi.server.Operation.toString()](java.rmi/java/rmi/server/Operation.md#toString())

  no replacement

  [java.rmi.server.RemoteCall.done()](java.rmi/java/rmi/server/RemoteCall.md#done())

  no replacement

  [java.rmi.server.RemoteCall.executeCall()](java.rmi/java/rmi/server/RemoteCall.md#executeCall())

  no replacement

  [java.rmi.server.RemoteCall.getInputStream()](java.rmi/java/rmi/server/RemoteCall.md#getInputStream())

  no replacement

  [java.rmi.server.RemoteCall.getOutputStream()](java.rmi/java/rmi/server/RemoteCall.md#getOutputStream())

  no replacement

  [java.rmi.server.RemoteCall.getResultStream(boolean)](java.rmi/java/rmi/server/RemoteCall.md#getResultStream(boolean))

  no replacement

  [java.rmi.server.RemoteCall.releaseInputStream()](java.rmi/java/rmi/server/RemoteCall.md#releaseInputStream())

  no replacement

  [java.rmi.server.RemoteCall.releaseOutputStream()](java.rmi/java/rmi/server/RemoteCall.md#releaseOutputStream())

  no replacement

  [java.rmi.server.RemoteRef.done(RemoteCall)](java.rmi/java/rmi/server/RemoteRef.md#done(java.rmi.server.RemoteCall))

  1.2 style stubs no longer use this method. Instead of
  using a sequence of method calls to the remote reference
  (`newCall`, `invoke`, and `done`), a
  stub uses a single method, `invoke(Remote, Method, Object[],
  int)`, on the remote reference to carry out parameter
  marshalling, remote method executing and unmarshalling of the return
  value.

  [java.rmi.server.RemoteRef.invoke(RemoteCall)](java.rmi/java/rmi/server/RemoteRef.md#invoke(java.rmi.server.RemoteCall))

  1.2 style stubs no longer use this method. Instead of
  using a sequence of method calls to the remote reference
  (`newCall`, `invoke`, and `done`), a
  stub uses a single method, `invoke(Remote, Method, Object[],
  int)`, on the remote reference to carry out parameter
  marshalling, remote method executing and unmarshalling of the return
  value.

  [java.rmi.server.RemoteRef.newCall(RemoteObject, Operation[], int, long)](java.rmi/java/rmi/server/RemoteRef.md#newCall(java.rmi.server.RemoteObject,java.rmi.server.Operation%5B%5D,int,long))

  1.2 style stubs no longer use this method. Instead of
  using a sequence of method calls on the stub's the remote reference
  (`newCall`, `invoke`, and `done`), a
  stub uses a single method, `invoke(Remote, Method, Object[],
  int)`, on the remote reference to carry out parameter
  marshalling, remote method executing and unmarshalling of the return
  value.

  [java.rmi.server.RemoteStub.setRef(RemoteStub, RemoteRef)](java.rmi/java/rmi/server/RemoteStub.md#setRef(java.rmi.server.RemoteStub,java.rmi.server.RemoteRef))

  No replacement. The `setRef` method
  was intended for setting the remote reference of a remote
  stub. This is unnecessary, since `RemoteStub`s can be created
  and initialized with a remote reference through use of
  the [`RemoteStub(RemoteRef)`](java.rmi/java/rmi/server/RemoteStub.md#%3Cinit%3E(java.rmi.server.RemoteRef)) constructor.

  [java.rmi.server.RMIClassLoader.getSecurityContext(ClassLoader)](java.rmi/java/rmi/server/RMIClassLoader.md#getSecurityContext(java.lang.ClassLoader))

  no replacement. As of the Java 2 platform v1.2, RMI no
  longer uses this method to obtain a class loader's security context.

  [java.rmi.server.RMIClassLoader.loadClass(String)](java.rmi/java/rmi/server/RMIClassLoader.md#loadClass(java.lang.String))

  replaced by `loadClass(String,String)` method

  [java.rmi.server.Skeleton.dispatch(Remote, RemoteCall, int, long)](java.rmi/java/rmi/server/Skeleton.md#dispatch(java.rmi.Remote,java.rmi.server.RemoteCall,int,long))

  no replacement

  [java.rmi.server.Skeleton.getOperations()](java.rmi/java/rmi/server/Skeleton.md#getOperations())

  no replacement

  [java.rmi.server.UnicastRemoteObject.exportObject(Remote)](java.rmi/java/rmi/server/UnicastRemoteObject.md#exportObject(java.rmi.Remote))

  This method is deprecated because it supports only static stubs.
  Use [`exportObject(Remote, port)`](java.rmi/java/rmi/server/UnicastRemoteObject.md#exportObject(java.rmi.Remote,int)) or
  [`exportObject(Remote, port, csf, ssf)`](java.rmi/java/rmi/server/UnicastRemoteObject.md#exportObject(java.rmi.Remote,int,java.rmi.server.RMIClientSocketFactory,java.rmi.server.RMIServerSocketFactory))
  instead.

  [java.security.cert.X509Certificate.getIssuerDN()](java.base/java/security/cert/X509Certificate.md#getIssuerDN())

  Use [`X509Certificate.getIssuerX500Principal()`](java.base/java/security/cert/X509Certificate.md#getIssuerX500Principal()) instead. This method
  returns the `issuer` as an implementation specific
  `Principal` object, which should not be relied upon by portable
  code.

  [java.security.cert.X509Certificate.getSubjectDN()](java.base/java/security/cert/X509Certificate.md#getSubjectDN())

  Use [`X509Certificate.getSubjectX500Principal()`](java.base/java/security/cert/X509Certificate.md#getSubjectX500Principal()) instead. This method
  returns the `subject` as an implementation specific
  `Principal` object, which should not be relied upon by portable
  code.

  [java.security.cert.X509CertSelector.getIssuerAsString()](java.base/java/security/cert/X509CertSelector.md#getIssuerAsString())

  Use [`X509CertSelector.getIssuer()`](java.base/java/security/cert/X509CertSelector.md#getIssuer()) or [`X509CertSelector.getIssuerAsBytes()`](java.base/java/security/cert/X509CertSelector.md#getIssuerAsBytes())
  instead. This method should not be relied on as it can fail to match
  some certificates because of a loss of encoding information in the
  RFC 2253 String form of some distinguished names.

  [java.security.cert.X509CertSelector.getSubjectAsString()](java.base/java/security/cert/X509CertSelector.md#getSubjectAsString())

  Use [`X509CertSelector.getSubject()`](java.base/java/security/cert/X509CertSelector.md#getSubject()) or [`X509CertSelector.getSubjectAsBytes()`](java.base/java/security/cert/X509CertSelector.md#getSubjectAsBytes())
  instead. This method should not be relied on as it can fail to match
  some certificates because of a loss of encoding information in the
  RFC 2253 String form of some distinguished names.

  [java.security.cert.X509CertSelector.setIssuer(String)](java.base/java/security/cert/X509CertSelector.md#setIssuer(java.lang.String))

  Use [`X509CertSelector.setIssuer(X500Principal)`](java.base/java/security/cert/X509CertSelector.md#setIssuer(javax.security.auth.x500.X500Principal)) or
  [`X509CertSelector.setIssuer(byte[])`](java.base/java/security/cert/X509CertSelector.md#setIssuer(byte%5B%5D)) instead. This method should not be relied on
  as it can fail to match some certificates because of a loss of encoding
  information in the RFC 2253 String form of some distinguished names.

  [java.security.cert.X509CertSelector.setSubject(String)](java.base/java/security/cert/X509CertSelector.md#setSubject(java.lang.String))

  Use [`X509CertSelector.setSubject(X500Principal)`](java.base/java/security/cert/X509CertSelector.md#setSubject(javax.security.auth.x500.X500Principal)) or
  [`X509CertSelector.setSubject(byte[])`](java.base/java/security/cert/X509CertSelector.md#setSubject(byte%5B%5D)) instead. This method should not be relied
  on as it can fail to match some certificates because of a loss of
  encoding information in the RFC 2253 String form of some distinguished
  names.

  [java.security.cert.X509CRL.getIssuerDN()](java.base/java/security/cert/X509CRL.md#getIssuerDN())

  Use [`X509CRL.getIssuerX500Principal()`](java.base/java/security/cert/X509CRL.md#getIssuerX500Principal()) instead. This method
  returns the `issuer` as an implementation specific
  `Principal` object, which should not be relied upon by portable
  code.

  [java.security.cert.X509CRLSelector.addIssuerName(String)](java.base/java/security/cert/X509CRLSelector.md#addIssuerName(java.lang.String))

  Use [`X509CRLSelector.addIssuer(X500Principal)`](java.base/java/security/cert/X509CRLSelector.md#addIssuer(javax.security.auth.x500.X500Principal)) or
  [`X509CRLSelector.addIssuerName(byte[])`](java.base/java/security/cert/X509CRLSelector.md#addIssuerName(byte%5B%5D)) instead. This method should not be
  relied on as it can fail to match some CRLs because of a loss of
  encoding information in the RFC 2253 String form of some distinguished
  names.

  [java.security.Provider.getVersion()](java.base/java/security/Provider.md#getVersion())

  use [`Provider.getVersionStr()`](java.base/java/security/Provider.md#getVersionStr()) instead.

  [java.security.Security.getAlgorithmProperty(String, String)](java.base/java/security/Security.md#getAlgorithmProperty(java.lang.String,java.lang.String))

  This method used to return the value of a proprietary
  property in the master file of the "SUN" Cryptographic Service
  Provider in order to determine how to parse algorithm-specific
  parameters. Use the new provider-based and algorithm-independent
  `AlgorithmParameters` and `KeyFactory` engine
  classes (introduced in the J2SE version 1.2 platform) instead.

  [java.security.Signature.getParameter(String)](java.base/java/security/Signature.md#getParameter(java.lang.String))

  [java.security.Signature.setParameter(String, Object)](java.base/java/security/Signature.md#setParameter(java.lang.String,java.lang.Object))

  Use
  [`setParameter`](java.base/java/security/Signature.md#setParameter(java.security.spec.AlgorithmParameterSpec)).

  [java.security.SignatureSpi.engineGetParameter(String)](java.base/java/security/SignatureSpi.md#engineGetParameter(java.lang.String))

  [java.security.SignatureSpi.engineSetParameter(String, Object)](java.base/java/security/SignatureSpi.md#engineSetParameter(java.lang.String,java.lang.Object))

  Replaced by [`engineSetParameter`](java.base/java/security/SignatureSpi.md#engineSetParameter(java.security.spec.AlgorithmParameterSpec)).

  [java.sql.CallableStatement.getBigDecimal(int, int)](java.sql/java/sql/CallableStatement.md#getBigDecimal(int,int))

  use `getBigDecimal(int parameterIndex)`
  or `getBigDecimal(String parameterName)`

  [java.sql.Date.getHours()](java.sql/java/sql/Date.md#getHours())

  [java.sql.Date.getMinutes()](java.sql/java/sql/Date.md#getMinutes())

  [java.sql.Date.getSeconds()](java.sql/java/sql/Date.md#getSeconds())

  [java.sql.Date.setHours(int)](java.sql/java/sql/Date.md#setHours(int))

  [java.sql.Date.setMinutes(int)](java.sql/java/sql/Date.md#setMinutes(int))

  [java.sql.Date.setSeconds(int)](java.sql/java/sql/Date.md#setSeconds(int))

  [java.sql.DriverManager.getLogStream()](java.sql/java/sql/DriverManager.md#getLogStream())

  Use `getLogWriter`

  [java.sql.DriverManager.setLogStream(PrintStream)](java.sql/java/sql/DriverManager.md#setLogStream(java.io.PrintStream))

  Use `setLogWriter`

  [java.sql.PreparedStatement.setUnicodeStream(int, InputStream, int)](java.sql/java/sql/PreparedStatement.md#setUnicodeStream(int,java.io.InputStream,int))

  Use `setCharacterStream`

  [java.sql.ResultSet.getBigDecimal(int, int)](java.sql/java/sql/ResultSet.md#getBigDecimal(int,int))

  Use `getBigDecimal(int columnIndex)`
  or `getBigDecimal(String columnLabel)`

  [java.sql.ResultSet.getBigDecimal(String, int)](java.sql/java/sql/ResultSet.md#getBigDecimal(java.lang.String,int))

  Use `getBigDecimal(int columnIndex)`
  or `getBigDecimal(String columnLabel)`

  [java.sql.ResultSet.getUnicodeStream(int)](java.sql/java/sql/ResultSet.md#getUnicodeStream(int))

  use `getCharacterStream` in place of
  `getUnicodeStream`

  [java.sql.ResultSet.getUnicodeStream(String)](java.sql/java/sql/ResultSet.md#getUnicodeStream(java.lang.String))

  use `getCharacterStream` instead

  [java.sql.Time.getDate()](java.sql/java/sql/Time.md#getDate())

  [java.sql.Time.getDay()](java.sql/java/sql/Time.md#getDay())

  [java.sql.Time.getMonth()](java.sql/java/sql/Time.md#getMonth())

  [java.sql.Time.getYear()](java.sql/java/sql/Time.md#getYear())

  [java.sql.Time.setDate(int)](java.sql/java/sql/Time.md#setDate(int))

  [java.sql.Time.setMonth(int)](java.sql/java/sql/Time.md#setMonth(int))

  [java.sql.Time.setYear(int)](java.sql/java/sql/Time.md#setYear(int))

  [java.util.concurrent.atomic.AtomicBoolean.weakCompareAndSet(boolean, boolean)](java.base/java/util/concurrent/atomic/AtomicBoolean.md#weakCompareAndSet(boolean,boolean))

  This method has plain memory effects but the method
  name implies volatile memory effects (see methods such as
  [`AtomicBoolean.compareAndExchange(boolean, boolean)`](java.base/java/util/concurrent/atomic/AtomicBoolean.md#compareAndExchange(boolean,boolean)) and [`AtomicBoolean.compareAndSet(boolean, boolean)`](java.base/java/util/concurrent/atomic/AtomicBoolean.md#compareAndSet(boolean,boolean))). To avoid
  confusion over plain or volatile memory effects it is recommended that
  the method [`AtomicBoolean.weakCompareAndSetPlain(boolean, boolean)`](java.base/java/util/concurrent/atomic/AtomicBoolean.md#weakCompareAndSetPlain(boolean,boolean)) be used instead.

  [java.util.concurrent.atomic.AtomicInteger.weakCompareAndSet(int, int)](java.base/java/util/concurrent/atomic/AtomicInteger.md#weakCompareAndSet(int,int))

  This method has plain memory effects but the method
  name implies volatile memory effects (see methods such as
  [`AtomicInteger.compareAndExchange(int, int)`](java.base/java/util/concurrent/atomic/AtomicInteger.md#compareAndExchange(int,int)) and [`AtomicInteger.compareAndSet(int, int)`](java.base/java/util/concurrent/atomic/AtomicInteger.md#compareAndSet(int,int))). To avoid
  confusion over plain or volatile memory effects it is recommended that
  the method [`AtomicInteger.weakCompareAndSetPlain(int, int)`](java.base/java/util/concurrent/atomic/AtomicInteger.md#weakCompareAndSetPlain(int,int)) be used instead.

  [java.util.concurrent.atomic.AtomicIntegerArray.weakCompareAndSet(int, int, int)](java.base/java/util/concurrent/atomic/AtomicIntegerArray.md#weakCompareAndSet(int,int,int))

  This method has plain memory effects but the method
  name implies volatile memory effects (see methods such as
  [`AtomicIntegerArray.compareAndExchange(int, int, int)`](java.base/java/util/concurrent/atomic/AtomicIntegerArray.md#compareAndExchange(int,int,int)) and [`AtomicIntegerArray.compareAndSet(int, int, int)`](java.base/java/util/concurrent/atomic/AtomicIntegerArray.md#compareAndSet(int,int,int))). To avoid
  confusion over plain or volatile memory effects it is recommended that
  the method [`AtomicIntegerArray.weakCompareAndSetPlain(int, int, int)`](java.base/java/util/concurrent/atomic/AtomicIntegerArray.md#weakCompareAndSetPlain(int,int,int)) be used instead.

  [java.util.concurrent.atomic.AtomicLong.weakCompareAndSet(long, long)](java.base/java/util/concurrent/atomic/AtomicLong.md#weakCompareAndSet(long,long))

  This method has plain memory effects but the method
  name implies volatile memory effects (see methods such as
  [`AtomicLong.compareAndExchange(long, long)`](java.base/java/util/concurrent/atomic/AtomicLong.md#compareAndExchange(long,long)) and [`AtomicLong.compareAndSet(long, long)`](java.base/java/util/concurrent/atomic/AtomicLong.md#compareAndSet(long,long))). To avoid
  confusion over plain or volatile memory effects it is recommended that
  the method [`AtomicLong.weakCompareAndSetPlain(long, long)`](java.base/java/util/concurrent/atomic/AtomicLong.md#weakCompareAndSetPlain(long,long)) be used instead.

  [java.util.concurrent.atomic.AtomicLongArray.weakCompareAndSet(int, long, long)](java.base/java/util/concurrent/atomic/AtomicLongArray.md#weakCompareAndSet(int,long,long))

  This method has plain memory effects but the method
  name implies volatile memory effects (see methods such as
  [`AtomicLongArray.compareAndExchange(int, long, long)`](java.base/java/util/concurrent/atomic/AtomicLongArray.md#compareAndExchange(int,long,long)) and [`AtomicLongArray.compareAndSet(int, long, long)`](java.base/java/util/concurrent/atomic/AtomicLongArray.md#compareAndSet(int,long,long))). To avoid
  confusion over plain or volatile memory effects it is recommended that
  the method [`AtomicLongArray.weakCompareAndSetPlain(int, long, long)`](java.base/java/util/concurrent/atomic/AtomicLongArray.md#weakCompareAndSetPlain(int,long,long)) be used instead.

  [java.util.concurrent.atomic.AtomicReference.weakCompareAndSet(V, V)](java.base/java/util/concurrent/atomic/AtomicReference.md#weakCompareAndSet(V,V))

  This method has plain memory effects but the method
  name implies volatile memory effects (see methods such as
  [`AtomicReference.compareAndExchange(V, V)`](java.base/java/util/concurrent/atomic/AtomicReference.md#compareAndExchange(V,V)) and [`AtomicReference.compareAndSet(V, V)`](java.base/java/util/concurrent/atomic/AtomicReference.md#compareAndSet(V,V))). To avoid
  confusion over plain or volatile memory effects it is recommended that
  the method [`AtomicReference.weakCompareAndSetPlain(V, V)`](java.base/java/util/concurrent/atomic/AtomicReference.md#weakCompareAndSetPlain(V,V)) be used instead.

  [java.util.concurrent.atomic.AtomicReferenceArray.weakCompareAndSet(int, E, E)](java.base/java/util/concurrent/atomic/AtomicReferenceArray.md#weakCompareAndSet(int,E,E))

  This method has plain memory effects but the method
  name implies volatile memory effects (see methods such as
  [`AtomicReferenceArray.compareAndExchange(int, E, E)`](java.base/java/util/concurrent/atomic/AtomicReferenceArray.md#compareAndExchange(int,E,E)) and [`AtomicReferenceArray.compareAndSet(int, E, E)`](java.base/java/util/concurrent/atomic/AtomicReferenceArray.md#compareAndSet(int,E,E))). To avoid
  confusion over plain or volatile memory effects it is recommended that
  the method [`AtomicReferenceArray.weakCompareAndSetPlain(int, E, E)`](java.base/java/util/concurrent/atomic/AtomicReferenceArray.md#weakCompareAndSetPlain(int,E,E)) be used instead.

  [java.util.concurrent.Executors.privilegedCallable(Callable<T>)](java.base/java/util/concurrent/Executors.md#privilegedCallable(java.util.concurrent.Callable))

  This method is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is
  deprecated and subject to removal in a future release.
  Consequently, this method is also deprecated and subject to
  removal. There is no replacement for the Security Manager or this
  method.

  [java.util.concurrent.Executors.privilegedCallableUsingCurrentClassLoader(Callable<T>)](java.base/java/util/concurrent/Executors.md#privilegedCallableUsingCurrentClassLoader(java.util.concurrent.Callable))

  This method is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is
  deprecated and subject to removal in a future release.
  Consequently, this method is also deprecated and subject to
  removal. There is no replacement for the Security Manager or this
  method.

  [java.util.concurrent.Executors.privilegedThreadFactory()](java.base/java/util/concurrent/Executors.md#privilegedThreadFactory())

  This method is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is
  deprecated and subject to removal in a future release.
  Consequently, this method is also deprecated and subject to
  removal. There is no replacement for the Security Manager or this
  method.

  [java.util.concurrent.ThreadPoolExecutor.finalize()](java.base/java/util/concurrent/ThreadPoolExecutor.md#finalize())

  Finalization has been deprecated for removal. See
  [`Object.finalize()`](java.base/java/lang/Object.md#finalize()) for background information and details
  about migration options.

  [java.util.Date.getDate()](java.base/java/util/Date.md#getDate())

  As of JDK version 1.1,
  replaced by `Calendar.get(Calendar.DAY_OF_MONTH)`.

  [java.util.Date.getDay()](java.base/java/util/Date.md#getDay())

  As of JDK version 1.1,
  replaced by `Calendar.get(Calendar.DAY_OF_WEEK)`.

  [java.util.Date.getHours()](java.base/java/util/Date.md#getHours())

  As of JDK version 1.1,
  replaced by `Calendar.get(Calendar.HOUR_OF_DAY)`.

  [java.util.Date.getMinutes()](java.base/java/util/Date.md#getMinutes())

  As of JDK version 1.1,
  replaced by `Calendar.get(Calendar.MINUTE)`.

  [java.util.Date.getMonth()](java.base/java/util/Date.md#getMonth())

  As of JDK version 1.1,
  replaced by `Calendar.get(Calendar.MONTH)`.

  [java.util.Date.getSeconds()](java.base/java/util/Date.md#getSeconds())

  As of JDK version 1.1,
  replaced by `Calendar.get(Calendar.SECOND)`.

  [java.util.Date.getTimezoneOffset()](java.base/java/util/Date.md#getTimezoneOffset())

  As of JDK version 1.1,
  replaced by `-(Calendar.get(Calendar.ZONE_OFFSET) +
  Calendar.get(Calendar.DST_OFFSET)) / (60 * 1000)`.

  [java.util.Date.getYear()](java.base/java/util/Date.md#getYear())

  As of JDK version 1.1,
  replaced by `Calendar.get(Calendar.YEAR) - 1900`.

  [java.util.Date.parse(String)](java.base/java/util/Date.md#parse(java.lang.String))

  As of JDK version 1.1,
  replaced by `DateFormat.parse(String s)`.

  [java.util.Date.setDate(int)](java.base/java/util/Date.md#setDate(int))

  As of JDK version 1.1,
  replaced by `Calendar.set(Calendar.DAY_OF_MONTH, int date)`.

  [java.util.Date.setHours(int)](java.base/java/util/Date.md#setHours(int))

  As of JDK version 1.1,
  replaced by `Calendar.set(Calendar.HOUR_OF_DAY, int hours)`.

  [java.util.Date.setMinutes(int)](java.base/java/util/Date.md#setMinutes(int))

  As of JDK version 1.1,
  replaced by `Calendar.set(Calendar.MINUTE, int minutes)`.

  [java.util.Date.setMonth(int)](java.base/java/util/Date.md#setMonth(int))

  As of JDK version 1.1,
  replaced by `Calendar.set(Calendar.MONTH, int month)`.

  [java.util.Date.setSeconds(int)](java.base/java/util/Date.md#setSeconds(int))

  As of JDK version 1.1,
  replaced by `Calendar.set(Calendar.SECOND, int seconds)`.

  [java.util.Date.setYear(int)](java.base/java/util/Date.md#setYear(int))

  As of JDK version 1.1,
  replaced by `Calendar.set(Calendar.YEAR, year + 1900)`.

  [java.util.Date.toGMTString()](java.base/java/util/Date.md#toGMTString())

  As of JDK version 1.1,
  replaced by `DateFormat.format(Date date)`, using a
  GMT `TimeZone`.

  [java.util.Date.toLocaleString()](java.base/java/util/Date.md#toLocaleString())

  As of JDK version 1.1,
  replaced by `DateFormat.format(Date date)`.

  [java.util.Date.UTC(int, int, int, int, int, int)](java.base/java/util/Date.md#UTC(int,int,int,int,int,int))

  As of JDK version 1.1,
  replaced by `Calendar.set(year + 1900, month, date, hrs, min, sec)`
  or `GregorianCalendar(year + 1900, month, date, hrs, min, sec)`, using a UTC
  `TimeZone`, followed by `Calendar.getTime().getTime()`.

  [java.util.logging.Logger.logrb(Level, String, String, String, String)](java.logging/java/util/logging/Logger.md#logrb(java.util.logging.Level,java.lang.String,java.lang.String,java.lang.String,java.lang.String))

  Use [`Logger.logrb(java.util.logging.Level, java.lang.String, java.lang.String, java.util.ResourceBundle, java.lang.String, java.lang.Object...)`](java.logging/java/util/logging/Logger.md#logrb(java.util.logging.Level,java.lang.String,java.lang.String,java.util.ResourceBundle,java.lang.String,java.lang.Object...)) instead.

  [java.util.logging.Logger.logrb(Level, String, String, String, String, Object)](java.logging/java/util/logging/Logger.md#logrb(java.util.logging.Level,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.Object))

  Use [`Logger.logrb(java.util.logging.Level, java.lang.String, java.lang.String, java.util.ResourceBundle, java.lang.String, java.lang.Object...)`](java.logging/java/util/logging/Logger.md#logrb(java.util.logging.Level,java.lang.String,java.lang.String,java.util.ResourceBundle,java.lang.String,java.lang.Object...)) instead

  [java.util.logging.Logger.logrb(Level, String, String, String, String, Object[])](java.logging/java/util/logging/Logger.md#logrb(java.util.logging.Level,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.Object%5B%5D))

  Use [`Logger.logrb(java.util.logging.Level, java.lang.String, java.lang.String, java.util.ResourceBundle, java.lang.String, java.lang.Object...)`](java.logging/java/util/logging/Logger.md#logrb(java.util.logging.Level,java.lang.String,java.lang.String,java.util.ResourceBundle,java.lang.String,java.lang.Object...)) instead.

  [java.util.logging.Logger.logrb(Level, String, String, String, String, Throwable)](java.logging/java/util/logging/Logger.md#logrb(java.util.logging.Level,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.Throwable))

  Use [`Logger.logrb(java.util.logging.Level, java.lang.String, java.lang.String, java.util.ResourceBundle, java.lang.String, java.lang.Throwable)`](java.logging/java/util/logging/Logger.md#logrb(java.util.logging.Level,java.lang.String,java.lang.String,java.util.ResourceBundle,java.lang.String,java.lang.Throwable)) instead.

  [java.util.logging.LogManager.checkAccess()](java.logging/java/util/logging/LogManager.md#checkAccess())

  This method is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is
  deprecated and subject to removal in a future release.
  Consequently, this method is also deprecated and subject to
  removal. There is no replacement for the Security Manager or this
  method.

  [java.util.logging.LogManager.getLoggingMXBean()](java.logging/java/util/logging/LogManager.md#getLoggingMXBean())

  `java.util.logging.LoggingMXBean` is deprecated and
  replaced with `java.lang.management.PlatformLoggingMXBean`. Use
  [`ManagementFactory.getPlatformMXBean`](java.management/java/lang/management/ManagementFactory.md#getPlatformMXBean(java.lang.Class))(PlatformLoggingMXBean.class)
  instead.

  [java.util.logging.LogRecord.getThreadID()](java.logging/java/util/logging/LogRecord.md#getThreadID())

  Values returned by this method may be synthesized,
  and may not correspond to the actual [thread id](java.base/java/lang/Thread.md#getId()),
  use [`LogRecord.getLongThreadID()`](java.logging/java/util/logging/LogRecord.md#getLongThreadID()) instead.

  [java.util.logging.LogRecord.setMillis(long)](java.logging/java/util/logging/LogRecord.md#setMillis(long))

  LogRecord maintains timestamps with nanosecond resolution,
  using [`Instant`](java.base/java/time/Instant.md "class in java.time") values. For this reason,
  [`setInstant()`](java.logging/java/util/logging/LogRecord.md#setInstant(java.time.Instant))
  should be used in preference to `setMillis()`.

  [java.util.logging.LogRecord.setThreadID(int)](java.logging/java/util/logging/LogRecord.md#setThreadID(int))

  This method doesn't allow to pass a long [thread id](java.base/java/lang/Thread.md#getId()),
  use [`LogRecord.setLongThreadID(long)`](java.logging/java/util/logging/LogRecord.md#setLongThreadID(long)) instead.

  [java.util.Properties.save(OutputStream, String)](java.base/java/util/Properties.md#save(java.io.OutputStream,java.lang.String))

  This method does not throw an IOException if an I/O error
  occurs while saving the property list. The preferred way to save a
  properties list is via the `store(OutputStream out,
  String comments)` method or the
  `storeToXML(OutputStream os, String comment)` method.

  [javax.imageio.spi.ServiceRegistry.finalize()](java.desktop/javax/imageio/spi/ServiceRegistry.md#finalize())

  Finalization has been deprecated for removal. See
  [`Object.finalize()`](java.base/java/lang/Object.md#finalize()) for background information and details
  about migration options.

  [javax.imageio.stream.FileCacheImageInputStream.finalize()](java.desktop/javax/imageio/stream/FileCacheImageInputStream.md#finalize())

  Finalization has been deprecated for removal. See
  [`Object.finalize()`](java.base/java/lang/Object.md#finalize()) for background information and details
  about migration options.

  [javax.imageio.stream.FileImageInputStream.finalize()](java.desktop/javax/imageio/stream/FileImageInputStream.md#finalize())

  Finalization has been deprecated for removal. See
  [`Object.finalize()`](java.base/java/lang/Object.md#finalize()) for background information and details
  about migration options.

  [javax.imageio.stream.FileImageOutputStream.finalize()](java.desktop/javax/imageio/stream/FileImageOutputStream.md#finalize())

  Finalization has been deprecated for removal. See
  [`Object.finalize()`](java.base/java/lang/Object.md#finalize()) for background information and details
  about migration options.

  [javax.imageio.stream.ImageInputStreamImpl.finalize()](java.desktop/javax/imageio/stream/ImageInputStreamImpl.md#finalize())

  Finalization has been deprecated for removal. See
  [`Object.finalize()`](java.base/java/lang/Object.md#finalize()) for background information and details
  about migration options.

  [javax.imageio.stream.MemoryCacheImageInputStream.finalize()](java.desktop/javax/imageio/stream/MemoryCacheImageInputStream.md#finalize())

  Finalization has been deprecated for removal. See
  [`Object.finalize()`](java.base/java/lang/Object.md#finalize()) for background information and details
  about migration options.

  [javax.management.AttributeValueExp.setMBeanServer(MBeanServer)](java.management/javax/management/AttributeValueExp.md#setMBeanServer(javax.management.MBeanServer))

  This method has no effect. The MBean Server used to
  obtain an attribute value is [`QueryEval.getMBeanServer()`](java.management/javax/management/QueryEval.md#getMBeanServer()).

  [javax.management.MBeanServer.deserialize(String, byte[])](java.management/javax/management/MBeanServer.md#deserialize(java.lang.String,byte%5B%5D))

  Use [`MBeanServer.getClassLoaderRepository()`](java.management/javax/management/MBeanServer.md#getClassLoaderRepository()) to obtain the
  class loader repository and use it to deserialize.

  [javax.management.MBeanServer.deserialize(String, ObjectName, byte[])](java.management/javax/management/MBeanServer.md#deserialize(java.lang.String,javax.management.ObjectName,byte%5B%5D))

  Use [`getClassLoader`](java.management/javax/management/MBeanServer.md#getClassLoader(javax.management.ObjectName)) to obtain
  the class loader for deserialization.

  [javax.management.MBeanServer.deserialize(ObjectName, byte[])](java.management/javax/management/MBeanServer.md#deserialize(javax.management.ObjectName,byte%5B%5D))

  Use [`getClassLoaderFor`](java.management/javax/management/MBeanServer.md#getClassLoaderFor(javax.management.ObjectName)) to
  obtain the appropriate class loader for deserialization.

  [javax.management.monitor.CounterMonitor.getDerivedGauge()](java.management/javax/management/monitor/CounterMonitor.md#getDerivedGauge())

  As of JMX 1.2, replaced by
  [`CounterMonitor.getDerivedGauge(ObjectName)`](java.management/javax/management/monitor/CounterMonitor.md#getDerivedGauge(javax.management.ObjectName))

  [javax.management.monitor.CounterMonitor.getDerivedGaugeTimeStamp()](java.management/javax/management/monitor/CounterMonitor.md#getDerivedGaugeTimeStamp())

  As of JMX 1.2, replaced by
  [`CounterMonitor.getDerivedGaugeTimeStamp(ObjectName)`](java.management/javax/management/monitor/CounterMonitor.md#getDerivedGaugeTimeStamp(javax.management.ObjectName))

  [javax.management.monitor.CounterMonitor.getThreshold()](java.management/javax/management/monitor/CounterMonitor.md#getThreshold())

  As of JMX 1.2, replaced by [`CounterMonitor.getThreshold(ObjectName)`](java.management/javax/management/monitor/CounterMonitor.md#getThreshold(javax.management.ObjectName))

  [javax.management.monitor.CounterMonitor.setThreshold(Number)](java.management/javax/management/monitor/CounterMonitor.md#setThreshold(java.lang.Number))

  As of JMX 1.2, replaced by [`CounterMonitor.setInitThreshold(java.lang.Number)`](java.management/javax/management/monitor/CounterMonitor.md#setInitThreshold(java.lang.Number))

  [javax.management.monitor.CounterMonitorMBean.getDerivedGauge()](java.management/javax/management/monitor/CounterMonitorMBean.md#getDerivedGauge())

  As of JMX 1.2, replaced by [`CounterMonitorMBean.getDerivedGauge(ObjectName)`](java.management/javax/management/monitor/CounterMonitorMBean.md#getDerivedGauge(javax.management.ObjectName))

  [javax.management.monitor.CounterMonitorMBean.getDerivedGaugeTimeStamp()](java.management/javax/management/monitor/CounterMonitorMBean.md#getDerivedGaugeTimeStamp())

  As of JMX 1.2, replaced by [`CounterMonitorMBean.getDerivedGaugeTimeStamp(ObjectName)`](java.management/javax/management/monitor/CounterMonitorMBean.md#getDerivedGaugeTimeStamp(javax.management.ObjectName))

  [javax.management.monitor.CounterMonitorMBean.getThreshold()](java.management/javax/management/monitor/CounterMonitorMBean.md#getThreshold())

  As of JMX 1.2, replaced by [`CounterMonitorMBean.getThreshold(ObjectName)`](java.management/javax/management/monitor/CounterMonitorMBean.md#getThreshold(javax.management.ObjectName))

  [javax.management.monitor.CounterMonitorMBean.setThreshold(Number)](java.management/javax/management/monitor/CounterMonitorMBean.md#setThreshold(java.lang.Number))

  As of JMX 1.2, replaced by [`CounterMonitorMBean.setInitThreshold(java.lang.Number)`](java.management/javax/management/monitor/CounterMonitorMBean.md#setInitThreshold(java.lang.Number))

  [javax.management.monitor.GaugeMonitor.getDerivedGauge()](java.management/javax/management/monitor/GaugeMonitor.md#getDerivedGauge())

  As of JMX 1.2, replaced by
  [`GaugeMonitor.getDerivedGauge(ObjectName)`](java.management/javax/management/monitor/GaugeMonitor.md#getDerivedGauge(javax.management.ObjectName))

  [javax.management.monitor.GaugeMonitor.getDerivedGaugeTimeStamp()](java.management/javax/management/monitor/GaugeMonitor.md#getDerivedGaugeTimeStamp())

  As of JMX 1.2, replaced by
  [`GaugeMonitor.getDerivedGaugeTimeStamp(ObjectName)`](java.management/javax/management/monitor/GaugeMonitor.md#getDerivedGaugeTimeStamp(javax.management.ObjectName))

  [javax.management.monitor.GaugeMonitorMBean.getDerivedGauge()](java.management/javax/management/monitor/GaugeMonitorMBean.md#getDerivedGauge())

  As of JMX 1.2, replaced by [`GaugeMonitorMBean.getDerivedGauge(ObjectName)`](java.management/javax/management/monitor/GaugeMonitorMBean.md#getDerivedGauge(javax.management.ObjectName))

  [javax.management.monitor.GaugeMonitorMBean.getDerivedGaugeTimeStamp()](java.management/javax/management/monitor/GaugeMonitorMBean.md#getDerivedGaugeTimeStamp())

  As of JMX 1.2, replaced by [`GaugeMonitorMBean.getDerivedGaugeTimeStamp(ObjectName)`](java.management/javax/management/monitor/GaugeMonitorMBean.md#getDerivedGaugeTimeStamp(javax.management.ObjectName))

  [javax.management.monitor.Monitor.getObservedObject()](java.management/javax/management/monitor/Monitor.md#getObservedObject())

  As of JMX 1.2, replaced by [`Monitor.getObservedObjects()`](java.management/javax/management/monitor/Monitor.md#getObservedObjects())

  [javax.management.monitor.Monitor.setObservedObject(ObjectName)](java.management/javax/management/monitor/Monitor.md#setObservedObject(javax.management.ObjectName))

  As of JMX 1.2, replaced by [`Monitor.addObservedObject(javax.management.ObjectName)`](java.management/javax/management/monitor/Monitor.md#addObservedObject(javax.management.ObjectName))

  [javax.management.monitor.MonitorMBean.getObservedObject()](java.management/javax/management/monitor/MonitorMBean.md#getObservedObject())

  As of JMX 1.2, replaced by [`MonitorMBean.getObservedObjects()`](java.management/javax/management/monitor/MonitorMBean.md#getObservedObjects())

  [javax.management.monitor.MonitorMBean.setObservedObject(ObjectName)](java.management/javax/management/monitor/MonitorMBean.md#setObservedObject(javax.management.ObjectName))

  As of JMX 1.2, replaced by [`MonitorMBean.addObservedObject(javax.management.ObjectName)`](java.management/javax/management/monitor/MonitorMBean.md#addObservedObject(javax.management.ObjectName))

  [javax.management.monitor.StringMonitor.getDerivedGauge()](java.management/javax/management/monitor/StringMonitor.md#getDerivedGauge())

  As of JMX 1.2, replaced by
  [`StringMonitor.getDerivedGauge(ObjectName)`](java.management/javax/management/monitor/StringMonitor.md#getDerivedGauge(javax.management.ObjectName))

  [javax.management.monitor.StringMonitor.getDerivedGaugeTimeStamp()](java.management/javax/management/monitor/StringMonitor.md#getDerivedGaugeTimeStamp())

  As of JMX 1.2, replaced by
  [`StringMonitor.getDerivedGaugeTimeStamp(ObjectName)`](java.management/javax/management/monitor/StringMonitor.md#getDerivedGaugeTimeStamp(javax.management.ObjectName))

  [javax.management.monitor.StringMonitorMBean.getDerivedGauge()](java.management/javax/management/monitor/StringMonitorMBean.md#getDerivedGauge())

  As of JMX 1.2, replaced by [`StringMonitorMBean.getDerivedGauge(ObjectName)`](java.management/javax/management/monitor/StringMonitorMBean.md#getDerivedGauge(javax.management.ObjectName))

  [javax.management.monitor.StringMonitorMBean.getDerivedGaugeTimeStamp()](java.management/javax/management/monitor/StringMonitorMBean.md#getDerivedGaugeTimeStamp())

  As of JMX 1.2, replaced by [`StringMonitorMBean.getDerivedGaugeTimeStamp(ObjectName)`](java.management/javax/management/monitor/StringMonitorMBean.md#getDerivedGaugeTimeStamp(javax.management.ObjectName))

  [javax.management.remote.JMXConnector.getMBeanServerConnection(Subject)](java.management/javax/management/remote/JMXConnector.md#getMBeanServerConnection(javax.security.auth.Subject))

  This method supported the legacy Subject Delegation feature,
  and is only useful in conjunction with other APIs which are deprecated and
  subject to removal in a future release. Consequently, this method is also
  deprecated and subject to removal. There is no replacement.

  [javax.management.StringValueExp.setMBeanServer(MBeanServer)](java.management/javax/management/StringValueExp.md#setMBeanServer(javax.management.MBeanServer))

  [javax.management.ValueExp.setMBeanServer(MBeanServer)](java.management/javax/management/ValueExp.md#setMBeanServer(javax.management.MBeanServer))

  This method is not needed because a
  `ValueExp` can access the MBean server in which it
  is being evaluated by using [`QueryEval.getMBeanServer()`](java.management/javax/management/QueryEval.md#getMBeanServer()).

  [javax.net.ssl.HandshakeCompletedEvent.getPeerCertificateChain()](java.base/javax/net/ssl/HandshakeCompletedEvent.md#getPeerCertificateChain())

  The [`HandshakeCompletedEvent.getPeerCertificates()`](java.base/javax/net/ssl/HandshakeCompletedEvent.md#getPeerCertificates()) method that returns an
  array of `java.security.cert.Certificate` should
  be used instead.

  [javax.net.ssl.SSLSession.getPeerCertificateChain()](java.base/javax/net/ssl/SSLSession.md#getPeerCertificateChain())

  The [`SSLSession.getPeerCertificates()`](java.base/javax/net/ssl/SSLSession.md#getPeerCertificates()) method that returns an
  array of `java.security.cert.Certificate` should
  be used instead.

  [javax.security.auth.Subject.doAs(Subject, PrivilegedAction<T>)](java.base/javax/security/auth/Subject.md#doAs(javax.security.auth.Subject,java.security.PrivilegedAction))

  This method depends on [`AccessControlContext`](java.base/java/security/AccessControlContext.md "class in java.security")
  which, in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), is deprecated
  and subject to removal in a future release. However, performing
  work as a Subject is useful independent of the Security Manager.
  Thus, a replacement API named [`Subject.callAs(javax.security.auth.Subject, java.util.concurrent.Callable<T>)`](java.base/javax/security/auth/Subject.md#callAs(javax.security.auth.Subject,java.util.concurrent.Callable)) has been added
  which can be used to perform the same work.

  [javax.security.auth.Subject.doAs(Subject, PrivilegedExceptionAction<T>)](java.base/javax/security/auth/Subject.md#doAs(javax.security.auth.Subject,java.security.PrivilegedExceptionAction))

  This method depends on [`AccessControlContext`](java.base/java/security/AccessControlContext.md "class in java.security")
  which, in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), is deprecated
  and subject to removal in a future release. However, performing
  work as a Subject is useful independent of the Security Manager.
  Thus, a replacement API named [`Subject.callAs(javax.security.auth.Subject, java.util.concurrent.Callable<T>)`](java.base/javax/security/auth/Subject.md#callAs(javax.security.auth.Subject,java.util.concurrent.Callable)) has been added
  which can be used to perform the same work.

  [javax.security.auth.Subject.doAsPrivileged(Subject, PrivilegedAction<T>, AccessControlContext)](java.base/javax/security/auth/Subject.md#doAsPrivileged(javax.security.auth.Subject,java.security.PrivilegedAction,java.security.AccessControlContext))

  This method is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is
  deprecated and subject to removal in a future release.
  Consequently, this method is also deprecated and subject to
  removal. There is no replacement for the Security Manager or this
  method.

  [javax.security.auth.Subject.doAsPrivileged(Subject, PrivilegedExceptionAction<T>, AccessControlContext)](java.base/javax/security/auth/Subject.md#doAsPrivileged(javax.security.auth.Subject,java.security.PrivilegedExceptionAction,java.security.AccessControlContext))

  This method is only useful in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), which is
  deprecated and subject to removal in a future release.
  Consequently, this method is also deprecated and subject to
  removal. There is no replacement for the Security Manager or this
  method.

  [javax.security.auth.Subject.getSubject(AccessControlContext)](java.base/javax/security/auth/Subject.md#getSubject(java.security.AccessControlContext))

  This method depends on [`AccessControlContext`](java.base/java/security/AccessControlContext.md "class in java.security")
  which, in conjunction with
  [the Security Manager](java.base/java/lang/SecurityManager.md "class in java.lang"), is deprecated
  and subject to removal in a future release. However,
  obtaining a Subject is useful independent of the Security Manager.
  Thus, a replacement API named [`Subject.current()`](java.base/javax/security/auth/Subject.md#current()) has been added
  which can be used to obtain the current subject.

  [javax.sql.rowset.BaseRowSet.setUnicodeStream(int, InputStream, int)](java.sql.rowset/javax/sql/rowset/BaseRowSet.md#setUnicodeStream(int,java.io.InputStream,int))

  getCharacterStream should be used in its place

  [javax.swing.AbstractButton.getLabel()](java.desktop/javax/swing/AbstractButton.md#getLabel())

  - Replaced by `getText`

  [javax.swing.AbstractButton.setLabel(String)](java.desktop/javax/swing/AbstractButton.md#setLabel(java.lang.String))

  - Replaced by `setText(text)`

  [javax.swing.FocusManager.disableSwingFocusManager()](java.desktop/javax/swing/FocusManager.md#disableSwingFocusManager())

  as of 1.4, replaced by
  `KeyboardFocusManager.setDefaultFocusTraversalPolicy(FocusTraversalPolicy)`

  [javax.swing.FocusManager.isFocusManagerEnabled()](java.desktop/javax/swing/FocusManager.md#isFocusManagerEnabled())

  As of 1.4, replaced by
  `KeyboardFocusManager.getDefaultFocusTraversalPolicy()`

  [javax.swing.InputVerifier.shouldYieldFocus(JComponent)](java.desktop/javax/swing/InputVerifier.md#shouldYieldFocus(javax.swing.JComponent))

  use [`InputVerifier.shouldYieldFocus(JComponent, JComponent)`](java.desktop/javax/swing/InputVerifier.md#shouldYieldFocus(javax.swing.JComponent,javax.swing.JComponent))
  instead.

  [javax.swing.JComponent.disable()](java.desktop/javax/swing/JComponent.md#disable())

  As of JDK version 1.1,
  replaced by `java.awt.Component.setEnabled(boolean)`.

  [javax.swing.JComponent.enable()](java.desktop/javax/swing/JComponent.md#enable())

  As of JDK version 1.1,
  replaced by `java.awt.Component.setEnabled(boolean)`.

  [javax.swing.JComponent.getNextFocusableComponent()](java.desktop/javax/swing/JComponent.md#getNextFocusableComponent())

  As of 1.4, replaced by `FocusTraversalPolicy`.

  [javax.swing.JComponent.hide()](java.desktop/javax/swing/JComponent.md#hide())

  [javax.swing.JComponent.isManagingFocus()](java.desktop/javax/swing/JComponent.md#isManagingFocus())

  As of 1.4, replaced by
  `Component.setFocusTraversalKeys(int, Set)` and
  `Container.setFocusCycleRoot(boolean)`.

  [javax.swing.JComponent.requestDefaultFocus()](java.desktop/javax/swing/JComponent.md#requestDefaultFocus())

  As of 1.4, replaced by
  `FocusTraversalPolicy.getDefaultComponent(Container).requestFocus()`

  [javax.swing.JComponent.reshape(int, int, int, int)](java.desktop/javax/swing/JComponent.md#reshape(int,int,int,int))

  As of JDK 5,
  replaced by `Component.setBounds(int, int, int, int)`.

  Moves and resizes this component.

  [javax.swing.JComponent.setNextFocusableComponent(Component)](java.desktop/javax/swing/JComponent.md#setNextFocusableComponent(java.awt.Component))

  As of 1.4, replaced by `FocusTraversalPolicy`

  [javax.swing.JInternalFrame.getMenuBar()](java.desktop/javax/swing/JInternalFrame.md#getMenuBar())

  As of Swing version 1.0.3,
  replaced by `getJMenuBar()`.

  [javax.swing.JInternalFrame.setMenuBar(JMenuBar)](java.desktop/javax/swing/JInternalFrame.md#setMenuBar(javax.swing.JMenuBar))

  As of Swing version 1.0.3
  replaced by `setJMenuBar(JMenuBar m)`.

  [javax.swing.JList.getSelectedValues()](java.desktop/javax/swing/JList.md#getSelectedValues())

  As of JDK 1.7, replaced by [`JList.getSelectedValuesList()`](java.desktop/javax/swing/JList.md#getSelectedValuesList())

  [javax.swing.JMenuBar.getComponentAtIndex(int)](java.desktop/javax/swing/JMenuBar.md#getComponentAtIndex(int))

  replaced by `getComponent(int i)`

  [javax.swing.JPasswordField.getText()](java.desktop/javax/swing/JPasswordField.md#getText())

  As of Java 2 platform v1.2,
  replaced by `getPassword`.

  [javax.swing.JPasswordField.getText(int, int)](java.desktop/javax/swing/JPasswordField.md#getText(int,int))

  As of Java 2 platform v1.2,
  replaced by `getPassword`.

  [javax.swing.JPopupMenu.getComponentAtIndex(int)](java.desktop/javax/swing/JPopupMenu.md#getComponentAtIndex(int))

  replaced by [`Container.getComponent(int)`](java.desktop/java/awt/Container.md#getComponent(int))

  [javax.swing.JRootPane.getMenuBar()](java.desktop/javax/swing/JRootPane.md#getMenuBar())

  As of Swing version 1.0.3
  replaced by `getJMenuBar()`.

  [javax.swing.JRootPane.setMenuBar(JMenuBar)](java.desktop/javax/swing/JRootPane.md#setMenuBar(javax.swing.JMenuBar))

  As of Swing version 1.0.3
  replaced by `setJMenuBar(JMenuBar menu)`.

  [javax.swing.JTable.createScrollPaneForTable(JTable)](java.desktop/javax/swing/JTable.md#createScrollPaneForTable(javax.swing.JTable))

  As of Swing version 1.0.2,
  replaced by `new JScrollPane(aTable)`.

  [javax.swing.JTable.sizeColumnsToFit(boolean)](java.desktop/javax/swing/JTable.md#sizeColumnsToFit(boolean))

  As of Swing version 1.0.3,
  replaced by `doLayout()`.

  [javax.swing.JViewport.isBackingStoreEnabled()](java.desktop/javax/swing/JViewport.md#isBackingStoreEnabled())

  As of Java 2 platform v1.3, replaced by
  `getScrollMode()`.

  [javax.swing.JViewport.setBackingStoreEnabled(boolean)](java.desktop/javax/swing/JViewport.md#setBackingStoreEnabled(boolean))

  As of Java 2 platform v1.3, replaced by
  `setScrollMode()`.

  [javax.swing.KeyStroke.getKeyStroke(char, boolean)](java.desktop/javax/swing/KeyStroke.md#getKeyStroke(char,boolean))

  use getKeyStroke(char)

  [javax.swing.plaf.basic.BasicDirectoryModel.intervalAdded(ListDataEvent)](java.desktop/javax/swing/plaf/basic/BasicDirectoryModel.md#intervalAdded(javax.swing.event.ListDataEvent))

  Obsolete method, not used anymore.

  [javax.swing.plaf.basic.BasicDirectoryModel.intervalRemoved(ListDataEvent)](java.desktop/javax/swing/plaf/basic/BasicDirectoryModel.md#intervalRemoved(javax.swing.event.ListDataEvent))

  Obsolete method, not used anymore.

  [javax.swing.plaf.basic.BasicDirectoryModel.lt(File, File)](java.desktop/javax/swing/plaf/basic/BasicDirectoryModel.md#lt(java.io.File,java.io.File))

  Obsolete method, not used anymore.

  [javax.swing.plaf.basic.BasicSplitPaneUI.createKeyboardDownRightListener()](java.desktop/javax/swing/plaf/basic/BasicSplitPaneUI.md#createKeyboardDownRightListener())

  As of Java 2 platform v1.3.

  [javax.swing.plaf.basic.BasicSplitPaneUI.createKeyboardEndListener()](java.desktop/javax/swing/plaf/basic/BasicSplitPaneUI.md#createKeyboardEndListener())

  As of Java 2 platform v1.3.

  [javax.swing.plaf.basic.BasicSplitPaneUI.createKeyboardHomeListener()](java.desktop/javax/swing/plaf/basic/BasicSplitPaneUI.md#createKeyboardHomeListener())

  As of Java 2 platform v1.3.

  [javax.swing.plaf.basic.BasicSplitPaneUI.createKeyboardResizeToggleListener()](java.desktop/javax/swing/plaf/basic/BasicSplitPaneUI.md#createKeyboardResizeToggleListener())

  As of Java 2 platform v1.3.

  [javax.swing.plaf.basic.BasicSplitPaneUI.createKeyboardUpLeftListener()](java.desktop/javax/swing/plaf/basic/BasicSplitPaneUI.md#createKeyboardUpLeftListener())

  As of Java 2 platform v1.3.

  [javax.swing.plaf.basic.BasicSplitPaneUI.getDividerBorderSize()](java.desktop/javax/swing/plaf/basic/BasicSplitPaneUI.md#getDividerBorderSize())

  As of Java 2 platform v1.3, instead set the border on the
  divider.

  [javax.swing.plaf.basic.BasicTextUI.modelToView(JTextComponent, int)](java.desktop/javax/swing/plaf/basic/BasicTextUI.md#modelToView(javax.swing.text.JTextComponent,int))

  replaced by
  [`BasicTextUI.modelToView2D(JTextComponent, int, Position.Bias)`](java.desktop/javax/swing/plaf/basic/BasicTextUI.md#modelToView2D(javax.swing.text.JTextComponent,int,javax.swing.text.Position.Bias))

  [javax.swing.plaf.basic.BasicTextUI.modelToView(JTextComponent, int, Position.Bias)](java.desktop/javax/swing/plaf/basic/BasicTextUI.md#modelToView(javax.swing.text.JTextComponent,int,javax.swing.text.Position.Bias))

  replaced by
  [`BasicTextUI.modelToView2D(JTextComponent, int, Position.Bias)`](java.desktop/javax/swing/plaf/basic/BasicTextUI.md#modelToView2D(javax.swing.text.JTextComponent,int,javax.swing.text.Position.Bias))

  [javax.swing.plaf.basic.BasicTextUI.viewToModel(JTextComponent, Point)](java.desktop/javax/swing/plaf/basic/BasicTextUI.md#viewToModel(javax.swing.text.JTextComponent,java.awt.Point))

  replaced by
  [`BasicTextUI.viewToModel2D(JTextComponent, Point2D, Position.Bias[])`](java.desktop/javax/swing/plaf/basic/BasicTextUI.md#viewToModel2D(javax.swing.text.JTextComponent,java.awt.geom.Point2D,javax.swing.text.Position.Bias%5B%5D))

  [javax.swing.plaf.basic.BasicTextUI.viewToModel(JTextComponent, Point, Position.Bias[])](java.desktop/javax/swing/plaf/basic/BasicTextUI.md#viewToModel(javax.swing.text.JTextComponent,java.awt.Point,javax.swing.text.Position.Bias%5B%5D))

  replaced by
  [`BasicTextUI.viewToModel2D(JTextComponent, Point2D, Position.Bias[])`](java.desktop/javax/swing/plaf/basic/BasicTextUI.md#viewToModel2D(javax.swing.text.JTextComponent,java.awt.geom.Point2D,javax.swing.text.Position.Bias%5B%5D))

  [javax.swing.plaf.basic.BasicToolBarUI.createFloatingFrame(JToolBar)](java.desktop/javax/swing/plaf/basic/BasicToolBarUI.md#createFloatingFrame(javax.swing.JToolBar))

  It is recommended that [`BasicToolBarUI.createFloatingWindow(JToolBar)`](java.desktop/javax/swing/plaf/basic/BasicToolBarUI.md#createFloatingWindow(javax.swing.JToolBar))
  be used instead

  [javax.swing.plaf.metal.MetalComboBoxUI.editablePropertyChanged(PropertyChangeEvent)](java.desktop/javax/swing/plaf/metal/MetalComboBoxUI.md#editablePropertyChanged(java.beans.PropertyChangeEvent))

  As of Java 2 platform v1.4.

  [javax.swing.plaf.metal.MetalComboBoxUI.removeListeners()](java.desktop/javax/swing/plaf/metal/MetalComboBoxUI.md#removeListeners())

  As of Java 2 platform v1.4.

  [javax.swing.plaf.metal.MetalScrollPaneUI.uninstallListeners(JScrollPane)](java.desktop/javax/swing/plaf/metal/MetalScrollPaneUI.md#uninstallListeners(javax.swing.JScrollPane))

  - Replaced by [`MetalScrollPaneUI.uninstallListeners(JComponent)`](java.desktop/javax/swing/plaf/metal/MetalScrollPaneUI.md#uninstallListeners(javax.swing.JComponent))

  [javax.swing.plaf.multi.MultiTextUI.modelToView(JTextComponent, int)](java.desktop/javax/swing/plaf/multi/MultiTextUI.md#modelToView(javax.swing.text.JTextComponent,int))

  replaced by
  [`MultiTextUI.modelToView2D(JTextComponent, int, Position.Bias)`](java.desktop/javax/swing/plaf/multi/MultiTextUI.md#modelToView2D(javax.swing.text.JTextComponent,int,javax.swing.text.Position.Bias))

  [javax.swing.plaf.multi.MultiTextUI.modelToView(JTextComponent, int, Position.Bias)](java.desktop/javax/swing/plaf/multi/MultiTextUI.md#modelToView(javax.swing.text.JTextComponent,int,javax.swing.text.Position.Bias))

  replaced by
  [`MultiTextUI.modelToView2D(JTextComponent, int, Position.Bias)`](java.desktop/javax/swing/plaf/multi/MultiTextUI.md#modelToView2D(javax.swing.text.JTextComponent,int,javax.swing.text.Position.Bias))

  [javax.swing.plaf.multi.MultiTextUI.viewToModel(JTextComponent, Point)](java.desktop/javax/swing/plaf/multi/MultiTextUI.md#viewToModel(javax.swing.text.JTextComponent,java.awt.Point))

  [javax.swing.plaf.multi.MultiTextUI.viewToModel(JTextComponent, Point, Position.Bias[])](java.desktop/javax/swing/plaf/multi/MultiTextUI.md#viewToModel(javax.swing.text.JTextComponent,java.awt.Point,javax.swing.text.Position.Bias%5B%5D))

  [javax.swing.plaf.synth.SynthLookAndFeel.load(URL)](java.desktop/javax/swing/plaf/synth/SynthLookAndFeel.md#load(java.net.URL))

  Use [`SynthLookAndFeel.load(InputStream, Class)`](java.desktop/javax/swing/plaf/synth/SynthLookAndFeel.md#load(java.io.InputStream,java.lang.Class)) or
  [`setStyleFactory(SynthStyleFactory)`](java.desktop/javax/swing/plaf/synth/SynthLookAndFeel.md#setStyleFactory(javax.swing.plaf.synth.SynthStyleFactory)) instead

  [javax.swing.plaf.TextUI.getToolTipText(JTextComponent, Point)](java.desktop/javax/swing/plaf/TextUI.md#getToolTipText(javax.swing.text.JTextComponent,java.awt.Point))

  replaced by
  [`TextUI.getToolTipText2D(JTextComponent, Point2D)`](java.desktop/javax/swing/plaf/TextUI.md#getToolTipText2D(javax.swing.text.JTextComponent,java.awt.geom.Point2D))

  [javax.swing.plaf.TextUI.modelToView(JTextComponent, int)](java.desktop/javax/swing/plaf/TextUI.md#modelToView(javax.swing.text.JTextComponent,int))

  replaced by
  [`TextUI.modelToView2D(JTextComponent, int, Position.Bias)`](java.desktop/javax/swing/plaf/TextUI.md#modelToView2D(javax.swing.text.JTextComponent,int,javax.swing.text.Position.Bias))

  [javax.swing.plaf.TextUI.modelToView(JTextComponent, int, Position.Bias)](java.desktop/javax/swing/plaf/TextUI.md#modelToView(javax.swing.text.JTextComponent,int,javax.swing.text.Position.Bias))

  replaced by
  [`TextUI.modelToView2D(JTextComponent, int, Position.Bias)`](java.desktop/javax/swing/plaf/TextUI.md#modelToView2D(javax.swing.text.JTextComponent,int,javax.swing.text.Position.Bias))

  [javax.swing.plaf.TextUI.viewToModel(JTextComponent, Point)](java.desktop/javax/swing/plaf/TextUI.md#viewToModel(javax.swing.text.JTextComponent,java.awt.Point))

  replaced by
  [`TextUI.viewToModel2D(JTextComponent, Point2D, Position.Bias[])`](java.desktop/javax/swing/plaf/TextUI.md#viewToModel2D(javax.swing.text.JTextComponent,java.awt.geom.Point2D,javax.swing.text.Position.Bias%5B%5D))

  [javax.swing.plaf.TextUI.viewToModel(JTextComponent, Point, Position.Bias[])](java.desktop/javax/swing/plaf/TextUI.md#viewToModel(javax.swing.text.JTextComponent,java.awt.Point,javax.swing.text.Position.Bias%5B%5D))

  replaced by
  [`TextUI.viewToModel2D(JTextComponent, Point2D, Position.Bias[])`](java.desktop/javax/swing/plaf/TextUI.md#viewToModel2D(javax.swing.text.JTextComponent,java.awt.geom.Point2D,javax.swing.text.Position.Bias%5B%5D))

  [javax.swing.RepaintManager.addDirtyRegion(Applet, int, int, int, int)](java.desktop/javax/swing/RepaintManager.md#addDirtyRegion(java.applet.Applet,int,int,int,int))

  The Applet API is deprecated. See the
   [java.applet package
  documentation](./java.desktop/javax/swing/../../java/applet/package-summary.md) for further information.

  [javax.swing.ScrollPaneLayout.getViewportBorderBounds(JScrollPane)](java.desktop/javax/swing/ScrollPaneLayout.md#getViewportBorderBounds(javax.swing.JScrollPane))

  As of JDK version Swing1.1
  replaced by `JScrollPane.getViewportBorderBounds()`.

  [javax.swing.SwingUtilities.findFocusOwner(Component)](java.desktop/javax/swing/SwingUtilities.md#findFocusOwner(java.awt.Component))

  As of 1.4, replaced by
  `KeyboardFocusManager.getFocusOwner()`.

  [javax.swing.table.TableColumn.disableResizedPosting()](java.desktop/javax/swing/table/TableColumn.md#disableResizedPosting())

  as of Java 2 platform v1.3

  [javax.swing.table.TableColumn.enableResizedPosting()](java.desktop/javax/swing/table/TableColumn.md#enableResizedPosting())

  as of Java 2 platform v1.3

  [javax.swing.text.html.HTMLEditorKit.InsertHTMLTextAction.insertAtBoundry(JEditorPane, HTMLDocument, int, Element, String, HTML.Tag, HTML.Tag)](java.desktop/javax/swing/text/html/HTMLEditorKit.InsertHTMLTextAction.md#insertAtBoundry(javax.swing.JEditorPane,javax.swing.text.html.HTMLDocument,int,javax.swing.text.Element,java.lang.String,javax.swing.text.html.HTML.Tag,javax.swing.text.html.HTML.Tag))

  As of Java 2 platform v1.3, use insertAtBoundary

  [javax.swing.text.JTextComponent.modelToView(int)](java.desktop/javax/swing/text/JTextComponent.md#modelToView(int))

  replaced by
  [`JTextComponent.modelToView2D(int)`](java.desktop/javax/swing/text/JTextComponent.md#modelToView2D(int))

  [javax.swing.text.JTextComponent.viewToModel(Point)](java.desktop/javax/swing/text/JTextComponent.md#viewToModel(java.awt.Point))

  replaced by
  [`JTextComponent.viewToModel2D(Point2D)`](java.desktop/javax/swing/text/JTextComponent.md#viewToModel2D(java.awt.geom.Point2D))

  [javax.swing.text.LabelView.getFontMetrics()](java.desktop/javax/swing/text/LabelView.md#getFontMetrics())

  FontMetrics are not used for glyph rendering
  when running in the JDK.

  [javax.swing.text.PasswordView.drawEchoCharacter(Graphics, int, int, char)](java.desktop/javax/swing/text/PasswordView.md#drawEchoCharacter(java.awt.Graphics,int,int,char))

  replaced by
  [`PasswordView.drawEchoCharacter(Graphics2D, float, float, char)`](java.desktop/javax/swing/text/PasswordView.md#drawEchoCharacter(java.awt.Graphics2D,float,float,char))

  [javax.swing.text.PasswordView.drawSelectedText(Graphics, int, int, int, int)](java.desktop/javax/swing/text/PasswordView.md#drawSelectedText(java.awt.Graphics,int,int,int,int))

  replaced by
  [`PasswordView.drawSelectedText(Graphics2D, float, float, int, int)`](java.desktop/javax/swing/text/PasswordView.md#drawSelectedText(java.awt.Graphics2D,float,float,int,int))

  [javax.swing.text.PasswordView.drawUnselectedText(Graphics, int, int, int, int)](java.desktop/javax/swing/text/PasswordView.md#drawUnselectedText(java.awt.Graphics,int,int,int,int))

  replaced by
  [`PasswordView.drawUnselectedText(Graphics2D, float, float, int, int)`](java.desktop/javax/swing/text/PasswordView.md#drawUnselectedText(java.awt.Graphics2D,float,float,int,int))

  [javax.swing.text.PlainView.drawLine(int, Graphics, int, int)](java.desktop/javax/swing/text/PlainView.md#drawLine(int,java.awt.Graphics,int,int))

  replaced by
  [`PlainView.drawLine(int, Graphics2D, float, float)`](java.desktop/javax/swing/text/PlainView.md#drawLine(int,java.awt.Graphics2D,float,float))

  [javax.swing.text.PlainView.drawSelectedText(Graphics, int, int, int, int)](java.desktop/javax/swing/text/PlainView.md#drawSelectedText(java.awt.Graphics,int,int,int,int))

  replaced by
  [`PlainView.drawSelectedText(Graphics2D, float, float, int, int)`](java.desktop/javax/swing/text/PlainView.md#drawSelectedText(java.awt.Graphics2D,float,float,int,int))

  [javax.swing.text.PlainView.drawUnselectedText(Graphics, int, int, int, int)](java.desktop/javax/swing/text/PlainView.md#drawUnselectedText(java.awt.Graphics,int,int,int,int))

  replaced by
  [`PlainView.drawUnselectedText(Graphics2D, float, float, int, int)`](java.desktop/javax/swing/text/PlainView.md#drawUnselectedText(java.awt.Graphics2D,float,float,int,int))

  [javax.swing.text.TableView.createTableCell(Element)](java.desktop/javax/swing/text/TableView.md#createTableCell(javax.swing.text.Element))

  Table cells can now be any arbitrary
  View implementation and should be produced by the
  ViewFactory rather than the table.

  [javax.swing.text.Utilities.drawTabbedText(Segment, int, int, Graphics, TabExpander, int)](java.desktop/javax/swing/text/Utilities.md#drawTabbedText(javax.swing.text.Segment,int,int,java.awt.Graphics,javax.swing.text.TabExpander,int))

  replaced by
  [`Utilities.drawTabbedText(Segment, float, float, Graphics2D, TabExpander, int)`](java.desktop/javax/swing/text/Utilities.md#drawTabbedText(javax.swing.text.Segment,float,float,java.awt.Graphics2D,javax.swing.text.TabExpander,int))

  [javax.swing.text.Utilities.getBreakLocation(Segment, FontMetrics, int, int, TabExpander, int)](java.desktop/javax/swing/text/Utilities.md#getBreakLocation(javax.swing.text.Segment,java.awt.FontMetrics,int,int,javax.swing.text.TabExpander,int))

  replaced by
  [`Utilities.getBreakLocation(Segment, FontMetrics, float, float, TabExpander, int)`](java.desktop/javax/swing/text/Utilities.md#getBreakLocation(javax.swing.text.Segment,java.awt.FontMetrics,float,float,javax.swing.text.TabExpander,int))

  [javax.swing.text.Utilities.getPositionAbove(JTextComponent, int, int)](java.desktop/javax/swing/text/Utilities.md#getPositionAbove(javax.swing.text.JTextComponent,int,int))

  replaced by
  [`Utilities.getPositionAbove(JTextComponent, int, float)`](java.desktop/javax/swing/text/Utilities.md#getPositionAbove(javax.swing.text.JTextComponent,int,float))

  [javax.swing.text.Utilities.getPositionBelow(JTextComponent, int, int)](java.desktop/javax/swing/text/Utilities.md#getPositionBelow(javax.swing.text.JTextComponent,int,int))

  replaced by
  [`Utilities.getPositionBelow(JTextComponent, int, float)`](java.desktop/javax/swing/text/Utilities.md#getPositionBelow(javax.swing.text.JTextComponent,int,float))

  [javax.swing.text.Utilities.getTabbedTextOffset(Segment, FontMetrics, int, int, TabExpander, int)](java.desktop/javax/swing/text/Utilities.md#getTabbedTextOffset(javax.swing.text.Segment,java.awt.FontMetrics,int,int,javax.swing.text.TabExpander,int))

  replaced by
  [`Utilities.getTabbedTextOffset(Segment, FontMetrics, float, float, TabExpander, int, boolean)`](java.desktop/javax/swing/text/Utilities.md#getTabbedTextOffset(javax.swing.text.Segment,java.awt.FontMetrics,float,float,javax.swing.text.TabExpander,int,boolean))

  [javax.swing.text.Utilities.getTabbedTextOffset(Segment, FontMetrics, int, int, TabExpander, int, boolean)](java.desktop/javax/swing/text/Utilities.md#getTabbedTextOffset(javax.swing.text.Segment,java.awt.FontMetrics,int,int,javax.swing.text.TabExpander,int,boolean))

  replaced by
  [`Utilities.getTabbedTextOffset(Segment, FontMetrics, float, float, TabExpander, int, boolean)`](java.desktop/javax/swing/text/Utilities.md#getTabbedTextOffset(javax.swing.text.Segment,java.awt.FontMetrics,float,float,javax.swing.text.TabExpander,int,boolean))

  [javax.swing.text.Utilities.getTabbedTextWidth(Segment, FontMetrics, int, TabExpander, int)](java.desktop/javax/swing/text/Utilities.md#getTabbedTextWidth(javax.swing.text.Segment,java.awt.FontMetrics,int,javax.swing.text.TabExpander,int))

  replaced by
  [`Utilities.getTabbedTextWidth(Segment, FontMetrics, float, TabExpander, int)`](java.desktop/javax/swing/text/Utilities.md#getTabbedTextWidth(javax.swing.text.Segment,java.awt.FontMetrics,float,javax.swing.text.TabExpander,int))

  [javax.swing.text.View.modelToView(int, Shape)](java.desktop/javax/swing/text/View.md#modelToView(int,java.awt.Shape))

  [javax.swing.text.View.viewToModel(float, float, Shape)](java.desktop/javax/swing/text/View.md#viewToModel(float,float,java.awt.Shape))

  [javax.swing.text.WrappedPlainView.drawLine(int, int, Graphics, int, int)](java.desktop/javax/swing/text/WrappedPlainView.md#drawLine(int,int,java.awt.Graphics,int,int))

  replaced by
  [`WrappedPlainView.drawLine(int, int, Graphics2D, float, float)`](java.desktop/javax/swing/text/WrappedPlainView.md#drawLine(int,int,java.awt.Graphics2D,float,float))

  [javax.swing.text.WrappedPlainView.drawSelectedText(Graphics, int, int, int, int)](java.desktop/javax/swing/text/WrappedPlainView.md#drawSelectedText(java.awt.Graphics,int,int,int,int))

  replaced by
  [`WrappedPlainView.drawSelectedText(Graphics2D, float, float, int, int)`](java.desktop/javax/swing/text/WrappedPlainView.md#drawSelectedText(java.awt.Graphics2D,float,float,int,int))

  [javax.swing.text.WrappedPlainView.drawUnselectedText(Graphics, int, int, int, int)](java.desktop/javax/swing/text/WrappedPlainView.md#drawUnselectedText(java.awt.Graphics,int,int,int,int))

  replaced by
  [`WrappedPlainView.drawUnselectedText(Graphics2D, float, float, int, int)`](java.desktop/javax/swing/text/WrappedPlainView.md#drawUnselectedText(java.awt.Graphics2D,float,float,int,int))

  [javax.swing.tree.DefaultTreeSelectionModel.notifyPathChange(Vector<?>, TreePath)](java.desktop/javax/swing/tree/DefaultTreeSelectionModel.md#notifyPathChange(java.util.Vector,javax.swing.tree.TreePath))

  As of JDK version 1.7

  [javax.tools.StandardJavaFileManager.getJavaFileObjectsFromPaths(Iterable<? extends Path>)](java.compiler/javax/tools/StandardJavaFileManager.md#getJavaFileObjectsFromPaths(java.lang.Iterable))

  use [`StandardJavaFileManager.getJavaFileObjectsFromPaths(Collection)`](java.compiler/javax/tools/StandardJavaFileManager.md#getJavaFileObjectsFromPaths(java.util.Collection)) instead,
  to prevent the possibility of accidentally calling the method with a
  single `Path` as such an argument. Although `Path` implements
  `Iterable<Path>`, it would almost never be correct to pass a single
  `Path` and have it be treated as an `Iterable` of its
  components.

  [javax.tools.ToolProvider.getSystemToolClassLoader()](java.compiler/javax/tools/ToolProvider.md#getSystemToolClassLoader())

  This method is subject to removal in a future version of
  Java SE.
  Use the [`system tool provider`](java.base/java/util/spi/ToolProvider.md "interface in java.util.spi") or
  [`service loader`](java.base/java/util/ServiceLoader.md "class in java.util") mechanisms to
  locate system tools as well as user-installed tools.

  [javax.xml.stream.XMLEventFactory.newInstance(String, ClassLoader)](java.xml/javax/xml/stream/XMLEventFactory.md#newInstance(java.lang.String,java.lang.ClassLoader))

  This method has been deprecated to maintain API consistency.
  All newInstance methods have been replaced with corresponding
  newFactory methods. The replacement [`XMLEventFactory.newFactory(java.lang.String, java.lang.ClassLoader)`](java.xml/javax/xml/stream/XMLEventFactory.md#newFactory(java.lang.String,java.lang.ClassLoader))
  method defines no changes in behavior.

  [javax.xml.stream.XMLInputFactory.newInstance(String, ClassLoader)](java.xml/javax/xml/stream/XMLInputFactory.md#newInstance(java.lang.String,java.lang.ClassLoader))

  This method has been deprecated to maintain API consistency.
  All newInstance methods have been replaced with corresponding
  newFactory methods. The replacement [`XMLInputFactory.newFactory(java.lang.String, java.lang.ClassLoader)`](java.xml/javax/xml/stream/XMLInputFactory.md#newFactory(java.lang.String,java.lang.ClassLoader)) method
  defines no changes in behavior.

  [javax.xml.stream.XMLOutputFactory.newInstance(String, ClassLoader)](java.xml/javax/xml/stream/XMLOutputFactory.md#newInstance(java.lang.String,java.lang.ClassLoader))

  This method has been deprecated because it returns an
  instance of XMLInputFactory, which is of the wrong class.
  Use the new method [`XMLOutputFactory.newFactory(java.lang.String, java.lang.ClassLoader)`](java.xml/javax/xml/stream/XMLOutputFactory.md#newFactory(java.lang.String,java.lang.ClassLoader)) instead.

  [org.ietf.jgss.GSSContext.acceptSecContext(InputStream, OutputStream)](java.security.jgss/org/ietf/jgss/GSSContext.md#acceptSecContext(java.io.InputStream,java.io.OutputStream))

  The stream-based methods have been removed from RFC 8353.
  Use [`GSSContext.acceptSecContext(byte[], int, int)`](java.security.jgss/org/ietf/jgss/GSSContext.md#acceptSecContext(byte%5B%5D,int,int)) instead.

  [org.ietf.jgss.GSSContext.getMIC(InputStream, OutputStream, MessageProp)](java.security.jgss/org/ietf/jgss/GSSContext.md#getMIC(java.io.InputStream,java.io.OutputStream,org.ietf.jgss.MessageProp))

  The stream-based methods have been removed from RFC 8353.
  Use [`GSSContext.getMIC(byte[], int, int, MessageProp)`](java.security.jgss/org/ietf/jgss/GSSContext.md#getMIC(byte%5B%5D,int,int,org.ietf.jgss.MessageProp)) instead.

  [org.ietf.jgss.GSSContext.initSecContext(InputStream, OutputStream)](java.security.jgss/org/ietf/jgss/GSSContext.md#initSecContext(java.io.InputStream,java.io.OutputStream))

  The stream-based methods have been removed from RFC 8353.
  Use [`GSSContext.initSecContext(byte[], int, int)`](java.security.jgss/org/ietf/jgss/GSSContext.md#initSecContext(byte%5B%5D,int,int)) instead.

  [org.ietf.jgss.GSSContext.unwrap(InputStream, OutputStream, MessageProp)](java.security.jgss/org/ietf/jgss/GSSContext.md#unwrap(java.io.InputStream,java.io.OutputStream,org.ietf.jgss.MessageProp))

  The stream-based methods have been removed from RFC 8353.
  Use [`GSSContext.unwrap(byte[], int, int, MessageProp)`](java.security.jgss/org/ietf/jgss/GSSContext.md#unwrap(byte%5B%5D,int,int,org.ietf.jgss.MessageProp)) instead.

  [org.ietf.jgss.GSSContext.verifyMIC(InputStream, InputStream, MessageProp)](java.security.jgss/org/ietf/jgss/GSSContext.md#verifyMIC(java.io.InputStream,java.io.InputStream,org.ietf.jgss.MessageProp))

  The stream-based methods have been removed from RFC 8353.
  Use [`GSSContext.verifyMIC(byte[], int, int, byte[], int, int, MessageProp)`](java.security.jgss/org/ietf/jgss/GSSContext.md#verifyMIC(byte%5B%5D,int,int,byte%5B%5D,int,int,org.ietf.jgss.MessageProp))
  instead.

  [org.ietf.jgss.GSSContext.wrap(InputStream, OutputStream, MessageProp)](java.security.jgss/org/ietf/jgss/GSSContext.md#wrap(java.io.InputStream,java.io.OutputStream,org.ietf.jgss.MessageProp))

  The stream-based methods have been removed from RFC 8353.
  Use [`GSSContext.wrap(byte[], int, int, MessageProp)`](java.security.jgss/org/ietf/jgss/GSSContext.md#wrap(byte%5B%5D,int,int,org.ietf.jgss.MessageProp)) instead.

* Deprecated Constructors

  Constructor

  Description

  [java.awt.AWTEvent(Event)](java.desktop/java/awt/AWTEvent.md#%3Cinit%3E(java.awt.Event))

  It is recommended that [`AWTEvent(Object, int)`](java.desktop/java/awt/AWTEvent.md#%3Cinit%3E(java.lang.Object,int)) be used
  instead

  [java.awt.event.KeyEvent(Component, int, long, int, int)](java.desktop/java/awt/event/KeyEvent.md#%3Cinit%3E(java.awt.Component,int,long,int,int))

  as of JDK1.1; use [`KeyEvent(Component, int, long, int, int, char)`](java.desktop/java/awt/event/KeyEvent.md#%3Cinit%3E(java.awt.Component,int,long,int,int,char)) instead

  [java.io.StreamTokenizer(InputStream)](java.base/java/io/StreamTokenizer.md#%3Cinit%3E(java.io.InputStream))

  As of JDK version 1.1, the preferred way to tokenize an
  input stream is to convert it into a character stream, for example:

  Copy![Copy snippet](copy.svg)

  ```
      Reader r = new BufferedReader(new InputStreamReader(is));
      StreamTokenizer st = new StreamTokenizer(r);
  ```

  [java.lang.Boolean(boolean)](java.base/java/lang/Boolean.md#%3Cinit%3E(boolean))

  It is rarely appropriate to use this constructor. The static factory
  [`Boolean.valueOf(boolean)`](java.base/java/lang/Boolean.md#valueOf(boolean)) is generally a better choice, as it is
  likely to yield significantly better space and time performance.
  Also consider using the final fields [`Boolean.TRUE`](java.base/java/lang/Boolean.md#TRUE) and [`Boolean.FALSE`](java.base/java/lang/Boolean.md#FALSE)
  if possible.

  [java.lang.Boolean(String)](java.base/java/lang/Boolean.md#%3Cinit%3E(java.lang.String))

  It is rarely appropriate to use this constructor.
  Use [`Boolean.parseBoolean(String)`](java.base/java/lang/Boolean.md#parseBoolean(java.lang.String)) to convert a string to a
  `boolean` primitive, or use [`Boolean.valueOf(String)`](java.base/java/lang/Boolean.md#valueOf(java.lang.String))
  to convert a string to a `Boolean` object.

  [java.lang.Byte(byte)](java.base/java/lang/Byte.md#%3Cinit%3E(byte))

  It is rarely appropriate to use this constructor. The static factory
  [`Byte.valueOf(byte)`](java.base/java/lang/Byte.md#valueOf(byte)) is generally a better choice, as it is
  likely to yield significantly better space and time performance.

  [java.lang.Byte(String)](java.base/java/lang/Byte.md#%3Cinit%3E(java.lang.String))

  It is rarely appropriate to use this constructor.
  Use [`Byte.parseByte(String)`](java.base/java/lang/Byte.md#parseByte(java.lang.String)) to convert a string to a
  `byte` primitive, or use [`Byte.valueOf(String)`](java.base/java/lang/Byte.md#valueOf(java.lang.String))
  to convert a string to a `Byte` object.

  [java.lang.Character(char)](java.base/java/lang/Character.md#%3Cinit%3E(char))

  It is rarely appropriate to use this constructor. The static factory
  [`Character.valueOf(char)`](java.base/java/lang/Character.md#valueOf(char)) is generally a better choice, as it is
  likely to yield significantly better space and time performance.

  [java.lang.Double(double)](java.base/java/lang/Double.md#%3Cinit%3E(double))

  It is rarely appropriate to use this constructor. The static factory
  [`Double.valueOf(double)`](java.base/java/lang/Double.md#valueOf(double)) is generally a better choice, as it is
  likely to yield significantly better space and time performance.

  [java.lang.Double(String)](java.base/java/lang/Double.md#%3Cinit%3E(java.lang.String))

  It is rarely appropriate to use this constructor.
  Use [`Double.parseDouble(String)`](java.base/java/lang/Double.md#parseDouble(java.lang.String)) to convert a string to a
  `double` primitive, or use [`Double.valueOf(String)`](java.base/java/lang/Double.md#valueOf(java.lang.String))
  to convert a string to a `Double` object.

  [java.lang.Float(double)](java.base/java/lang/Float.md#%3Cinit%3E(double))

  It is rarely appropriate to use this constructor. Instead, use the
  static factory method [`Float.valueOf(float)`](java.base/java/lang/Float.md#valueOf(float)) method as follows:
  `Float.valueOf((float)value)`.

  [java.lang.Float(float)](java.base/java/lang/Float.md#%3Cinit%3E(float))

  It is rarely appropriate to use this constructor. The static factory
  [`Float.valueOf(float)`](java.base/java/lang/Float.md#valueOf(float)) is generally a better choice, as it is
  likely to yield significantly better space and time performance.

  [java.lang.Float(String)](java.base/java/lang/Float.md#%3Cinit%3E(java.lang.String))

  It is rarely appropriate to use this constructor.
  Use [`Float.parseFloat(String)`](java.base/java/lang/Float.md#parseFloat(java.lang.String)) to convert a string to a
  `float` primitive, or use [`Float.valueOf(String)`](java.base/java/lang/Float.md#valueOf(java.lang.String))
  to convert a string to a `Float` object.

  [java.lang.Integer(int)](java.base/java/lang/Integer.md#%3Cinit%3E(int))

  It is rarely appropriate to use this constructor. The static factory
  [`Integer.valueOf(int)`](java.base/java/lang/Integer.md#valueOf(int)) is generally a better choice, as it is
  likely to yield significantly better space and time performance.

  [java.lang.Integer(String)](java.base/java/lang/Integer.md#%3Cinit%3E(java.lang.String))

  It is rarely appropriate to use this constructor.
  Use [`Integer.parseInt(String)`](java.base/java/lang/Integer.md#parseInt(java.lang.String)) to convert a string to a
  `int` primitive, or use [`Integer.valueOf(String)`](java.base/java/lang/Integer.md#valueOf(java.lang.String))
  to convert a string to an `Integer` object.

  [java.lang.Long(long)](java.base/java/lang/Long.md#%3Cinit%3E(long))

  It is rarely appropriate to use this constructor. The static factory
  [`Long.valueOf(long)`](java.base/java/lang/Long.md#valueOf(long)) is generally a better choice, as it is
  likely to yield significantly better space and time performance.

  [java.lang.Long(String)](java.base/java/lang/Long.md#%3Cinit%3E(java.lang.String))

  It is rarely appropriate to use this constructor.
  Use [`Long.parseLong(String)`](java.base/java/lang/Long.md#parseLong(java.lang.String)) to convert a string to a
  `long` primitive, or use [`Long.valueOf(String)`](java.base/java/lang/Long.md#valueOf(java.lang.String))
  to convert a string to a `Long` object.

  [java.lang.reflect.AccessibleObject()](java.base/java/lang/reflect/AccessibleObject.md#%3Cinit%3E())

  [java.lang.Short(short)](java.base/java/lang/Short.md#%3Cinit%3E(short))

  It is rarely appropriate to use this constructor. The static factory
  [`Short.valueOf(short)`](java.base/java/lang/Short.md#valueOf(short)) is generally a better choice, as it is
  likely to yield significantly better space and time performance.

  [java.lang.Short(String)](java.base/java/lang/Short.md#%3Cinit%3E(java.lang.String))

  It is rarely appropriate to use this constructor.
  Use [`Short.parseShort(String)`](java.base/java/lang/Short.md#parseShort(java.lang.String)) to convert a string to a
  `short` primitive, or use [`Short.valueOf(String)`](java.base/java/lang/Short.md#valueOf(java.lang.String))
  to convert a string to a `Short` object.

  [java.lang.String(byte[], int)](java.base/java/lang/String.md#%3Cinit%3E(byte%5B%5D,int))

  This method does not properly convert bytes into
  characters. As of JDK 1.1, the preferred way to do this is via the
  `String` constructors that take a [`Charset`](java.base/java/nio/charset/Charset.md "class in java.nio.charset"), charset name,
  or that use the [`default charset`](java.base/java/nio/charset/Charset.md#defaultCharset()).

  [java.lang.String(byte[], int, int, int)](java.base/java/lang/String.md#%3Cinit%3E(byte%5B%5D,int,int,int))

  This method does not properly convert bytes into characters.
  As of JDK 1.1, the preferred way to do this is via the
  `String` constructors that take a [`Charset`](java.base/java/nio/charset/Charset.md "class in java.nio.charset"), charset name,
  or that use the [`default charset`](java.base/java/nio/charset/Charset.md#defaultCharset()).

  [java.net.Socket(String, int, boolean)](java.base/java/net/Socket.md#%3Cinit%3E(java.lang.String,int,boolean))

  Use DatagramSocket instead for UDP transport.

  [java.net.Socket(InetAddress, int, boolean)](java.base/java/net/Socket.md#%3Cinit%3E(java.net.InetAddress,int,boolean))

  Use DatagramSocket instead for UDP transport.

  [java.net.URL(String)](java.base/java/net/URL.md#%3Cinit%3E(java.lang.String))

  Use [`URI.toURL()`](java.base/java/net/URI.md#toURL()) to construct an instance of URL. See the note on
  [constructor deprecation](./java.base/java/net/URL.md#constructor-deprecation) for more
  details.

  [java.net.URL(String, String, int, String)](java.base/java/net/URL.md#%3Cinit%3E(java.lang.String,java.lang.String,int,java.lang.String))

  Use [`URI.toURL()`](java.base/java/net/URI.md#toURL()) to construct an instance of URL. See the note on
  [constructor deprecation](./java.base/java/net/URL.md#constructor-deprecation) for more
  details.

  [java.net.URL(String, String, int, String, URLStreamHandler)](java.base/java/net/URL.md#%3Cinit%3E(java.lang.String,java.lang.String,int,java.lang.String,java.net.URLStreamHandler))

  Use [`URL.of(URI, URLStreamHandler)`](java.base/java/net/URL.md#of(java.net.URI,java.net.URLStreamHandler)) to construct an instance of URL
  associated with a custom protocol handler.
  See the note on [constructor deprecation](./java.base/java/net/URL.md#constructor-deprecation)
  for more details.

  [java.net.URL(String, String, String)](java.base/java/net/URL.md#%3Cinit%3E(java.lang.String,java.lang.String,java.lang.String))

  Use [`URI.toURL()`](java.base/java/net/URI.md#toURL()) to construct an instance of URL. See the note on
  [constructor deprecation](./java.base/java/net/URL.md#constructor-deprecation) for more
  details.

  [java.net.URL(URL, String)](java.base/java/net/URL.md#%3Cinit%3E(java.net.URL,java.lang.String))

  Use [`URI.toURL()`](java.base/java/net/URI.md#toURL()) to construct an instance of URL. See the note on
  [constructor deprecation](./java.base/java/net/URL.md#constructor-deprecation) for more
  details.

  [java.net.URL(URL, String, URLStreamHandler)](java.base/java/net/URL.md#%3Cinit%3E(java.net.URL,java.lang.String,java.net.URLStreamHandler))

  Use [`URL.of(URI, URLStreamHandler)`](java.base/java/net/URL.md#of(java.net.URI,java.net.URLStreamHandler)) to construct an instance of URL
  associated with a custom protocol handler.
  See the note on [constructor deprecation](./java.base/java/net/URL.md#constructor-deprecation)
  for more details.

  [java.rmi.RMISecurityException(String)](java.rmi/java/rmi/RMISecurityException.md#%3Cinit%3E(java.lang.String))

  no replacement

  [java.rmi.RMISecurityException(String, String)](java.rmi/java/rmi/RMISecurityException.md#%3Cinit%3E(java.lang.String,java.lang.String))

  no replacement

  [java.rmi.server.Operation(String)](java.rmi/java/rmi/server/Operation.md#%3Cinit%3E(java.lang.String))

  no replacement

  [java.rmi.server.SkeletonMismatchException(String)](java.rmi/java/rmi/server/SkeletonMismatchException.md#%3Cinit%3E(java.lang.String))

  no replacement

  [java.rmi.ServerRuntimeException(String, Exception)](java.rmi/java/rmi/ServerRuntimeException.md#%3Cinit%3E(java.lang.String,java.lang.Exception))

  no replacement

  [java.security.AuthProvider(String, double, String)](java.base/java/security/AuthProvider.md#%3Cinit%3E(java.lang.String,double,java.lang.String))

  use [`AuthProvider(String, String, String)`](java.base/java/security/AuthProvider.md#%3Cinit%3E(java.lang.String,java.lang.String,java.lang.String)) instead.

  [java.security.Provider(String, double, String)](java.base/java/security/Provider.md#%3Cinit%3E(java.lang.String,double,java.lang.String))

  use [`Provider(String, String, String)`](java.base/java/security/Provider.md#%3Cinit%3E(java.lang.String,java.lang.String,java.lang.String)) instead.

  [java.security.spec.PSSParameterSpec(int)](java.base/java/security/spec/PSSParameterSpec.md#%3Cinit%3E(int))

  This constructor uses the default values defined in
  the PKCS #1 standard except for the salt length. Some of these
  defaults are no longer recommended due to advances in
  cryptanalysis -- see the
  [PKCS#1 v2.2](https://tools.ietf.org/rfc/rfc8017.txt)
  standard for more details. Thus, it is recommended to explicitly
  specify all desired parameter values with the
  [`PSSParameterSpec(String, String, AlgorithmParameterSpec, int, int)`](java.base/java/security/spec/PSSParameterSpec.md#%3Cinit%3E(java.lang.String,java.lang.String,java.security.spec.AlgorithmParameterSpec,int,int)) constructor.

  [java.sql.Date(int, int, int)](java.sql/java/sql/Date.md#%3Cinit%3E(int,int,int))

  instead use the constructor `Date(long date)`

  [java.sql.Time(int, int, int)](java.sql/java/sql/Time.md#%3Cinit%3E(int,int,int))

  Use the constructor that takes a milliseconds value
  in place of this constructor

  [java.sql.Timestamp(int, int, int, int, int, int, int)](java.sql/java/sql/Timestamp.md#%3Cinit%3E(int,int,int,int,int,int,int))

  instead use the constructor `Timestamp(long millis)`

  [java.util.Date(int, int, int)](java.base/java/util/Date.md#%3Cinit%3E(int,int,int))

  As of JDK version 1.1,
  replaced by `Calendar.set(year + 1900, month, date)`
  or `GregorianCalendar(year + 1900, month, date)`.

  [java.util.Date(int, int, int, int, int)](java.base/java/util/Date.md#%3Cinit%3E(int,int,int,int,int))

  As of JDK version 1.1,
  replaced by `Calendar.set(year + 1900, month, date, hrs, min)`
  or `GregorianCalendar(year + 1900, month, date, hrs, min)`.

  [java.util.Date(int, int, int, int, int, int)](java.base/java/util/Date.md#%3Cinit%3E(int,int,int,int,int,int))

  As of JDK version 1.1,
  replaced by `Calendar.set(year + 1900, month, date, hrs, min, sec)`
  or `GregorianCalendar(year + 1900, month, date, hrs, min, sec)`.

  [java.util.Date(String)](java.base/java/util/Date.md#%3Cinit%3E(java.lang.String))

  As of JDK version 1.1,
  replaced by `DateFormat.parse(String s)`.

  [java.util.Locale(String)](java.base/java/util/Locale.md#%3Cinit%3E(java.lang.String))

  Locale constructors have been deprecated. See [Obtaining a Locale](java.base/java/util/Locale.md#ObtainingLocale) for other options.

  [java.util.Locale(String, String)](java.base/java/util/Locale.md#%3Cinit%3E(java.lang.String,java.lang.String))

  Locale constructors have been deprecated. See [Obtaining a Locale](java.base/java/util/Locale.md#ObtainingLocale) for other options.

  [java.util.Locale(String, String, String)](java.base/java/util/Locale.md#%3Cinit%3E(java.lang.String,java.lang.String,java.lang.String))

  Locale constructors have been deprecated. See [Obtaining a Locale](java.base/java/util/Locale.md#ObtainingLocale) for other options.

  [javax.lang.model.util.AbstractAnnotationValueVisitor6()](java.compiler/javax/lang/model/util/AbstractAnnotationValueVisitor6.md#%3Cinit%3E())

  Release 6 is obsolete; update to a visitor for a newer
  release level.

  [javax.lang.model.util.AbstractAnnotationValueVisitor7()](java.compiler/javax/lang/model/util/AbstractAnnotationValueVisitor7.md#%3Cinit%3E())

  Release 7 is obsolete; update to a visitor for a newer
  release level.

  [javax.lang.model.util.AbstractElementVisitor6()](java.compiler/javax/lang/model/util/AbstractElementVisitor6.md#%3Cinit%3E())

  Release 6 is obsolete; update to a visitor for a newer
  release level.

  [javax.lang.model.util.AbstractElementVisitor7()](java.compiler/javax/lang/model/util/AbstractElementVisitor7.md#%3Cinit%3E())

  Release 7 is obsolete; update to a visitor for a newer
  release level.

  [javax.lang.model.util.AbstractTypeVisitor6()](java.compiler/javax/lang/model/util/AbstractTypeVisitor6.md#%3Cinit%3E())

  Release 6 is obsolete; update to a visitor for a newer
  release level.

  [javax.lang.model.util.AbstractTypeVisitor7()](java.compiler/javax/lang/model/util/AbstractTypeVisitor7.md#%3Cinit%3E())

  Release 7 is obsolete; update to a visitor for a newer
  release level.

  [javax.lang.model.util.ElementKindVisitor6()](java.compiler/javax/lang/model/util/ElementKindVisitor6.md#%3Cinit%3E())

  Release 6 is obsolete; update to a visitor for a newer
  release level.

  [javax.lang.model.util.ElementKindVisitor6(R)](java.compiler/javax/lang/model/util/ElementKindVisitor6.md#%3Cinit%3E(R))

  Release 6 is obsolete; update to a visitor for a newer
  release level.

  [javax.lang.model.util.ElementKindVisitor7()](java.compiler/javax/lang/model/util/ElementKindVisitor7.md#%3Cinit%3E())

  Release 7 is obsolete; update to a visitor for a newer
  release level.

  [javax.lang.model.util.ElementKindVisitor7(R)](java.compiler/javax/lang/model/util/ElementKindVisitor7.md#%3Cinit%3E(R))

  Release 7 is obsolete; update to a visitor for a newer
  release level.

  [javax.lang.model.util.ElementScanner6()](java.compiler/javax/lang/model/util/ElementScanner6.md#%3Cinit%3E())

  Release 6 is obsolete; update to a visitor for a newer
  release level.

  [javax.lang.model.util.ElementScanner6(R)](java.compiler/javax/lang/model/util/ElementScanner6.md#%3Cinit%3E(R))

  Release 6 is obsolete; update to a visitor for a newer
  release level.

  [javax.lang.model.util.ElementScanner7()](java.compiler/javax/lang/model/util/ElementScanner7.md#%3Cinit%3E())

  Release 7 is obsolete; update to a visitor for a newer
  release level.

  [javax.lang.model.util.ElementScanner7(R)](java.compiler/javax/lang/model/util/ElementScanner7.md#%3Cinit%3E(R))

  Release 7 is obsolete; update to a visitor for a newer
  release level.

  [javax.lang.model.util.SimpleAnnotationValueVisitor6()](java.compiler/javax/lang/model/util/SimpleAnnotationValueVisitor6.md#%3Cinit%3E())

  Release 6 is obsolete; update to a visitor for a newer
  release level.

  [javax.lang.model.util.SimpleAnnotationValueVisitor6(R)](java.compiler/javax/lang/model/util/SimpleAnnotationValueVisitor6.md#%3Cinit%3E(R))

  Release 6 is obsolete; update to a visitor for a newer
  release level.

  [javax.lang.model.util.SimpleAnnotationValueVisitor7()](java.compiler/javax/lang/model/util/SimpleAnnotationValueVisitor7.md#%3Cinit%3E())

  Release 7 is obsolete; update to a visitor for a newer
  release level.

  [javax.lang.model.util.SimpleAnnotationValueVisitor7(R)](java.compiler/javax/lang/model/util/SimpleAnnotationValueVisitor7.md#%3Cinit%3E(R))

  Release 7 is obsolete; update to a visitor for a newer
  release level.

  [javax.lang.model.util.SimpleElementVisitor6()](java.compiler/javax/lang/model/util/SimpleElementVisitor6.md#%3Cinit%3E())

  Release 6 is obsolete; update to a visitor for a newer
  release level.

  [javax.lang.model.util.SimpleElementVisitor6(R)](java.compiler/javax/lang/model/util/SimpleElementVisitor6.md#%3Cinit%3E(R))

  Release 6 is obsolete; update to a visitor for a newer
  release level.

  [javax.lang.model.util.SimpleElementVisitor7()](java.compiler/javax/lang/model/util/SimpleElementVisitor7.md#%3Cinit%3E())

  Release 7 is obsolete; update to a visitor for a newer
  release level.

  [javax.lang.model.util.SimpleElementVisitor7(R)](java.compiler/javax/lang/model/util/SimpleElementVisitor7.md#%3Cinit%3E(R))

  Release 7 is obsolete; update to a visitor for a newer
  release level.

  [javax.lang.model.util.SimpleTypeVisitor6()](java.compiler/javax/lang/model/util/SimpleTypeVisitor6.md#%3Cinit%3E())

  Release 6 is obsolete; update to a visitor for a newer
  release level.

  [javax.lang.model.util.SimpleTypeVisitor6(R)](java.compiler/javax/lang/model/util/SimpleTypeVisitor6.md#%3Cinit%3E(R))

  Release 6 is obsolete; update to a visitor for a newer
  release level.

  [javax.lang.model.util.SimpleTypeVisitor7()](java.compiler/javax/lang/model/util/SimpleTypeVisitor7.md#%3Cinit%3E())

  Release 7 is obsolete; update to a visitor for a newer
  release level.

  [javax.lang.model.util.SimpleTypeVisitor7(R)](java.compiler/javax/lang/model/util/SimpleTypeVisitor7.md#%3Cinit%3E(R))

  Release 7 is obsolete; update to a visitor for a newer
  release level.

  [javax.lang.model.util.TypeKindVisitor6()](java.compiler/javax/lang/model/util/TypeKindVisitor6.md#%3Cinit%3E())

  Release 6 is obsolete; update to a visitor for a newer
  release level.

  [javax.lang.model.util.TypeKindVisitor6(R)](java.compiler/javax/lang/model/util/TypeKindVisitor6.md#%3Cinit%3E(R))

  Release 6 is obsolete; update to a visitor for a newer
  release level.

  [javax.lang.model.util.TypeKindVisitor7()](java.compiler/javax/lang/model/util/TypeKindVisitor7.md#%3Cinit%3E())

  Release 7 is obsolete; update to a visitor for a newer
  release level.

  [javax.lang.model.util.TypeKindVisitor7(R)](java.compiler/javax/lang/model/util/TypeKindVisitor7.md#%3Cinit%3E(R))

  Release 7 is obsolete; update to a visitor for a newer
  release level.

  [javax.management.AttributeValueExp()](java.management/javax/management/AttributeValueExp.md#%3Cinit%3E())

  An instance created with this constructor cannot be
  used in a query.

  [javax.management.relation.RoleStatus()](java.management/javax/management/relation/RoleStatus.md#%3Cinit%3E())