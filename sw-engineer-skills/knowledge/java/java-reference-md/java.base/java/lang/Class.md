Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class Class<T>

[java.lang.Object](Object.md "class in java.lang")

java.lang.Class<T>

Type Parameters:
:   `T` - the type of the class modeled by this `Class`
    object. For example, the type of `String.class` is `Class<String>`. Use `Class<?>` if the class being modeled is
    unknown.

All Implemented Interfaces:
:   `Serializable`, `Constable`, `TypeDescriptor`, `TypeDescriptor.OfField<Class<?>>`, `AnnotatedElement`, `GenericDeclaration`, `Type`

---

public final class Class<T>
extends [Object](Object.md "class in java.lang")
implements [Serializable](../io/Serializable.md "interface in java.io"), [GenericDeclaration](reflect/GenericDeclaration.md "interface in java.lang.reflect"), [Type](reflect/Type.md "interface in java.lang.reflect"), [AnnotatedElement](reflect/AnnotatedElement.md "interface in java.lang.reflect"), [TypeDescriptor.OfField](invoke/TypeDescriptor.OfField.md "interface in java.lang.invoke")<[Class](Class.md "class in java.lang")<?>>, [Constable](constant/Constable.md "interface in java.lang.constant")

Instances of the class `Class` represent classes and
interfaces in a running Java application. An enum class and a record
class are kinds of class; an annotation interface is a kind of
interface. Every array also belongs to a class that is reflected as
a `Class` object that is shared by all arrays with the same
element type and number of dimensions. The primitive Java types
(`boolean`, `byte`, `char`, `short`, `int`, `long`, `float`, and `double`), and the
keyword `void` are also represented as `Class` objects.

`Class` has no public constructor. Instead a `Class`
object is constructed automatically by the Java Virtual Machine when
a class is derived from the bytes of a `class` file through
the invocation of one of the following methods:

