class FieldDescriptionsController < ApplicationController
  load_and_authorize_resource

  def index
    @field_descriptions = FieldDescription.all
  end

  def show
    @field_description = FieldDescription.find(params[:id])
  end

  def new
    @field_description = FieldDescription.new
  end

  def create
    @field_description = FieldDescription.new(params[:field_description])
    if @field_description.save
      field_description = FieldDescription.find_by_TableName_and_FieldName(@field_description.TableName, @field_description.FieldName)
      redirect_to field_description, :notice => "Successfully created field description."
    else
      render :action => 'new'
    end
  end

  def edit
    @field_description = FieldDescription.find(params[:id])
  end

  def update
    @field_description = FieldDescription.find(params[:id])
    if @field_description.update_attributes(params[:field_description])
      redirect_to @field_description, :notice  => "Successfully updated field description."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @field_description = FieldDescription.find(params[:id])
    @field_description.destroy
    redirect_to field_descriptions_url, :notice => "Successfully destroyed field description."
  end
end
