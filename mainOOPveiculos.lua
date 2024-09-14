--importando classes
local Veiculo = require("objetos.veiculo")
local Carro = require("objetos.carro")
local Moto = require("objetos.moto")


-- funcao para metodo verStatus
function verStatus(objVeiculo)
  objVeiculo:status()
end

--- funcao para executar os metodos de cada classe
function executarMetodos(carro, moto)
  verStatus(carro)
  verStatus(moto)
  
  if(carro) then
    carro:abrirPortas()
  end
  
  if(moto) then
    moto:empinar()
  end
end


-- instanciando objetos
local knicks = Carro:new("Nisssan", "Knicks", 2024, 4);
local cb450 = Moto:new("Honda", "Cb450", 1960);

--instancia de funcao para execução dos metodos de cada classe
executarMetodos(knicks, cb450)



  