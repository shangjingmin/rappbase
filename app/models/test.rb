class Test < ActiveRecord::Base
  attr_accessible :binary, :boolean, :date, :datetime, :decimal, :float, :integer, :string, :text, :time, :timestamp

  validates :string, presence: {message: "must present"}
  validates :float, presence:{message: "value"}
end
