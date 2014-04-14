class AddCouponSubToHints < ActiveRecord::Migration
  def change
    add_column :hints, :coupon_sub, :string
  end
end
