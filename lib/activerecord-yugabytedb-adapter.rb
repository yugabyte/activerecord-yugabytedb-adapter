if defined?(Rails::Railtie)
  module ActiveRecord
    module ConnectionAdapters
      class YugabyteDBRailtie < ::Rails::Railtie
        rake_tasks do
          load "active_record/connection_adapters/yugabytedb/database_tasks.rb"
        end
      end
    end
  end
end
