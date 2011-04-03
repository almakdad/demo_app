class TranslationpostsController < ApplicationController
  # GET /translationposts
  # GET /translationposts.xml
  def index
    @translationposts = Translationpost.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @translationposts }
    end
  end

  # GET /translationposts/1
  # GET /translationposts/1.xml
  def show
    @translationpost = Translationpost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @translationpost }
    end
  end

  # GET /translationposts/new
  # GET /translationposts/new.xml
  def new
    @translationpost = Translationpost.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @translationpost }
    end
  end

  # GET /translationposts/1/edit
  def edit
    @translationpost = Translationpost.find(params[:id])
  end

  # POST /translationposts
  # POST /translationposts.xml
  def create
    @translationpost = Translationpost.new(params[:translationpost])

    respond_to do |format|
      if @translationpost.save
        format.html { redirect_to(@translationpost, :notice => 'Translationpost was successfully created.') }
        format.xml  { render :xml => @translationpost, :status => :created, :location => @translationpost }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @translationpost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /translationposts/1
  # PUT /translationposts/1.xml
  def update
    @translationpost = Translationpost.find(params[:id])

    respond_to do |format|
      if @translationpost.update_attributes(params[:translationpost])
        format.html { redirect_to(@translationpost, :notice => 'Translationpost was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @translationpost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /translationposts/1
  # DELETE /translationposts/1.xml
  def destroy
    @translationpost = Translationpost.find(params[:id])
    @translationpost.destroy

    respond_to do |format|
      format.html { redirect_to(translationposts_url) }
      format.xml  { head :ok }
    end
  end
end
