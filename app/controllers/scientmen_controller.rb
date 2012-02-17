class ScientmenController < ApplicationController
  # GET /scientmen
  # GET /scientmen.json
  def index
    @scientmen = Scientman.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @scientmen }
    end
  end

  # GET /scientmen/1
  # GET /scientmen/1.json
  def show
    @scientman = Scientman.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @scientman }
    end
  end

  # GET /scientmen/new
  # GET /scientmen/new.json
  def new
    @scientman = Scientman.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @scientman }
    end
  end

  # GET /scientmen/1/edit
  def edit
    @scientman = Scientman.find(params[:id])
  end

  # POST /scientmen
  # POST /scientmen.json
  def create
    @scientman = Scientman.new(params[:scientman])

    respond_to do |format|
      if @scientman.save
        format.html { redirect_to @scientman, :notice => 'Научный руководитель успешно создан.' }
        format.json { render :json => @scientman, :status => :created, :location => @scientman }
      else
        format.html { render :action => "new" }
        format.json { render :json => @scientman.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /scientmen/1
  # PUT /scientmen/1.json
  def update
    @scientman = Scientman.find(params[:id])

    respond_to do |format|
      if @scientman.update_attributes(params[:scientman])
        format.html { redirect_to @scientman, :notice => 'Научный руководитель изменен.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @scientman.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /scientmen/1
  # DELETE /scientmen/1.json
  def destroy
    @scientman = Scientman.find(params[:id])
    @scientman.destroy

    respond_to do |format|
      format.html { redirect_to scientmen_url }
      format.json { head :ok }
    end
  end
end