* [`ClassLoader::defineClass`](ClassLoader.md#defineClass(java.lang.String,byte%5B%5D,int,int))* [`java.lang.invoke.MethodHandles.Lookup::defineClass`](invoke/MethodHandles.Lookup.md#defineClass(byte%5B%5D))* [`java.lang.invoke.MethodHandles.Lookup::defineHiddenClass`](invoke/MethodHandles.Lookup.md#defineHiddenClass(byte%5B%5D,boolean,java.lang.invoke.MethodHandles.Lookup.ClassOption...))

The methods of class `Class` expose many characteristics of a
class or interface. Most characteristics are derived from the `class`
file that the class loader passed to the Java Virtual Machine or
from the `class` file passed to `Lookup::defineClass`
or `Lookup::defineHiddenClass`.
A few characteristics are determined by the class loading environment
at run time, such as the module returned by [`getModule()`](#getModule()).

The following example uses a `Class` object to print the
class name of an object:

Copy![Copy snippet](../../../copy.svg)

```
void printClassName(Object obj) {
    System.out.println("The class of " + obj +
                       " is " + obj.getClass().getName());
}
```

It is also possible to get the `Class` object for a named
class or interface (or for `void`) using a *class literal*.
For example:

Copy![Copy snippet](../../../copy.svg)

```
System.out.println("The name of class Foo is: "+Foo.class.getName());
```

Some methods of class `Class` expose whether the declaration of
a class or interface in Java source code was *enclosed* within
another declaration. Other methods describe how a class or interface
is situated in a *nest*. A nest is a set of
classes and interfaces, in the same run-time package, that
allow mutual access to their `private` members.
The classes and interfaces are known as *nestmates*.
One nestmate acts as the
*nest host*, and enumerates the other nestmates which
belong to the nest; each of them in turn records it as the nest host.
The classes and interfaces which belong to a nest, including its host, are
determined when
`class` files are generated, for example, a Java compiler
will typically record a top-level class as the host of a nest where the
other members are the classes and interfaces whose declarations are
enclosed within the top-level class declaration.

## Hidden Classes

A class or interface created by the invocation of
[`Lookup::defineHiddenClass`](invoke/MethodHandles.Lookup.md#defineHiddenClass(byte%5B%5D,boolean,java.lang.invoke.MethodHandles.Lookup.ClassOption...)) is a [*hidden*](#isHidden())
class or interface.
All kinds of class, including enum classes and record classes, may be
hidden classes; all kinds of interface, including annotation interfaces,
may be hidden interfaces.
The [name of a hidden class or interface](#getName()) is
not a [binary name](ClassLoader.md#binary-name),
which means the following:

* A hidden class or interface cannot be referenced by the constant pools
  of other classes and interfaces.* A hidden class or interface cannot be described in
    [*nominal form*](constant/ConstantDesc.md "interface in java.lang.constant") by
    [`Class::describeConstable`](#describeConstable()),
    [`ClassDesc::of`](constant/ClassDesc.md#of(java.lang.String)), or
    [`ClassDesc::ofDescriptor`](constant/ClassDesc.md#ofDescriptor(java.lang.String)).* A hidden class or interface cannot be discovered by [`Class::forName`](#forName(java.lang.String))
      or [`ClassLoader::loadClass`](ClassLoader.md#loadClass(java.lang.String,boolean)).

A hidden class or interface is never an array class, but may be
the element type of an array. In all other respects, the fact that
a class or interface is hidden has no bearing on the characteristics
exposed by the methods of class `Class`.

## Unnamed Classes

A `class` file representing an [unnamed class](#isUnnamedClass())[PREVIEW](#preview-isUnnamedClass())
is generated by a Java compiler from a source file for an unnamed class.
The `Class` object representing an unnamed class is top-level,
[synthetic](#isSynthetic()), and `final`. While an
unnamed class does *not* have a name in its Java source
form, several of the name-related methods of `java.lang.Class`
do return non-null and non-empty results for the `Class`
object representing an unnamed class.
Conventionally, a Java compiler, starting from a source file for an
unnamed class, say `HelloWorld.java`, creates a
similarly-named `class` file, `HelloWorld.class`, where
the class stored in that `class` file is named `"HelloWorld"`, matching the base names of the source and `class` files.
For the `Class` object of an unnamed class `HelloWorld`, the methods to get the [name](#getName()) and
[type name](#getTypeName()) return results
equal to `"HelloWorld"`. The [simple name](#getSimpleName()) of such an unnamed class is the empty string and the
[canonical name](#getCanonicalName()) is `null`.

Since:
:   1.0

See Also:
:   * [`ClassLoader.defineClass(byte[], int, int)`](ClassLoader.md#defineClass(byte%5B%5D,int,int))
    * [Serialized Form](../../../serialized-form.md#java.lang.Class)

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface java.lang.invoke.[TypeDescriptor](invoke/TypeDescriptor.md "interface in java.lang.invoke")

  `TypeDescriptor.OfField<F extends TypeDescriptor.OfField<F>>, TypeDescriptor.OfMethod<F extends TypeDescriptor.OfField<F>,M extends TypeDescriptor.OfMethod<F,M>>`
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `Set<AccessFlag>`

  `accessFlags()`

  Returns an unmodifiable set of the [access
  flags](reflect/AccessFlag.md "enum class in java.lang.reflect") for this class, possibly empty.

  `Class<?>`

  `arrayType()`

  Returns a `Class` for an array type whose component type
  is described by this [Class](Class.md "class in java.lang").

  `<U> Class<? extends U>`

  `asSubclass(Class<U> clazz)`

  Casts this `Class` object to represent a subclass of the class
  represented by the specified class object.

  `T`

  `cast(Object obj)`

  Casts an object to the class or interface represented
  by this `Class` object.

  `Class<?>`

  `componentType()`

  Returns the component type of this `Class`, if it describes
  an array type, or `null` otherwise.

  `Optional<ClassDesc>`

  `describeConstable()`

  Returns a nominal descriptor for this instance, if one can be
  constructed, or an empty [`Optional`](../util/Optional.md "class in java.util") if one cannot be.

  `String`

  `descriptorString()`

  Returns the descriptor string of the entity (class, interface, array class,
  primitive type, or `void`) represented by this `Class` object.

  `boolean`

  `desiredAssertionStatus()`

  Returns the assertion status that would be assigned to this
  class if it were to be initialized at the time this method is invoked.

  `static Class<?>`

  `forName(Module module,
  String name)`

  Returns the `Class` with the given [binary name](ClassLoader.md#binary-name) in the given module.

  `static Class<?>`

  `forName(String className)`

  Returns the `Class` object associated with the class or
  interface with the given string name.

  `static Class<?>`

  `forName(String name,
  boolean initialize,
  ClassLoader loader)`

  Returns the `Class` object associated with the class or
  interface with the given string name, using the given class loader.

  `AnnotatedType[]`

  `getAnnotatedInterfaces()`

  Returns an array of `AnnotatedType` objects that represent the use
  of types to specify superinterfaces of the entity represented by this
  `Class` object.

  `AnnotatedType`

  `getAnnotatedSuperclass()`

  Returns an `AnnotatedType` object that represents the use of a
  type to specify the superclass of the entity represented by this `Class` object.

  `<A extends Annotation>  
  A`

  `getAnnotation(Class<A> annotationClass)`

  Returns this element's annotation for the specified type if
  such an annotation is *present*, else null.

  `Annotation[]`

  `getAnnotations()`

  Returns annotations that are *present* on this element.

  `<A extends Annotation>  
  A[]`

  `getAnnotationsByType(Class<A> annotationClass)`

  Returns annotations that are *associated* with this element.

  `String`

  `getCanonicalName()`

  Returns the canonical name of the underlying class as
  defined by The Java Language Specification.

  `Class<?>[]`

  `getClasses()`

  Returns an array containing `Class` objects representing all
  the public classes and interfaces that are members of the class
  represented by this `Class` object.

  `ClassLoader`

  `getClassLoader()`

  Returns the class loader for the class.

  `Class<?>`

  `getComponentType()`

  Returns the `Class` representing the component type of an
  array.

  `Constructor<T>`

  `getConstructor(Class<?>... parameterTypes)`

  Returns a `Constructor` object that reflects the specified
  public constructor of the class represented by this `Class`
  object.

  `Constructor<?>[]`

  `getConstructors()`

  Returns an array containing `Constructor` objects reflecting
  all the public constructors of the class represented by this
  `Class` object.

  `<A extends Annotation>  
  A`

  `getDeclaredAnnotation(Class<A> annotationClass)`

  Returns this element's annotation for the specified type if
  such an annotation is *directly present*, else null.

  `Annotation[]`

  `getDeclaredAnnotations()`

  Returns annotations that are *directly present* on this element.

  `<A extends Annotation>  
  A[]`

  `getDeclaredAnnotationsByType(Class<A> annotationClass)`

  Returns this element's annotation(s) for the specified type if
  such annotations are either *directly present* or
  *indirectly present*.

  `Class<?>[]`

  `getDeclaredClasses()`

  Returns an array of `Class` objects reflecting all the
  classes and interfaces declared as members of the class represented by
  this `Class` object.

  `Constructor<T>`

  `getDeclaredConstructor(Class<?>... parameterTypes)`

  Returns a `Constructor` object that reflects the specified
  constructor of the class represented by this
  `Class` object.

  `Constructor<?>[]`

  `getDeclaredConstructors()`

  Returns an array of `Constructor` objects reflecting all the
  constructors implicitly or explicitly declared by the class represented by this
  `Class` object.

  `Field`

  `getDeclaredField(String name)`

  Returns a `Field` object that reflects the specified declared
  field of the class or interface represented by this `Class`
  object.

  `Field[]`

  `getDeclaredFields()`

  Returns an array of `Field` objects reflecting all the fields
  declared by the class or interface represented by this
  `Class` object.

  `Method`

  `getDeclaredMethod(String name,
  Class<?>... parameterTypes)`

  Returns a `Method` object that reflects the specified
  declared method of the class or interface represented by this
  `Class` object.

  `Method[]`

  `getDeclaredMethods()`

  Returns an array containing `Method` objects reflecting all the
  declared methods of the class or interface represented by this `Class` object, including public, protected, default (package)
  access, and private methods, but excluding inherited methods.

  `Class<?>`

  `getDeclaringClass()`

  If the class or interface represented by this `Class` object
  is a member of another class, returns the `Class` object
  representing the class in which it was declared.

  `Class<?>`

  `getEnclosingClass()`

  Returns the immediately enclosing class of the underlying
  class.

  `Constructor<?>`

  `getEnclosingConstructor()`

  If this `Class` object represents a local or anonymous
  class within a constructor, returns a [`Constructor`](reflect/Constructor.md "class in java.lang.reflect") object representing
  the immediately enclosing constructor of the underlying
  class.

  `Method`

  `getEnclosingMethod()`

  If this `Class` object represents a local or anonymous
  class within a method, returns a [`Method`](reflect/Method.md "class in java.lang.reflect") object representing the
  immediately enclosing method of the underlying class.

  `T[]`

  `getEnumConstants()`

  Returns the elements of this enum class or null if this
  Class object does not represent an enum class.

  `Field`

  `getField(String name)`

  Returns a `Field` object that reflects the specified public member
  field of the class or interface represented by this `Class`
  object.

  `Field[]`

  `getFields()`

  Returns an array containing `Field` objects reflecting all
  the accessible public fields of the class or interface represented by
  this `Class` object.

  `Type[]`

  `getGenericInterfaces()`

  Returns the `Type`s representing the interfaces
  directly implemented by the class or interface represented by
  this `Class` object.

  `Type`

  `getGenericSuperclass()`

  Returns the `Type` representing the direct superclass of
  the entity (class, interface, primitive type or void) represented by
  this `Class` object.

  `Class<?>[]`

  `getInterfaces()`

  Returns the interfaces directly implemented by the class or interface
  represented by this `Class` object.

  `Method`

  `getMethod(String name,
  Class<?>... parameterTypes)`

  Returns a `Method` object that reflects the specified public
  member method of the class or interface represented by this
  `Class` object.

  `Method[]`

  `getMethods()`

  Returns an array containing `Method` objects reflecting all the
  public methods of the class or interface represented by this `Class` object, including those declared by the class or interface and
  those inherited from superclasses and superinterfaces.

  `int`

  `getModifiers()`

  Returns the Java language modifiers for this class or interface, encoded
  in an integer.

  `Module`

  `getModule()`

  Returns the module that this class or interface is a member of.

  `String`

  `getName()`

  Returns the name of the entity (class, interface, array class,
  primitive type, or void) represented by this `Class` object.

  `Class<?>`

  `getNestHost()`

  Returns the nest host of the [nest](#nest) to which the class
  or interface represented by this `Class` object belongs.

  `Class<?>[]`

  `getNestMembers()`

  Returns an array containing `Class` objects representing all the
  classes and interfaces that are members of the nest to which the class
  or interface represented by this `Class` object belongs.

  `Package`

  `getPackage()`

  Gets the package of this class.

  `String`

  `getPackageName()`

  Returns the fully qualified package name.

  `Class<?>[]`

  `getPermittedSubclasses()`

  Returns an array containing `Class` objects representing the
  direct subinterfaces or subclasses permitted to extend or
  implement this class or interface if it is sealed.

  `ProtectionDomain`

  `getProtectionDomain()`

  Returns the `ProtectionDomain` of this class.

  `RecordComponent[]`

  `getRecordComponents()`

  Returns an array of `RecordComponent` objects representing all the
  record components of this record class, or `null` if this class is
  not a record class.

  `URL`

  `getResource(String name)`

  Finds a resource with a given name.

  `InputStream`

  `getResourceAsStream(String name)`

  Finds a resource with a given name.

  `Object[]`

  `getSigners()`

  Gets the signers of this class.

  `String`

  `getSimpleName()`

  Returns the simple name of the underlying class as given in the
  source code.

  `Class<? super T>`

  `getSuperclass()`

  Returns the `Class` representing the direct superclass of the
  entity (class, interface, primitive type or void) represented by
  this `Class`.

  `String`

  `getTypeName()`

  Return an informative string for the name of this class or interface.

  `TypeVariable<Class<T>>[]`

  `getTypeParameters()`

  Returns an array of `TypeVariable` objects that represent the
  type variables declared by the generic declaration represented by this
  `GenericDeclaration` object, in declaration order.

  `boolean`

  `isAnnotation()`

  Returns true if this `Class` object represents an annotation
  interface.

  `boolean`

  `isAnnotationPresent(Class<? extends Annotation> annotationClass)`

  Returns true if an annotation for the specified type
  is *present* on this element, else false.

  `boolean`

  `isAnonymousClass()`

  Returns `true` if and only if the underlying class
  is an anonymous class.

  `boolean`

  `isArray()`

  Determines if this `Class` object represents an array class.

  `boolean`

  `isAssignableFrom(Class<?> cls)`

  Determines if the class or interface represented by this
  `Class` object is either the same as, or is a superclass or
  superinterface of, the class or interface represented by the specified
  `Class` parameter.

  `boolean`

  `isEnum()`

  Returns true if and only if this class was declared as an enum in the
  source code.

  `boolean`

  `isHidden()`

  Returns `true` if and only if the underlying class is a hidden class.

  `boolean`

  `isInstance(Object obj)`

  Determines if the specified `Object` is assignment-compatible
  with the object represented by this `Class`.

  `boolean`

  `isInterface()`

  Determines if this `Class` object represents an
  interface type.

  `boolean`

  `isLocalClass()`

  Returns `true` if and only if the underlying class
  is a local class.

  `boolean`

  `isMemberClass()`

  Returns `true` if and only if the underlying class
  is a member class.

  `boolean`

  `isNestmateOf(Class<?> c)`

  Determines if the given `Class` is a nestmate of the
  class or interface represented by this `Class` object.

  `boolean`

  `isPrimitive()`

  Determines if the specified `Class` object represents a
  primitive type.

  `boolean`

  `isRecord()`

  Returns `true` if and only if this class is a record class.

  `boolean`

  `isSealed()`

  Returns `true` if and only if this `Class` object represents
  a sealed class or interface.

  `boolean`

  `isSynthetic()`

  Returns `true` if and only if this class has the synthetic modifier
  bit set.

  `boolean`

  `isUnnamedClass()`

  Preview.

  Returns `true` if and only if the underlying class
  is an unnamed class.

  `T`

  `newInstance()`

  Deprecated.

  This method propagates any exception thrown by the
  nullary constructor, including a checked exception.

  `String`

  `toGenericString()`

  Returns a string describing this `Class`, including
  information about modifiers and type parameters.

  `String`

  `toString()`

  Converts the object to a string.

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Method Details

  + ### toString

    public [String](String.md "class in java.lang") toString()

    Converts the object to a string. The string representation is the
    string "class" or "interface", followed by a space, and then by the
    name of the class in the format returned by `getName`.
    If this `Class` object represents a primitive type,
    this method returns the name of the primitive type. If
    this `Class` object represents void this method returns
    "void". If this `Class` object represents an array type,
    this method returns "class " followed by `getName`.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this `Class` object.
  + ### toGenericString

    public [String](String.md "class in java.lang") toGenericString()

    Returns a string describing this `Class`, including
    information about modifiers and type parameters.
    The string is formatted as a list of type modifiers, if any,
    followed by the kind of type (empty string for primitive types
    and `class`, `enum`, `interface`,
    `@interface`, or `record` as appropriate), followed
    by the type's name, followed by an angle-bracketed
    comma-separated list of the type's type parameters, if any,
    including informative bounds on the type parameters, if any.
    A space is used to separate modifiers from one another and to
    separate any modifiers from the kind of type. The modifiers
    occur in canonical order. If there are no type parameters, the
    type parameter list is elided.
    For an array type, the string starts with the type name,
    followed by an angle-bracketed comma-separated list of the
    type's type parameters, if any, followed by a sequence of
    `[]` characters, one set of brackets per dimension of
    the array.

    Note that since information about the runtime representation
    of a type is being generated, modifiers not present on the
    originating source code or illegal on the originating source
    code may be present.

    Returns:
    :   a string describing this `Class`, including
        information about modifiers and type parameters

    Since:
    :   1.8
  + ### forName

    public static [Class](Class.md "class in java.lang")<?> forName([String](String.md "class in java.lang") className)
    throws [ClassNotFoundException](ClassNotFoundException.md "class in java.lang")

    Returns the `Class` object associated with the class or
    interface with the given string name. Invoking this method is
    equivalent to:

    Copy![Copy snippet](../../../copy.svg)

    ```
    Class.forName(className, true, currentLoader)
    ```

    where `currentLoader` denotes the defining class loader of
    the current class.

    For example, the following code fragment returns the
    runtime `Class` object for the class named
    `java.lang.Thread`:

    Copy![Copy snippet](../../../copy.svg)

    ```
    Class<?> t = Class.forName("java.lang.Thread");
    ```

    A call to `forName("X")` causes the class named
    `X` to be initialized.

    In cases where this method is called from a context where there is no
    caller frame on the stack (e.g. when called directly from a JNI
    attached thread), the system class loader is used.

    Parameters:
    :   `className` - the [binary name](ClassLoader.md#binary-name)
        of the class or the string representing an array type

    Returns:
    :   the `Class` object for the class with the
        specified name.

    Throws:
    :   `LinkageError` - if the linkage fails
    :   `ExceptionInInitializerError` - if the initialization provoked
        by this method fails
    :   `ClassNotFoundException` - if the class cannot be located
  + ### forName

    public static [Class](Class.md "class in java.lang")<?> forName([String](String.md "class in java.lang") name,
    boolean initialize,
    [ClassLoader](ClassLoader.md "class in java.lang") loader)
    throws [ClassNotFoundException](ClassNotFoundException.md "class in java.lang")

    Returns the `Class` object associated with the class or
    interface with the given string name, using the given class loader.
    Given the [binary name](ClassLoader.md#binary-name) for a class or interface,
    this method attempts to locate and load the class or interface. The specified
    class loader is used to load the class or interface. If the parameter
    `loader` is `null`, the class is loaded through the bootstrap
    class loader. The class is initialized only if the
    `initialize` parameter is `true` and if it has
    not been initialized earlier.

    This method cannot be used to obtain any of the `Class` objects
    representing primitive types or void, hidden classes or interfaces,
    or array classes whose element type is a hidden class or interface.
    If `name` denotes a primitive type or void, for example `I`,
    an attempt will be made to locate a user-defined class in the unnamed package
    whose name is `I` instead.

    To obtain the `Class` object associated with an array class,
    the name consists of one or more `'['` representing the depth
    of the array nesting, followed by the element type as encoded in
    [the table](#nameFormat) specified in `Class.getName()`.

    Examples:

    Copy![Copy snippet](../../../copy.svg)

    ```
    Class<?> threadClass = Class.forName("java.lang.Thread", false, currentLoader);
    Class<?> stringArrayClass = Class.forName("[Ljava.lang.String;", false, currentLoader);
    Class<?> intArrayClass = Class.forName("[[[I", false, currentLoader);   // Class of int[][][]
    Class<?> nestedClass = Class.forName("java.lang.Character$UnicodeBlock", false, currentLoader);
    Class<?> fooClass = Class.forName("Foo", true, currentLoader);
    ```

    A call to `getName()` on the `Class` object returned
    from `forName(`*N*`)` returns *N*.

    A call to `forName("[L`*N*`;")` causes the element type
    named *N* to be loaded but not initialized regardless of the value
    of the `initialize` parameter.

    Parameters:
    :   `name` - the [binary name](ClassLoader.md#binary-name)
        of the class or the string representing an array class
    :   `initialize` - if `true` the class will be initialized
        (which implies linking). See Section of The Java Language
        Specification.
    :   `loader` - class loader from which the class must be loaded

    Returns:
    :   class object representing the desired class

    Throws:
    :   `LinkageError` - if the linkage fails
    :   `ExceptionInInitializerError` - if the initialization provoked
        by this method fails
    :   `ClassNotFoundException` - if the class cannot be located by
        the specified class loader
    :   `SecurityException` - if a security manager is present, and the `loader` is
        `null`, and the caller's class loader is not
        `null`, and the caller does not have the
        [`RuntimePermission`](RuntimePermission.md "class in java.lang")`("getClassLoader")`

    Since:
    :   1.2

    See Also:
    :   - [`forName(String)`](#forName(java.lang.String))
        - [`ClassLoader`](ClassLoader.md "class in java.lang")
  + ### forName

    public static [Class](Class.md "class in java.lang")<?> forName([Module](Module.md "class in java.lang") module,
    [String](String.md "class in java.lang") name)

    Returns the `Class` with the given [binary name](ClassLoader.md#binary-name) in the given module.

    This method attempts to locate and load the class or interface.
    It does not link the class, and does not run the class initializer.
    If the class is not found, this method returns `null`.

    If the class loader of the given module defines other modules and
    the given name is a class defined in a different module, this method
    returns `null` after the class is loaded.

    This method does not check whether the requested class is
    accessible to its caller.

    Parameters:
    :   `module` - A module
    :   `name` - The [binary name](ClassLoader.md#binary-name)
        of the class

    Returns:
    :   `Class` object of the given name defined in the given module;
        `null` if not found.

    Throws:
    :   `NullPointerException` - if the given module or name is `null`
    :   `LinkageError` - if the linkage fails
    :   `SecurityException` -
        - if the caller is not the specified module and
          `RuntimePermission("getClassLoader")` permission is denied; or
        - access to the module content is denied. For example,
          permission check will be performed when a class loader calls
          [`ModuleReader.open(String)`](module/ModuleReader.md#open(java.lang.String)) to read the bytes of a class file
          in a module.

    Since:
    :   9
  + ### newInstance

    [@Deprecated](Deprecated.md "annotation interface in java.lang")([since](Deprecated.md#since())="9")
    public [T](Class.md "type parameter in Class") newInstance()
    throws [InstantiationException](InstantiationException.md "class in java.lang"),
    [IllegalAccessException](IllegalAccessException.md "class in java.lang")

    Deprecated.

    This method propagates any exception thrown by the
    nullary constructor, including a checked exception. Use of
    this method effectively bypasses the compile-time exception
    checking that would otherwise be performed by the compiler.
    The [`Constructor.newInstance`](reflect/Constructor.md#newInstance(java.lang.Object...)) method avoids this problem by wrapping
    any exception thrown by the constructor in a (checked) [`InvocationTargetException`](reflect/InvocationTargetException.md "class in java.lang.reflect").

    The call

    Copy![Copy snippet](../../../copy.svg)

    ```
    clazz.newInstance()
    ```

    can be replaced by

    Copy![Copy snippet](../../../copy.svg)

    ```
    clazz.getDeclaredConstructor().newInstance()
    ```

    The latter sequence of calls is inferred to be able to throw
    the additional exception types [`InvocationTargetException`](reflect/InvocationTargetException.md "class in java.lang.reflect") and [`NoSuchMethodException`](NoSuchMethodException.md "class in java.lang"). Both of these exception types are
    subclasses of [`ReflectiveOperationException`](ReflectiveOperationException.md "class in java.lang").

    Creates a new instance of the class represented by this `Class`
    object. The class is instantiated as if by a `new`
    expression with an empty argument list. The class is initialized if it
    has not already been initialized.

    Returns:
    :   a newly allocated instance of the class represented by this
        object.

    Throws:
    :   `IllegalAccessException` - if the class or its nullary
        constructor is not accessible.
    :   `InstantiationException` - if this `Class` represents an abstract class,
        an interface, an array class, a primitive type, or void;
        or if the class has no nullary constructor;
        or if the instantiation fails for some other reason.
    :   `ExceptionInInitializerError` - if the initialization
        provoked by this method fails.
    :   `SecurityException` - If a security manager, *s*, is present and
        the caller's class loader is not the same as or an
        ancestor of the class loader for the current class and
        invocation of [`s.checkPackageAccess()`](SecurityManager.md#checkPackageAccess(java.lang.String)) denies access to the package
        of this class.
  + ### isInstance

    public boolean isInstance([Object](Object.md "class in java.lang") obj)

    Determines if the specified `Object` is assignment-compatible
    with the object represented by this `Class`. This method is
    the dynamic equivalent of the Java language `instanceof`
    operator. The method returns `true` if the specified
    `Object` argument is non-null and can be cast to the
    reference type represented by this `Class` object without
    raising a `ClassCastException.` It returns `false`
    otherwise.

    Specifically, if this `Class` object represents a
    declared class, this method returns `true` if the specified
    `Object` argument is an instance of the represented class (or
    of any of its subclasses); it returns `false` otherwise. If
    this `Class` object represents an array class, this method
    returns `true` if the specified `Object` argument
    can be converted to an object of the array class by an identity
    conversion or by a widening reference conversion; it returns
    `false` otherwise. If this `Class` object
    represents an interface, this method returns `true` if the
    class or any superclass of the specified `Object` argument
    implements this interface; it returns `false` otherwise. If
    this `Class` object represents a primitive type, this method
    returns `false`.

    Parameters:
    :   `obj` - the object to check

    Returns:
    :   true if `obj` is an instance of this class

    Since:
    :   1.1
  + ### isAssignableFrom

    public boolean isAssignableFrom([Class](Class.md "class in java.lang")<?> cls)

    Determines if the class or interface represented by this
    `Class` object is either the same as, or is a superclass or
    superinterface of, the class or interface represented by the specified
    `Class` parameter. It returns `true` if so;
    otherwise it returns `false`. If this `Class`
    object represents a primitive type, this method returns
    `true` if the specified `Class` parameter is
    exactly this `Class` object; otherwise it returns
    `false`.

    Specifically, this method tests whether the type represented by the
    specified `Class` parameter can be converted to the type
    represented by this `Class` object via an identity conversion
    or via a widening reference conversion. See The Java Language
    Specification, sections and ,
    for details.

    Parameters:
    :   `cls` - the `Class` object to be checked

    Returns:
    :   the `boolean` value indicating whether objects of the
        type `cls` can be assigned to objects of this class

    Throws:
    :   `NullPointerException` - if the specified Class parameter is
        null.

    Since:
    :   1.1
  + ### isInterface

    public boolean isInterface()

    Determines if this `Class` object represents an
    interface type.

    Returns:
    :   `true` if this `Class` object represents an interface;
        `false` otherwise.
  + ### isArray

    public boolean isArray()

    Determines if this `Class` object represents an array class.

    Specified by:
    :   `isArray` in interface `TypeDescriptor.OfField<T>`

    Returns:
    :   `true` if this `Class` object represents an array class;
        `false` otherwise.

    Since:
    :   1.1
  + ### isPrimitive

    public boolean isPrimitive()

    Determines if the specified `Class` object represents a
    primitive type.

    There are nine predefined `Class` objects to represent
    the eight primitive types and void. These are created by the Java
    Virtual Machine, and have the same names as the primitive types that
    they represent, namely `boolean`, `byte`,
    `char`, `short`, `int`,
    `long`, `float`, and `double`.

    These objects may only be accessed via the following public static
    final variables, and are the only `Class` objects for which
    this method returns `true`.

    Specified by:
    :   `isPrimitive` in interface `TypeDescriptor.OfField<T>`

    Returns:
    :   true if and only if this class represents a primitive type

    Since:
    :   1.1

    See Also:
    :   - [`Boolean.TYPE`](Boolean.md#TYPE)
        - [`Character.TYPE`](Character.md#TYPE)
        - [`Byte.TYPE`](Byte.md#TYPE)
        - [`Short.TYPE`](Short.md#TYPE)
        - [`Integer.TYPE`](Integer.md#TYPE)
        - [`Long.TYPE`](Long.md#TYPE)
        - [`Float.TYPE`](Float.md#TYPE)
        - [`Double.TYPE`](Double.md#TYPE)
        - [`Void.TYPE`](Void.md#TYPE)
  + ### isAnnotation

    public boolean isAnnotation()

    Returns true if this `Class` object represents an annotation
    interface. Note that if this method returns true, [`isInterface()`](#isInterface())
    would also return true, as all annotation interfaces are also interfaces.

    Returns:
    :   `true` if this `Class` object represents an annotation
        interface; `false` otherwise

    Since:
    :   1.5
  + ### isSynthetic

    public boolean isSynthetic()

    Returns `true` if and only if this class has the synthetic modifier
    bit set.

    Returns:
    :   `true` if and only if this class has the synthetic modifier
        bit set

    Since:
    :   1.5

    See Also:
    :   - [Java
          programming language and JVM modeling in core reflection](../../../java.base/java/lang/reflect/package-summary.md#LanguageJvmModel)
  + ### getName

    public [String](String.md "class in java.lang") getName()

    Returns the name of the entity (class, interface, array class,
    primitive type, or void) represented by this `Class` object.

    If this `Class` object represents a class or interface,
    not an array class, then:
    - If the class or interface is not [hidden](#isHidden()),
      then the [binary name](ClassLoader.md#binary-name)
      of the class or interface is returned.- If the class or interface is hidden, then the result is a string
        of the form: `N + '/' + <suffix>`
        where `N` is the [binary name](ClassLoader.md#binary-name)
        indicated by the `class` file passed to
        [`Lookup::defineHiddenClass`](invoke/MethodHandles.Lookup.md#defineHiddenClass(byte%5B%5D,boolean,java.lang.invoke.MethodHandles.Lookup.ClassOption...)), and `<suffix>` is an unqualified name.

    If this `Class` object represents an array class, then
    the result is a string consisting of one or more '`[`' characters
    representing the depth of the array nesting, followed by the element
    type as encoded using the following table:
    > Element types and encodings
    >
    > | Element Type Encoding | |
    > | --- | --- |
    > | `boolean` `Z`| `byte` `B`| `char` `C`| class or interface with [binary name](ClassLoader.md#binary-name) *N* `L`*N*`;`| `double` `D`| `float` `F`| `int` `I`| `long` `J`| `short` `S` | | | | | | | | | | | | | | | | | |

    If this `Class` object represents a primitive type or `void`,
    then the result is a string with the same spelling as the Java language
    keyword which corresponds to the primitive type or `void`.

    Examples:
    > ```
    >  String.class.getName()
    >      returns "java.lang.String"
    >  Character.UnicodeBlock.class.getName()
    >      returns "java.lang.Character$UnicodeBlock"
    >  byte.class.getName()
    >      returns "byte"
    >  (new Object[3]).getClass().getName()
    >      returns "[Ljava.lang.Object;"
    >  (new int[3][4][5][6][7][8][9]).getClass().getName()
    >      returns "[[[[[[[I"
    > ```

    Returns:
    :   the name of the class, interface, or other entity
        represented by this `Class` object.
  + ### getClassLoader

    public [ClassLoader](ClassLoader.md "class in java.lang") getClassLoader()

    Returns the class loader for the class. Some implementations may use
    null to represent the bootstrap class loader. This method will return
    null in such implementations if this class was loaded by the bootstrap
    class loader.

    If this `Class` object
    represents a primitive type or void, null is returned.

    Returns:
    :   the class loader that loaded the class or interface
        represented by this `Class` object.

    Throws:
    :   `SecurityException` - if a security manager is present, and the caller's class loader
        is not `null` and is not the same as or an ancestor of the
        class loader for the class whose class loader is requested,
        and the caller does not have the
        [`RuntimePermission`](RuntimePermission.md "class in java.lang")`("getClassLoader")`

    See Also:
    :   - [`ClassLoader`](ClassLoader.md "class in java.lang")
        - [`SecurityManager.checkPermission(java.security.Permission)`](SecurityManager.md#checkPermission(java.security.Permission))
        - [`RuntimePermission`](RuntimePermission.md "class in java.lang")
  + ### getModule

    public [Module](Module.md "class in java.lang") getModule()

    Returns the module that this class or interface is a member of.
    If this class represents an array type then this method returns the
    `Module` for the element type. If this class represents a
    primitive type or void, then the `Module` object for the
    `java.base` module is returned.
    If this class is in an unnamed module then the [unnamed](ClassLoader.md#getUnnamedModule()) `Module` of the class
    loader for this class is returned.

    Returns:
    :   the module that this class or interface is a member of

    Since:
    :   9
  + ### getTypeParameters

    public [TypeVariable](reflect/TypeVariable.md "interface in java.lang.reflect")<[Class](Class.md "class in java.lang")<[T](Class.md "type parameter in Class")>>[] getTypeParameters()

    Returns an array of `TypeVariable` objects that represent the
    type variables declared by the generic declaration represented by this
    `GenericDeclaration` object, in declaration order. Returns an
    array of length 0 if the underlying generic declaration declares no type
    variables.

    Specified by:
    :   `getTypeParameters` in interface `GenericDeclaration`

    Returns:
    :   an array of `TypeVariable` objects that represent
        the type variables declared by this generic declaration

    Throws:
    :   `GenericSignatureFormatError` - if the generic
        signature of this generic declaration does not conform to
        the format specified in section of
        The Java Virtual Machine Specification

    Since:
    :   1.5
  + ### getSuperclass

    public [Class](Class.md "class in java.lang")<? super [T](Class.md "type parameter in Class")> getSuperclass()

    Returns the `Class` representing the direct superclass of the
    entity (class, interface, primitive type or void) represented by
    this `Class`. If this `Class` represents either the
    `Object` class, an interface, a primitive type, or void, then
    null is returned. If this `Class` object represents an array class
    then the `Class` object representing the `Object` class is
    returned.

    Returns:
    :   the direct superclass of the class represented by this `Class` object
  + ### getGenericSuperclass

    public [Type](reflect/Type.md "interface in java.lang.reflect") getGenericSuperclass()

    Returns the `Type` representing the direct superclass of
    the entity (class, interface, primitive type or void) represented by
    this `Class` object.

    If the superclass is a parameterized type, the `Type`
    object returned must accurately reflect the actual type
    arguments used in the source code. The parameterized type
    representing the superclass is created if it had not been
    created before. See the declaration of [`ParameterizedType`](reflect/ParameterizedType.md "interface in java.lang.reflect") for the
    semantics of the creation process for parameterized types. If
    this `Class` object represents either the `Object`
    class, an interface, a primitive type, or void, then null is
    returned. If this `Class` object represents an array class
    then the `Class` object representing the `Object` class is
    returned.

    Returns:
    :   the direct superclass of the class represented by this `Class` object

    Throws:
    :   `GenericSignatureFormatError` - if the generic
        class signature does not conform to the format specified in
        section of The Java Virtual
        Machine Specification
    :   `TypeNotPresentException` - if the generic superclass
        refers to a non-existent type declaration
    :   `MalformedParameterizedTypeException` - if the
        generic superclass refers to a parameterized type that cannot be
        instantiated for any reason

    Since:
    :   1.5
  + ### getPackage

    public [Package](Package.md "class in java.lang") getPackage()

    Gets the package of this class.

    If this class represents an array type, a primitive type or void,
    this method returns `null`.

    Returns:
    :   the package of this class.
  + ### getPackageName

    public [String](String.md "class in java.lang") getPackageName()

    Returns the fully qualified package name.

    If this class is a top level class, then this method returns the fully
    qualified name of the package that the class is a member of, or the
    empty string if the class is in an unnamed package.

    If this class is a member class, then this method is equivalent to
    invoking `getPackageName()` on the [enclosing class](#getEnclosingClass()).

    If this class is a [local class](#isLocalClass()) or an [anonymous class](#isAnonymousClass()), then this method is equivalent to
    invoking `getPackageName()` on the [declaring class](#getDeclaringClass()) of the [enclosing method](#getEnclosingMethod()) or
    [enclosing constructor](#getEnclosingConstructor()).

    If this class represents an array type then this method returns the
    package name of the element type. If this class represents a primitive
    type or void then the package name "`java.lang`" is returned.

    Returns:
    :   the fully qualified package name

    Since:
    :   9
  + ### getInterfaces

    public [Class](Class.md "class in java.lang")<?>[] getInterfaces()

    Returns the interfaces directly implemented by the class or interface
    represented by this `Class` object.

    If this `Class` object represents a class, the return value is an array
    containing objects representing all interfaces directly implemented by
    the class. The order of the interface objects in the array corresponds
    to the order of the interface names in the `implements` clause of
    the declaration of the class represented by this `Class` object. For example,
    given the declaration:
    > `class Shimmer implements FloorWax, DessertTopping { ... }`

    suppose the value of `s` is an instance of
    `Shimmer`; the value of the expression:
    > `s.getClass().getInterfaces()[0]`

    is the `Class` object that represents interface
    `FloorWax`; and the value of:
    > `s.getClass().getInterfaces()[1]`

    is the `Class` object that represents interface
    `DessertTopping`.

    If this `Class` object represents an interface, the array contains objects
    representing all interfaces directly extended by the interface. The
    order of the interface objects in the array corresponds to the order of
    the interface names in the `extends` clause of the declaration of
    the interface represented by this `Class` object.

    If this `Class` object represents a class or interface that implements no
    interfaces, the method returns an array of length 0.

    If this `Class` object represents a primitive type or void, the method
    returns an array of length 0.

    If this `Class` object represents an array type, the
    interfaces `Cloneable` and `java.io.Serializable` are
    returned in that order.

    Returns:
    :   an array of interfaces directly implemented by this class
  + ### getGenericInterfaces

    public [Type](reflect/Type.md "interface in java.lang.reflect")[] getGenericInterfaces()

    Returns the `Type`s representing the interfaces
    directly implemented by the class or interface represented by
    this `Class` object.

    If a superinterface is a parameterized type, the
    `Type` object returned for it must accurately reflect
    the actual type arguments used in the source code. The
    parameterized type representing each superinterface is created
    if it had not been created before. See the declaration of
    [`ParameterizedType`](reflect/ParameterizedType.md "interface in java.lang.reflect")
    for the semantics of the creation process for parameterized
    types.

    If this `Class` object represents a class, the return value is an array
    containing objects representing all interfaces directly implemented by
    the class. The order of the interface objects in the array corresponds
    to the order of the interface names in the `implements` clause of
    the declaration of the class represented by this `Class` object.

    If this `Class` object represents an interface, the array contains objects
    representing all interfaces directly extended by the interface. The
    order of the interface objects in the array corresponds to the order of
    the interface names in the `extends` clause of the declaration of
    the interface represented by this `Class` object.

    If this `Class` object represents a class or interface that implements no
    interfaces, the method returns an array of length 0.

    If this `Class` object represents a primitive type or void, the method
    returns an array of length 0.

    If this `Class` object represents an array type, the
    interfaces `Cloneable` and `java.io.Serializable` are
    returned in that order.

    Returns:
    :   an array of interfaces directly implemented by this class

    Throws:
    :   `GenericSignatureFormatError` - if the generic class signature does not conform to the
        format specified in section of The
        Java Virtual Machine Specification
    :   `TypeNotPresentException` - if any of the generic
        superinterfaces refers to a non-existent type declaration
    :   `MalformedParameterizedTypeException` - if any of the generic superinterfaces refer to a parameterized
        type that cannot be instantiated for any reason

    Since:
    :   1.5
  + ### getComponentType

    public [Class](Class.md "class in java.lang")<?> getComponentType()

    Returns the `Class` representing the component type of an
    array. If this class does not represent an array class this method
    returns null.

    Returns:
    :   the `Class` representing the component type of this
        class if this class is an array

    Since:
    :   1.1

    See Also:
    :   - [`Array`](reflect/Array.md "class in java.lang.reflect")
  + ### getModifiers

    public int getModifiers()

    Returns the Java language modifiers for this class or interface, encoded
    in an integer. The modifiers consist of the Java Virtual Machine's
    constants for `public`, `protected`,
    `private`, `final`, `static`,
    `abstract` and `interface`; they should be decoded
    using the methods of class `Modifier`.

    If the underlying class is an array class:
    - its `public`, `private` and `protected`
      modifiers are the same as those of its component type- its `abstract` and `final` modifiers are always
        `true`- its interface modifier is always `false`, even when
          the component type is an interfaceIf this `Class` object represents a primitive type or
    void, its `public`, `abstract`, and `final`
    modifiers are always `true`.
    For `Class` objects representing void, primitive types, and
    arrays, the values of other modifiers are `false` other
    than as specified above.

    The modifier encodings are defined in section
    of The Java Virtual Machine Specification.

    Returns:
    :   the `int` representing the modifiers for this class

    Since:
    :   1.1

    See Also:
    :   - [`Modifier`](reflect/Modifier.md "class in java.lang.reflect")
        - [`accessFlags()`](#accessFlags())
        - [Java
          programming language and JVM modeling in core reflection](../../../java.base/java/lang/reflect/package-summary.md#LanguageJvmModel)
  + ### accessFlags

    public [Set](../util/Set.md "interface in java.util")<[AccessFlag](reflect/AccessFlag.md "enum class in java.lang.reflect")> accessFlags()

    Returns an unmodifiable set of the [access
    flags](reflect/AccessFlag.md "enum class in java.lang.reflect") for this class, possibly empty.

    If the underlying class is an array class:
    - its `PUBLIC`, `PRIVATE` and `PROTECTED`
      access flags are the same as those of its component type- its `ABSTRACT` and `FINAL` flags are present- its `INTERFACE` flag is absent, even when the
          component type is an interfaceIf this `Class` object represents a primitive type or
    void, the flags are `PUBLIC`, `ABSTRACT`, and
    `FINAL`.
    For `Class` objects representing void, primitive types, and
    arrays, access flags are absent other than as specified above.

    Returns:
    :   an unmodifiable set of the [access
        flags](reflect/AccessFlag.md "enum class in java.lang.reflect") for this class, possibly empty

    Since:
    :   20

    See Also:
    :   - [`getModifiers()`](#getModifiers())
  + ### getSigners

    public [Object](Object.md "class in java.lang")[] getSigners()

    Gets the signers of this class.

    Returns:
    :   the signers of this class, or null if there are no signers. In
        particular, this method returns null if this `Class` object represents
        a primitive type or void.

    Since:
    :   1.1
  + ### getEnclosingMethod

    public [Method](reflect/Method.md "class in java.lang.reflect") getEnclosingMethod()
    throws [SecurityException](SecurityException.md "class in java.lang")

    If this `Class` object represents a local or anonymous
    class within a method, returns a [`Method`](reflect/Method.md "class in java.lang.reflect") object representing the
    immediately enclosing method of the underlying class. Returns
    `null` otherwise.
    In particular, this method returns `null` if the underlying
    class is a local or anonymous class immediately enclosed by a class or
    interface declaration, instance initializer or static initializer.

    Returns:
    :   the immediately enclosing method of the underlying class, if
        that class is a local or anonymous class; otherwise `null`.

    Throws:
    :   `SecurityException` - If a security manager, *s*, is present and any of the
        following conditions is met:
        - the caller's class loader is not the same as the
          class loader of the enclosing class and invocation of
          [`s.checkPermission`](SecurityManager.md#checkPermission(java.security.Permission)) method with
          `RuntimePermission("accessDeclaredMembers")`
          denies access to the methods within the enclosing class- the caller's class loader is not the same as or an
            ancestor of the class loader for the enclosing class and
            invocation of [`s.checkPackageAccess()`](SecurityManager.md#checkPackageAccess(java.lang.String)) denies access to the package
            of the enclosing class

    Since:
    :   1.5
  + ### getEnclosingConstructor

    public [Constructor](reflect/Constructor.md "class in java.lang.reflect")<?> getEnclosingConstructor()
    throws [SecurityException](SecurityException.md "class in java.lang")

    If this `Class` object represents a local or anonymous
    class within a constructor, returns a [`Constructor`](reflect/Constructor.md "class in java.lang.reflect") object representing
    the immediately enclosing constructor of the underlying
    class. Returns `null` otherwise. In particular, this
    method returns `null` if the underlying class is a local
    or anonymous class immediately enclosed by a class or
    interface declaration, instance initializer or static initializer.

    Returns:
    :   the immediately enclosing constructor of the underlying class, if
        that class is a local or anonymous class; otherwise `null`.

    Throws:
    :   `SecurityException` - If a security manager, *s*, is present and any of the
        following conditions is met:
        - the caller's class loader is not the same as the
          class loader of the enclosing class and invocation of
          [`s.checkPermission`](SecurityManager.md#checkPermission(java.security.Permission)) method with
          `RuntimePermission("accessDeclaredMembers")`
          denies access to the constructors within the enclosing class- the caller's class loader is not the same as or an
            ancestor of the class loader for the enclosing class and
            invocation of [`s.checkPackageAccess()`](SecurityManager.md#checkPackageAccess(java.lang.String)) denies access to the package
            of the enclosing class

    Since:
    :   1.5
  + ### getDeclaringClass

    public [Class](Class.md "class in java.lang")<?> getDeclaringClass()
    throws [SecurityException](SecurityException.md "class in java.lang")

    If the class or interface represented by this `Class` object
    is a member of another class, returns the `Class` object
    representing the class in which it was declared. This method returns
    null if this class or interface is not a member of any other class. If
    this `Class` object represents an array class, a primitive
    type, or void, then this method returns null.

    Returns:
    :   the declaring class for this class

    Throws:
    :   `SecurityException` - If a security manager, *s*, is present and the caller's
        class loader is not the same as or an ancestor of the class
        loader for the declaring class and invocation of [`s.checkPackageAccess()`](SecurityManager.md#checkPackageAccess(java.lang.String))
        denies access to the package of the declaring class

    Since:
    :   1.1
  + ### getEnclosingClass

    public [Class](Class.md "class in java.lang")<?> getEnclosingClass()
    throws [SecurityException](SecurityException.md "class in java.lang")

    Returns the immediately enclosing class of the underlying
    class. If the underlying class is a top level class this
    method returns `null`.

    Returns:
    :   the immediately enclosing class of the underlying class

    Throws:
    :   `SecurityException` - If a security manager, *s*, is present and the caller's
        class loader is not the same as or an ancestor of the class
        loader for the enclosing class and invocation of [`s.checkPackageAccess()`](SecurityManager.md#checkPackageAccess(java.lang.String))
        denies access to the package of the enclosing class

    Since:
    :   1.5
  + ### getSimpleName

    public [String](String.md "class in java.lang") getSimpleName()

    Returns the simple name of the underlying class as given in the
    source code. An empty string is returned if the underlying class is
    [anonymous](#isAnonymousClass()) or [unnamed](#isUnnamedClass())[PREVIEW](#preview-isUnnamedClass()).
    A [synthetic class](#isSynthetic()), one not present
    in source code, can have a non-empty name including special
    characters, such as "`$`".

    The simple name of an [array class](#isArray()) is the simple name of the
    component type with "[]" appended. In particular the simple
    name of an array class whose component type is anonymous is "[]".

    Returns:
    :   the simple name of the underlying class

    Since:
    :   1.5
  + ### getTypeName

    public [String](String.md "class in java.lang") getTypeName()

    Return an informative string for the name of this class or interface.

    Specified by:
    :   `getTypeName` in interface `Type`

    Returns:
    :   an informative string for the name of this class or interface

    Since:
    :   1.8
  + ### getCanonicalName

    public [String](String.md "class in java.lang") getCanonicalName()

    Returns the canonical name of the underlying class as
    defined by The Java Language Specification.
    Returns `null` if the underlying class does not have a canonical
    name. Classes without canonical names include:
    - a [local class](#isLocalClass())- a [anonymous class](#isAnonymousClass())- an [unnamed class](#isUnnamedClass())[PREVIEW](#preview-isUnnamedClass())- a [hidden class](#isHidden())- an array whose component type does not have a canonical nameThe canonical name for a primitive class is the keyword for the
    corresponding primitive type (`byte`, `short`,
    `char`, `int`, and so on).

    An array type has a canonical name if and only if its
    component type has a canonical name. When an array type has a
    canonical name, it is equal to the canonical name of the
    component type followed by "`[]`".

    Returns:
    :   the canonical name of the underlying class if it exists, and
        `null` otherwise.

    Since:
    :   1.5
  + ### isUnnamedClass

    public boolean isUnnamedClass()

    `isUnnamedClass` is a reflective preview API of the Java platform.

    Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

    Returns `true` if and only if the underlying class
    is an unnamed class.

    Returns:
    :   `true` if and only if the underlying class
        is an unnamed class

    Since:
    :   21
  + ### isAnonymousClass

    public boolean isAnonymousClass()

    Returns `true` if and only if the underlying class
    is an anonymous class.

    Returns:
    :   `true` if and only if this class is an anonymous class.

    Since:
    :   1.5
  + ### isLocalClass

    public boolean isLocalClass()

    Returns `true` if and only if the underlying class
    is a local class.

    Returns:
    :   `true` if and only if this class is a local class.

    Since:
    :   1.5
  + ### isMemberClass

    public boolean isMemberClass()

    Returns `true` if and only if the underlying class
    is a member class.

    Returns:
    :   `true` if and only if this class is a member class.

    Since:
    :   1.5
  + ### getClasses

    public [Class](Class.md "class in java.lang")<?>[] getClasses()

    Returns an array containing `Class` objects representing all
    the public classes and interfaces that are members of the class
    represented by this `Class` object. This includes public
    class and interface members inherited from superclasses and public class
    and interface members declared by the class. This method returns an
    array of length 0 if this `Class` object has no public member
    classes or interfaces. This method also returns an array of length 0 if
    this `Class` object represents a primitive type, an array
    class, or void.

    Returns:
    :   the array of `Class` objects representing the public
        members of this class

    Throws:
    :   `SecurityException` - If a security manager, *s*, is present and
        the caller's class loader is not the same as or an
        ancestor of the class loader for the current class and
        invocation of [`s.checkPackageAccess()`](SecurityManager.md#checkPackageAccess(java.lang.String)) denies access to the package
        of this class.

    Since:
    :   1.1
  + ### getFields

    public [Field](reflect/Field.md "class in java.lang.reflect")[] getFields()
    throws [SecurityException](SecurityException.md "class in java.lang")

    Returns an array containing `Field` objects reflecting all
    the accessible public fields of the class or interface represented by
    this `Class` object.

    If this `Class` object represents a class or interface with
    no accessible public fields, then this method returns an array of length
    0.

    If this `Class` object represents a class, then this method
    returns the public fields of the class and of all its superclasses and
    superinterfaces.

    If this `Class` object represents an interface, then this
    method returns the fields of the interface and of all its
    superinterfaces.

    If this `Class` object represents an array type, a primitive
    type, or void, then this method returns an array of length 0.

    The elements in the returned array are not sorted and are not in any
    particular order.

    Returns:
    :   the array of `Field` objects representing the
        public fields

    Throws:
    :   `SecurityException` - If a security manager, *s*, is present and
        the caller's class loader is not the same as or an
        ancestor of the class loader for the current class and
        invocation of [`s.checkPackageAccess()`](SecurityManager.md#checkPackageAccess(java.lang.String)) denies access to the package
        of this class.

    Since:
    :   1.1
  + ### getMethods

    public [Method](reflect/Method.md "class in java.lang.reflect")[] getMethods()
    throws [SecurityException](SecurityException.md "class in java.lang")

    Returns an array containing `Method` objects reflecting all the
    public methods of the class or interface represented by this `Class` object, including those declared by the class or interface and
    those inherited from superclasses and superinterfaces.

    If this `Class` object represents an array type, then the
    returned array has a `Method` object for each of the public
    methods inherited by the array type from `Object`. It does not
    contain a `Method` object for `clone()`.

    If this `Class` object represents an interface then the
    returned array does not contain any implicitly declared methods from
    `Object`. Therefore, if no methods are explicitly declared in
    this interface or any of its superinterfaces then the returned array
    has length 0. (Note that a `Class` object which represents a class
    always has public methods, inherited from `Object`.)

    The returned array never contains methods with names ["<init>"](constant/ConstantDescs.md#INIT_NAME) or ["<clinit>"](constant/ConstantDescs.md#CLASS_INIT_NAME).

    The elements in the returned array are not sorted and are not in any
    particular order.

    Generally, the result is computed as with the following 4 step algorithm.
    Let C be the class or interface represented by this `Class` object:
    1. A union of methods is composed of:
       1. C's declared public instance and static methods as returned by
          [`getDeclaredMethods()`](#getDeclaredMethods()) and filtered to include only public
          methods.
       2. If C is a class other than `Object`, then include the result
          of invoking this algorithm recursively on the superclass of C.
       3. Include the results of invoking this algorithm recursively on all
          direct superinterfaces of C, but include only instance methods.
    2. Union from step 1 is partitioned into subsets of methods with same
       signature (name, parameter types) and return type.
    3. Within each such subset only the most specific methods are selected.
       Let method M be a method from a set of methods with same signature
       and return type. M is most specific if there is no such method
       N != M from the same set, such that N is more specific than M.
       N is more specific than M if:
       1. N is declared by a class and M is declared by an interface; or
       2. N and M are both declared by classes or both by interfaces and
          N's declaring type is the same as or a subtype of M's declaring type
          (clearly, if M's and N's declaring types are the same type, then
          M and N are the same method).
    4. The result of this algorithm is the union of all selected methods from
       step 3.

    Returns:
    :   the array of `Method` objects representing the
        public methods of this class

    Throws:
    :   `SecurityException` - If a security manager, *s*, is present and
        the caller's class loader is not the same as or an
        ancestor of the class loader for the current class and
        invocation of [`s.checkPackageAccess()`](SecurityManager.md#checkPackageAccess(java.lang.String)) denies access to the package
        of this class.

    Since:
    :   1.1
  + ### getConstructors

    public [Constructor](reflect/Constructor.md "class in java.lang.reflect")<?>[] getConstructors()
    throws [SecurityException](SecurityException.md "class in java.lang")

    Returns an array containing `Constructor` objects reflecting
    all the public constructors of the class represented by this
    `Class` object. An array of length 0 is returned if the
    class has no public constructors, or if the class is an array class, or
    if the class reflects a primitive type or void.

    Returns:
    :   the array of `Constructor` objects representing the
        public constructors of this class

    Throws:
    :   `SecurityException` - If a security manager, *s*, is present and
        the caller's class loader is not the same as or an
        ancestor of the class loader for the current class and
        invocation of [`s.checkPackageAccess()`](SecurityManager.md#checkPackageAccess(java.lang.String)) denies access to the package
        of this class.

    Since:
    :   1.1

    See Also:
    :   - [`getDeclaredConstructors()`](#getDeclaredConstructors())
  + ### getField

    public [Field](reflect/Field.md "class in java.lang.reflect") getField([String](String.md "class in java.lang") name)
    throws [NoSuchFieldException](NoSuchFieldException.md "class in java.lang"),
    [SecurityException](SecurityException.md "class in java.lang")

    Returns a `Field` object that reflects the specified public member
    field of the class or interface represented by this `Class`
    object. The `name` parameter is a `String` specifying the
    simple name of the desired field.

    The field to be reflected is determined by the algorithm that
    follows. Let C be the class or interface represented by this `Class` object:
    1. If C declares a public field with the name specified, that is the
       field to be reflected.
    2. If no field was found in step 1 above, this algorithm is applied
       recursively to each direct superinterface of C. The direct
       superinterfaces are searched in the order they were declared.
    3. If no field was found in steps 1 and 2 above, and C has a
       superclass S, then this algorithm is invoked recursively upon S.
       If C has no superclass, then a `NoSuchFieldException`
       is thrown.

    If this `Class` object represents an array type, then this
    method does not find the `length` field of the array type.

    Parameters:
    :   `name` - the field name

    Returns:
    :   the `Field` object of this class specified by
        `name`

    Throws:
    :   `NoSuchFieldException` - if a field with the specified name is
        not found.
    :   `NullPointerException` - if `name` is `null`
    :   `SecurityException` - If a security manager, *s*, is present and
        the caller's class loader is not the same as or an
        ancestor of the class loader for the current class and
        invocation of [`s.checkPackageAccess()`](SecurityManager.md#checkPackageAccess(java.lang.String)) denies access to the package
        of this class.

    Since:
    :   1.1
  + ### getMethod

    public [Method](reflect/Method.md "class in java.lang.reflect") getMethod([String](String.md "class in java.lang") name,
    [Class](Class.md "class in java.lang")<?>... parameterTypes)
    throws [NoSuchMethodException](NoSuchMethodException.md "class in java.lang"),
    [SecurityException](SecurityException.md "class in java.lang")

    Returns a `Method` object that reflects the specified public
    member method of the class or interface represented by this
    `Class` object. The `name` parameter is a
    `String` specifying the simple name of the desired method. The
    `parameterTypes` parameter is an array of `Class`
    objects that identify the method's formal parameter types, in declared
    order. If `parameterTypes` is `null`, it is
    treated as if it were an empty array.

    If this `Class` object represents an array type, then this
    method finds any public method inherited by the array type from
    `Object` except method `clone()`.

    If this `Class` object represents an interface then this
    method does not find any implicitly declared method from
    `Object`. Therefore, if no methods are explicitly declared in
    this interface or any of its superinterfaces, then this method does not
    find any method.

    This method does not find any method with name ["<init>"](constant/ConstantDescs.md#INIT_NAME) or ["<clinit>"](constant/ConstantDescs.md#CLASS_INIT_NAME).

    Generally, the method to be reflected is determined by the 4 step
    algorithm that follows.
    Let C be the class or interface represented by this `Class` object:
    1. A union of methods is composed of:
       1. C's declared public instance and static methods as returned by
          [`getDeclaredMethods()`](#getDeclaredMethods()) and filtered to include only public
          methods that match given `name` and `parameterTypes`
       2. If C is a class other than `Object`, then include the result
          of invoking this algorithm recursively on the superclass of C.
       3. Include the results of invoking this algorithm recursively on all
          direct superinterfaces of C, but include only instance methods.
    2. This union is partitioned into subsets of methods with same
       return type (the selection of methods from step 1 also guarantees that
       they have the same method name and parameter types).
    3. Within each such subset only the most specific methods are selected.
       Let method M be a method from a set of methods with same VM
       signature (return type, name, parameter types).
       M is most specific if there is no such method N != M from the same
       set, such that N is more specific than M. N is more specific than M
       if:
       1. N is declared by a class and M is declared by an interface; or
       2. N and M are both declared by classes or both by interfaces and
          N's declaring type is the same as or a subtype of M's declaring type
          (clearly, if M's and N's declaring types are the same type, then
          M and N are the same method).
    4. The result of this algorithm is chosen arbitrarily from the methods
       with most specific return type among all selected methods from step 3.
       Let R be a return type of a method M from the set of all selected methods
       from step 3. M is a method with most specific return type if there is
       no such method N != M from the same set, having return type S != R,
       such that S is a subtype of R as determined by
       R.class.[`isAssignableFrom(java.lang.Class<?>)`](#isAssignableFrom(java.lang.Class))(S.class).

    Parameters:
    :   `name` - the name of the method
    :   `parameterTypes` - the list of parameters

    Returns:
    :   the `Method` object that matches the specified
        `name` and `parameterTypes`

    Throws:
    :   `NoSuchMethodException` - if a matching method is not found
        or if the name is ["<init>"](constant/ConstantDescs.md#INIT_NAME) or
        ["<clinit>"](constant/ConstantDescs.md#CLASS_INIT_NAME).
    :   `NullPointerException` - if `name` is `null`
    :   `SecurityException` - If a security manager, *s*, is present and
        the caller's class loader is not the same as or an
        ancestor of the class loader for the current class and
        invocation of [`s.checkPackageAccess()`](SecurityManager.md#checkPackageAccess(java.lang.String)) denies access to the package
        of this class.

    Since:
    :   1.1
  + ### getConstructor

    public [Constructor](reflect/Constructor.md "class in java.lang.reflect")<[T](Class.md "type parameter in Class")> getConstructor([Class](Class.md "class in java.lang")<?>... parameterTypes)
    throws [NoSuchMethodException](NoSuchMethodException.md "class in java.lang"),
    [SecurityException](SecurityException.md "class in java.lang")

    Returns a `Constructor` object that reflects the specified
    public constructor of the class represented by this `Class`
    object. The `parameterTypes` parameter is an array of
    `Class` objects that identify the constructor's formal
    parameter types, in declared order.
    If this `Class` object represents an inner class
    declared in a non-static context, the formal parameter types
    include the explicit enclosing instance as the first parameter.

    The constructor to reflect is the public constructor of the class
    represented by this `Class` object whose formal parameter
    types match those specified by `parameterTypes`.

    Parameters:
    :   `parameterTypes` - the parameter array

    Returns:
    :   the `Constructor` object of the public constructor that
        matches the specified `parameterTypes`

    Throws:
    :   `NoSuchMethodException` - if a matching constructor is not found,
        including when this `Class` object represents
        an interface, a primitive type, an array class, or void.
    :   `SecurityException` - If a security manager, *s*, is present and
        the caller's class loader is not the same as or an
        ancestor of the class loader for the current class and
        invocation of [`s.checkPackageAccess()`](SecurityManager.md#checkPackageAccess(java.lang.String)) denies access to the package
        of this class.

    Since:
    :   1.1

    See Also:
    :   - [`getDeclaredConstructor(Class<?>[])`](#getDeclaredConstructor(java.lang.Class...))
  + ### getDeclaredClasses

    public [Class](Class.md "class in java.lang")<?>[] getDeclaredClasses()
    throws [SecurityException](SecurityException.md "class in java.lang")

    Returns an array of `Class` objects reflecting all the
    classes and interfaces declared as members of the class represented by
    this `Class` object. This includes public, protected, default
    (package) access, and private classes and interfaces declared by the
    class, but excludes inherited classes and interfaces. This method
    returns an array of length 0 if the class declares no classes or
    interfaces as members, or if this `Class` object represents a
    primitive type, an array class, or void.

    Returns:
    :   the array of `Class` objects representing all the
        declared members of this class

    Throws:
    :   `SecurityException` - If a security manager, *s*, is present and any of the
        following conditions is met:
        - the caller's class loader is not the same as the
          class loader of this class and invocation of
          [`s.checkPermission`](SecurityManager.md#checkPermission(java.security.Permission)) method with
          `RuntimePermission("accessDeclaredMembers")`
          denies access to the declared classes within this class- the caller's class loader is not the same as or an
            ancestor of the class loader for the current class and
            invocation of [`s.checkPackageAccess()`](SecurityManager.md#checkPackageAccess(java.lang.String)) denies access to the package
            of this class

    Since:
    :   1.1
  + ### getDeclaredFields

    public [Field](reflect/Field.md "class in java.lang.reflect")[] getDeclaredFields()
    throws [SecurityException](SecurityException.md "class in java.lang")

    Returns an array of `Field` objects reflecting all the fields
    declared by the class or interface represented by this
    `Class` object. This includes public, protected, default
    (package) access, and private fields, but excludes inherited fields.

    If this `Class` object represents a class or interface with no
    declared fields, then this method returns an array of length 0.

    If this `Class` object represents an array type, a primitive
    type, or void, then this method returns an array of length 0.

    The elements in the returned array are not sorted and are not in any
    particular order.

    Returns:
    :   the array of `Field` objects representing all the
        declared fields of this class

    Throws:
    :   `SecurityException` - If a security manager, *s*, is present and any of the
        following conditions is met:
        - the caller's class loader is not the same as the
          class loader of this class and invocation of
          [`s.checkPermission`](SecurityManager.md#checkPermission(java.security.Permission)) method with
          `RuntimePermission("accessDeclaredMembers")`
          denies access to the declared fields within this class- the caller's class loader is not the same as or an
            ancestor of the class loader for the current class and
            invocation of [`s.checkPackageAccess()`](SecurityManager.md#checkPackageAccess(java.lang.String)) denies access to the package
            of this class

    Since:
    :   1.1
  + ### getRecordComponents

    public [RecordComponent](reflect/RecordComponent.md "class in java.lang.reflect")[] getRecordComponents()

    Returns an array of `RecordComponent` objects representing all the
    record components of this record class, or `null` if this class is
    not a record class.

    The components are returned in the same order that they are declared
    in the record header. The array is empty if this record class has no
    components. If the class is not a record class, that is [`isRecord()`](#isRecord()) returns `false`, then this method returns `null`.
    Conversely, if [`isRecord()`](#isRecord()) returns `true`, then this method
    returns a non-null value.

    Returns:
    :   An array of `RecordComponent` objects representing all the
        record components of this record class, or `null` if this
        class is not a record class

    Throws:
    :   `SecurityException` - If a security manager, *s*, is present and any of the
        following conditions is met:
        - the caller's class loader is not the same as the
          class loader of this class and invocation of
          [`s.checkPermission`](SecurityManager.md#checkPermission(java.security.Permission)) method with
          `RuntimePermission("accessDeclaredMembers")`
          denies access to the declared methods within this class- the caller's class loader is not the same as or an
            ancestor of the class loader for the current class and
            invocation of [`s.checkPackageAccess()`](SecurityManager.md#checkPackageAccess(java.lang.String)) denies access to the package
            of this class

    Since:
    :   16
  + ### getDeclaredMethods

    public [Method](reflect/Method.md "class in java.lang.reflect")[] getDeclaredMethods()
    throws [SecurityException](SecurityException.md "class in java.lang")

    Returns an array containing `Method` objects reflecting all the
    declared methods of the class or interface represented by this `Class` object, including public, protected, default (package)
    access, and private methods, but excluding inherited methods.
    The declared methods may include methods *not* in the
    source of the class or interface, including [bridge methods](reflect/Method.md#isBridge()) and other [synthetic](reflect/Executable.md#isSynthetic()) methods added by compilers.

    If this `Class` object represents a class or interface that
    has multiple declared methods with the same name and parameter types,
    but different return types, then the returned array has a `Method`
    object for each such method.

    If this `Class` object represents a class or interface that
    has a class initialization method ["<clinit>"](constant/ConstantDescs.md#CLASS_INIT_NAME),
    then the returned array does *not* have a corresponding `Method` object.

    If this `Class` object represents a class or interface with no
    declared methods, then the returned array has length 0.

    If this `Class` object represents an array type, a primitive
    type, or void, then the returned array has length 0.

    The elements in the returned array are not sorted and are not in any
    particular order.

    Returns:
    :   the array of `Method` objects representing all the
        declared methods of this class

    Throws:
    :   `SecurityException` - If a security manager, *s*, is present and any of the
        following conditions is met:
        - the caller's class loader is not the same as the
          class loader of this class and invocation of
          [`s.checkPermission`](SecurityManager.md#checkPermission(java.security.Permission)) method with
          `RuntimePermission("accessDeclaredMembers")`
          denies access to the declared methods within this class- the caller's class loader is not the same as or an
            ancestor of the class loader for the current class and
            invocation of [`s.checkPackageAccess()`](SecurityManager.md#checkPackageAccess(java.lang.String)) denies access to the package
            of this class

    Since:
    :   1.1

    See Also:
    :   - [Java
          programming language and JVM modeling in core reflection](../../../java.base/java/lang/reflect/package-summary.md#LanguageJvmModel)
  + ### getDeclaredConstructors

    public [Constructor](reflect/Constructor.md "class in java.lang.reflect")<?>[] getDeclaredConstructors()
    throws [SecurityException](SecurityException.md "class in java.lang")

    Returns an array of `Constructor` objects reflecting all the
    constructors implicitly or explicitly declared by the class represented by this
    `Class` object. These are public, protected, default
    (package) access, and private constructors. The elements in the array
    returned are not sorted and are not in any particular order. If the
    class has a default constructor (JLS ), it is included in the returned array.
    If a record class has a canonical constructor (JLS , ), it is included in the returned array.
    This method returns an array of length 0 if this `Class`
    object represents an interface, a primitive type, an array class, or
    void.

    Returns:
    :   the array of `Constructor` objects representing all the
        declared constructors of this class

    Throws:
    :   `SecurityException` - If a security manager, *s*, is present and any of the
        following conditions is met:
        - the caller's class loader is not the same as the
          class loader of this class and invocation of
          [`s.checkPermission`](SecurityManager.md#checkPermission(java.security.Permission)) method with
          `RuntimePermission("accessDeclaredMembers")`
          denies access to the declared constructors within this class- the caller's class loader is not the same as or an
            ancestor of the class loader for the current class and
            invocation of [`s.checkPackageAccess()`](SecurityManager.md#checkPackageAccess(java.lang.String)) denies access to the package
            of this class

    Since:
    :   1.1

    See Also:
    :   - [`getConstructors()`](#getConstructors())
  + ### getDeclaredField

    public [Field](reflect/Field.md "class in java.lang.reflect") getDeclaredField([String](String.md "class in java.lang") name)
    throws [NoSuchFieldException](NoSuchFieldException.md "class in java.lang"),
    [SecurityException](SecurityException.md "class in java.lang")

    Returns a `Field` object that reflects the specified declared
    field of the class or interface represented by this `Class`
    object. The `name` parameter is a `String` that specifies
    the simple name of the desired field.

    If this `Class` object represents an array type, then this
    method does not find the `length` field of the array type.

    Parameters:
    :   `name` - the name of the field

    Returns:
    :   the `Field` object for the specified field in this
        class

    Throws:
    :   `NoSuchFieldException` - if a field with the specified name is
        not found.
    :   `NullPointerException` - if `name` is `null`
    :   `SecurityException` - If a security manager, *s*, is present and any of the
        following conditions is met:
        - the caller's class loader is not the same as the
          class loader of this class and invocation of
          [`s.checkPermission`](SecurityManager.md#checkPermission(java.security.Permission)) method with
          `RuntimePermission("accessDeclaredMembers")`
          denies access to the declared field- the caller's class loader is not the same as or an
            ancestor of the class loader for the current class and
            invocation of [`s.checkPackageAccess()`](SecurityManager.md#checkPackageAccess(java.lang.String)) denies access to the package
            of this class

    Since:
    :   1.1
  + ### getDeclaredMethod

    public [Method](reflect/Method.md "class in java.lang.reflect") getDeclaredMethod([String](String.md "class in java.lang") name,
    [Class](Class.md "class in java.lang")<?>... parameterTypes)
    throws [NoSuchMethodException](NoSuchMethodException.md "class in java.lang"),
    [SecurityException](SecurityException.md "class in java.lang")

    Returns a `Method` object that reflects the specified
    declared method of the class or interface represented by this
    `Class` object. The `name` parameter is a
    `String` that specifies the simple name of the desired
    method, and the `parameterTypes` parameter is an array of
    `Class` objects that identify the method's formal parameter
    types, in declared order. If more than one method with the same
    parameter types is declared in a class, and one of these methods has a
    return type that is more specific than any of the others, that method is
    returned; otherwise one of the methods is chosen arbitrarily. If the
    name is ["<init>"](constant/ConstantDescs.md#INIT_NAME) or ["<clinit>"](constant/ConstantDescs.md#CLASS_INIT_NAME) a `NoSuchMethodException`
    is raised.

    If this `Class` object represents an array type, then this
    method does not find the `clone()` method.

    Parameters:
    :   `name` - the name of the method
    :   `parameterTypes` - the parameter array

    Returns:
    :   the `Method` object for the method of this class
        matching the specified name and parameters

    Throws:
    :   `NoSuchMethodException` - if a matching method is not found.
    :   `NullPointerException` - if `name` is `null`
    :   `SecurityException` - If a security manager, *s*, is present and any of the
        following conditions is met:
        - the caller's class loader is not the same as the
          class loader of this class and invocation of
          [`s.checkPermission`](SecurityManager.md#checkPermission(java.security.Permission)) method with
          `RuntimePermission("accessDeclaredMembers")`
          denies access to the declared method- the caller's class loader is not the same as or an
            ancestor of the class loader for the current class and
            invocation of [`s.checkPackageAccess()`](SecurityManager.md#checkPackageAccess(java.lang.String)) denies access to the package
            of this class

    Since:
    :   1.1
  + ### getDeclaredConstructor

    public [Constructor](reflect/Constructor.md "class in java.lang.reflect")<[T](Class.md "type parameter in Class")> getDeclaredConstructor([Class](Class.md "class in java.lang")<?>... parameterTypes)
    throws [NoSuchMethodException](NoSuchMethodException.md "class in java.lang"),
    [SecurityException](SecurityException.md "class in java.lang")

    Returns a `Constructor` object that reflects the specified
    constructor of the class represented by this
    `Class` object. The `parameterTypes` parameter is
    an array of `Class` objects that identify the constructor's
    formal parameter types, in declared order.
    If this `Class` object represents an inner class
    declared in a non-static context, the formal parameter types
    include the explicit enclosing instance as the first parameter.

    Parameters:
    :   `parameterTypes` - the parameter array

    Returns:
    :   The `Constructor` object for the constructor with the
        specified parameter list

    Throws:
    :   `NoSuchMethodException` - if a matching constructor is not found,
        including when this `Class` object represents
        an interface, a primitive type, an array class, or void.
    :   `SecurityException` - If a security manager, *s*, is present and any of the
        following conditions is met:
        - the caller's class loader is not the same as the
          class loader of this class and invocation of
          [`s.checkPermission`](SecurityManager.md#checkPermission(java.security.Permission)) method with
          `RuntimePermission("accessDeclaredMembers")`
          denies access to the declared constructor- the caller's class loader is not the same as or an
            ancestor of the class loader for the current class and
            invocation of [`s.checkPackageAccess()`](SecurityManager.md#checkPackageAccess(java.lang.String)) denies access to the package
            of this class

    Since:
    :   1.1

    See Also:
    :   - [`getConstructor(Class<?>[])`](#getConstructor(java.lang.Class...))
  + ### getResourceAsStream

    public [InputStream](../io/InputStream.md "class in java.io") getResourceAsStream([String](String.md "class in java.lang") name)

    Finds a resource with a given name.

    If this class is in a named [`Module`](Module.md "class in java.lang") then this method
    will attempt to find the resource in the module. This is done by
    delegating to the module's class loader [`findResource(String,String)`](ClassLoader.md#findResource(java.lang.String,java.lang.String))
    method, invoking it with the module name and the absolute name of the
    resource. Resources in named modules are subject to the rules for
    encapsulation specified in the `Module` [`getResourceAsStream`](Module.md#getResourceAsStream(java.lang.String)) method and so this
    method returns `null` when the resource is a
    non-"`.class`" resource in a package that is not open to the
    caller's module.

    Otherwise, if this class is not in a named module then the rules for
    searching resources associated with a given class are implemented by the
    defining [class loader](ClassLoader.md "class in java.lang") of the class. This method
    delegates to this `Class` object's class loader.
    If this `Class` object was loaded by the bootstrap class loader,
    the method delegates to [`ClassLoader.getSystemResourceAsStream(java.lang.String)`](ClassLoader.md#getSystemResourceAsStream(java.lang.String)).

    Before delegation, an absolute resource name is constructed from the
    given resource name using this algorithm:
    - If the `name` begins with a `'/'`
      (`'\u002f'`), then the absolute name of the resource is the
      portion of the `name` following the `'/'`.- Otherwise, the absolute name is of the following form:
        > `modified_package_name/name`

        Where the `modified_package_name` is the package name of this
        object with `'/'` substituted for `'.'`
        (`'\u002e'`).

    Parameters:
    :   `name` - name of the desired resource

    Returns:
    :   A [`InputStream`](../io/InputStream.md "class in java.io") object; `null` if no
        resource with this name is found, the resource is in a package
        that is not [open](Module.md#isOpen(java.lang.String,java.lang.Module)) to at
        least the caller module, or access to the resource is denied
        by the security manager.

    Throws:
    :   `NullPointerException` - If `name` is `null`

    Since:
    :   1.1

    See Also:
    :   - [`Module.getResourceAsStream(String)`](Module.md#getResourceAsStream(java.lang.String))
  + ### getResource

    public [URL](../net/URL.md "class in java.net") getResource([String](String.md "class in java.lang") name)

    Finds a resource with a given name.

    If this class is in a named [`Module`](Module.md "class in java.lang") then this method
    will attempt to find the resource in the module. This is done by
    delegating to the module's class loader [`findResource(String,String)`](ClassLoader.md#findResource(java.lang.String,java.lang.String))
    method, invoking it with the module name and the absolute name of the
    resource. Resources in named modules are subject to the rules for
    encapsulation specified in the `Module` [`getResourceAsStream`](Module.md#getResourceAsStream(java.lang.String)) method and so this
    method returns `null` when the resource is a
    non-"`.class`" resource in a package that is not open to the
    caller's module.

    Otherwise, if this class is not in a named module then the rules for
    searching resources associated with a given class are implemented by the
    defining [class loader](ClassLoader.md "class in java.lang") of the class. This method
    delegates to this `Class` object's class loader.
    If this `Class` object was loaded by the bootstrap class loader,
    the method delegates to [`ClassLoader.getSystemResource(java.lang.String)`](ClassLoader.md#getSystemResource(java.lang.String)).

    Before delegation, an absolute resource name is constructed from the
    given resource name using this algorithm:
    - If the `name` begins with a `'/'`
      (`'\u002f'`), then the absolute name of the resource is the
      portion of the `name` following the `'/'`.- Otherwise, the absolute name is of the following form:
        > `modified_package_name/name`

        Where the `modified_package_name` is the package name of this
        object with `'/'` substituted for `'.'`
        (`'\u002e'`).

    Parameters:
    :   `name` - name of the desired resource

    Returns:
    :   A [`URL`](../net/URL.md "class in java.net") object; `null` if no resource with
        this name is found, the resource cannot be located by a URL, the
        resource is in a package that is not
        [open](Module.md#isOpen(java.lang.String,java.lang.Module)) to at least the caller
        module, or access to the resource is denied by the security
        manager.

    Throws:
    :   `NullPointerException` - If `name` is `null`

    Since:
    :   1.1
  + ### getProtectionDomain

    public [ProtectionDomain](../security/ProtectionDomain.md "class in java.security") getProtectionDomain()

    Returns the `ProtectionDomain` of this class. If there is a
    security manager installed, this method first calls the security
    manager's `checkPermission` method with a
    `RuntimePermission("getProtectionDomain")` permission to
    ensure it's ok to get the
    `ProtectionDomain`.

    Returns:
    :   the ProtectionDomain of this class

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkPermission` method doesn't allow
        getting the ProtectionDomain.

    Since:
    :   1.2

    See Also:
    :   - [`ProtectionDomain`](../security/ProtectionDomain.md "class in java.security")
        - [`SecurityManager.checkPermission(java.security.Permission)`](SecurityManager.md#checkPermission(java.security.Permission))
        - [`RuntimePermission`](RuntimePermission.md "class in java.lang")
  + ### desiredAssertionStatus

    public boolean desiredAssertionStatus()

    Returns the assertion status that would be assigned to this
    class if it were to be initialized at the time this method is invoked.
    If this class has had its assertion status set, the most recent
    setting will be returned; otherwise, if any package default assertion
    status pertains to this class, the most recent setting for the most
    specific pertinent package default assertion status is returned;
    otherwise, if this class is not a system class (i.e., it has a
    class loader) its class loader's default assertion status is returned;
    otherwise, the system class default assertion status is returned.

    Returns:
    :   the desired assertion status of the specified class.

    Since:
    :   1.4

    See Also:
    :   - [`ClassLoader.setClassAssertionStatus(java.lang.String, boolean)`](ClassLoader.md#setClassAssertionStatus(java.lang.String,boolean))
        - [`ClassLoader.setPackageAssertionStatus(java.lang.String, boolean)`](ClassLoader.md#setPackageAssertionStatus(java.lang.String,boolean))
        - [`ClassLoader.setDefaultAssertionStatus(boolean)`](ClassLoader.md#setDefaultAssertionStatus(boolean))
  + ### isEnum

    public boolean isEnum()

    Returns true if and only if this class was declared as an enum in the
    source code.
    Note that [`Enum`](Enum.md "class in java.lang") is not itself an enum class.
    Also note that if an enum constant is declared with a class body,
    the class of that enum constant object is an anonymous class
    and *not* the class of the declaring enum class. The
    [`Enum.getDeclaringClass()`](Enum.md#getDeclaringClass()) method of an enum constant can
    be used to get the class of the enum class declaring the
    constant.

    Returns:
    :   true if and only if this class was declared as an enum in the
        source code

    Since:
    :   1.5
  + ### isRecord

    public boolean isRecord()

    Returns `true` if and only if this class is a record class.

    The [direct superclass](#getSuperclass()) of a record
    class is `java.lang.Record`. A record class is [final](reflect/Modifier.md#FINAL). A record class has (possibly zero) record
    components; [`getRecordComponents()`](#getRecordComponents()) returns a non-null but
    possibly empty value for a record.

    Note that class [`Record`](Record.md "class in java.lang") is not a record class and thus
    invoking this method on class `Record` returns `false`.

    Returns:
    :   true if and only if this class is a record class, otherwise false

    Since:
    :   16
  + ### getEnumConstants

    public [T](Class.md "type parameter in Class")[] getEnumConstants()

    Returns the elements of this enum class or null if this
    Class object does not represent an enum class.

    Returns:
    :   an array containing the values comprising the enum class
        represented by this `Class` object in the order they're
        declared, or null if this `Class` object does not
        represent an enum class

    Since:
    :   1.5
  + ### cast

    public [T](Class.md "type parameter in Class") cast([Object](Object.md "class in java.lang") obj)

    Casts an object to the class or interface represented
    by this `Class` object.

    Parameters:
    :   `obj` - the object to be cast

    Returns:
    :   the object after casting, or null if obj is null

    Throws:
    :   `ClassCastException` - if the object is not
        null and is not assignable to the type T.

    Since:
    :   1.5
  + ### asSubclass

    public <U> [Class](Class.md "class in java.lang")<? extends U> asSubclass([Class](Class.md "class in java.lang")<U> clazz)

    Casts this `Class` object to represent a subclass of the class
    represented by the specified class object. Checks that the cast
    is valid, and throws a `ClassCastException` if it is not. If
    this method succeeds, it always returns a reference to this `Class` object.

    This method is useful when a client needs to "narrow" the type of
    a `Class` object to pass it to an API that restricts the
    `Class` objects that it is willing to accept. A cast would
    generate a compile-time warning, as the correctness of the cast
    could not be checked at runtime (because generic types are implemented
    by erasure).

    Type Parameters:
    :   `U` - the type to cast this `Class` object to

    Parameters:
    :   `clazz` - the class of the type to cast this `Class` object to

    Returns:
    :   this `Class` object, cast to represent a subclass of
        the specified class object.

    Throws:
    :   `ClassCastException` - if this `Class` object does not
        represent a subclass of the specified class (here "subclass" includes
        the class itself).

    Since:
    :   1.5
  + ### getAnnotation

    public <A extends [Annotation](annotation/Annotation.md "interface in java.lang.annotation")> A getAnnotation([Class](Class.md "class in java.lang")<A> annotationClass)

    Returns this element's annotation for the specified type if
    such an annotation is *present*, else null.

    Note that any annotation returned by this method is a
    declaration annotation.

    Specified by:
    :   `getAnnotation` in interface `AnnotatedElement`

    Type Parameters:
    :   `A` - the type of the annotation to query for and return if present

    Parameters:
    :   `annotationClass` - the Class object corresponding to the
        annotation type

    Returns:
    :   this element's annotation for the specified annotation type if
        present on this element, else null

    Throws:
    :   `NullPointerException` - if the given annotation class is null

    Since:
    :   1.5
  + ### isAnnotationPresent

    public boolean isAnnotationPresent([Class](Class.md "class in java.lang")<? extends [Annotation](annotation/Annotation.md "interface in java.lang.annotation")> annotationClass)

    Returns true if an annotation for the specified type
    is *present* on this element, else false. This method
    is designed primarily for convenient access to marker annotations.

    The truth value returned by this method is equivalent to:
    `getAnnotation(annotationClass) != null`

    Specified by:
    :   `isAnnotationPresent` in interface `AnnotatedElement`

    Parameters:
    :   `annotationClass` - the Class object corresponding to the
        annotation type

    Returns:
    :   true if an annotation for the specified annotation
        type is present on this element, else false

    Throws:
    :   `NullPointerException` - if the given annotation class is null

    Since:
    :   1.5
  + ### getAnnotationsByType

    public <A extends [Annotation](annotation/Annotation.md "interface in java.lang.annotation")> A[] getAnnotationsByType([Class](Class.md "class in java.lang")<A> annotationClass)

    Returns annotations that are *associated* with this element.
    If there are no annotations *associated* with this element, the return
    value is an array of length 0.
    The difference between this method and [`AnnotatedElement.getAnnotation(Class)`](reflect/AnnotatedElement.md#getAnnotation(java.lang.Class))
    is that this method detects if its argument is a *repeatable
    annotation type* (JLS ), and if so, attempts to find one or
    more annotations of that type by "looking through" a container
    annotation.
    The caller of this method is free to modify the returned array; it will
    have no effect on the arrays returned to other callers.

    Note that any annotations returned by this method are
    declaration annotations.

    Specified by:
    :   `getAnnotationsByType` in interface `AnnotatedElement`

    Type Parameters:
    :   `A` - the type of the annotation to query for and return if present

    Parameters:
    :   `annotationClass` - the Class object corresponding to the
        annotation type

    Returns:
    :   all this element's annotations for the specified annotation type if
        associated with this element, else an array of length zero

    Throws:
    :   `NullPointerException` - if the given annotation class is null

    Since:
    :   1.8
  + ### getAnnotations

    public [Annotation](annotation/Annotation.md "interface in java.lang.annotation")[] getAnnotations()

    Returns annotations that are *present* on this element.
    If there are no annotations *present* on this element, the return
    value is an array of length 0.
    The caller of this method is free to modify the returned array; it will
    have no effect on the arrays returned to other callers.

    Note that any annotations returned by this method are
    declaration annotations.

    Specified by:
    :   `getAnnotations` in interface `AnnotatedElement`

    Returns:
    :   annotations present on this element

    Since:
    :   1.5
  + ### getDeclaredAnnotation

    public <A extends [Annotation](annotation/Annotation.md "interface in java.lang.annotation")> A getDeclaredAnnotation([Class](Class.md "class in java.lang")<A> annotationClass)

    Returns this element's annotation for the specified type if
    such an annotation is *directly present*, else null.
    This method ignores inherited annotations. (Returns null if no
    annotations are directly present on this element.)

    Note that any annotation returned by this method is a
    declaration annotation.

    Specified by:
    :   `getDeclaredAnnotation` in interface `AnnotatedElement`

    Type Parameters:
    :   `A` - the type of the annotation to query for and return if directly present

    Parameters:
    :   `annotationClass` - the Class object corresponding to the
        annotation type

    Returns:
    :   this element's annotation for the specified annotation type if
        directly present on this element, else null

    Throws:
    :   `NullPointerException` - if the given annotation class is null

    Since:
    :   1.8
  + ### getDeclaredAnnotationsByType

    public <A extends [Annotation](annotation/Annotation.md "interface in java.lang.annotation")> A[] getDeclaredAnnotationsByType([Class](Class.md "class in java.lang")<A> annotationClass)

    Returns this element's annotation(s) for the specified type if
    such annotations are either *directly present* or
    *indirectly present*. This method ignores inherited
    annotations.
    If there are no specified annotations directly or indirectly
    present on this element, the return value is an array of length
    0.
    The difference between this method and [`AnnotatedElement.getDeclaredAnnotation(Class)`](reflect/AnnotatedElement.md#getDeclaredAnnotation(java.lang.Class)) is that this method detects if its
    argument is a *repeatable annotation type* (JLS ), and if so,
    attempts to find one or more annotations of that type by "looking
    through" a container annotation if one is present.
    The caller of this method is free to modify the returned array; it will
    have no effect on the arrays returned to other callers.

    Note that any annotations returned by this method are
    declaration annotations.

    Specified by:
    :   `getDeclaredAnnotationsByType` in interface `AnnotatedElement`

    Type Parameters:
    :   `A` - the type of the annotation to query for and return
        if directly or indirectly present

    Parameters:
    :   `annotationClass` - the Class object corresponding to the
        annotation type

    Returns:
    :   all this element's annotations for the specified annotation type if
        directly or indirectly present on this element, else an array of length zero

    Throws:
    :   `NullPointerException` - if the given annotation class is null

    Since:
    :   1.8
  + ### getDeclaredAnnotations

    public [Annotation](annotation/Annotation.md "interface in java.lang.annotation")[] getDeclaredAnnotations()

    Returns annotations that are *directly present* on this element.
    This method ignores inherited annotations.
    If there are no annotations *directly present* on this element,
    the return value is an array of length 0.
    The caller of this method is free to modify the returned array; it will
    have no effect on the arrays returned to other callers.

    Note that any annotations returned by this method are
    declaration annotations.

    Specified by:
    :   `getDeclaredAnnotations` in interface `AnnotatedElement`

    Returns:
    :   annotations directly present on this element

    Since:
    :   1.5
  + ### getAnnotatedSuperclass

    public [AnnotatedType](reflect/AnnotatedType.md "interface in java.lang.reflect") getAnnotatedSuperclass()

    Returns an `AnnotatedType` object that represents the use of a
    type to specify the superclass of the entity represented by this `Class` object. (The *use* of type Foo to specify the superclass
    in '... extends Foo' is distinct from the *declaration* of class
    Foo.)

    If this `Class` object represents a class whose declaration
    does not explicitly indicate an annotated superclass, then the return
    value is an `AnnotatedType` object representing an element with no
    annotations.

    If this `Class` represents either the `Object` class, an
    interface type, an array type, a primitive type, or void, the return
    value is `null`.

    Returns:
    :   an object representing the superclass

    Since:
    :   1.8
  + ### getAnnotatedInterfaces

    public [AnnotatedType](reflect/AnnotatedType.md "interface in java.lang.reflect")[] getAnnotatedInterfaces()

    Returns an array of `AnnotatedType` objects that represent the use
    of types to specify superinterfaces of the entity represented by this
    `Class` object. (The *use* of type Foo to specify a
    superinterface in '... implements Foo' is distinct from the
    *declaration* of interface Foo.)

    If this `Class` object represents a class, the return value is
    an array containing objects representing the uses of interface types to
    specify interfaces implemented by the class. The order of the objects in
    the array corresponds to the order of the interface types used in the
    'implements' clause of the declaration of this `Class` object.

    If this `Class` object represents an interface, the return
    value is an array containing objects representing the uses of interface
    types to specify interfaces directly extended by the interface. The
    order of the objects in the array corresponds to the order of the
    interface types used in the 'extends' clause of the declaration of this
    `Class` object.

    If this `Class` object represents a class or interface whose
    declaration does not explicitly indicate any annotated superinterfaces,
    the return value is an array of length 0.

    If this `Class` object represents either the `Object`
    class, an array type, a primitive type, or void, the return value is an
    array of length 0.

    Returns:
    :   an array representing the superinterfaces

    Since:
    :   1.8
  + ### getNestHost

    public [Class](Class.md "class in java.lang")<?> getNestHost()

    Returns the nest host of the [nest](#nest) to which the class
    or interface represented by this `Class` object belongs.
    Every class and interface belongs to exactly one nest.
    If the nest host of this class or interface has previously
    been determined, then this method returns the nest host.
    If the nest host of this class or interface has
    not previously been determined, then this method determines the nest
    host using the algorithm of JVMS 5.4.4, and returns it.
    Often, a class or interface belongs to a nest consisting only of itself,
    in which case this method returns `this` to indicate that the class
    or interface is the nest host.

    If this `Class` object represents a primitive type, an array type,
    or `void`, then this method returns `this`,
    indicating that the represented entity belongs to the nest consisting only of
    itself, and is the nest host.

    Returns:
    :   the nest host of this class or interface

    Throws:
    :   `SecurityException` - If the returned class is not the current class, and
        if a security manager, *s*, is present and the caller's
        class loader is not the same as or an ancestor of the class
        loader for the returned class and invocation of [`s.checkPackageAccess()`](SecurityManager.md#checkPackageAccess(java.lang.String))
        denies access to the package of the returned class

    Since:
    :   11
  + ### isNestmateOf

    public boolean isNestmateOf([Class](Class.md "class in java.lang")<?> c)

    Determines if the given `Class` is a nestmate of the
    class or interface represented by this `Class` object.
    Two classes or interfaces are nestmates
    if they have the same [nest host](#getNestHost()).

    Parameters:
    :   `c` - the class to check

    Returns:
    :   `true` if this class and `c` are members of
        the same nest; and `false` otherwise.

    Since:
    :   11
  + ### getNestMembers

    public [Class](Class.md "class in java.lang")<?>[] getNestMembers()

    Returns an array containing `Class` objects representing all the
    classes and interfaces that are members of the nest to which the class
    or interface represented by this `Class` object belongs.
    First, this method obtains the [nest host](#getNestHost()),
    `H`, of the nest to which the class or interface represented by
    this `Class` object belongs. The zeroth element of the returned
    array is `H`.
    Then, for each class or interface `C` which is recorded by `H`
    as being a member of its nest, this method attempts to obtain the `Class`
    object for `C` (using [the defining class
    loader](#getClassLoader()) of the current `Class` object), and then obtains the
    [nest host](#getNestHost()) of the nest to which `C` belongs.
    The classes and interfaces which are recorded by `H` as being members
    of its nest, and for which `H` can be determined as their nest host,
    are indicated by subsequent elements of the returned array. The order of
    such elements is unspecified. Duplicates are permitted.

    If this `Class` object represents a primitive type, an array type,
    or `void`, then this method returns a single-element array containing
    `this`.

    Returns:
    :   an array of all classes and interfaces in the same nest as
        this class or interface

    Throws:
    :   `SecurityException` - If any returned class is not the current class, and
        if a security manager, *s*, is present and the caller's
        class loader is not the same as or an ancestor of the class
        loader for that returned class and invocation of [`s.checkPackageAccess()`](SecurityManager.md#checkPackageAccess(java.lang.String))
        denies access to the package of that returned class

    Since:
    :   11

    See Also:
    :   - [`getNestHost()`](#getNestHost())
  + ### descriptorString

    public [String](String.md "class in java.lang") descriptorString()

    Returns the descriptor string of the entity (class, interface, array class,
    primitive type, or `void`) represented by this `Class` object.

    If this `Class` object represents a class or interface,
    not an array class, then:
    - If the class or interface is not [hidden](#isHidden()),
      then the result is a field descriptor (JVMS )
      for the class or interface. Calling
      [`ClassDesc::ofDescriptor`](constant/ClassDesc.md#ofDescriptor(java.lang.String))
      with the result descriptor string produces a [`ClassDesc`](constant/ClassDesc.md "interface in java.lang.constant")
      describing this class or interface.- If the class or interface is [hidden](#isHidden()),
        then the result is a string of the form:
        > `"L" +` *N* `+ "." + <suffix> + ";"`

        where *N* is the [binary name](ClassLoader.md#binary-name)
        encoded in internal form indicated by the `class` file passed to
        [`Lookup::defineHiddenClass`](invoke/MethodHandles.Lookup.md#defineHiddenClass(byte%5B%5D,boolean,java.lang.invoke.MethodHandles.Lookup.ClassOption...)), and `<suffix>` is an unqualified name.
        A hidden class or interface has no [nominal descriptor](constant/ClassDesc.md "interface in java.lang.constant").
        The result string is not a type descriptor.

    If this `Class` object represents an array class, then
    the result is a string consisting of one or more '`[`' characters
    representing the depth of the array nesting, followed by the
    descriptor string of the element type.
    - If the element type is not a [hidden](#isHidden()) class
      or interface, then this array class can be described nominally.
      Calling [`ClassDesc::ofDescriptor`](constant/ClassDesc.md#ofDescriptor(java.lang.String))
      with the result descriptor string produces a [`ClassDesc`](constant/ClassDesc.md "interface in java.lang.constant")
      describing this array class.- If the element type is a [hidden](#isHidden()) class or
        interface, then this array class cannot be described nominally.
        The result string is not a type descriptor.

    If this `Class` object represents a primitive type or
    `void`, then the result is a field descriptor string which
    is a one-letter code corresponding to a primitive type or `void`
    (`"B", "C", "D", "F", "I", "J", "S", "Z", "V"`) (JVMS ).

    Specified by:
    :   `descriptorString` in interface `TypeDescriptor`

    Returns:
    :   the descriptor string for this `Class` object

    Since:
    :   12
  + ### componentType

    public [Class](Class.md "class in java.lang")<?> componentType()

    Returns the component type of this `Class`, if it describes
    an array type, or `null` otherwise.

    Specified by:
    :   `componentType` in interface `TypeDescriptor.OfField<T>`

    Returns:
    :   a `Class` describing the component type, or `null`
        if this `Class` does not describe an array type

    Since:
    :   12
  + ### arrayType

    public [Class](Class.md "class in java.lang")<?> arrayType()

    Returns a `Class` for an array type whose component type
    is described by this [Class](Class.md "class in java.lang").

    Specified by:
    :   `arrayType` in interface `TypeDescriptor.OfField<T>`

    Returns:
    :   a `Class` describing the array type

    Throws:
    :   `UnsupportedOperationException` - if this component type is [void](Void.md#TYPE) or if the number of dimensions of the resulting array
        type would exceed 255.

    Since:
    :   12
  + ### describeConstable

    public [Optional](../util/Optional.md "class in java.util")<[ClassDesc](constant/ClassDesc.md "interface in java.lang.constant")> describeConstable()

    Returns a nominal descriptor for this instance, if one can be
    constructed, or an empty [`Optional`](../util/Optional.md "class in java.util") if one cannot be.

    Specified by:
    :   `describeConstable` in interface `Constable`

    Returns:
    :   An [`Optional`](../util/Optional.md "class in java.util") containing the resulting nominal descriptor,
        or an empty [`Optional`](../util/Optional.md "class in java.util") if one cannot be constructed.

    Since:
    :   12
  + ### isHidden

    public boolean isHidden()

    Returns `true` if and only if the underlying class is a hidden class.

    Returns:
    :   `true` if and only if this class is a hidden class.

    Since:
    :   15

    See Also:
    :   - [`MethodHandles.Lookup.defineHiddenClass(byte[], boolean, java.lang.invoke.MethodHandles.Lookup.ClassOption...)`](invoke/MethodHandles.Lookup.md#defineHiddenClass(byte%5B%5D,boolean,java.lang.invoke.MethodHandles.Lookup.ClassOption...))
  + ### getPermittedSubclasses

    public [Class](Class.md "class in java.lang")<?>[] getPermittedSubclasses()

    Returns an array containing `Class` objects representing the
    direct subinterfaces or subclasses permitted to extend or
    implement this class or interface if it is sealed. The order of such elements
    is unspecified. The array is empty if this sealed class or interface has no
    permitted subclass. If this `Class` object represents a primitive type,
    `void`, an array type, or a class or interface that is not sealed,
    that is [`isSealed()`](#isSealed()) returns `false`, then this method returns `null`.
    Conversely, if [`isSealed()`](#isSealed()) returns `true`, then this method
    returns a non-null value.
    For each class or interface `C` which is recorded as a permitted
    direct subinterface or subclass of this class or interface,
    this method attempts to obtain the `Class`
    object for `C` (using [the defining class
    loader](#getClassLoader()) of the current `Class` object).
    The `Class` objects which can be obtained and which are direct
    subinterfaces or subclasses of this class or interface,
    are indicated by elements of the returned array. If a `Class` object
    cannot be obtained, it is silently ignored, and not included in the result
    array.

    Returns:
    :   an array of `Class` objects of the permitted subclasses of this class or interface,
        or `null` if this class or interface is not sealed.

    Throws:
    :   `SecurityException` - If a security manager, *s*, is present and the caller's
        class loader is not the same as or an ancestor of the class
        loader for that returned class and invocation of [`s.checkPackageAccess()`](SecurityManager.md#checkPackageAccess(java.lang.String))
        denies access to the package of any class in the returned array.

    Since:
    :   17
  + ### isSealed

    public boolean isSealed()

    Returns `true` if and only if this `Class` object represents
    a sealed class or interface. If this `Class` object represents a
    primitive type, `void`, or an array type, this method returns
    `false`. A sealed class or interface has (possibly zero) permitted
    subclasses; [`getPermittedSubclasses()`](#getPermittedSubclasses()) returns a non-null but
    possibly empty value for a sealed class or interface.

    Returns:
    :   `true` if and only if this `Class` object represents
        a sealed class or interface.

    Since:
    :   17