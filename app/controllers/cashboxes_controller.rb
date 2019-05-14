class CashboxesController < ApplicationController
  before_action :set_cashbox, only: [:show, :edit, :update, :destroy]

  # GET /cashboxes
  # GET /cashboxes.json
  def index
    @cashboxes = Cashbox.all.paginate(page: params[:page], :per_page => 10).order("created_at DESC")
  end

  # GET /cashboxes/1
  # GET /cashboxes/1.json
  def show
    @ref= @cashbox.id
    @cashbox.month= @cashbox.accounting_date.month
    @cashbox.year= @cashbox.accounting_date.year

    # balances: actual and indicative-as flagged on the cashflow
    @indicative_Cash_Bal= Outflow.where(month:@cashbox.month, year:@cashbox.year, outflowtype_id: 56).sum(:amount)
    @cash_expense_total= Transaction.where(cashbox_id: @ref).sum(:amount)
    @balance= @indicative_Cash_Bal - @cash_expense_total



    # transactions associated/related to a cashflow
    @related_trans=Transaction.where(cashbox_id: @ref)

    @cashbox.save

  end

  # GET /cashboxes/new
  def new
    @cashbox = Cashbox.new
  end

  # GET /cashboxes/1/edit
  def edit
  end

  # POST /cashboxes
  # POST /cashboxes.json
  def create
    @cashbox = Cashbox.new(cashbox_params)

    respond_to do |format|
      if @cashbox.save
        format.html { redirect_to @cashbox, notice: 'Cashbox was successfully created.' }
        format.json { render :show, status: :created, location: @cashbox }
      else
        format.html { render :new }
        format.json { render json: @cashbox.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cashboxes/1
  # PATCH/PUT /cashboxes/1.json
  def update
    respond_to do |format|
      if @cashbox.update(cashbox_params)
        format.html { redirect_to @cashbox, notice: 'Cashbox was successfully updated.' }
        format.json { render :show, status: :ok, location: @cashbox }
      else
        format.html { render :edit }
        format.json { render json: @cashbox.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cashboxes/1
  # DELETE /cashboxes/1.json
  def destroy
    @cashbox.destroy
    respond_to do |format|
      format.html { redirect_to cashboxes_url, notice: 'Cashbox was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cashbox
      @cashbox = Cashbox.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cashbox_params
      params.require(:cashbox).permit(:name, :accounting_date, :active, :month, :year,:notes)
    end
end
