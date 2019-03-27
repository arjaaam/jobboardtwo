class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.integer :category_id
      t.string :jobtype
      t.string :headquarter
      t.string :region
      t.string :applylink
      t.text :description

      t.timestamps
    end
  end
end
