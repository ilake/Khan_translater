class MappingsController < ApplicationController
  # GET /mappings/new
  # GET /mappings/new.json
  def new
    @mapping = Mapping.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mapping }
    end
  end


  # POST /mappings
  # POST /mappings.json
  def create
    @mapping = Mapping.new(params[:mapping])

    respond_to do |format|
      if @mapping.save
        format.html { 
          notice_stickie('Mapping was successfully created.')
          redirect_to root_url
        }
        format.json { render json: @mapping, status: :created, location: @mapping }
      else
        format.html { render action: "new" }
        format.json { render json: @mapping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mappings/1
  # PUT /mappings/1.json
  def update
    @mapping = Mapping.find(params[:id])

    respond_to do |format|
      if @mapping.update_attributes(params[:mapping])
        format.html { redirect_to @mapping, notice: 'Mapping was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mapping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mappings/1
  # DELETE /mappings/1.json
  def destroy
    @mapping = Mapping.find(params[:id])
    @mapping.destroy

    notice_stickie('Mapping was successfully deleted.')
    redirect_to root_url
  end
end
