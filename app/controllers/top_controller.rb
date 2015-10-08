class TopController < ApplicationController

  def index
      @students = Student.limit(20)
      @workers = Worker.limit(20)
  end

  def search
      # @students = Student.where('introduce LIKE(?)', "%#{params[:keyword]}%").where(sex: params[:sex]).where(industry_interested: params[:industry]).limit(20)
      # @workers = Worker.where('introduce LIKE(?)', "%#{params[:keyword]}%").where(sex: params[:sex]).where(industry: params[:industry]).limit(20)

      #keywordがOR検索
      # @students = Student.where(["introduce LIKE(?) or sex = ? or age = ? or area = ? or university = ? or industry_interested = ? or job_category_interested = ?", "%#{params[:keyword]}%", params[:sex], params[:age], params[:area], params[:university], params[:industry], params[:job_category]]).limit(20)
      # @workers = Worker.where(["introduce LIKE(?) or sex = ? or age = ? or area = ? or graduated_university = ? or industry = ? or job_category = ?", "%#{params[:keyword]}%", params[:sex], params[:age], params[:area], params[:university], params[:industry], params[:job_category]]).limit(20)

      #KeywordがAND検索
      @students = Student.where(["sex = ? or age = ? or area = ? or university = ? or industry_interested = ? or job_category_interested = ?", params[:sex], params[:age], params[:area], params[:university], params[:industry], params[:job_category]]).where('introduce LIKE(?)', "%#{params[:keyword]}%").limit(20)
      @workers = Worker.where(["sex = ? or age = ? or area = ? or graduated_university = ? or industry = ? or job_category = ?", params[:sex], params[:age], params[:area], params[:university], params[:industry], params[:job_category]]).where('introduce LIKE(?)', "%#{params[:keyword]}%").limit(20)

    end


end

