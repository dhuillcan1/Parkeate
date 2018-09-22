require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { apellido1: @user.apellido1, apellido2: @user.apellido2, contraseña1: @user.contraseña1, contraseña2: @user.contraseña2, correo1: @user.correo1, correo2: @user.correo2, id_tipo_documento: @user.id_tipo_documento, id_tipo_usuario: @user.id_tipo_usuario, nombre: @user.nombre, numero_documento: @user.numero_documento, telefono: @user.telefono } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { apellido1: @user.apellido1, apellido2: @user.apellido2, contraseña1: @user.contraseña1, contraseña2: @user.contraseña2, correo1: @user.correo1, correo2: @user.correo2, id_tipo_documento: @user.id_tipo_documento, id_tipo_usuario: @user.id_tipo_usuario, nombre: @user.nombre, numero_documento: @user.numero_documento, telefono: @user.telefono } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
