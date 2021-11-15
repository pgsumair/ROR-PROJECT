class CreatePhysicians < ActiveRecord::Migration[6.1]
  def change
    create_table :physician do |t|
      t.string :name
      t.timestamps
    end
  end
end
