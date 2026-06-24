Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Interface ObjectInputFilter

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface ObjectInputFilter

Filter classes, array lengths, and graph metrics during deserialization.

**Warning: Deserialization of untrusted data is inherently dangerous
and should be avoided. Untrusted data should be carefully validated according to the
"Serialization and Deserialization" section of the
.
describes best
practices for defensive use of serial filters.**

To protect against deserialization vulnerabilities, application developers
need a clear description of the objects that can be deserialized
by each component or library. For each context and use case, developers should
construct and apply an appropriate filter.

## Deserialization Filtering Factory and Filters

The parts of deserialization filtering are the filters, composite filters, and filter factory.
Each filter performs checks on classes and resource limits to determine the status as
rejected, allowed, or undecided.
Filters can be composed of other filters and merge or combine their results.
The filter factory is responsible for establishing and updating the filter
for each [`ObjectInputStream`](ObjectInputStream.md "class in java.io").

For simple cases, a static JVM-wide filter can be set for the entire application,
without setting a filter factory.
The JVM-wide filter can be set either with a system property on the command line or by
calling [Config.setSerialFilter](ObjectInputFilter.Config.md#setSerialFilter(java.io.ObjectInputFilter)).
No custom filter factory needs to be specified, defaulting to the builtin filter factory.
The builtin filter factory provides the [static JVM-wide filter](ObjectInputFilter.Config.md#getSerialFilter())
for each [ObjectInputStream](ObjectInputStream.md "class in java.io").

For example, a filter that allows example classes, allows classes in the
`java.base` module, and rejects all other classes can be set:
As a command line property:

Copy![Copy snippet](../../../copy.svg)

```
    % java -Djdk.serialFilter="example.*;java.base/*;!*" ...
```

Or programmatically:

Copy![Copy snippet](../../../copy.svg)

```
    var filter = ObjectInputFilter.Config.createFilter("example.*;java.base/*;!*")
    ObjectInputFilter.Config.setSerialFilter(filter);
```

In an application with multiple execution contexts, the application can provide a
[filter factory](ObjectInputFilter.Config.md#setSerialFilterFactory(java.util.function.BinaryOperator)) to
protect individual contexts by providing a custom filter for each. When the stream
is constructed, the filter factory is called to identify the execution context from the available
information, including the current thread-local state, hierarchy of callers, library, module,
and class loader. At that point, the filter factory policy for creating or selecting filters
can choose a specific filter or composition of filters based on the context.
The JVM-wide deserialization filter factory ensures that a context-specific deserialization
filter can be set on every [`ObjectInputStream`](ObjectInputStream.md "class in java.io") and every object read from the
stream can be checked.

## Invoking the Filter Factory

The JVM-wide filter factory is a function invoked when each [`ObjectInputStream`](ObjectInputStream.md "class in java.io") is
[constructed](ObjectInputStream.md#%3Cinit%3E()) and when the
[stream-specific filter is set](ObjectInputStream.md#setObjectInputFilter(java.io.ObjectInputFilter)).
The parameters are the current filter and a requested filter and it
returns the filter to be used for the stream. When invoked from the
[ObjectInputStream constructors](ObjectInputStream.md#%3Cinit%3E(java.io.InputStream)),
the first parameter is `null` and the second parameter is the
[static JVM-wide filter](ObjectInputFilter.Config.md#getSerialFilter()).
When invoked from [`ObjectInputStream.setObjectInputFilter`](ObjectInputStream.md#setObjectInputFilter(java.io.ObjectInputFilter)),
the first parameter is the filter currently set on the stream (which was set in the constructor),
and the second parameter is the filter given to `ObjectInputStream.setObjectInputFilter`.
The current and new filter may each be `null` and the factory may return `null`.
Note that the filter factory implementation can also use any contextual information
at its disposal, for example, extracted from the application thread context, or its call stack,
to compose and combine a new filter. It is not restricted to only use its two parameters.

The active deserialization filter factory is either:

* The application specific filter factory set via [`ObjectInputFilter.Config.setSerialFilterFactory(BinaryOperator)`](ObjectInputFilter.Config.md#setSerialFilterFactory(java.util.function.BinaryOperator))
  or the system property `jdk.serialFilterFactory` or
  the security property `jdk.serialFilterFactory`.* Otherwise, a builtin deserialization filter factory
    provides the [static JVM-wide filter](ObjectInputFilter.Config.md#getSerialFilter()) when invoked from the
    [ObjectInputStream constructors](ObjectInputStream.md#%3Cinit%3E(java.io.InputStream))
    and replaces the static filter when invoked from
    [`ObjectInputStream.setObjectInputFilter(ObjectInputFilter)`](ObjectInputStream.md#setObjectInputFilter(java.io.ObjectInputFilter)).
    See [getSerialFilterFactory](ObjectInputFilter.Config.md#getSerialFilterFactory()).

## Filters

Filters can be created from a [pattern string](ObjectInputFilter.Config.md#createFilter(java.lang.String)),
or based on a [predicate of a class](../util/function/Predicate.md "interface in java.util.function") to
[allow](#allowFilter(java.util.function.Predicate,java.io.ObjectInputFilter.Status)) or
[reject](#rejectFilter(java.util.function.Predicate,java.io.ObjectInputFilter.Status)) classes.

The filter's [`checkInput(FilterInfo)`](#checkInput(java.io.ObjectInputFilter.FilterInfo)) method is invoked
zero or more times while [reading objects](ObjectInputStream.md#readObject()).
The method is called to validate classes, the length of each array,
the number of objects being read from the stream, the depth of the graph,
and the total number of bytes read from the stream.

Composite filters combine or check the results of other filters.
The [`merge(filter, anotherFilter)`](#merge(java.io.ObjectInputFilter,java.io.ObjectInputFilter))
filter combines the status value of two filters.
The [`rejectUndecidedClass(filter)`](#rejectUndecidedClass(java.io.ObjectInputFilter))
checks the result of a filter for classes when the status is `UNDECIDED`.
In many cases any class not `ALLOWED` by the filter should be `REJECTED`.

A deserialization filter determines whether the arguments are allowed or rejected and
should return the appropriate status: [`ALLOWED`](ObjectInputFilter.Status.md#ALLOWED) or [`REJECTED`](ObjectInputFilter.Status.md#REJECTED).
If the filter cannot determine the status it should return [`UNDECIDED`](ObjectInputFilter.Status.md#UNDECIDED).
Filters should be designed for the specific use case and expected types.
A filter designed for a particular use may be passed a class outside
of the scope of the filter. If the purpose of the filter is to reject classes
then it can reject a candidate class that matches and report `UNDECIDED` for others.
A filter may be called with class equals `null`, `arrayLength` equal -1,
the depth, number of references, and stream size and return a status
that reflects only one or only some of the values.
This allows a filter to be specific about the choice it is reporting and
to use other filters without forcing either allowed or rejected status.

## Filter Model Examples

For simple applications, a single predefined filter listing allowed or rejected
classes may be sufficient to manage the risk of deserializing unexpected classes.

For an application composed from multiple modules or libraries, the structure
of the application can be used to identify the classes to be allowed or rejected
by each [`ObjectInputStream`](ObjectInputStream.md "class in java.io") in each context of the application.
The deserialization filter factory is invoked when each stream is constructed and
can examine the thread or program to determine a context-specific filter to be applied.
Some possible examples:

* Thread-local state can hold the filter to be applied or composed
  with a stream-specific filter.
  Filters could be pushed and popped from a virtual stack of filters
  maintained by the application or libraries.* The filter factory can identify the caller of the deserialization method
    and use module or library context to select a filter or compose an appropriate
    context-specific filter.
    A mechanism could identify a callee with restricted or unrestricted
    access to serialized classes and choose a filter accordingly.

## Example to filter every deserialization in a thread

This class shows how an application provided filter factory can combine filters
to check every deserialization operation that takes place in a thread.
It defines a thread-local variable to hold the thread-specific filter, and construct a filter factory
that composes that filter with the static JVM-wide filter and the stream-specific filter,
rejecting any classes not handled by those two filters.
If a stream specific filter is set and does not accept or reject a class,
the combined JVM-wide filter and thread filter is applied.
The `doWithSerialFilter` method does the setup of the thread-specific filter
and invokes the application provided [`Runnable`](../lang/Runnable.md "interface in java.lang").

Copy![Copy snippet](../../../copy.svg)

```
public static final class FilterInThread implements BinaryOperator<ObjectInputFilter> {

    private final ThreadLocal<ObjectInputFilter> filterThreadLocal = new ThreadLocal<>();

    // Construct a FilterInThread deserialization filter factory.
    public FilterInThread() {}

    // Returns a composite filter of the static JVM-wide filter, a thread-specific filter,
    // and the stream-specific filter.
    public ObjectInputFilter apply(ObjectInputFilter curr, ObjectInputFilter next) {
        if (curr == null) {
            // Called from the OIS constructor or perhaps OIS.setObjectInputFilter with no current filter
            var filter = filterThreadLocal.get();
            if (filter != null) {
                // Merge to invoke the thread local filter and then the JVM-wide filter (if any)
                filter = ObjectInputFilter.merge(filter, next);
                return ObjectInputFilter.rejectUndecidedClass(filter);
            }
            return (next == null) ? null : ObjectInputFilter.rejectUndecidedClass(next);
        } else {
            // Called from OIS.setObjectInputFilter with a current filter and a stream-specific filter.
            // The curr filter already incorporates the thread filter and static JVM-wide filter
            // and rejection of undecided classes
            // If there is a stream-specific filter merge to invoke it and then the current filter.
            if (next != null) {
                return ObjectInputFilter.merge(next, curr);
            }
            return curr;
        }
    }

    // Applies the filter to the thread and invokes the runnable.
    public void doWithSerialFilter(ObjectInputFilter filter, Runnable runnable) {
        var prevFilter = filterThreadLocal.get();
        try {
            filterThreadLocal.set(filter);
            runnable.run();
        } finally {
            filterThreadLocal.set(prevFilter);
        }
    }
}
```

### Using the Filter Factory

To use `FilterInThread` utility create an instance and configure it as the
JVM-wide filter factory. The `doWithSerialFilter` method is invoked with a
filter allowing the example application and core classes:

Copy![Copy snippet](../../../copy.svg)

```
       // Create a FilterInThread filter factory and set
       var filterInThread = new FilterInThread();
       ObjectInputFilter.Config.setSerialFilterFactory(filterInThread);

       // Create a filter to allow example.* classes and reject all others
       var filter = ObjectInputFilter.Config.createFilter("example.*;java.base/*;!*");
       filterInThread.doWithSerialFilter(filter, () -> {
             byte[] bytes = ...;
             var o = deserializeObject(bytes);
       });
```

Unless otherwise noted, passing a `null` argument to a
method in this interface and its nested classes will cause a
[`NullPointerException`](../lang/NullPointerException.md "class in java.lang") to be thrown.

Since:
:   9

See Also:
:   * [`ObjectInputStream.setObjectInputFilter(ObjectInputFilter)`](ObjectInputStream.md#setObjectInputFilter(java.io.ObjectInputFilter))

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static final class`

  `ObjectInputFilter.Config`

  A utility class to set and get the JVM-wide deserialization filter factory,
  the static JVM-wide filter, or to create a filter from a pattern string.

  `static interface`

  `ObjectInputFilter.FilterInfo`

  FilterInfo provides access to information about the current object
  being deserialized and the status of the [`ObjectInputStream`](ObjectInputStream.md "class in java.io").

  `static enum`

  `ObjectInputFilter.Status`

  The status of a check on the class, array length, number of references,
  depth, and stream size.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `static ObjectInputFilter`

  `allowFilter(Predicate<Class<?>> predicate,
  ObjectInputFilter.Status otherStatus)`

  Returns a filter that returns `Status.ALLOWED` if the predicate
  on the class is `true`.

  `ObjectInputFilter.Status`

  `checkInput(ObjectInputFilter.FilterInfo filterInfo)`

  Check the class, array length, number of object references, depth,
  stream size, and other available filtering information.

  `static ObjectInputFilter`

  `merge(ObjectInputFilter filter,
  ObjectInputFilter anotherFilter)`

  Returns a filter that merges the status of a filter and another filter.

  `static ObjectInputFilter`

  `rejectFilter(Predicate<Class<?>> predicate,
  ObjectInputFilter.Status otherStatus)`

  Returns a filter that returns `Status.REJECTED` if the predicate
  on the class is `true`.

  `static ObjectInputFilter`

  `rejectUndecidedClass(ObjectInputFilter filter)`

  Returns a filter that invokes a given filter and maps `UNDECIDED` to `REJECTED`
  for classes, with some special cases, and otherwise returns the status.

* ## Method Details

  + ### checkInput

    [ObjectInputFilter.Status](ObjectInputFilter.Status.md "enum class in java.io") checkInput([ObjectInputFilter.FilterInfo](ObjectInputFilter.FilterInfo.md "interface in java.io") filterInfo)

    Check the class, array length, number of object references, depth,
    stream size, and other available filtering information.
    Implementations of this method check the contents of the object graph being created
    during deserialization. The filter returns [`Status.ALLOWED`](ObjectInputFilter.Status.md#ALLOWED),
    [`Status.REJECTED`](ObjectInputFilter.Status.md#REJECTED), or [`Status.UNDECIDED`](ObjectInputFilter.Status.md#UNDECIDED).

    If `filterInfo.serialClass()` is `non-null`, there is a class to be checked.
    If `serialClass()` is `null`, there is no class and the info contains
    only metrics related to the depth of the graph being deserialized, the number of
    references, and the size of the stream read.

    Parameters:
    :   `filterInfo` - provides information about the current object being deserialized,
        if any, and the status of the [`ObjectInputStream`](ObjectInputStream.md "class in java.io")

    Returns:
    :   [`Status.ALLOWED`](ObjectInputFilter.Status.md#ALLOWED) if accepted,
        [`Status.REJECTED`](ObjectInputFilter.Status.md#REJECTED) if rejected,
        [`Status.UNDECIDED`](ObjectInputFilter.Status.md#UNDECIDED) if undecided.
  + ### allowFilter

    static [ObjectInputFilter](ObjectInputFilter.md "interface in java.io") allowFilter([Predicate](../util/function/Predicate.md "interface in java.util.function")<[Class](../lang/Class.md "class in java.lang")<?>> predicate,
    [ObjectInputFilter.Status](ObjectInputFilter.Status.md "enum class in java.io") otherStatus)

    Returns a filter that returns `Status.ALLOWED` if the predicate
    on the class is `true`.
    The filter returns `ALLOWED` or the `otherStatus` based on the predicate
    of the `non-null` class and `UNDECIDED` if the class is `null`.

    When the filter's [`checkInput(info)`](#checkInput(java.io.ObjectInputFilter.FilterInfo)) method is invoked,
    the predicate is applied to the [`info.serialClass()`](ObjectInputFilter.FilterInfo.md#serialClass()),
    the return Status is:
    - [`UNDECIDED`](ObjectInputFilter.Status.md#UNDECIDED), if the `serialClass` is `null`,
    - [`ALLOWED`](ObjectInputFilter.Status.md#ALLOWED), if the predicate on the class returns `true`,
    - Otherwise, return `otherStatus`.

    Example, to create a filter that will allow any class loaded from the platform
    or bootstrap classloaders.

    Copy![Copy snippet](../../../copy.svg)

    ```
        ObjectInputFilter f
            = allowFilter(cl -> cl.getClassLoader() == ClassLoader.getPlatformClassLoader() ||
                          cl.getClassLoader() == null, Status.UNDECIDED);
    ```

    Parameters:
    :   `predicate` - a predicate to test a non-null Class
    :   `otherStatus` - a Status to use if the predicate is `false`

    Returns:
    :   a filter that returns `ALLOWED` if the predicate
        on the class is `true`

    Since:
    :   17
  + ### rejectFilter

    static [ObjectInputFilter](ObjectInputFilter.md "interface in java.io") rejectFilter([Predicate](../util/function/Predicate.md "interface in java.util.function")<[Class](../lang/Class.md "class in java.lang")<?>> predicate,
    [ObjectInputFilter.Status](ObjectInputFilter.Status.md "enum class in java.io") otherStatus)

    Returns a filter that returns `Status.REJECTED` if the predicate
    on the class is `true`.
    The filter returns `REJECTED` or the `otherStatus` based on the predicate
    of the `non-null` class and `UNDECIDED` if the class is `null`.
    When the filter's [`checkInput(info)`](#checkInput(java.io.ObjectInputFilter.FilterInfo)) method is invoked,
    the predicate is applied to the [`serialClass()`](ObjectInputFilter.FilterInfo.md#serialClass()),
    the return Status is:
    - [`UNDECIDED`](ObjectInputFilter.Status.md#UNDECIDED), if the `serialClass` is `null`,
    - [`REJECTED`](ObjectInputFilter.Status.md#REJECTED), if the predicate on the class returns `true`,
    - Otherwise, return `otherStatus`.

    Example, to create a filter that will reject any class loaded from the application classloader.

    Copy![Copy snippet](../../../copy.svg)

    ```
        ObjectInputFilter f = rejectFilter(cl ->
             cl.getClassLoader() == ClassLoader.ClassLoader.getSystemClassLoader(), Status.UNDECIDED);
    ```

    Parameters:
    :   `predicate` - a predicate to test a non-null Class
    :   `otherStatus` - a Status to use if the predicate is `false`

    Returns:
    :   returns a filter that returns `REJECTED` if the predicate
        on the class is `true`

    Since:
    :   17
  + ### merge

    static [ObjectInputFilter](ObjectInputFilter.md "interface in java.io") merge([ObjectInputFilter](ObjectInputFilter.md "interface in java.io") filter,
    [ObjectInputFilter](ObjectInputFilter.md "interface in java.io") anotherFilter)

    Returns a filter that merges the status of a filter and another filter.
    If `another` filter is `null`, the `filter` is returned.
    Otherwise, a `filter` is returned to merge the pair of `non-null` filters.
    The filter returned implements the [`checkInput(FilterInfo)`](#checkInput(java.io.ObjectInputFilter.FilterInfo)) method
    as follows:
    - Invoke `filter` on the `FilterInfo` to get its `status`;- Return `REJECTED` if the `status` is `REJECTED`;- Invoke `anotherFilter` to get the `otherStatus`;- Return `REJECTED` if the `otherStatus` is `REJECTED`;- Return `ALLOWED`, if either `status` or `otherStatus`
              is `ALLOWED`,
            - Otherwise, return `UNDECIDED`

    Parameters:
    :   `filter` - a filter
    :   `anotherFilter` - a filter to be merged with the filter, may be `null`

    Returns:
    :   an [`ObjectInputFilter`](ObjectInputFilter.md "interface in java.io") that merges the status of the filter and another filter

    Since:
    :   17
  + ### rejectUndecidedClass

    static [ObjectInputFilter](ObjectInputFilter.md "interface in java.io") rejectUndecidedClass([ObjectInputFilter](ObjectInputFilter.md "interface in java.io") filter)

    Returns a filter that invokes a given filter and maps `UNDECIDED` to `REJECTED`
    for classes, with some special cases, and otherwise returns the status.
    If the class is not a primitive class and not an array, the status returned is `REJECTED`.
    If the class is a primitive class or an array class additional checks are performed;
    see the list below for details.

    Object deserialization accepts a class if the filter returns `UNDECIDED`.
    Adding a filter to reject undecided results for classes that have not been
    either allowed or rejected can prevent classes from slipping through the filter.

    Parameters:
    :   `filter` - a filter

    Returns:
    :   an [`ObjectInputFilter`](ObjectInputFilter.md "interface in java.io") that maps an [`ObjectInputFilter.Status.UNDECIDED`](ObjectInputFilter.Status.md#UNDECIDED)
        status to [`ObjectInputFilter.Status.REJECTED`](ObjectInputFilter.Status.md#REJECTED) for classes, otherwise returns the
        filter status

    Since:
    :   17