class DevlogsController < ApplicationController
  layout 'portal'
  before_action :set_devlog, only: [:show]

  # GET /devlogs
  # GET /devlogs.json
  def index
    @devlogs = Devlog.all
  end

  # GET /devlogs/1
  # GET /devlogs/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_devlog
      @devlog = Devlog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def devlog_params
      params.require(:devlog).permit(:title, :content)
    end
end
