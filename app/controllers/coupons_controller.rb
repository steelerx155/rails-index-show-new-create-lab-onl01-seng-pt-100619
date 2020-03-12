class CouponsController < ApplicationController
  
  def create 
    @coupons = Coupon.all 
  end 
  
end