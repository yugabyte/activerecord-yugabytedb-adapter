# frozen_string_literal: true

module ActiveRecord
  module ConnectionAdapters
    module YugabyteDB
      module OID # :nodoc:
        class Bytea < Type::Binary # :nodoc:
          def deserialize(value)
            return if value.nil?
            return value.to_s if value.is_a?(Type::Binary::Data)
            YSQL::Connection.unescape_bytea(super)
          end
        end
      end
    end
  end
end
