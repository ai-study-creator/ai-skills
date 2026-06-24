Module [java.sql](../../module-summary.md)

Package [java.sql](package-summary.md)

# Interface ShardingKeyBuilder

---

public interface ShardingKeyBuilder

A builder created from a `DataSource` or `XADataSource` object,
used to create a [`ShardingKey`](ShardingKey.md "interface in java.sql") with sub-keys of supported data types.
Implementations must
support JDBCType.VARCHAR and may also support additional data types.

The following example illustrates the use of `ShardingKeyBuilder` to
create a [`ShardingKey`](ShardingKey.md "interface in java.sql"):

```
     DataSource ds = new MyDataSource();
     ShardingKey shardingKey = ds.createShardingKeyBuilder()
                           .subkey("abc", JDBCType.VARCHAR)
                           .subkey(94002, JDBCType.INTEGER)
                           .build();
```

Since:
:   9

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `ShardingKey`

  `build()`

  Returns an instance of the object defined by this builder.

  `ShardingKeyBuilder`

  `subkey(Object subkey,
  SQLType subkeyType)`

  This method will be called to add a subkey into a Sharding Key object being
  built.

* ## Method Details

  + ### subkey

    [ShardingKeyBuilder](ShardingKeyBuilder.md "interface in java.sql") subkey([Object](../../../java.base/java/lang/Object.md "class in java.lang") subkey,
    [SQLType](SQLType.md "interface in java.sql") subkeyType)

    This method will be called to add a subkey into a Sharding Key object being
    built. The order in which subkey method is called is important as it
    indicates the order of placement of the subkey within the Sharding Key.

    Parameters:
    :   `subkey` - contains the object that needs to be part of shard sub key
    :   `subkeyType` - sub-key data type of type java.sql.SQLType

    Returns:
    :   this builder object
  + ### build

    [ShardingKey](ShardingKey.md "interface in java.sql") build()
    throws [SQLException](SQLException.md "class in java.sql")

    Returns an instance of the object defined by this builder.

    Returns:
    :   The built object

    Throws:
    :   `SQLException` - If an error occurs building the object