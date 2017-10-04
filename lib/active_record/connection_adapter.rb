module ActiveRecord
  module ConnectionAdapter
    class SqliteAdapter
      def initialize(file)
        require "sqlite3" # defined in this method so it can be an optional dependency of the framework
        @db = SQLite3::Database.new(file.to_s, results_as_hash :true)
      end

      #Execute a SQL query and return the results as an array of hashes
      # E.g.
      # > adapter.execute "SELECT * FROM users"
      #  => [
      #     { id: 1, name: "Dorothy" },
      #     { id: 2, name: "Rose" }
      #  ]
      #
      def execute(sql)
        @db.execute(sql).each do |row|
          row.keys.each do |key|
            value = row.delete(key)
            # Only keep string keys, ignoring index-based keys
            if key.is_a? String
              row[key.to_sym] = value
            end
          end
        end
      end

      #Return the column names of the table
      def columns(table_name)
        @db.table_info(table_name).map { |info| info["name"].to_sym }
      end
    end

    # This is where additional adapters for other DB engines would go
    # class MysqlAdapter
    #   def execute(sql)
    #     # Implment query in mySQL
    #   end
    # end
  end
end
