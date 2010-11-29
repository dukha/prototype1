class QuotasController < ApplicationController
  # GET /quotas
  # GET /quotas.xml
  before_filter :authenticate_user!
  @@model ="quota"
  @@model_translation_code ="entities." +@@model
  def index
    #@quotas = Quota.all
    @quotas =  Quota.paginate(:page => params[:page], :per_page=>15)  
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @quotas }
    end
  end

  # GET /quotas/1
  # GET /quotas/1.xml
  def show
    @quota = Quota.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @quota }
    end
  end

  # GET /quotas/new
  # GET /quotas/new.xml
  def new
    @quota = Quota.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @quota }
    end
  end

  # GET /quotas/1/edit
  def edit
    @quota = Quota.find(params[:id])
  end

  # POST /quotas
  # POST /quotas.xml
  def create
    @quota = Quota.new(params[:quota])

    respond_to do |format|
      if @quota.save
        flash[:success] = t('messages.create.success', :model=>t(@@model_translation_code))
        format.html { redirect_to(:action=> "index")} #, :notice => t('messages.create.success', :model=>@@model)) }
        format.xml  { render :xml => @quota, :status => :created, :location => @quota }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @quota.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /quotas/1
  # PUT /quotas/1.xml
  def update
    @quota = Quota.find(params[:id])

    respond_to do |format|
      if @quota.update_attributes(params[:quota])
        flash[:success] = t('messages.update.success', :model=>t(@@model_translation_code))
        format.html { redirect_to(:action=> "index")} #, :notice => t('messages.update.success', :model=>@@model)) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @quota.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /quotas/1
  # DELETE /quotas/1.xml
  def destroy
    @quota = Quota.find(params[:id])
    @quota.destroy

    respond_to do |format|
      format.html { redirect_to(quotas_url) }
      format.xml  { head :ok }
    end
  end
end
