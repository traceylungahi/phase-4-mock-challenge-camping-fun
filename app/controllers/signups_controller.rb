class SignupsController < ApplicationController
    def create 
        signup = Signup.create(params.permit(:time, :activity_id, :camper_id))
        if signup.valid?
            render json: signup.activity, status: :created
        else 
            render json: { errors: ["Validation errors"] }, status: :unprocessable_entity
        end 
    end 
end
