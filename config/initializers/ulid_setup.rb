require "active_record/connection_adapters/sqlite3_adapter"

class UlidType < ActiveRecord::Type::String
  def type
    :ulid
  end

  def serialize(value)
    value.to_s.presence
  end

  def deserialize(value)
    value
  end
end

ActiveRecord::Type.register(:ulid, UlidType)

module ActiveRecord
  module ConnectionAdapters
    class SQLite3Adapter
      def native_database_types
        NATIVE_DATABASE_TYPES.merge(ulid: { name: "varchar(26)" })
      end
    end
  end
end

module SchemaStatements
  def add_column(table_name, column_name, type, **options)
    if type == :ulid
      options[:default] = options.fetch(:default, -> { "ULID()" })
    end
    super
  end
end

ActiveRecord::ConnectionAdapters::SQLite3Adapter.prepend(SchemaStatements)

module ColumnMethods
  extend ActiveSupport::Concern

  # override primary_key definition with ULID default
  def primary_key(name, type = :primary_key, **options)
    if type == :ulid
      options[:default] = options.fetch(:default, -> { "ULID()" })
    end

    super
  end

  # necessary for the t.ulid shorthand column definition
  def ulid(*names, **options)
    names.each do |name|
      options[:default] = -> { "ULID()" } unless options.key?(:default)
      column(name, :ulid, **options)
    end
  end
end

ActiveRecord::ConnectionAdapters::SQLite3::TableDefinition.include(ColumnMethods)

# uncomment to make ulid the default primary key type
Rails.application.config.generators do |g|
  g.orm :active_record, primary_key_type: :ulid
end
