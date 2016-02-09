class IzakayaProfilesController < ApplicationController
  


  
  # GET /izakaya_profiles
  # GET /izakaya_profiles.json
  def index
    @izakaya_profiles = IzakayaProfile.all
  end

  # GET /izakaya_profiles/1
  # GET /izakaya_profiles/1.json
  def show
    @izakaya_profiles = IzakayaProfile.find(params[:id])
  end

  #居酒屋の検索
  def search
    @izakaya_profiles = IzakayaProfile.search(params[:q])
    # genre = params[:genre] ジャンル
    render "index"
  end

  # GET /izakaya_profiles/new
  def new
    @izakaya_profile = IzakayaProfile.new
  end

  

  # GET /izakaya_profiles/1/edit
  def edit
  end

  # POST /izakaya_profiles
  # POST /izakaya_profiles.json
  def create
    @izakaya_profile = IzakayaProfile.new(izakaya_profile_params)

    respond_to do |format|
      if @izakaya_profile.save
        format.html { redirect_to @izakaya_profile, notice: 'Izakaya profile was successfully created.' }
        format.json { render :show, status: :created, location: @izakaya_profile }
      else
        format.html { render :new }
        format.json { render json: @izakaya_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /izakaya_profiles/1
  # PATCH/PUT /izakaya_profiles/1.json
  def update
    respond_to do |format|
      if @izakaya_profile.update(izakaya_profile_params)
        format.html { redirect_to @izakaya_profile, notice: 'Izakaya profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @izakaya_profile }
      else
        format.html { render :edit }
        format.json { render json: @izakaya_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /izakaya_profiles/1
  # DELETE /izakaya_profiles/1.json
  def destroy
    @izakaya_profile.destroy
    respond_to do |format|
      format.html { redirect_to izakaya_profiles_url, notice: 'Izakaya profile was successfully destroyed.' }
      format.json { head :no_content }
    end

  end

  def search_niku
    @izakaya_profiles = IzakayaProfile.find_by(genre: "肉料理")
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_izakaya_profile
      @izakaya_profile = IzakayaProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def izakaya_profile_params
      params.require(:izakaya_profile).permit(:izakaya_id, :open_time, :close_time, :image, :phone, :menus, :access, :place, :cigaret)
    end
end
