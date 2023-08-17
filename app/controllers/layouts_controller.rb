class LayoutsController < ApplicationController
  before_action :set_layout, only: %i[ show edit update destroy ]
  before_action :set_default_request_format

  # GET /layouts or /layouts.json
  def index
    @layouts = Layout.all
  end

  # GET /layouts/1 or /layouts/1.json
  def show
  end

  # GET /layouts/new
  def new
    @layout = Layout.new
  end

  # PUT /layouts/1
  def update

  end

  # GET /layouts/1/edit
  def edit
  end

  # POST /layouts or /layouts.json
  def create
    @layout = Layout.new(layout_params)

    respond_to do |format|
      if @layout.save
        format.json { render :show, status: :created }
      else
        format.json { render json: @layout.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_layout
    @layout = Layout.find(params[:id])
  end

  def set_default_request_format
    request.format = :json
  end

  # Only allow a list of trusted parameters through.
  def layout_params
    params.require(:layout).permit(:id, :content, :_destroy)
  end
end
