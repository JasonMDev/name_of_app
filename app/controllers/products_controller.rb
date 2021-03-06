class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  respond_to :json, :html
  before_action :authenticate_user!, :except => [:index]

  # GET /products
  # GET /products.json
  def index
    if params[:q]
      search_term = params[:q]
      # Search for the term in DEVELOPMENT using SQL using "LIKE"
      @products = Product.where("name LIKE ?", "%#{search_term}%").paginate(page: params[:page], per_page: 4) if Rails.env.development?
      # Search for the term in PRODUCTION env. using PostGRES "ilike"
      @products = Product.where("name ilike ?", "%#{search_term}%").paginate(page: params[:page], per_page: 4) if Rails.env.production?
      
    else
      # All products
      @products = Product.paginate(page: params[:page], per_page: 6)
      # This action will override the default layout 
      # and call the file products.html.erb  
      # inside app/views/layouts
      # render layout: "products"
    end 
    respond_with @products     
  end

  # GET /products/1
  # GET /products/1.json
  def show
    # Debuggeing using byebug gem 
    # byebug
    @comments = @product.comments.order("created_at DESC").paginate(page: params[:page], per_page: 3)
    # to get the show to work, just comment below out.
    # redirect_to :back
    #redirect_to(request.env['HTTP_REFERER'])
    
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
      # byebug
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :description, :image_url, :color, :location, :price)
    end
end
