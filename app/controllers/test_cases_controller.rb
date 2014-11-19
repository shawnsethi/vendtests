class TestCasesController < ApplicationController
  
  def new
    @test_case = TestCase.new
  end
  
  def create
    @test_case = TestCase.new(params[:test_case])
    if @test_case.save
      redirect_to @test_case
    else
      render 'new'
    end
  end
  
  def index
    @test_cases = TestCase.all
  end
  
  def show
    @test_case = TestCase.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json
    end
  end
  
  
  
  def edit
    @test_case = TestCase.find(params[:id])
  end
  
  
  
  def update
    @test_case = TestCase.find(params[:id])
    
    if @test_case.update_attributes(params[:test_case])
      redirect_to @test_case
    else
      render 'edit'
    end
  end
  
  
  
  def destroy
    @test_case = TestCase.find(params[:id])
    @test_case.destroy
    redirect_to test_cases_path
  end
  
  
  
end
