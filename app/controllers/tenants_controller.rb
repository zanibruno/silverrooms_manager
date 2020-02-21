class TenantsController < ApplicationController

  def index
    @tenants = Tenant.all
  end

  def new
    @tenant = Tenant.new
  end

  def create
    @tenant = Tenant.new(tenant_params)
    if @tenant.save
      redirect_to tenant_path(@tenant)
    else
      render :new
  end
end

private

  def tenant_params
    params.require(:tenant).permit(:name, :phone_number, :email, :sos_name, :sos_number, :start_date, :end_date)
  end
end
