class CreateNicknames < ActiveRecord::Migration[5.0]
  def change
    create_table :nicknames do |t|
      t.string :name
      t.string :nick

      t.timestamps
    end
  end
end
