#===========================================#
#               Impressão                   #
#===========================================#
#puts "A"
#print "A"
#p "A"

#===========================================#
#           Inserção de valores             #
#===========================================#
#nome = gets

#===========================================#
#         Concatenação de strings           #
#===========================================#
#[mesma instancia]
#mensagem = "A" << "B"
#puts mensagem

#[intancias diferentes]
#mensagem2 = "A" + "B"
#puts mensagem2

#===========================================#
#  Capitalize(primeira letra em maiusculo)  #
#===========================================#
#nome = "teste"

#puts nome.capitalize
#puts nome

#[mudança definitiva]
#puts nome.capitalize!
#puts nome

#===========================================#
#  Tipo da variavel                         #
#===========================================#

#puts 1.class #Fixnum
#puts "A".class #String
#puts 100_000_000_000_000_000.class #Bignum
#puts 1.0.class #Float

#===========================================#
#  Ranges                                   #
#===========================================#

#[inclui o ultimo]
#range1 = (1..3).to_a
#range2 = ('a'..'z').to_a
#puts range1
#puts range2

#[exclui o ultimo]
#range1 = (1...3).to_a
#range2 = ('a'...'z').to_a
#puts range1
#puts range2

#===========================================#
#  Simbolos                                 #
#===========================================#
#puts :simbolo
#puts :simbolo.class


#===========================================#
#  Estruturas de controle                   #
#===========================================#

#[IF]
var_bool =  3 > 2

# if(var_bool)
#     puts "Verdadeiro"
# end

#[IF..ELSE]
# if(var_bool)
#     puts "Verdadeiro"
# else
#     puts "Falso"
# end

#[IF..ELSEIF..ELSE]
# numero = 5

# if(numero == 5)
#     puts "5"
# elsif(numero > 5)
#     puts "Maior que 5"
# else
#     puts "Menor que 5"
# end

#===========================================#
#  Laço de repetição                        #
#===========================================#
#[FOR]

# for i in (1..3)
#     puts i
# end

# for i in ('a'..'z')
#     puts i
# end

#[WHILE]

# i = 0
# n = 5

# while i < n
#     puts i
#     i += 1
# end

#[DO..WHILE]

# a = 0
# b = 5

# begin
#     puts a
#     a += 1
# end while a < b

#[UNTIL]
# c = 0
# d = 5

# until c > d do
#     puts c
#     c += 1
# end

#[EACH]

# (0..5).each do |i|
#     puts i
# end

#===========================================#
#  EXPRESSÕES REGULARES                     #
#===========================================#
# texto1 = "A regular expression is a special sequence of characters"

# var = texto1 =~ /regular(.*)/
# puts var

# var = texto1 =~ /zz(.*)/
# puts var

#===========================================#
#  OPERADOR OU IGUAL                        #
#===========================================#
# nome1 = nil
# nome2 = ""

# nome1 ||= "Teste1"
# puts nome1

# nome2 ||= "Teste2"
# puts nome2

#===========================================#
#  MÉTODOS                                  #
#===========================================#
# operacao = Object.new()

# def operacao.Soma(a,b)
#     a + b
# end

# def operacao.Divisao(a = 1, b = 1)
#     a / b 
# end

# puts operacao.Soma(10, 30)
# puts operacao.Divisao(10,2)
# puts operacao.Divisao(10)
# puts operacao.send(:Divisao)

#===========================================#
#  CLASSES                                  #
#===========================================#
# class Operacao

#     def Soma(num_a = 1, num_b = 1)
#         num_a + num_b
#     end

# end

# op = Operacao.new()
# puts op.Soma(10,50)

#===========================================#
#  SOBRESCRITA                              #
#===========================================#
#[ self == this]

# class Fixnum

#     def +(numero)
#         self - numero
#     end

# end

# puts 10 + 20

#===========================================#
#  INITIALIZE (CONSTRUTOR)                  #
#===========================================#
# class Pessoa
#     def initialize(numero)
#         puts "Instanciando uma pessoa"
#     end
# end

# Pessoa.new(10)

#===========================================#
#  ATRIBUTOS                                #
#===========================================#
# class Pessoa
#     def initialize(nome)
#         @nome = nome
#     end

#     def nome
#         @nome
#     end

#     def nome=(new_nome)
#         @nome = new_nome
#     end

# end

# p = Pessoa.new("Paulo")
# puts p.nome
# p.nome = "Paulo Sampaio"
# puts p.nome

#===========================================#
#  COLEÇÕES                                 #
#===========================================#

# lista = Array.new
# lista << "BR-71"
# lista << "BR-75"
# lista << "FJ-79"

# puts lista.size
# puts lista[0]
# puts lista[2]

# lista2 = [1, 2, "string", :simbolo, /$regex^/]
# puts lista2

#===========================================#
#  MÚTIPLOS PARAMETROS                      #
#===========================================#
def soma(*numeros)
    sum = 0
    numeros.inject(0){|sum, x| sum + x}
end

lista_soma = [100, 200, 300]

soma(10,20,30)
soma(lista_soma)

