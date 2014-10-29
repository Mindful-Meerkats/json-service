class MiniQuest < ActiveRecord::Base
  before_filter :logged_in?
end
