class BirthdaysController < ApplicationController
  def index
    birthdays = Birthday.all
    render json: birthdays.as_json
  end

  def create
    birthday = Birthday.new(
      name: params[:name],
      month: params[:month],
      day: params[:day],
      year: params[:year]
    )
    birthday.save
    render json: birthday.as_json
  end

  def show
    birthday = Birthday.find(params[:id])
    render json: birthday.as_json
  end

  def update
    birthday = Birthday.find(params[:id])
    birthday.name = params[:name] || birthday.name
    birthday.month = params[:month] || birthday.month
    birthday.day = params[:day] || birthday.day
    birthday.year = params[:year] || birthday.year
    birthday.save
    render json: birthday.as_json
  end

  def destroy
    birthday = Birthday.find(params[:id])
    birthday.destroy
    render json: {message: "Successfully removed birthday."}
  end
end
