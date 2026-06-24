Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.element](package-summary.md)

# Enum Class NestingKind

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../../../java.base/java/lang/Enum.md "class in java.lang")<[NestingKind](NestingKind.md "enum class in javax.lang.model.element")>

javax.lang.model.element.NestingKind

All Implemented Interfaces:
:   `Serializable`, `Comparable<NestingKind>`, `Constable`

---

public enum NestingKind
extends [Enum](../../../../../java.base/java/lang/Enum.md "class in java.lang")<[NestingKind](NestingKind.md "enum class in javax.lang.model.element")>

The *nesting kind* of a type element.
Type elements come in four varieties:
top-level, member, local, and anonymous.
*Nesting kind* is a non-standard term used here to denote this
classification.

Note that it is possible additional nesting kinds will be added
in future versions of the platform.

**Example:** The classes below are annotated with their nesting kind.
> ```
>  import java.lang.annotation.*;
>  import static java.lang.annotation.RetentionPolicy.*;
>  import javax.lang.model.element.*;
>  import static javax.lang.model.element.NestingKind.*;
>
>  @Nesting(TOP_LEVEL)
>  public class NestingExamples {
>      @Nesting(MEMBER)
>      static class MemberClass1{}
>
>      @Nesting(MEMBER)
>      class MemberClass2{}
>
>      public static void main(String... argv) {
>          @Nesting(LOCAL)
>          class LocalClass{};
>
>          Class<?>[] classes = {
>              NestingExamples.class,
>              MemberClass1.class,
>              MemberClass2.class,
>              LocalClass.class
>          };
>
>          for(Class<?> clazz : classes) {
>              System.out.format("%s is %s%n",
>                                clazz.getName(),
>                                clazz.getAnnotation(Nesting.class).value());
>          }
>      }
>  }
>
>  @Retention(RUNTIME)
>  @interface Nesting {
>      NestingKind value();
>  }
> ```

Since:
:   1.6

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `ANONYMOUS`

  A class without a name.

  `LOCAL`

  A named class or interface declared within a construct other
  than a class or interface.

  `MEMBER`

  A class or interface that is a named member of another class or
  interface.

  `TOP_LEVEL`

  A top-level class or interface, not contained within another
  class or interface.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `isNested()`

  Does this constant correspond to a nested type element?
  A *nested* type element is any that is not top-level.

  `static NestingKind`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static NestingKind[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### TOP\_LEVEL

    public static final [NestingKind](NestingKind.md "enum class in javax.lang.model.element") TOP\_LEVEL

    A top-level class or interface, not contained within another
    class or interface.
  + ### MEMBER

    public static final [NestingKind](NestingKind.md "enum class in javax.lang.model.element") MEMBER

    A class or interface that is a named member of another class or
    interface.
  + ### LOCAL

    public static final [NestingKind](NestingKind.md "enum class in javax.lang.model.element") LOCAL

    A named class or interface declared within a construct other
    than a class or interface.
  + ### ANONYMOUS

    public static final [NestingKind](NestingKind.md "enum class in javax.lang.model.element") ANONYMOUS

    A class without a name.
* ## Method Details

  + ### values

    public static [NestingKind](NestingKind.md "enum class in javax.lang.model.element")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [NestingKind](NestingKind.md "enum class in javax.lang.model.element") valueOf([String](../../../../../java.base/java/lang/String.md "class in java.lang") name)

    Returns the enum constant of this class with the specified name.
    The string must match *exactly* an identifier used to declare an
    enum constant in this class. (Extraneous whitespace characters are
    not permitted.)

    Parameters:
    :   `name` - the name of the enum constant to be returned.

    Returns:
    :   the enum constant with the specified name

    Throws:
    :   `IllegalArgumentException` - if this enum class has no constant with the specified name
    :   `NullPointerException` - if the argument is null
  + ### isNested

    public boolean isNested()

    Does this constant correspond to a nested type element?
    A *nested* type element is any that is not top-level.
    More specifically, an *inner* type element is any nested type element that
    is not [static](Modifier.md#STATIC).

    Returns:
    :   whether or not the constant is nested