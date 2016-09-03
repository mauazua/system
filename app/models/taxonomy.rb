class Taxonomy < ActiveRecord::Base

  validates :name, presence: true

  has_many :fields, inverse_of: :taxonomy
  has_one :root, -> { where parent_id: nil }, class_name: "Field", dependent: :destroy

  after_create :set_root

  private

  def set_root
    self.root ||= Field.create!(taxonomy_id: id, name: name)
  end
end
