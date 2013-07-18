class Store
  include Mongoid::Document
  embeds_many :accounts

  field :name, type: String
  field :city, type: String

  validates_associated :accounts, on: :create
  accepts_nested_attributes_for :accounts
end
