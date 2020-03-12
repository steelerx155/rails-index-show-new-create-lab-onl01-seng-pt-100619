class CouponsController < ApplicationController
  
  def create 
    @coupons = Coupon.all 
    @coupons.coupon_code = params[:coupon_code]
    @coupons.store = params[:store]
    @coupons.save
    redirect_to coupons_path(@coupons)
  end 
  
end