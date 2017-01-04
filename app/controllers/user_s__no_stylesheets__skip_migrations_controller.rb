class UserSNoStylesheetsSkipMigrationsController < ApplicationController
  before_action :set_user_s__no_stylesheets__skip_migration, only: [:show, :edit, :update, :destroy]

  # GET /user_s__no_stylesheets__skip_migrations
  # GET /user_s__no_stylesheets__skip_migrations.json
  def index
    @user_s__no_stylesheets__skip_migrations = UserSNoStylesheetsSkipMigration.all
  end

  # GET /user_s__no_stylesheets__skip_migrations/1
  # GET /user_s__no_stylesheets__skip_migrations/1.json
  def show
  end

  # GET /user_s__no_stylesheets__skip_migrations/new
  def new
    @user_s__no_stylesheets__skip_migration = UserSNoStylesheetsSkipMigration.new
  end

  # GET /user_s__no_stylesheets__skip_migrations/1/edit
  def edit
  end

  # POST /user_s__no_stylesheets__skip_migrations
  # POST /user_s__no_stylesheets__skip_migrations.json
  def create
    @user_s__no_stylesheets__skip_migration = UserSNoStylesheetsSkipMigration.new(user_s__no_stylesheets__skip_migration_params)

    respond_to do |format|
      if @user_s__no_stylesheets__skip_migration.save
        format.html { redirect_to @user_s__no_stylesheets__skip_migration, notice: 'User s  no stylesheets  skip migration was successfully created.' }
        format.json { render :show, status: :created, location: @user_s__no_stylesheets__skip_migration }
      else
        format.html { render :new }
        format.json { render json: @user_s__no_stylesheets__skip_migration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_s__no_stylesheets__skip_migrations/1
  # PATCH/PUT /user_s__no_stylesheets__skip_migrations/1.json
  def update
    respond_to do |format|
      if @user_s__no_stylesheets__skip_migration.update(user_s__no_stylesheets__skip_migration_params)
        format.html { redirect_to @user_s__no_stylesheets__skip_migration, notice: 'User s  no stylesheets  skip migration was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_s__no_stylesheets__skip_migration }
      else
        format.html { render :edit }
        format.json { render json: @user_s__no_stylesheets__skip_migration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_s__no_stylesheets__skip_migrations/1
  # DELETE /user_s__no_stylesheets__skip_migrations/1.json
  def destroy
    @user_s__no_stylesheets__skip_migration.destroy
    respond_to do |format|
      format.html { redirect_to user_s__no_stylesheets__skip_migrations_url, notice: 'User s  no stylesheets  skip migration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_s__no_stylesheets__skip_migration
      @user_s__no_stylesheets__skip_migration = UserSNoStylesheetsSkipMigration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_s__no_stylesheets__skip_migration_params
      params.fetch(:user_s__no_stylesheets__skip_migration, {})
    end
end
