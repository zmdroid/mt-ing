class AddGroupToModals < ActiveRecord::Migration
  def change
    add_column :modals, :group, :string
  end
end
