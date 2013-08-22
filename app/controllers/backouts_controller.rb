class BackoutsController < ApplicationController
  load_and_authorize_resource

  def index
    @backouts = Backout.all
  end

  def show
    @backout = Backout.find(params[:id])
  end

  def new
    @backout = Backout.new
  end

  def create
    @backout = Backout.new(params[:backout])
    if @backout.save
      redirect_to @backout, :notice => "Successfully created backout."
    else
      render :action => 'new'
    end
  end

  def edit
    @backout = Backout.find(params[:id])
  end

  def update
    @backout = Backout.find(params[:id])
    if @backout.update_attributes(params[:backout])
      redirect_to @backout, :notice  => "Successfully updated backout."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @backout = Backout.find(params[:id])
    @backout.destroy
    redirect_to backouts_url, :notice => "Successfully destroyed backout."
  end
end
