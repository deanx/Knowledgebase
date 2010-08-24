class AddIdAutorToConhecimentos < ActiveRecord::Migration
  def self.up
	add_column :conhecimentos, :autor_id, :integer, {:limit => 11, :null => false}
  end

  def self.down
	remove_column :conhecimentos, :autor_id
  end
end
