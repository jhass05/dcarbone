class Admin::RolesController < Admin::BaseController
  
  # GETs should be safe (see http://www.w3.org/2001/tag/doc/whenToUseGet.html)
  verify :method => :post, :only => [ :destroy, :create, :update ],
         :redirect_to => { :action => :list }

  def index
    list
    render :action => 'list'
  end

  def list
    @title = 'Lista Tipos de Usuario'
    @roles = Role.find(:all)
  end

  def new
		@title = "Creating new Role"
    @role = Role.new(params[:role])
		@rights = Right.find(:all, :order => 'name ASC')
    if request.post? and @role.save
      flash[:notice] = 'El tipo de usuario fue creado satisfactoriamente'
      redirect_to :action => 'list' and return
    end
		
  end

  def edit
		@title = "lista"
    @role = Role.find(params[:id])
    @role.attributes = params["role"]
		
		@rights = Right.find(:all, :order => 'name ASC')
		
		# Update user
    if request.post? and @role.save
      flash[:notice] = 'El tipo de usuario fue actualizado'
      redirect_to :action => 'list'
    end
  end

  def destroy
    Role.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
  
end
