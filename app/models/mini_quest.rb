class MiniQuest < ActiveRecord::Base

  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :completed_text


end
