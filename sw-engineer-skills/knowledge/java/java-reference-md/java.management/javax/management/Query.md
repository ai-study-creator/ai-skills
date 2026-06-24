Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class Query

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.Query

---

public class Query
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

Constructs query object constraints.

The MBean Server can be queried for MBeans that meet a particular
condition, using its [`queryNames`](MBeanServer.md#queryNames(javax.management.ObjectName,javax.management.QueryExp)) or
[`queryMBeans`](MBeanServer.md#queryMBeans(javax.management.ObjectName,javax.management.QueryExp)) method. The [`QueryExp`](QueryExp.md "interface in javax.management")
parameter to the method can be any implementation of the interface
`QueryExp`, but it is usually best to obtain the `QueryExp`
value by calling the static methods in this class. This is particularly
true when querying a remote MBean Server: a custom implementation of the
`QueryExp` interface might not be present in the remote MBean Server,
but the methods in this class return only standard classes that are
part of the JMX implementation.

As an example, suppose you wanted to find all MBeans where the `Enabled` attribute is `true` and the `Owner` attribute is `"Duke"`. Here is how you could construct the appropriate `QueryExp` by
chaining together method calls:

```
 QueryExp query =
     Query.and(Query.eq(Query.attr("Enabled"), Query.value(true)),
               Query.eq(Query.attr("Owner"), Query.value("Duke")));
```

Since:
:   1.5

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `DIV`

  A code representing the [`div(javax.management.ValueExp, javax.management.ValueExp)`](#div(javax.management.ValueExp,javax.management.ValueExp)) expression.

  `static final int`

  `EQ`

  A code representing the [`eq(javax.management.ValueExp, javax.management.ValueExp)`](#eq(javax.management.ValueExp,javax.management.ValueExp)) query.

  `static final int`

  `GE`

  A code representing the [`geq(javax.management.ValueExp, javax.management.ValueExp)`](#geq(javax.management.ValueExp,javax.management.ValueExp)) query.

  `static final int`

  `GT`

  A code representing the [`gt(javax.management.ValueExp, javax.management.ValueExp)`](#gt(javax.management.ValueExp,javax.management.ValueExp)) query.

  `static final int`

  `LE`

  A code representing the [`leq(javax.management.ValueExp, javax.management.ValueExp)`](#leq(javax.management.ValueExp,javax.management.ValueExp)) query.

  `static final int`

  `LT`

  A code representing the [`lt(javax.management.ValueExp, javax.management.ValueExp)`](#lt(javax.management.ValueExp,javax.management.ValueExp)) query.

  `static final int`

  `MINUS`

  A code representing the [`minus(javax.management.ValueExp, javax.management.ValueExp)`](#minus(javax.management.ValueExp,javax.management.ValueExp)) expression.

  `static final int`

  `PLUS`

  A code representing the [`plus(javax.management.ValueExp, javax.management.ValueExp)`](#plus(javax.management.ValueExp,javax.management.ValueExp)) expression.

  `static final int`

  `TIMES`

  A code representing the [`times(javax.management.ValueExp, javax.management.ValueExp)`](#times(javax.management.ValueExp,javax.management.ValueExp)) expression.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Query()`

  Basic constructor.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static QueryExp`

  `and(QueryExp q1,
  QueryExp q2)`

  Returns a query expression that is the conjunction of two other query
  expressions.

  `static QueryExp`

  `anySubString(AttributeValueExp a,
  StringValueExp s)`

  Returns a query expression that represents a matching constraint on
  a string argument.

  `static AttributeValueExp`

  `attr(String name)`

  Returns a new attribute expression.

  `static AttributeValueExp`

  `attr(String className,
  String name)`

  Returns a new qualified attribute expression.

  `static QueryExp`

  `between(ValueExp v1,
  ValueExp v2,
  ValueExp v3)`

  Returns a query expression that represents the constraint that one
  value is between two other values.

  `static AttributeValueExp`

  `classattr()`

  Returns a new class attribute expression which can be used in any
  Query call that expects a ValueExp.

  `static ValueExp`

  `div(ValueExp value1,
  ValueExp value2)`

  Returns a binary expression representing the quotient of two numeric
  values.

  `static QueryExp`

  `eq(ValueExp v1,
  ValueExp v2)`

  Returns a query expression that represents an equality constraint on
  two values.

  `static QueryExp`

  `finalSubString(AttributeValueExp a,
  StringValueExp s)`

  Returns a query expression that represents a matching constraint on
  a string argument.

  `static QueryExp`

  `geq(ValueExp v1,
  ValueExp v2)`

  Returns a query expression that represents a "greater than or equal
  to" constraint on two values.

  `static QueryExp`

  `gt(ValueExp v1,
  ValueExp v2)`

  Returns a query expression that represents a "greater than" constraint on
  two values.

  `static QueryExp`

  `in(ValueExp val,
  ValueExp[] valueList)`

  Returns an expression constraining a value to be one of an explicit list.

  `static QueryExp`

  `initialSubString(AttributeValueExp a,
  StringValueExp s)`

  Returns a query expression that represents a matching constraint on
  a string argument.

  `static QueryExp`

  `isInstanceOf(StringValueExp classNameValue)`

  Returns a query expression that represents an inheritance constraint
  on an MBean class.

  `static QueryExp`

  `leq(ValueExp v1,
  ValueExp v2)`

  Returns a query expression that represents a "less than or equal to"
  constraint on two values.

  `static QueryExp`

  `lt(ValueExp v1,
  ValueExp v2)`

  Returns a query expression that represents a "less than" constraint on
  two values.

  `static QueryExp`

  `match(AttributeValueExp a,
  StringValueExp s)`

  Returns a query expression that represents a matching constraint on
  a string argument.

  `static ValueExp`

  `minus(ValueExp value1,
  ValueExp value2)`

  Returns a binary expression representing the difference between two numeric
  values.

  `static QueryExp`

  `not(QueryExp queryExp)`

  Returns a constraint that is the negation of its argument.

  `static QueryExp`

  `or(QueryExp q1,
  QueryExp q2)`

  Returns a query expression that is the disjunction of two other query
  expressions.

  `static ValueExp`

  `plus(ValueExp value1,
  ValueExp value2)`

  Returns a binary expression representing the sum of two numeric values,
  or the concatenation of two string values.

  `static ValueExp`

  `times(ValueExp value1,
  ValueExp value2)`

  Returns a binary expression representing the product of two numeric values.

  `static ValueExp`

  `value(boolean val)`

  Returns a boolean value expression that can be used in any Query call
  that expects a ValueExp.

  `static ValueExp`

  `value(double val)`

  Returns a numeric value expression that can be used in any Query call
  that expects a ValueExp.

  `static ValueExp`

  `value(float val)`

  Returns a numeric value expression that can be used in any Query call
  that expects a ValueExp.

  `static ValueExp`

  `value(int val)`

  Returns a numeric value expression that can be used in any Query call
  that expects a ValueExp.

  `static ValueExp`

  `value(long val)`

  Returns a numeric value expression that can be used in any Query call
  that expects a ValueExp.

  `static ValueExp`

  `value(Number val)`

  Returns a numeric value expression that can be used in any Query call
  that expects a ValueExp.

  `static StringValueExp`

  `value(String val)`

  Returns a new string expression.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### GT

    public static final int GT

    A code representing the [`gt(javax.management.ValueExp, javax.management.ValueExp)`](#gt(javax.management.ValueExp,javax.management.ValueExp)) query. This is chiefly
    of interest for the serialized form of queries.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.management.Query.GT)
  + ### LT

    public static final int LT

    A code representing the [`lt(javax.management.ValueExp, javax.management.ValueExp)`](#lt(javax.management.ValueExp,javax.management.ValueExp)) query. This is chiefly
    of interest for the serialized form of queries.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.management.Query.LT)
  + ### GE

    public static final int GE

    A code representing the [`geq(javax.management.ValueExp, javax.management.ValueExp)`](#geq(javax.management.ValueExp,javax.management.ValueExp)) query. This is chiefly
    of interest for the serialized form of queries.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.management.Query.GE)
  + ### LE

    public static final int LE

    A code representing the [`leq(javax.management.ValueExp, javax.management.ValueExp)`](#leq(javax.management.ValueExp,javax.management.ValueExp)) query. This is chiefly
    of interest for the serialized form of queries.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.management.Query.LE)
  + ### EQ

    public static final int EQ

    A code representing the [`eq(javax.management.ValueExp, javax.management.ValueExp)`](#eq(javax.management.ValueExp,javax.management.ValueExp)) query. This is chiefly
    of interest for the serialized form of queries.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.management.Query.EQ)
  + ### PLUS

    public static final int PLUS

    A code representing the [`plus(javax.management.ValueExp, javax.management.ValueExp)`](#plus(javax.management.ValueExp,javax.management.ValueExp)) expression. This
    is chiefly of interest for the serialized form of queries.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.management.Query.PLUS)
  + ### MINUS

    public static final int MINUS

    A code representing the [`minus(javax.management.ValueExp, javax.management.ValueExp)`](#minus(javax.management.ValueExp,javax.management.ValueExp)) expression. This
    is chiefly of interest for the serialized form of queries.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.management.Query.MINUS)
  + ### TIMES

    public static final int TIMES

    A code representing the [`times(javax.management.ValueExp, javax.management.ValueExp)`](#times(javax.management.ValueExp,javax.management.ValueExp)) expression. This
    is chiefly of interest for the serialized form of queries.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.management.Query.TIMES)
  + ### DIV

    public static final int DIV

    A code representing the [`div(javax.management.ValueExp, javax.management.ValueExp)`](#div(javax.management.ValueExp,javax.management.ValueExp)) expression. This is
    chiefly of interest for the serialized form of queries.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.management.Query.DIV)
* ## Constructor Details

  + ### Query

    public Query()

    Basic constructor.
* ## Method Details

  + ### and

    public static [QueryExp](QueryExp.md "interface in javax.management") and([QueryExp](QueryExp.md "interface in javax.management") q1,
    [QueryExp](QueryExp.md "interface in javax.management") q2)

    Returns a query expression that is the conjunction of two other query
    expressions.

    Parameters:
    :   `q1` - A query expression.
    :   `q2` - Another query expression.

    Returns:
    :   The conjunction of the two arguments. The returned object
        will be serialized as an instance of the non-public class
        [javax.management.AndQueryExp](../../../serialized-form.md#javax.management.AndQueryExp).
  + ### or

    public static [QueryExp](QueryExp.md "interface in javax.management") or([QueryExp](QueryExp.md "interface in javax.management") q1,
    [QueryExp](QueryExp.md "interface in javax.management") q2)

    Returns a query expression that is the disjunction of two other query
    expressions.

    Parameters:
    :   `q1` - A query expression.
    :   `q2` - Another query expression.

    Returns:
    :   The disjunction of the two arguments. The returned object
        will be serialized as an instance of the non-public class
        [javax.management.OrQueryExp](../../../serialized-form.md#javax.management.OrQueryExp).
  + ### gt

    public static [QueryExp](QueryExp.md "interface in javax.management") gt([ValueExp](ValueExp.md "interface in javax.management") v1,
    [ValueExp](ValueExp.md "interface in javax.management") v2)

    Returns a query expression that represents a "greater than" constraint on
    two values.

    Parameters:
    :   `v1` - A value expression.
    :   `v2` - Another value expression.

    Returns:
    :   A "greater than" constraint on the arguments. The
        returned object will be serialized as an instance of the
        non-public class
        [javax.management.BinaryRelQueryExp](../../../serialized-form.md#javax.management.BinaryRelQueryExp) with a `relOp` equal
        to [`GT`](#GT).
  + ### geq

    public static [QueryExp](QueryExp.md "interface in javax.management") geq([ValueExp](ValueExp.md "interface in javax.management") v1,
    [ValueExp](ValueExp.md "interface in javax.management") v2)

    Returns a query expression that represents a "greater than or equal
    to" constraint on two values.

    Parameters:
    :   `v1` - A value expression.
    :   `v2` - Another value expression.

    Returns:
    :   A "greater than or equal to" constraint on the
        arguments. The returned object will be serialized as an
        instance of the non-public class
        [javax.management.BinaryRelQueryExp](../../../serialized-form.md#javax.management.BinaryRelQueryExp) with a `relOp` equal
        to [`GE`](#GE).
  + ### leq

    public static [QueryExp](QueryExp.md "interface in javax.management") leq([ValueExp](ValueExp.md "interface in javax.management") v1,
    [ValueExp](ValueExp.md "interface in javax.management") v2)

    Returns a query expression that represents a "less than or equal to"
    constraint on two values.

    Parameters:
    :   `v1` - A value expression.
    :   `v2` - Another value expression.

    Returns:
    :   A "less than or equal to" constraint on the arguments.
        The returned object will be serialized as an instance of the
        non-public class
        [javax.management.BinaryRelQueryExp](../../../serialized-form.md#javax.management.BinaryRelQueryExp) with a `relOp` equal
        to [`LE`](#LE).
  + ### lt

    public static [QueryExp](QueryExp.md "interface in javax.management") lt([ValueExp](ValueExp.md "interface in javax.management") v1,
    [ValueExp](ValueExp.md "interface in javax.management") v2)

    Returns a query expression that represents a "less than" constraint on
    two values.

    Parameters:
    :   `v1` - A value expression.
    :   `v2` - Another value expression.

    Returns:
    :   A "less than" constraint on the arguments. The
        returned object will be serialized as an instance of the
        non-public class
        [javax.management.BinaryRelQueryExp](../../../serialized-form.md#javax.management.BinaryRelQueryExp) with a `relOp` equal
        to [`LT`](#LT).
  + ### eq

    public static [QueryExp](QueryExp.md "interface in javax.management") eq([ValueExp](ValueExp.md "interface in javax.management") v1,
    [ValueExp](ValueExp.md "interface in javax.management") v2)

    Returns a query expression that represents an equality constraint on
    two values.

    Parameters:
    :   `v1` - A value expression.
    :   `v2` - Another value expression.

    Returns:
    :   A "equal to" constraint on the arguments. The
        returned object will be serialized as an instance of the
        non-public class
        [javax.management.BinaryRelQueryExp](../../../serialized-form.md#javax.management.BinaryRelQueryExp) with a `relOp` equal
        to [`EQ`](#EQ).
  + ### between

    public static [QueryExp](QueryExp.md "interface in javax.management") between([ValueExp](ValueExp.md "interface in javax.management") v1,
    [ValueExp](ValueExp.md "interface in javax.management") v2,
    [ValueExp](ValueExp.md "interface in javax.management") v3)

    Returns a query expression that represents the constraint that one
    value is between two other values.

    Parameters:
    :   `v1` - A value expression that is "between" v2 and v3.
    :   `v2` - Value expression that represents a boundary of the constraint.
    :   `v3` - Value expression that represents a boundary of the constraint.

    Returns:
    :   The constraint that v1 lies between v2 and v3. The
        returned object will be serialized as an instance of the
        non-public class
        [javax.management.BetweenQueryExp](../../../serialized-form.md#javax.management.BetweenQueryExp).
  + ### match

    public static [QueryExp](QueryExp.md "interface in javax.management") match([AttributeValueExp](AttributeValueExp.md "class in javax.management") a,
    [StringValueExp](StringValueExp.md "class in javax.management") s)

    Returns a query expression that represents a matching constraint on
    a string argument. The matching syntax is consistent with file globbing:
    supports "`?`", "`*`", "`[`",
    each of which may be escaped with "`\`";
    character classes may use "`!`" for negation and
    "`-`" for range.
    (`*` for any character sequence,
    `?` for a single arbitrary character,
    `[...]` for a character sequence).
    For example: `a*b?c` would match a string starting
    with the character `a`, followed
    by any number of characters, followed by a `b`,
    any single character, and a `c`.

    Parameters:
    :   `a` - An attribute expression
    :   `s` - A string value expression representing a matching constraint

    Returns:
    :   A query expression that represents the matching
        constraint on the string argument. The returned object will
        be serialized as an instance of the non-public class
        [javax.management.MatchQueryExp](../../../serialized-form.md#javax.management.MatchQueryExp).
  + ### attr

    public static [AttributeValueExp](AttributeValueExp.md "class in javax.management") attr([String](../../../java.base/java/lang/String.md "class in java.lang") name)

    Returns a new attribute expression. See [`AttributeValueExp`](AttributeValueExp.md "class in javax.management")
    for a detailed description of the semantics of the expression.

    Evaluating this expression for a given
    `objectName` includes performing [`MBeanServer.getAttribute(objectName,
    name)`](MBeanServer.md#getAttribute(javax.management.ObjectName,java.lang.String)).

    Parameters:
    :   `name` - The name of the attribute.

    Returns:
    :   An attribute expression for the attribute named `name`.
  + ### attr

    public static [AttributeValueExp](AttributeValueExp.md "class in javax.management") attr([String](../../../java.base/java/lang/String.md "class in java.lang") className,
    [String](../../../java.base/java/lang/String.md "class in java.lang") name)

    Returns a new qualified attribute expression.

    Evaluating this expression for a given
    `objectName` includes performing [`MBeanServer.getObjectInstance(objectName)`](MBeanServer.md#getObjectInstance(javax.management.ObjectName)) and [`MBeanServer.getAttribute(objectName,
    name)`](MBeanServer.md#getAttribute(javax.management.ObjectName,java.lang.String)).

    Parameters:
    :   `className` - The name of the class possessing the attribute.
    :   `name` - The name of the attribute.

    Returns:
    :   An attribute expression for the attribute named name.
        The returned object will be serialized as an instance of the
        non-public class
        [javax.management.QualifiedAttributeValueExp](../../../serialized-form.md#javax.management.QualifiedAttributeValueExp).
  + ### classattr

    public static [AttributeValueExp](AttributeValueExp.md "class in javax.management") classattr()

    Returns a new class attribute expression which can be used in any
    Query call that expects a ValueExp.

    Evaluating this expression for a given
    `objectName` includes performing [`MBeanServer.getObjectInstance(objectName)`](MBeanServer.md#getObjectInstance(javax.management.ObjectName)).

    Returns:
    :   A class attribute expression. The returned object
        will be serialized as an instance of the non-public class
        [javax.management.ClassAttributeValueExp](../../../serialized-form.md#javax.management.ClassAttributeValueExp).
  + ### not

    public static [QueryExp](QueryExp.md "interface in javax.management") not([QueryExp](QueryExp.md "interface in javax.management") queryExp)

    Returns a constraint that is the negation of its argument.

    Parameters:
    :   `queryExp` - The constraint to negate.

    Returns:
    :   A negated constraint. The returned object will be
        serialized as an instance of the non-public class
        [javax.management.NotQueryExp](../../../serialized-form.md#javax.management.NotQueryExp).
  + ### in

    public static [QueryExp](QueryExp.md "interface in javax.management") in([ValueExp](ValueExp.md "interface in javax.management") val,
    [ValueExp](ValueExp.md "interface in javax.management")[] valueList)

    Returns an expression constraining a value to be one of an explicit list.

    Parameters:
    :   `val` - A value to be constrained.
    :   `valueList` - An array of ValueExps.

    Returns:
    :   A QueryExp that represents the constraint. The
        returned object will be serialized as an instance of the
        non-public class
        [javax.management.InQueryExp](../../../serialized-form.md#javax.management.InQueryExp).
  + ### value

    public static [StringValueExp](StringValueExp.md "class in javax.management") value([String](../../../java.base/java/lang/String.md "class in java.lang") val)

    Returns a new string expression.

    Parameters:
    :   `val` - The string value.

    Returns:
    :   A ValueExp object containing the string argument.
  + ### value

    public static [ValueExp](ValueExp.md "interface in javax.management") value([Number](../../../java.base/java/lang/Number.md "class in java.lang") val)

    Returns a numeric value expression that can be used in any Query call
    that expects a ValueExp.

    Parameters:
    :   `val` - An instance of Number.

    Returns:
    :   A ValueExp object containing the argument. The
        returned object will be serialized as an instance of the
        non-public class
        [javax.management.NumericValueExp](../../../serialized-form.md#javax.management.NumericValueExp).
  + ### value

    public static [ValueExp](ValueExp.md "interface in javax.management") value(int val)

    Returns a numeric value expression that can be used in any Query call
    that expects a ValueExp.

    Parameters:
    :   `val` - An int value.

    Returns:
    :   A ValueExp object containing the argument. The
        returned object will be serialized as an instance of the
        non-public class
        [javax.management.NumericValueExp](../../../serialized-form.md#javax.management.NumericValueExp).
  + ### value

    public static [ValueExp](ValueExp.md "interface in javax.management") value(long val)

    Returns a numeric value expression that can be used in any Query call
    that expects a ValueExp.

    Parameters:
    :   `val` - A long value.

    Returns:
    :   A ValueExp object containing the argument. The
        returned object will be serialized as an instance of the
        non-public class
        [javax.management.NumericValueExp](../../../serialized-form.md#javax.management.NumericValueExp).
  + ### value

    public static [ValueExp](ValueExp.md "interface in javax.management") value(float val)

    Returns a numeric value expression that can be used in any Query call
    that expects a ValueExp.

    Parameters:
    :   `val` - A float value.

    Returns:
    :   A ValueExp object containing the argument. The
        returned object will be serialized as an instance of the
        non-public class
        [javax.management.NumericValueExp](../../../serialized-form.md#javax.management.NumericValueExp).
  + ### value

    public static [ValueExp](ValueExp.md "interface in javax.management") value(double val)

    Returns a numeric value expression that can be used in any Query call
    that expects a ValueExp.

    Parameters:
    :   `val` - A double value.

    Returns:
    :   A ValueExp object containing the argument. The
        returned object will be serialized as an instance of the
        non-public class
        [javax.management.NumericValueExp](../../../serialized-form.md#javax.management.NumericValueExp).
  + ### value

    public static [ValueExp](ValueExp.md "interface in javax.management") value(boolean val)

    Returns a boolean value expression that can be used in any Query call
    that expects a ValueExp.

    Parameters:
    :   `val` - A boolean value.

    Returns:
    :   A ValueExp object containing the argument. The
        returned object will be serialized as an instance of the
        non-public class
        [javax.management.BooleanValueExp](../../../serialized-form.md#javax.management.BooleanValueExp).
  + ### plus

    public static [ValueExp](ValueExp.md "interface in javax.management") plus([ValueExp](ValueExp.md "interface in javax.management") value1,
    [ValueExp](ValueExp.md "interface in javax.management") value2)

    Returns a binary expression representing the sum of two numeric values,
    or the concatenation of two string values.

    Parameters:
    :   `value1` - The first '+' operand.
    :   `value2` - The second '+' operand.

    Returns:
    :   A ValueExp representing the sum or concatenation of
        the two arguments. The returned object will be serialized as
        an instance of the non-public class
        [javax.management.BinaryOpValueExp](../../../serialized-form.md#javax.management.BinaryOpValueExp) with an `op` equal to
        [`PLUS`](#PLUS).
  + ### times

    public static [ValueExp](ValueExp.md "interface in javax.management") times([ValueExp](ValueExp.md "interface in javax.management") value1,
    [ValueExp](ValueExp.md "interface in javax.management") value2)

    Returns a binary expression representing the product of two numeric values.

    Parameters:
    :   `value1` - The first '\*' operand.
    :   `value2` - The second '\*' operand.

    Returns:
    :   A ValueExp representing the product. The returned
        object will be serialized as an instance of the non-public
        class
        [javax.management.BinaryOpValueExp](../../../serialized-form.md#javax.management.BinaryOpValueExp) with an `op` equal to
        [`TIMES`](#TIMES).
  + ### minus

    public static [ValueExp](ValueExp.md "interface in javax.management") minus([ValueExp](ValueExp.md "interface in javax.management") value1,
    [ValueExp](ValueExp.md "interface in javax.management") value2)

    Returns a binary expression representing the difference between two numeric
    values.

    Parameters:
    :   `value1` - The first '-' operand.
    :   `value2` - The second '-' operand.

    Returns:
    :   A ValueExp representing the difference between two
        arguments. The returned object will be serialized as an
        instance of the non-public class
        [javax.management.BinaryOpValueExp](../../../serialized-form.md#javax.management.BinaryOpValueExp) with an `op` equal to
        [`MINUS`](#MINUS).
  + ### div

    public static [ValueExp](ValueExp.md "interface in javax.management") div([ValueExp](ValueExp.md "interface in javax.management") value1,
    [ValueExp](ValueExp.md "interface in javax.management") value2)

    Returns a binary expression representing the quotient of two numeric
    values.

    Parameters:
    :   `value1` - The first '/' operand.
    :   `value2` - The second '/' operand.

    Returns:
    :   A ValueExp representing the quotient of two arguments.
        The returned object will be serialized as an instance of the
        non-public class
        [javax.management.BinaryOpValueExp](../../../serialized-form.md#javax.management.BinaryOpValueExp) with an `op` equal to
        [`DIV`](#DIV).
  + ### initialSubString

    public static [QueryExp](QueryExp.md "interface in javax.management") initialSubString([AttributeValueExp](AttributeValueExp.md "class in javax.management") a,
    [StringValueExp](StringValueExp.md "class in javax.management") s)

    Returns a query expression that represents a matching constraint on
    a string argument. The value must start with the given literal string
    value.

    Parameters:
    :   `a` - An attribute expression.
    :   `s` - A string value expression representing the beginning of the
        string value.

    Returns:
    :   The constraint that a matches s. The returned object
        will be serialized as an instance of the non-public class
        [javax.management.MatchQueryExp](../../../serialized-form.md#javax.management.MatchQueryExp).
  + ### anySubString

    public static [QueryExp](QueryExp.md "interface in javax.management") anySubString([AttributeValueExp](AttributeValueExp.md "class in javax.management") a,
    [StringValueExp](StringValueExp.md "class in javax.management") s)

    Returns a query expression that represents a matching constraint on
    a string argument. The value must contain the given literal string
    value.

    Parameters:
    :   `a` - An attribute expression.
    :   `s` - A string value expression representing the substring.

    Returns:
    :   The constraint that a matches s. The returned object
        will be serialized as an instance of the non-public class
        [javax.management.MatchQueryExp](../../../serialized-form.md#javax.management.MatchQueryExp).
  + ### finalSubString

    public static [QueryExp](QueryExp.md "interface in javax.management") finalSubString([AttributeValueExp](AttributeValueExp.md "class in javax.management") a,
    [StringValueExp](StringValueExp.md "class in javax.management") s)

    Returns a query expression that represents a matching constraint on
    a string argument. The value must end with the given literal string
    value.

    Parameters:
    :   `a` - An attribute expression.
    :   `s` - A string value expression representing the end of the string
        value.

    Returns:
    :   The constraint that a matches s. The returned object
        will be serialized as an instance of the non-public class
        [javax.management.MatchQueryExp](../../../serialized-form.md#javax.management.MatchQueryExp).
  + ### isInstanceOf

    public static [QueryExp](QueryExp.md "interface in javax.management") isInstanceOf([StringValueExp](StringValueExp.md "class in javax.management") classNameValue)

    Returns a query expression that represents an inheritance constraint
    on an MBean class.

    Example: to find MBeans that are instances of
    [`NotificationBroadcaster`](NotificationBroadcaster.md "interface in javax.management"), use
    `Query.isInstanceOf(Query.value(NotificationBroadcaster.class.getName()))`.

    Evaluating this expression for a given
    `objectName` includes performing [`MBeanServer.isInstanceOf(objectName,
    ((StringValueExp)classNameValue.apply(objectName)).getValue()`](MBeanServer.md#isInstanceOf(javax.management.ObjectName,java.lang.String)).

    Parameters:
    :   `classNameValue` - The [`StringValueExp`](StringValueExp.md "class in javax.management") returning the name
        of the class of which selected MBeans should be instances.

    Returns:
    :   a query expression that represents an inheritance
        constraint on an MBean class. The returned object will be
        serialized as an instance of the non-public class
        [javax.management.InstanceOfQueryExp](../../../serialized-form.md#javax.management.InstanceOfQueryExp).

    Since:
    :   1.6