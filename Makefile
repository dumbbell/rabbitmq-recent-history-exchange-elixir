PROJECT = rabbitmq_recent_history_exchange

BUILD_DEPS = elixir.mk
DEPS = rabbit_common
TEST_DEPS = amqp_client

DEP_PLUGINS = elixir.mk \
	      rabbit_common/mk/rabbitmq-plugin.mk

dep_elixir.mk = git https://github.com/botsunit/elixir.mk.git master

# FIXME: Use erlang.mk patched for RabbitMQ, while waiting for PRs to be
# reviewed and merged.

ERLANG_MK_REPO = https://github.com/rabbitmq/erlang.mk.git
ERLANG_MK_COMMIT = rabbitmq-tmp

ELIXIR_MIX_ENV = test

include rabbitmq-components.mk
include erlang.mk
