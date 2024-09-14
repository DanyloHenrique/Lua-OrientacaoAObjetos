-- classe Carro que herda de Veiculo
Carro = setmetatable({}, {__index = Veiculo})
Carro.__index = Veiculo

-- construtor Carro
function Carro:new(marca, modelo, ano, portas)
  local obj = Veiculo.new(self, marca, modelo, ano)
  obj.portas = portas
  return obj
end

-- metodos de carro
function Carro:status()
  Veiculo.status(self)
  print("Portas: ".. self.portas)
  print("----------------------------")
end

function Carro:abrirPortas(alvo)
    print("As portas do " .. self.marca .. " " .. self.modelo .. " estão abertas.")
end
  

return Carro