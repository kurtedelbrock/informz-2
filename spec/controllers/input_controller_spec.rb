require 'rails_helper'

RSpec.describe InputController, type: :controller do

  describe "GET #check" do
    context 'with a non-integer number' do
      it "should return a 404" do
        get :check, number: "3.14"
        expect(response).to have_http_status(404)
      end
    end
    
    context 'with an integer number' do
      it 'should not return a 404' do
        get :check, number: '3'
        expect(response).not_to have_http_status(404)
      end
      
      context 'with a number divisible by 3 and 5' do
        it 'should return FizzBuzz as plaintext' do
          get :check, number: '15'
          expect(response.body).to eq("FizzBuzz")
        end
      end
      
    end
    
    context 'routes' do
      it 'should be accessible at /input/check/:number' do
        expect(get: '/input/check/4').to route_to(controller: 'input', action: 'check', number: '4')
      end
    end
    
  end

end
