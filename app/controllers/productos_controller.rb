class ProductosController < ApplicationController
  before_action :set_producto, only: [:show, :edit, :update, :destroy]

  # GET /productos
  # GET /productos.json
  #def index
    #@productos = Producto.all
  #end

  # GET /productos/1
  # GET /productos/1.json
  def show

  end

  # GET /productos/new
  def new
    if usuario_signed_in?
      @producto = Producto.new 
      @departamentos = Departamento.all
    else
      redirect_to new_usuario_session_path, notice: "Debes estar logeado para vender un producto" 
    end
    
  end

  # GET /productos/1/edit
  def edit
  end

  # POST /productos
  # POST /productos.json
  def create
    @producto = current_usuario.productos.new(producto_params)
    @departamentos = Departamento.all
    respond_to do |format|
      if @producto.save
        format.html { redirect_to root_path, notice: 'Producto was successfully created.' }
        format.json { render :new, status: :created, location: @producto }
      else
        format.html { render :new }
        format.json { render json: @producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /productos/1
  # PATCH/PUT /productos/1.json
  def update
    respond_to do |format|
      if @producto.update(producto_params)
        format.html { redirect_to @producto, notice: 'Producto was successfully updated.' }
        format.json { render :show, status: :ok, location: @producto }
      else
        format.html { render :edit }
        format.json { render json: @producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productos/1
  # DELETE /productos/1.json
  def destroy
    @producto.destroy
    respond_to do |format|
      format.html { redirect_to productos_url, notice: 'Producto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producto
      @producto = Producto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producto_params
      params[:producto].permit(:nombre,:desc_c,:desc_l,:estado,:precio,:departamento_id, :imagen) 
    end
end
