class WorkstationCamera < ActiveRecord::Base
  attr_accessible :CompanyID, :WorkstationID, :EventCode, :CameraName, :JpeggerHost, :JpeggerPort, :WaitRefresh

  set_primary_key 'WorkstationID'
  set_table_name 'WorkstationCameras'
end
