class ChangeServiceDescriptionToString < ActiveRecord::Migration
  def change
    change_column :enquiries, :budget, :string
  end
end
