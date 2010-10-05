class CreateEvents < ActiveRecord::Migration

  def self.up
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :location
      t.datetime :from
      t.datetime :to
      t.integer :position
      t.string :url

      t.timestamps
    end

    add_index :events, :id

    load(Rails.root.join('db', 'seeds', 'events.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "Events"})

    Page.delete_all({:link_url => "/events"})

    drop_table :events
  end

end
