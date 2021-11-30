

class Loja
    def promocao_do_dia(dia)
        if dia == "quarta-feira"
            return "desconto de 10% em monitores"
        end
    end
end



Dado(/^que hoje é "([^"]*)"$/) do |dia|
    @hoje = dia
  end
  
  Quando("eu pergunto qual é a promoção do dia") do
    @valor_obtido = Loja.new.promocao_do_dia(@hoje)
  end
  
  Então(/^a resposta deve ser "([^"]*)"$/) do |promocao_esperada|
    expect(@valor_obtido).to eq( promocao_esperada)
  end