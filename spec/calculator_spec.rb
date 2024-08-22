# calculator_spec.rb

require_relative 'calculator'

RSpec.describe Calculator do
    let(:calculator) {Calculator.new}

    describe "add" do
        it "sums two numbers" do
            result = calculator.add(2, 3)
            expect(result).to eq(5)
        end 

    end 

    describe "#subtract" do
        it "subtracts two numbers" do
            result = calculator.subtract(5, 3)
            expect(result).to eq(2)
        end
    end

    describe "#multiply" do
        it "multiplies two numbers" do
            result = calculator.multiply(4, 3)
            expect(result).to eq(12)
        end 
    end

    describe "#divide" do
         it "divides dos numeros" do 
            result = calculator.divide(10, 2)
            expect(result).to eq(5)
         end 
        
         it "raices an error when dividing by zero" do
            expect {calculator.divide(10, 0)}.to raise_error(ZeroDivisionError)

         end 
        end 
    end     