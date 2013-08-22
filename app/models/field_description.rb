class FieldDescription < ActiveRecord::Base
  attr_accessible :TableName, :FieldName, :FieldDescription

  set_primary_key 'FieldName'
  set_table_name 'FieldDescriptions'
end
