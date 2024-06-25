# frozen_string_literal: true

require "active_record/connection_adapters/yugabytedb/oid/array"
require "active_record/connection_adapters/yugabytedb/oid/bit"
require "active_record/connection_adapters/yugabytedb/oid/bit_varying"
require "active_record/connection_adapters/yugabytedb/oid/bytea"
require "active_record/connection_adapters/yugabytedb/oid/cidr"
require "active_record/connection_adapters/yugabytedb/oid/date"
require "active_record/connection_adapters/yugabytedb/oid/date_time"
require "active_record/connection_adapters/yugabytedb/oid/decimal"
require "active_record/connection_adapters/yugabytedb/oid/enum"
require "active_record/connection_adapters/yugabytedb/oid/hstore"
require "active_record/connection_adapters/yugabytedb/oid/inet"
require "active_record/connection_adapters/yugabytedb/oid/interval"
require "active_record/connection_adapters/yugabytedb/oid/jsonb"
require "active_record/connection_adapters/yugabytedb/oid/macaddr"
require "active_record/connection_adapters/yugabytedb/oid/money"
require "active_record/connection_adapters/yugabytedb/oid/oid"
require "active_record/connection_adapters/yugabytedb/oid/point"
require "active_record/connection_adapters/yugabytedb/oid/legacy_point"
require "active_record/connection_adapters/yugabytedb/oid/range"
require "active_record/connection_adapters/yugabytedb/oid/specialized_string"
require "active_record/connection_adapters/yugabytedb/oid/timestamp"
require "active_record/connection_adapters/yugabytedb/oid/timestamp_with_time_zone"
require "active_record/connection_adapters/yugabytedb/oid/uuid"
require "active_record/connection_adapters/yugabytedb/oid/vector"
require "active_record/connection_adapters/yugabytedb/oid/xml"

require "active_record/connection_adapters/yugabytedb/oid/type_map_initializer"

module ActiveRecord
  module ConnectionAdapters
    module YugabyteDB
      module OID # :nodoc:
      end
    end
  end
end
