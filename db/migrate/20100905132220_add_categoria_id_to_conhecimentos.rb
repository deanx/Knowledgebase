class AddCategoriaIdToConhecimentos < ActiveRecord::Migration
  def self.up
    add_column :conhecimentos, :categoria_id, :integer
  end

  def self.down
    remove_column :conhecimentos, :categoria_id
  end
end
