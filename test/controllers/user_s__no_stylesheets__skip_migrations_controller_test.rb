require 'test_helper'

class UserSNoStylesheetsSkipMigrationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_s__no_stylesheets__skip_migration = user_s__no_stylesheets__skip_migrations(:one)
  end

  test "should get index" do
    get user_s__no_stylesheets__skip_migrations_url
    assert_response :success
  end

  test "should get new" do
    get new_user_s__no_stylesheets__skip_migration_url
    assert_response :success
  end

  test "should create user_s__no_stylesheets__skip_migration" do
    assert_difference('UserSNoStylesheetsSkipMigration.count') do
      post user_s__no_stylesheets__skip_migrations_url, params: { user_s__no_stylesheets__skip_migration: {  } }
    end

    assert_redirected_to user_s__no_stylesheets__skip_migration_url(UserSNoStylesheetsSkipMigration.last)
  end

  test "should show user_s__no_stylesheets__skip_migration" do
    get user_s__no_stylesheets__skip_migration_url(@user_s__no_stylesheets__skip_migration)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_s__no_stylesheets__skip_migration_url(@user_s__no_stylesheets__skip_migration)
    assert_response :success
  end

  test "should update user_s__no_stylesheets__skip_migration" do
    patch user_s__no_stylesheets__skip_migration_url(@user_s__no_stylesheets__skip_migration), params: { user_s__no_stylesheets__skip_migration: {  } }
    assert_redirected_to user_s__no_stylesheets__skip_migration_url(@user_s__no_stylesheets__skip_migration)
  end

  test "should destroy user_s__no_stylesheets__skip_migration" do
    assert_difference('UserSNoStylesheetsSkipMigration.count', -1) do
      delete user_s__no_stylesheets__skip_migration_url(@user_s__no_stylesheets__skip_migration)
    end

    assert_redirected_to user_s__no_stylesheets__skip_migrations_url
  end
end
