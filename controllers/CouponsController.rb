class CouponsController < ApplicationController

# CRUD controller
# Business Logic Maintenance
# 'maintenance screens'

  ## list (read) all the coupons
get '/' do
  @coupons = CouponsModel.all

  erb :coupons_index
end
  ##create (C in CRUD) coupons
get '/create' do
  erb :coupons_create
end

post '/create' do
  @coupon = CouponsModel.new

  @coupon.title = params[:title]
  @coupon.description = params[:description]
  @coupon.product = params[:product]
  @coupon.discount = params[:discount]
  @coupon.exp_date = params[:exp_date]
  @coupon.save

  erb :coupons_creat_success

end

  ##update (edit) students
get '/edit/:id' do
  @id = params[:id]
  @coupon = CouponsModel.find(@id)

  erb :coupons_edit

end

post '/edit' do
  @coupon = CouponsModel.find(params[:id])
  @coupon.title = params[:title]
  @coupon.description = params[:description]
  @coupon.product = params[:product]
  @coupon.discount = params[:discount]
  @coupon.exp_date = params[:exp_date]
  @coupon.save

  erb :coupons_edit_success


end
  ##delete (destroy) students
end
