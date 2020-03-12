class CouponsController < ApplicationController
  
  def index
      @coupons = Coupon.all
    end
  
  def create 
    @coupons = Coupon.new
    @coupons.coupon_code = params[:coupon_code]
    @coupons.store = params[:store]
    @coupons.save
    redirect_to coupon_path(@coupons)
  end 
  
end