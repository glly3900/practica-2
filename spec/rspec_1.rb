require "ruby.rb"

describe "#intro" do

     it "Debe estar definida" do 

       expect{intro([1,2,3,4])}.not_to raise_error
    end 

   it "retorna la suma del array" do
    expect(intro ([2,6,10,5,2])).to eq(25)
    expect(intro ([15,6,10,19])).to eq(50)
    expect(intro ([15,6,4,5])).to eq(30)

  end 

   it "retorna 0 si el array esta vacio" do 
    expect(intro([])).to eq(0)
   end 

   it "retorna el valor del unico elemento array" do
    expect(intro([5])).to eq(5)
   end
end 

describe "#nombre" do

  it "Debe iniciar con Mayuscula y concatenada la cadena con la palabra  hello" do 
    expect(nombre("Pedro")).to eq("hello Pedro")
    expect(nombre("Juan")).to eq("hello Juan")
    expect(nombre("Maria")).to eq("hello Maria")

  end 

  it "No trabaja con un string vacia" do
    expect(nombre("")).to eq("vacio")

  end 
end

describe "#datos?" do
    it "retorna true si el tamaño del array es > 0" do
        expect(datos?([2,1,5,6])).to be true
    end 

    it "retorna false si el tamaño del array es <= 0" do
        expect(datos?([])).to be false
    end 

end 
