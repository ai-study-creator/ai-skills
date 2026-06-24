Module [java.sql](../../module-summary.md)

Package [java.sql](package-summary.md)

# Interface ConnectionBuilder

---

public interface ConnectionBuilder

A builder created from a `DataSource` object,
used to establish a connection to the database that the
`data source` object represents. The connection
properties that were specified for the `data source` are used as the
default values by the `ConnectionBuilder`.

The following example illustrates the use of `ConnectionBuilder`
to create a [`Connection`](Connection.md "interface in java.sql"):

```
     DataSource ds = new MyDataSource();
     ShardingKey superShardingKey = ds.createShardingKeyBuilder()
                           .subkey("EASTERN_REGION", JDBCType.VARCHAR)
                           .build();
     ShardingKey shardingKey = ds.createShardingKeyBuilder()
                           .subkey("PITTSBURGH_BRANCH", JDBCType.VARCHAR)
                           .build();
     Connection con = ds.createConnectionBuilder()
                       .user("rafa")
                       .password("tennis")
                       .shardingKey(shardingKey)
                       .superShardingKey(superShardingKey)
                       .build();
```

Since:
:   9

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Connection`

  `build()`

  Returns an instance of the object defined by this builder.

  `ConnectionBuilder`

  `password(String password)`

  Specifies the password to be used when creating a connection

  `ConnectionBuilder`

  `shardingKey(ShardingKey shardingKey)`

  Specifies a `shardingKey` to be used when creating a connection

  `ConnectionBuilder`

  `superShardingKey(ShardingKey superShardingKey)`

  Specifies a `superShardingKey` to be used when creating a connection

  `ConnectionBuilder`

  `user(String username)`

  Specifies the username to be used when creating a connection

* ## Method Details

  + ### user

    [ConnectionBuilder](ConnectionBuilder.md "interface in java.sql") user([String](../../../java.base/java/lang/String.md "class in java.lang") username)

    Specifies the username to be used when creating a connection

    Parameters:
    :   `username` - the database user on whose behalf the connection is being
        made

    Returns:
    :   the same `ConnectionBuilder` instance
  + ### password

    [ConnectionBuilder](ConnectionBuilder.md "interface in java.sql") password([String](../../../java.base/java/lang/String.md "class in java.lang") password)

    Specifies the password to be used when creating a connection

    Parameters:
    :   `password` - the password to use for this connection. May be `null`

    Returns:
    :   the same `ConnectionBuilder` instance
  + ### shardingKey

    [ConnectionBuilder](ConnectionBuilder.md "interface in java.sql") shardingKey([ShardingKey](ShardingKey.md "interface in java.sql") shardingKey)

    Specifies a `shardingKey` to be used when creating a connection

    Parameters:
    :   `shardingKey` - the ShardingKey. May be `null`

    Returns:
    :   the same `ConnectionBuilder` instance

    See Also:
    :   - [`ShardingKey`](ShardingKey.md "interface in java.sql")
        - [`ShardingKeyBuilder`](ShardingKeyBuilder.md "interface in java.sql")
  + ### superShardingKey

    [ConnectionBuilder](ConnectionBuilder.md "interface in java.sql") superShardingKey([ShardingKey](ShardingKey.md "interface in java.sql") superShardingKey)

    Specifies a `superShardingKey` to be used when creating a connection

    Parameters:
    :   `superShardingKey` - the SuperShardingKey. May be `null`

    Returns:
    :   the same `ConnectionBuilder` instance

    See Also:
    :   - [`ShardingKey`](ShardingKey.md "interface in java.sql")
        - [`ShardingKeyBuilder`](ShardingKeyBuilder.md "interface in java.sql")
  + ### build

    [Connection](Connection.md "interface in java.sql") build()
    throws [SQLException](SQLException.md "class in java.sql")

    Returns an instance of the object defined by this builder.

    Returns:
    :   The built object

    Throws:
    :   `SQLException` - If an error occurs building the object