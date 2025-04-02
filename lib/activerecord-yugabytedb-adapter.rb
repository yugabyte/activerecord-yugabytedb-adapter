if defined?(Rails::Railtie)
  module ActiveRecord
    module ConnectionAdapters
      class YugabyteDBRailtie < ::Rails::Railtie
        rake_tasks do
          load "active_record/connection_adapters/yugabytedb/database_tasks.rb"
        end

        if Rails.gem_version >= Gem::Version.new("7.2.0.alpha")
          initializer "yugabytedb.register_yugabytedb_adapter", before: "active_record.initialize_database" do
            ActiveRecord::ConnectionAdapters.register(
              "yugabytedb",
              "ActiveRecord::ConnectionAdapters::YugabyteDBAdapter",
              "active_record/connection_adapters/yugabytedb_adapter",
            )
          end
        end
      end
    end
  end
end
