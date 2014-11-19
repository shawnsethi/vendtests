class TestResultsController < ApplicationController
  
  def create
    @test_case = TestCase.find(params[:test_case_id])
    @test_result = @test_case.test_results.create(params[:test_result])
    redirect_to test_case_path(@test_case)
  end
  
  def destroy
    @test_case = TestCase.find(params[:test_case_id])
    @test_result = @test_case.test_results.find(params[:id])
    @test_result.destroy
    redirect_to test_case_path(@test_case)
  end
  
  
end
