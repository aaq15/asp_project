class SkippingsController < ApplicationController
  # GET /skippings
  # GET /skippings.json
  def index
    @skippings = Skipping.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @skippings }
    end
  end

  # GET /skippings/1
  # GET /skippings/1.json
  def show
    @skipping = Skipping.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @skipping }
    end
  end

  # GET /skippings/new
  # GET /skippings/new.json
  def new
    @skipping = Skipping.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @skipping }
    end
  end

  # GET /skippings/1/edit
  def edit
    @skipping = Skipping.find(params[:id])
  end

  # POST /skippings
  # POST /skippings.json
  def create
    @skipping = Skipping.new(params[:skipping])

    respond_to do |format|
      if @skipping.save
        format.html { redirect_to @skipping, :notice => 'Skipping was successfully created.' }
        format.json { render :json => @skipping, :status => :created, :location => @skipping }
      else
        format.html { render :action => "new" }
        format.json { render :json => @skipping.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /skippings/1
  # PUT /skippings/1.json
  def update
    @skipping = Skipping.find(params[:id])

    respond_to do |format|
      if @skipping.update_attributes(params[:skipping])
        format.html { redirect_to @skipping, :notice => 'Skipping was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @skipping.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /skippings/1
  # DELETE /skippings/1.json
  def destroy
    @skipping = Skipping.find(params[:id])
    @skipping.destroy

    respond_to do |format|
      format.html { redirect_to skippings_url }
      format.json { head :ok }
    end
  end
end
