class AddCouponBodyToHints < ActiveRecord::Migration
  def change
    add_column :hints, :coupon_body, :string
  end
end
