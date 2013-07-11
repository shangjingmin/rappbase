class Simple < ActiveRecord::Base
  self.table_name = "tests"
  attr_accessible :binary, :boolean, :date, :datetime, :decimal, :float, :integer, :string, :text, :time, :timestamp

  validates :string, presence: {message: "must present"}
  validates :float, presence:{message: "value"}
end
