class StaticPagesController < ApplicationController
  def home
    @cahbox_text = " The CashBox is a virtual recepticle of all cash withdrawn from herga bank accounts.  A Cashbox is
created for each month."
    @trans_text = "The transaction is the itemised expenses made against all withdrawn cash values.  Cash withdrawals are
flagged in the database.  The flagged transactions are automatically summed and displayed as indicated balance on the
CashBox. "
  end
end
