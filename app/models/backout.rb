class Backout < ActiveRecord::Base
  attr_accessible :DateTime, :ScanID, :Status, :KeyName, :KeyValue, :Table, :DatabaseName, :Operation, :FieldName
end
