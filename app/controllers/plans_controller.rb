class PlansController < ApplicationController
    def index
        @plan = Plan.all
    end

    def show
        @plan = Plan.find(params[:id])
    end
    def new
    end

    def create
        @plan = Plan.new(plan_params)
        if @plan.save
            redirect_to @plan
        else
            render 'new'
        end
    end

    def destroy
        @plan = Plan.find(params[:id])
        @plan.destroy
        redirect_to plans_path
    end

    private
    def plan_params
        params.require(:plan).permit(:plan_name, :monthly_fee)
    end

end
