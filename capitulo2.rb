=begin
puts "teste"
=end

idade = 21
ano = 2018
habitantes = 7_000_000_000
peso = 75.5

nome_nulo = nil
nome_completo = "Paulo Henrique"
nome_com_aspa = "Joana d'Arc"
texto_bem_vindo = "Seja bem vinda(o): "

puts texto_bem_vindo + nome_completo
puts "Seja bem vinda(o): #{nome_completo}"



if idade > 18
    puts "Maior de idade"
end

puts "Maior de idade" if idade > 21

#MESMA FUNÇÃO
puts "#{nome_nulo}" if not nome_nulo.nil?
puts "#{nome_nulo}" unless nome_nulo.nil?
    
