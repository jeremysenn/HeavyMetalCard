class WorkstationDevice < ActiveRecord::Base
  attr_accessible :WorkstationID, :PinPadID, :ATMDevID, :CompanyNbr, :IPAddr


  set_primary_key 'WorkstationID'
  set_table_name 'Workstation_Device'

end
