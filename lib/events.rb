if defined?(Bundler) and !defined?(FiltersSpam)
  # this will tell the user what to do
  load(File.expand_path('../../Gemfile', __FILE__))
  require 'will_paginate'
end

require 'refinery'

module Refinery
  module Events
    class Engine < Rails::Engine
      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "events"
          plugin.activity = {:class => Event}
        end
      end
    end
  end
end
