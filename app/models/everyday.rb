class Everyday < ActiveRecord::Base
  attr_accessible :begin_at, :category, :event, :quantity, :remark, :scene

  CATEGORY_EVENTS = {sleep: [:deep, :light], cry: [:cry], feed: [:feed], medicine: [:calcium, :eczema], excreta: [:weewee, :defecate], wash: [:wash], others: [:others]}
  EVENTS_CATEGORY = Hash[Everyday::CATEGORY_EVENTS.collect{|k,v| v.zip([k]*v.size)}.flatten(1)]
end
