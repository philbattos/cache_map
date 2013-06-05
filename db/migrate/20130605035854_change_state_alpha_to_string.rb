class ChangeStateAlphaToString < ActiveRecord::Migration
  def up
    change_column :geonames, :state_alpha, :string, :limit => 2
  end

  def down
    change_column :geonames, :state_alpha, :text
  end
end
