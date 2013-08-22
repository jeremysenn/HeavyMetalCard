class WorkstationCamerasController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  def index
    @workstation_cameras = WorkstationCamera.all
  end

  def show
    @workstation_camera = WorkstationCamera.find(params[:id])
  end

  def new
    @workstation_camera = WorkstationCamera.new
  end

  def create
    @workstation_camera = WorkstationCamera.new(params[:workstation_camera])
    if @workstation_camera.save
      redirect_to @workstation_camera, :notice => "Successfully created workstation camera."
    else
      render :action => 'new'
    end
  end

  def edit
    @workstation_camera = WorkstationCamera.find(params[:id])
  end

  def update
    @workstation_camera = WorkstationCamera.find(params[:id])
    if @workstation_camera.update_attributes(params[:workstation_camera])
      redirect_to @workstation_camera, :notice  => "Successfully updated workstation camera."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @workstation_camera = WorkstationCamera.find(params[:id])
    @workstation_camera.destroy
    redirect_to workstation_cameras_url, :notice => "Successfully destroyed workstation camera."
  end
end
