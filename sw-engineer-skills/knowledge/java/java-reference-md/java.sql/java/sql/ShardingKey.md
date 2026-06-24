Module [java.sql](../../module-summary.md)

Package [java.sql](package-summary.md)

# Interface ShardingKey

---

public interface ShardingKey

Interface used to indicate that this object represents a Sharding Key. A
`ShardingKey` instance is only guaranteed to be compatible with the
data source instance that it was derived from. A `ShardingKey` is
created using [`ShardingKeyBuilder`](ShardingKeyBuilder.md "interface in java.sql").

The following example illustrates the use of [`ShardingKeyBuilder`](ShardingKeyBuilder.md "interface in java.sql") to
create a `ShardingKey`:

```
     DataSource ds = new MyDataSource();
     ShardingKey shardingKey = ds.createShardingKeyBuilder()
                           .subkey("abc", JDBCType.VARCHAR)
                           .subkey(94002, JDBCType.INTEGER)
                           .build();
```

A `ShardingKey` may also be used for specifying a
`superShardingKey`. Databases that support composite Sharding may use a
`superShardingKey` to specify a additional level of partitioning within
the Shard.

The following example illustrates the use of [`ShardingKeyBuilder`](ShardingKeyBuilder.md "interface in java.sql") to
create a `superShardingKey` for an eastern region with a
`ShardingKey` specified for the Pittsburgh branch office:

```
     DataSource ds = new MyDataSource();
     ShardingKey superShardingKey = ds.createShardingKeyBuilder()
                           .subkey("EASTERN_REGION", JDBCType.VARCHAR)
                           .build();
     ShardingKey shardingKey = ds.createShardingKeyBuilder()
                           .subkey("PITTSBURGH_BRANCH", JDBCType.VARCHAR)
                           .build();
     Connection con = ds.createConnectionBuilder()
                           .superShardingKey(superShardingKey)
                           .shardingKey(shardingKey)
                           .build();
```

Since:
:   9