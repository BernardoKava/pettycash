json.extract! outflow, :id, :amount, :details, :cashflow_id, :month, :year, :person_id, :outflowtype_id, :date_posted, :rationale, :bankaccount_id, :follow_up, :created_at, :updated_at
json.url outflow_url(outflow, format: :json)
