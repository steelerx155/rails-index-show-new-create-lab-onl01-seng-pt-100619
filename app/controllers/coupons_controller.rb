class CouponsController < ApplicationController
  
  def new 
    
  end
    
  def create 
    # @coupons = Coupon.new
    # @coupons.coupon_code = params[:coupon_code]
    # @coupons.store = params[:store]
    # @coupons.save
    @coupons = Coupon.create(coupon_code: params[:coupon_code], store[:store])
     redirect_to coupons_path(@coupons)
  end 
  
end