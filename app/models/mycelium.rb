class Mycelium < ApplicationRecord
  has_many :substrate_runs
  has_many :lc_runs
  has_many :spawn_runs
  has_many :petri_runs

end
