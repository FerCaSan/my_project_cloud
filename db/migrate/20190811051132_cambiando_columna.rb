class CambiandoColumna < ActiveRecord::Migration[5.2]
  def change
  	rename_column :events, :type, :type_event
  end
end
