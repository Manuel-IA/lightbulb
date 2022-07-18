class Log < ApplicationRecord

  after_create_commit -> { broadcast_prepend_later_to "bulb", partial: "logs/log", locals: { log: self }, target: "logs" }
end
