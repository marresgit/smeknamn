class AddMoreNicknames < ActiveRecord::Migration[5.0]
  def change
    add_column :nicknames, :addnick, :string
  end
end
