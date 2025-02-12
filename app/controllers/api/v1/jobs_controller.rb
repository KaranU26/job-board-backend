module Api
    module V1
      class JobsController < ApplicationController
        skip_before_action :authenticate_user!, only: [:index]
  
        def index
          jobs = Job.all
          render json: jobs, status: :ok
        end
      end
    end
  end
  