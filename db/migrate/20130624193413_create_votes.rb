class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer   :value
      t.integer   :user_id
      t.integer   :post_id  
    end
  end
end
