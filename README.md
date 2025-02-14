# Why this fork?

This repo is a fork of https://github.com/phoenixframework/phoenix_pubsub_redis.

To avoid conflicts with the original package, we published this one on hex.pm under the name `prima_phoenix_pubsub_redis`, so install it like:

```elixir
{:prima_phoenix_pubsub_redis, "~> 3.0.2"}
```

The original repo has a bug that doesn't allow us to specify a username for the redis authentication.
We opened a [PR with the fix](https://github.com/phoenixframework/phoenix_pubsub_redis/pull/69), but it's hasn't been merged yet, so, in the meantime, we had to fork.
