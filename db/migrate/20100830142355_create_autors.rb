class CreateAutors < ActiveRecord::Migration
  def self.up
    create_table :autors do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :autors
  end
end
