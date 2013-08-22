class WorkstationDevicesController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  def index
    @workstation_devices = WorkstationDevice.all
  end

  def show
    @workstation_device = WorkstationDevice.find(params[:id])
  end

  def new
    @workstation_device = WorkstationDevice.new
  end

  def create
    @workstation_device = WorkstationDevice.new(params[:workstation_device])
    if @workstation_device.save
      redirect_to @workstation_device, :notice => "Successfully created workstation device."
    else
      render :action => 'new'
    end
  end

  def edit
    @workstation_device = WorkstationDevice.find(params[:id])
  end

  def update
    @workstation_device = WorkstationDevice.find(params[:id])
    if @workstation_device.update_attributes(params[:workstation_device])
      redirect_to @workstation_device, :notice  => "Successfully updated workstation device."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @workstation_device = WorkstationDevice.find(params[:id])
    @workstation_device.destroy
    redirect_to workstation_devices_url, :notice => "Successfully destroyed workstation device."
  end
end
