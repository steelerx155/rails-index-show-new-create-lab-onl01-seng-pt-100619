class CouponsController < ApplicationController
  
  def new 
    
  end
    
  def create 
     @coupons = Coupon.new
     @coupons.coupon_code = params[:coupon_code]
     @coupons.store = params[:store]
     @coupons.save
     redirect_to coupons_path(@coupons)
  end 
  
end