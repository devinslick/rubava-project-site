class RubavaTeamMembersController < ApplicationController
  # GET /rubava_team_members
  # GET /rubava_team_members.json
  def index
    @rubava_team_members = RubavaTeamMember.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @rubava_team_members }
    end
  end

  # GET /rubava_team_members/1
  # GET /rubava_team_members/1.json
  def show
    @rubava_team_member = RubavaTeamMember.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @rubava_team_member }
    end
  end

  # GET /rubava_team_members/new
  # GET /rubava_team_members/new.json
  def new
    @rubava_team_member = RubavaTeamMember.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @rubava_team_member }
    end
  end

  # GET /rubava_team_members/1/edit
  def edit
    @rubava_team_member = RubavaTeamMember.find(params[:id])
  end

  # POST /rubava_team_members
  # POST /rubava_team_members.json
  def create
    @rubava_team_member = RubavaTeamMember.new(params[:rubava_team_member])

    respond_to do |format|
      if @rubava_team_member.save
        format.html { redirect_to @rubava_team_member, :notice => 'Rubava team member was successfully created.' }
        format.json { render :json => @rubava_team_member, :status => :created, :location => @rubava_team_member }
      else
        format.html { render :action => "new" }
        format.json { render :json => @rubava_team_member.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /rubava_team_members/1
  # PUT /rubava_team_members/1.json
  def update
    @rubava_team_member = RubavaTeamMember.find(params[:id])

    respond_to do |format|
      if @rubava_team_member.update_attributes(params[:rubava_team_member])
        format.html { redirect_to @rubava_team_member, :notice => 'Rubava team member was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @rubava_team_member.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /rubava_team_members/1
  # DELETE /rubava_team_members/1.json
  def destroy
    @rubava_team_member = RubavaTeamMember.find(params[:id])
    @rubava_team_member.destroy

    respond_to do |format|
      format.html { redirect_to rubava_team_members_url }
      format.json { head :no_content }
    end
  end
end
