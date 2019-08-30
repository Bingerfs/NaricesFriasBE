class HistorialAdoptado < ApplicationRecord
    belongs_to :adoptado, optional: true
end
