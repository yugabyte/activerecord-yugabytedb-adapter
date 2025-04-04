# frozen_string_literal: true

module ActiveRecord
  Point = Struct.new(:x, :y)

  module ConnectionAdapters
    module YugabyteDB
      module OID # :nodoc:
        class Point < Type::Value # :nodoc:
          include ActiveModel::Type::Helpers::Mutable

          def type
            :point
          end

          def cast(value)
            case value
            when ::String
              return if value.blank?

              if value.start_with?("(") && value.end_with?(")")
                value = value[1...-1]
              end
              x, y = value.split(",")
              build_point(x, y)
            when ::Array
              build_point(*value)
            else
              value
            end
          end

          def serialize(value)
            case value
            when ActiveRecord::Point
              "(#{number_for_point(value.x)},#{number_for_point(value.y)})"
            when ::Array
              serialize(build_point(*value))
            else
              super
            end
          end

          def type_cast_for_schema(value)
            if ActiveRecord::Point === value
              [value.x, value.y]
            else
              super
            end
          end

          private
            def number_for_point(number)
              number.to_s.delete_suffix(".0")
            end

            def build_point(x, y)
              ActiveRecord::Point.new(Float(x), Float(y))
            end
        end
      end
    end
  end
end
