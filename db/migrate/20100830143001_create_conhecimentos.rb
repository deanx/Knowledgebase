class CreateConhecimentos < ActiveRecord::Migration
  def self.up
    create_table :conhecimentos do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :conhecimentos
  end
end
