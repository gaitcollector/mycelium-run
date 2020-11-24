class PetriRun < ApplicationRecord
  belongs_to :mycelium
  has_many :log_entries, as: :loggable


end
