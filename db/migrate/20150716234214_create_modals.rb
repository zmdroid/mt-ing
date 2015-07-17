class CreateModals < ActiveRecord::Migration
  def change
    create_table :modals do |t|
      t.string :css_id
      t.string :aria_label
      t.string :h2
      t.string :upper_para
      t.string :lower_para

      t.timestamps null: false
    end
  end
end
