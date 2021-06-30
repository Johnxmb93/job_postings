class AddUpdatesToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :job_title, :string
    add_column :posts, :description, :string
    add_column :posts, :company_name, :string
    add_column :posts, :salary, :string
    add_column :posts, :city, :string
  end
end
