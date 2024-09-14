-- Lua utiliza tabelas como estrutura de dados basica para representar as demais

--definindo a classe
Veiculo = {}

-- construtor
function Veiculo:new(marca, modelo, ano)
  local obj = {marca = marca, modelo = modelo,  ano = ano}
  -- metatabela obrigatoria para OOP
  -- forma indicada para conseguir trabalhar a OOP
  setmetatable(obj, self) -- self é como se fosse o this
  self.__index = self -- força procurar o método do objeto, caso não ache vai procurar na classe
  return obj
end

-- Métodos da classe
function Veiculo:status()
  print("-----------STATUS-----------")
  print("Marca: " .. self.marca)
  print("Modelo: " .. self.modelo)
  print("Ano: " .. self.ano)
end


function Veiculo:acelerar()
  print("Acelerandooo")
end

-- Criando a instância da Classe Pessoa
local _veiculo = Veiculo:new("Fiat", "Palio", 2020)

-- Chamar o método mandarOi do objeto Danylo
_veiculo:acelerar()


