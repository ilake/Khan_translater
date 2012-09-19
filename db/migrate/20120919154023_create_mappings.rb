class CreateMappings < ActiveRecord::Migration
  def change
    create_table :mappings do |t|
      t.string :before, :after
      t.timestamps
    end
  end
end
