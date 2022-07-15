class Bulb < ApplicationRecord

  after_update_commit -> { broadcast_replace_later_to "bulb", partial: "bulbs/bulb", locals: { bulb: self }, target: "bulb" }
end
