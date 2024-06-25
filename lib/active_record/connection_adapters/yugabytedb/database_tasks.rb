require "active_record/base"

module ActiveRecord
  module ConnectionAdapters
    module YugabyteDB
      class DatabaseTasks < ActiveRecord::Tasks::PostgreSQLDatabaseTasks
        def structure_load(filename, extra_flags)
          # todo
          args = ["--set", ON_ERROR_STOP_1, "--quiet", "--no-psqlrc", "--output", File::NULL, "--file", filename]
          args.concat(Array(extra_flags)) if extra_flags
          args << db_config.database
          run_cmd("psql", args, "loading")
        end
      end
    end
  end
end

ActiveRecord::Tasks::DatabaseTasks.register_task(/yugabytedb/, ActiveRecord::ConnectionAdapters::YugabyteDB::DatabaseTasks)
