class Everyday < ActiveRecord::Base
  attr_accessible :begin_at, :category, :event, :quantity, :remark, :scene

  CATEGORY = {sleep: [:deep, :light], cry: [:cry], feed: [:feed], medicine: [:calcium, :eczema], excreta: [:weewee, :defecate], wash: [:wash], others: [:others]}

end
