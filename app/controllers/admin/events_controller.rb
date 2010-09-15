class Admin::EventsController < Admin::BaseController

  crudify :event,
          :title_attribute => :title,
          :order => 'created_at DESC'

end
