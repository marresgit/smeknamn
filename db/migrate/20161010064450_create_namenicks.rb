class CreateNamenicks < ActiveRecord::Migration[5.0]
  def change
    create_table :namenicks do |t|
      t.string :nickname
      t.string :namenick
      t.string :namenicktwo
      t.string :namenickthree
      t.string :namenickfour
      t.string :namenickfive

      t.timestamps
    end
  end
end
