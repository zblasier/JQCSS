class AddNotesToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :notes, :string
  end
end
