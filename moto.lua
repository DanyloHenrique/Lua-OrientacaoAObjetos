-- classe Carro que herda de Veiculo
Moto = setmetatable({}, {__index = Veiculo})
Moto.__index = Veiculo

-- construtor Carro
function Moto:new(marca, modelo, ano)
  local obj = Veiculo.new(self, marca, modelo, ano)
  return obj
end

-- metodos de carro

function Moto:empinar(alvo)
    print("A ".. self.modelo .. " está empinando.")
end
  

return Moto