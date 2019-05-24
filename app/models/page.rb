class Page < ApplicationRecord
    belongs_to :story, class_name: "Story", foreign_key: "story_id"

    belongs_to :parent, class_name: "Page", foreign_key: "parent_id", optional: true
    has_many :children, class_name: "Page", foreign_key: "parent_id"

    validates :name, presence: true
    validates :text, presence: true
end