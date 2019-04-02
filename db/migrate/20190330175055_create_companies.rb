class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.integer :job_id
      t.string :name
      t.string :company_statement
      t.binary :logo
      t.string :url
      t.string :email
      t.text :company_description

      t.timestamps
    end
  end
end
