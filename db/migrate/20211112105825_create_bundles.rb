class CreateBundles < ActiveRecord::Migration[6.1]
  def change
    create_table :bundles do |t|
      t.string :name_package
      t.string :department

      t.timestamps
    end
  end
end
