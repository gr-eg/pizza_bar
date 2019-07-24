class Pizza < ApplicationRecord
  validates :name, presence: true
  serialize :ingredients

  def serializable_hash(options={})
    options[:except] ||= [:created_at, :updated_at]
    super(options)
  end
end
