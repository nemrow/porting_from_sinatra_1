class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |p|
      p.string :title
      p.string :link_url
      p.integer :user_id
    end
  end
end
