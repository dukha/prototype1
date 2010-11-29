class QuotaSchemasController < ApplicationController
  # GET /quota_schemas
  # GET /quota_schemas.xml
  before_filter :authenticate_user!
  @@model="quota_schema"
  @@model_translation_code ="entities." +@@model
  
  def index
    @quota_schemas = QuotaSchema.paginate(:page => params[:page], :per_page=>15)
     
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @quota_schemas }
    end
  end

  # GET /quota_schemas/1
  # GET /quota_schemas/1.xml
  @@model = "quota_schema"
  def show
    @quota_schema = QuotaSchema.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @quota_schema }
    end
  end

  # GET /quota_schemas/new
  # GET /quota_schemas/new.xml
  def new
    @quota_schema = QuotaSchema.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @quota_schema }
    end
  end

  # GET /quota_schemas/1/edit
  def edit
    @quota_schema = QuotaSchema.find(params[:id])
  end

  # POST /quota_schemas
  # POST /quota_schemas.xml
  def create
    @quota_schema = QuotaSchema.new(params[:quota_schema])

    respond_to do |format|
      if @quota_schema.save
        flash[:success] = t('messages.create.success', :model=>t(@@model_translation_code))
        format.html { redirect_to(:action=>'index')} #, :notice => t('messages.create.success', :model=>@@model)) }
        format.xml  { render :xml => @quota_schema, :status => :created, :location => @quota_schema }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @quota_schema.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /quota_schemas/1
  # PUT /quota_schemas/1.xml
  def update
    @quota_schema = QuotaSchema.find(params[:id])

    respond_to do |format|
      if @quota_schema.update_attributes(params[:quota_schema])
        flash[:success] = t('messages.update.success', :model=>t(@@model_translation_code))
        format.html { redirect_to(:action=>'index')} #, :notice => t('messages.update.success', :model=>@@model)) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @quota_schema.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /quota_schemas/1
  # DELETE /quota_schemas/1.xml
  def destroy
    @quota_schema = QuotaSchema.find(params[:id])
    @quota_schema.destroy

    respond_to do |format|
      format.html { redirect_to(quota_schemas_url) }
      format.xml  { head :ok }
    end
  end
end
