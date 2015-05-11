class InputController < ApplicationController
  def check
    (render nothing: true, status: 404 and return) unless param_is_integer? params[:number]
    render plain: FizzBuzz.check(params[:number].to_i)
  end
  
  protected
  
  def param_is_integer?(param)
    param.to_f.modulo(1).zero?
  end
end
