class Admin::InsumosController < Admin::BaseController
  include Pagination

  def index
    list
    render :action => 'list'
  end

  # Lists all insumos
  def list
    @title = "Lista de todos los Insumos"
    @insumos = Insumo.paginate(
      :order => "name ASC",
      :page => params[:page],
      :per_page => 30
    )
   
  end
 
  def new
    @title = "Nuevo Insumo"
    @insumo = Insumo.new
  end
  
  def edit
    @title = "Editar Un Insumo"
    @insumo = Insumo.find(params[:id])
  end

  # Saves insumo from new and edit.
  #
  #
  def save
    # If we have ID param this isn't a new insumo
    if params[:id]
      @new_product = false
      @title = "Editar Insumo"
      @insumo = Insumo.find(params[:id])
    else
      @new_product = true
      @title = "Nuevo Insumo"
      @insumo = Insumo.new
    end
    @insumo.attributes = params[:insumo]      
    if @insumo.save
      flash[:notice] = "El Insumo '#{@insumo.name}' Fue Guardado."
    end
    render :action => 'edit' and return			
  end

  def destroy
    Insumo.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
	
end
	

