# frozen_string_literal: true

class RemoveTokenFieldFromUsers < ActiveRecord::Migration[8.0]
  def change
    remove_column :users, :token
  end
end
