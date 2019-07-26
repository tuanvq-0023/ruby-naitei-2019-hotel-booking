class HotelsController < ApplicationController
  before_action :logged_in_user
  before_action :load_hotel, :admin_hotel, except: %i(index new create)

  def index
    @hotels =
      Kaminari
      .paginate_array(current_user.hotels)
      .page(params[:page])
      .per Settings.max_hotel_per_page
  end

  def new
    @hotel = Hotel.new
    @hotel.hotel_admins.build
  end

  def create
    @hotel = Hotel.new hotel_params

    if @hotel.save
      flash[:info] = t ".hotel_created"
    else
      flash[:info] = t ".hotel_created_failed"
    end
    render :new
  end

  def show; end

  def edit; end

  def update
    if @hotel.update hotel_params
      flash[:success] = t ".hotel_updated"
      redirect_to hotels_url
    else
      flash[:notice] = t ".hotel_updated_failed"
      render :edit
    end
  end

  def destroy
    @hotel.destroy
    flash[:success] = t ".hotel_deleted"
    redirect_to hotels_url
  end

  private

  def load_hotel
    @hotel = Hotel.find_by id: params[:id]

    return if @hotel
    flash[:danger] = t "hotel_not_found"
    redirect_to root_path
  end

  def admin_hotel
    return if current_user.hotels.find_by id: params[:id]
    flash[:danger] = t ".permission_denied"
    redirect_to hotels_url
  end

  def hotel_params
    params.require(:hotel).permit(:name,
      :address, :phone_number,
      :country, :city, :state,
      :website, :price_start, :price_end,
      :luxury, :description,
      hotel_admins_attributes: [:id, :user_id])
  end
end
