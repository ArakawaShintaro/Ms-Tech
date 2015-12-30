class Subject < ActiveRecord::Base
  has_many :thumnails
  has_one :article
  accepts_nested_attributes_for :thumnails

  validates_presence_of :name, :company, :occupation, :position
end
