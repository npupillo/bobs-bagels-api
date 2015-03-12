class AddCommentToOrderItems < ActiveRecord::Migration
  def change
    add_column :order_items, :comment, :string
  end
end
