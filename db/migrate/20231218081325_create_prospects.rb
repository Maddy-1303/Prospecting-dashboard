class CreateProspects < ActiveRecord::Migration[7.1]
  def change
    create_table :prospects do |t|
      t.string :industry
      t.string :jobrole
      t.string :designer
      t.string :location

      t.timestamps
    end
  end
end
