# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    @user = login(params[:email], params[:password])
    if @user
      redirect_back_or_to events_path, success: 'ログインしました'
    else
      flash.now[:danger] = 'ログインに失敗しました'
      render :new
    end
  end

  def destroy
    logout
    redirect_to login_path
  end

  def dummy_twitter
    # ダミーのTwitter認証処理を記述
    flash[:notice] = "ダミーのTwitter認証に成功しました"
    redirect_to root_path
  end  
end
