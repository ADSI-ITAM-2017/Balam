class HousesController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :set_house, only: [:show, :edit, :update, :destroy]

    
  # GET /houses
  # GET /houses.json
  def index
    @houses = House.all
    if params[:search]
      @houses = House.search(params[:search])
    else
      @houses = House.all
    end
    if params[:cost]
      if params[:cost]=="Menor a mayor"
        @houses=@houses.order("cost ASC")
      elsif params[:cost]=="Mayor a menor"
        @houses=@houses.order("cost DESC")
      else
        @houses=@houses.order('cost DESC')
      end
    else
      @houses=@houses.order('created_at DESC')
    end
    if params[:kind]
      if params[:kind]=="Cuarto"
        @houses = @houses.where(kind: "Cuarto")
      elsif params[:kind]=="Departamento"
        @houses = @houses.where(kind: "Departamento")
      elsif params[:kind]=="Casa"
        @houses = @houses.where(kind: "Casa")
      end
      
    end
  end

  # GET /houses/1
  # GET /houses/1.json
  def show
  end

  # GET /houses/new
  def new
    @house = House.new
  end

  # GET /houses/1/edit
  def edit
  end

  def create
    @house = current_user.houses.build(house_params)
    if @house.save
      flash[:success] = "Casa creada!"
      redirect_to user_path(current_user)
    else
      render 'houses'
    end
  end


  # PATCH/PUT /houses/1
  # PATCH/PUT /houses/1.json
  def update
    respond_to do |format|
      if @house.update(house_params)
        format.html { redirect_to @house, notice: 'Casa actualizada correctamente.' }
        format.json { render :show, status: :ok, location: @house }
      else
        format.html { render :edit }
        format.json { render json: @house.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /houses/1
  # DELETE /houses/1.json
  def destroy
    House.find(params[:id]).destroy
    flash[:success] = "Propiedad eliminada"
    redirect_to misCasas_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_house
      @house = House.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def house_params
      params.require(:house).permit(:title, :description, :file, :cost, :street, :number, :postal,  :colony, :kind)
    end
    

end
