class SignupsController < ApplicationController

def create
    # binding.pry
    render json: Signup.create!(signup_params).activity, status: :created
   
end

    private

def signup_params
    params.permit(:time, :camper_id, :activity_id)
end

end
