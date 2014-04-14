class AddMembersCouponToHints < ActiveRecord::Migration
  def change
    add_column :hints, :members_coupon, :string
  end
end
