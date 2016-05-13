class ExercisesController < ApplicationController


  def show
    @exercise = Unirest.get("http://localhost:3000/api/v1/exercise/#{params[:id]}.json").body
  end

  def index 
    @exercises = Unirest.get("http://localhost:3000/api/v1/exercise/#{params[:id]}.json").body
  end

  def new
  end

  def create
    Unirest.post("#{ENV['DOMAIN']}/exercise.json", headers: {"Accept"=> "application/json"}, parameters:{exercise: params[:exercise],calories_burned: params[:calories_burned], time: params[:time]}).body
    redirect_to "/exercise/#{@exercise['id']}" #alternate single and double quotes so it does not get confused

  end

  def update
    Unirest.post("#{ENV}")
  end

  def destroy
  end




end
