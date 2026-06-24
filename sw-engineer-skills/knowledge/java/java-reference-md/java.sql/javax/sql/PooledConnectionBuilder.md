Module [java.sql](../../module-summary.md)

Package [javax.sql](package-summary.md)

# Interface PooledConnectionBuilder

---

public interface PooledConnectionBuilder

A builder created from a `ConnectionPoolDataSource` object,
used to establish a connection to the database that the
`data source` object represents. The connection
properties that were specified for the `data source` are used as the
default values by the `PooledConnectionBuilder`.

The following example illustrates the use of `PooledConnectionBuilder`
to create a [`XAConnection`](XAConnection.md "interface in javax.sql"):

```
     ConnectionPoolDataSource ds = new MyConnectionPoolDataSource();
     ShardingKey superShardingKey = ds.createShardingKeyBuilder()
                           .subkey("EASTERN_REGION", JDBCType.VARCHAR)
                           .build();
     ShardingKey shardingKey = ds.createShardingKeyBuilder()
                           .subkey("PITTSBURGH_BRANCH", JDBCType.VARCHAR)
                           .build();
     PooledConnection con = ds.createPooledConnectionBuilder()
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

  `PooledConnection`

  `build()`

  Returns an instance of the object defined by this builder.

  `PooledConnectionBuilder`

  `password(String password)`

  Specifies the password to be used when creating a connection

  `PooledConnectionBuilder`

  `shardingKey(ShardingKey shardingKey)`

  Specifies a `shardingKey` to be used when creating a connection

  `PooledConnectionBuilder`

  `superShardingKey(ShardingKey superShardingKey)`

  Specifies a `superShardingKey` to be used when creating a connection

  `PooledConnectionBuilder`

  `user(String username)`

  Specifies the username to be used when creating a connection

* ## Method Details

  + ### user

    [PooledConnectionBuilder](PooledConnectionBuilder.md "interface in javax.sql") user([String](../../../java.base/java/lang/String.md "class in java.lang") username)

    Specifies the username to be used when creating a connection

    Parameters:
    :   `username` - the database user on whose behalf the connection is being
        made

    Returns:
    :   the same `PooledConnectionBuilder` instance
  + ### password

    [PooledConnectionBuilder](PooledConnectionBuilder.md "interface in javax.sql") password([String](../../../java.base/java/lang/String.md "class in java.lang") password)

    Specifies the password to be used when creating a connection

    Parameters:
    :   `password` - the password to use for this connection. May be `null`

    Returns:
    :   the same `PooledConnectionBuilder` instance
  + ### shardingKey

    [PooledConnectionBuilder](PooledConnectionBuilder.md "interface in javax.sql") shardingKey([ShardingKey](../../java/sql/ShardingKey.md "interface in java.sql") shardingKey)

    Specifies a `shardingKey` to be used when creating a connection

    Parameters:
    :   `shardingKey` - the ShardingKey. May be `null`

    Returns:
    :   the same `PooledConnectionBuilder` instance

    See Also:
    :   - [`ShardingKey`](../../java/sql/ShardingKey.md "interface in java.sql")
        - [`ShardingKeyBuilder`](../../java/sql/ShardingKeyBuilder.md "interface in java.sql")
  + ### superShardingKey

    [PooledConnectionBuilder](PooledConnectionBuilder.md "interface in javax.sql") superShardingKey([ShardingKey](../../java/sql/ShardingKey.md "interface in java.sql") superShardingKey)

    Specifies a `superShardingKey` to be used when creating a connection

    Parameters:
    :   `superShardingKey` - the SuperShardingKey. May be `null`

    Returns:
    :   the same `PooledConnectionBuilder` instance

    See Also:
    :   - [`ShardingKey`](../../java/sql/ShardingKey.md "interface in java.sql")
        - [`ShardingKeyBuilder`](../../java/sql/ShardingKeyBuilder.md "interface in java.sql")
  + ### build

    [PooledConnection](PooledConnection.md "interface in javax.sql") build()
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Returns an instance of the object defined by this builder.

    Returns:
    :   The built object

    Throws:
    :   `SQLException` - If an error occurs building the object