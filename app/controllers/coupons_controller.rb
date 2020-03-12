class CouponsController < ApplicationController
  before_action :set_coupon, only: :show
  def new 
    
  end
    
  def create 
    @coupons = Coupon.new
    @coupons.coupon_code = params[:coupon_code]
    @coupons.store = params[:store]
    @coupons.save
  #  @coupons = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
     redirect_to coupons_path(@coupons)
  end 
  
  private
  def set_coupon
    @coupon = Student.find(params[:id])
  
end