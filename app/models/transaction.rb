class Transaction < ApplicationRecord
  belongs_to :cashbox
  belongs_to :person
  belongs_to :cashflow
  belongs_to :outflowtype
end
