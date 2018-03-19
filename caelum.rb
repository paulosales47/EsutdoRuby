#===========================================#
#               IMPRESSÃO                   #
#===========================================#
#puts "A"
#print "A"
#p "A"

#===========================================#
#           INSERÇÃO DE VALORES             #
#===========================================#
#nome = gets

#===========================================#
#         CONCATENAÇÃO DE STRINGS           #
#===========================================#
#[mesma instancia]
#mensagem = "A" << "B"
#puts mensagem

#[intancias diferentes]
#mensagem2 = "A" + "B"
#puts mensagem2

#===========================================#
#  CAPITALIZE(PRIMEIRA LETRA EM MAIUSCULO)  #
#===========================================#
#nome = "teste"

#puts nome.capitalize
#puts nome

#[mudança definitiva]
#puts nome.capitalize!
#puts nome

#===========================================#
#  TIPO DA VARIAVEL                         #
#===========================================#

#puts 1.class #Fixnum
#puts "A".class #String
#puts 100_000_000_000_000_000.class #Bignum
#puts 1.0.class #Float

#===========================================#
#  RANGES                                   #
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
#  SIMBOLOS                                 #
#===========================================#
#puts :simbolo
#puts :simbolo.class


#===========================================#
#  ESTRUTURAS DE CONTROLE                   #
#===========================================#

#[IF]
#var_bool =  3 > 2

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
#  LAÇO DE REPETIÇÃO                        #
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
# def imprime(*numeros)
#     puts numeros
#     puts numeros.size
# end

# lista_soma = [10, 20, 30]

# imprime(10,20,30)
# imprime(lista_soma)


#===========================================#
#  HASHES                                   #
#===========================================#

# config = Hash.new
#     config[:porta] = 80
#     config["ssh"] = false
#     config["nome"] = "caelum.com.br"

# puts config.size
# puts config[:porta]


# def transfere(argumentos)
#     destino = argumentos[:destino]
#     data = argumentos[:data]
#     valor = argumentos[:valor]
#     puts argumentos
# end

#[PARAMETRO ATRAVÉS DE HASH]
# transfere({
#     destino: 'Paulo',
#     data: Time.now,
#     valor: 5000
# })

#===========================================#
#  PROGRAMAÇÃO FUNCIONAL 1                  #
#===========================================#
# class Banco

#     def initialize(contas)
#         @contas = contas
#     end

#     def status(&block)
#         saldo = 0
#         for conta in @contas
#             saldo += conta
            
#             if block_given?
#                 block.call(saldo)
#             end
#         end
#         saldo
#     end

#     def status2
#         saldo = 0
#         for conta in @contas
#             saldo += conta
            
#             if block_given?
#                 yield(saldo)
#             end
#         end
#         saldo
#     end

# end

# contas = [100,500,150,800,50]
# banco  = Banco.new(contas)

# #puts banco.status2
# banco.status2 {|saldo_parcial| puts saldo_parcial}

#===========================================#
#  PROGRAMAÇÃO FUNCIONAL 2                  #
#===========================================#

# funcionarios = ["guilherme", "sergio", "david"]

# funcionarios_upper = funcionarios.map do |nome|
#     nome.upcase
# end

# puts funcionarios_upper


#===========================================#
#  PROGRAMAÇÃO FUNCIONAL 3                  #
#===========================================#
# class Restaurante

#     def initialize(contas, nomes_clientes)
#         @contas = contas
#         @nomes_clientes = nomes_clientes
#     end

#     def relatorio
#         @contas.each do |conta|
#             yield(conta) 
#         end
#     end

#     def padroniza_nome
#         nomes = []
#         @nomes_clientes.each do |nome|
#             nomes << yield(nome)
#         end
#        nomes
#     end

# end

# contas = [75,15,20,30,5,150, 55, 60]
# nomes = ["Sofia", "Antonio", "carlos"]

# restaurante = Restaurante.new(contas, nomes)

#[CONTAS ACIMA DE 30]
# restaurante.relatorio do |conta|
#     puts conta if(conta > 30)
# end

#[CONTAS ACIMA DE 70]
# restaurante.relatorio do |conta|
#     puts conta if(conta > 70)
# end

#[APLICA DESCONTO DE 5%]
# restaurante.relatorio do |conta|
#     conta *= 0.95
#     puts conta 
# end

#[RETORNO]
# nomes_up = restaurante.padroniza_nome {|nome | nome.upcase }
# nomes_down = restaurante.padroniza_nome{|nome| nome.downcase}

# puts nomes_up
# puts nomes_down

#===========================================#
#  EXCEPTIONS                               #
#===========================================#

#[TRATANDO EXCEÇÃO]
# print "Informe um numero: "
# numero = gets.to_i

# begin
#     resultado = 100 / numero
# rescue
#     puts "O valor informado é invalido"
#     exit
# end

# puts "100 / #{numero} = #{resultado}"

#[LANÇANDO EXCEÇÃO]
# def verifica_idade(idade)
#     unless idade > 18
#         raise "Não permitido"
#     end
# end

# verifica_idade(17)

#[HERDANDO DE EXCEPTION]
# class IdadeInsuficienteException < Exception
# end

# def verifica_idade(idade)
#         raise IdadeInsuficienteException, 
#         "Não Permitido" unless idade > 18
# end

# begin
#     verifica_idade(50)
# rescue IdadeInsuficienteException => e
#     puts "Foi lançada a exception: #{e}"
# end

#[THROW E CATCH]
# def pesquisa_banco(nome)
#     if(nome.size < 10)
#         throw :nome_invalido, "Nome invalido, digite novamente"
#     end

#     "cliente #{nome}"
# end

# def executa_pesquisa(nome)
#     catch :nome_invalido do 
#         cliente = pesquisa_banco(nome)
#         return cliente
#     end
# end

# puts executa_pesquisa("Luiz")
# puts executa_pesquisa("Paulo Henrique")


#===========================================#
#  REQUIRE                                  #
#===========================================#

# require 'net/http'
# Net::HTTP.start('www.bbc.com', 80 ) do |http|
# print( http.get( '/' ).body )
# end

#===========================================#
#  SINGLETON                                #
#===========================================#

# class Pessoa
#     def fala
#         puts "oi"
#     end
# end

# p1 = Pessoa.new
# p2 = Pessoa.new

#[MÉTODO SINGLETON]
# def p1.anda
#     puts "Andando"
# end

# p1.fala
# p2.fala

# p1.anda
#[ERRO]
#p2.anda

#[MÉTODO DA CLASSE]
# class Pessoa
#     class << self
#         def corre
#             puts "Correndo"
#         end
#     end
# end

# Pessoa.corre

#[ERRO]
# p3 = Pessoa.new
# p3.corre

#===========================================#
#  CONVENÇÕES                               #
#===========================================#

#[MÉTODOS BOLEANOS COSTUMAM TERMINAR EM COM SINAL DE INTERROGAÇÃO (?)]
# def numero_positivo?(numero)
#     return false unless(numero > 0)
#     return true
# end

# puts numero_positivo?(-1)

#[MÉTODOS QUE TEM EFEITO COLATERAL (ALTERAM O ESTADO DO OBJETO, OU QUE COSTUMEM LANÇAR EXCEÇÕES) GERALMENTE TERMINAM COM ! (BANG)]
#[NA DEFINIÇÃO DE MÉTODOS PROCURE SEMPRE USAR PARÊNTESES]
#[NOME DE VARIÁVEIS E MÉTODOS SÃO SEMPRE MINUSCULOS E SEPARADOS POR _ (UNDERSCORE)]
#[VARIÁVEIS COM NOME MAIÚSCULO SÃO SEMPRE CONSTANTES]
#[PARA NOMES DE CLASSES UTILIZE AS REGRAS DE CamelCase]

#===========================================#
# HERANÇA E POLIMORFISMO                    #
#===========================================#
#[HERANÇA]
# class Animal
#     def come
#         "Comendo"
#     end
# end

# class Pato < Animal
#     def quack
#         "Quack"
#     end
# end

# pato = Pato.new
# puts pato.come

#[POLIMORFISMO]
# class Livro
#     def leitura
#         "Lendo um livro"
#     end
# end

# class Revista 
#     def leitura
#         "Lendo um revista"
#     end
# end

# class Leitor
#     def ler(livro)
#         livro.leitura
#     end
# end

# livro = Livro.new
# revista = Revista.new
# leitor = Leitor.new

# puts leitor.ler(livro)
# puts leitor.ler(revista)

#[SOBRESCRITA DE METODO DA CLASSE BASE E USO DO SUPER]
# class Alimento
#     def info
#         print "Alimento: "
#     end
# end

# class Arroz < Alimento
#     def info
#         super() #[ENVIA UMA MENSAGEM AO PAI DO OBJETO ATUAL, PEDINDO QUE INVOQUE UM MÉTODO DO MESMO NOME QUE O MÉTODO QUE INVOCA SUPER]
#         puts "Arroz"
#     end
# end

# arroz = Arroz.new
# arroz.info()

#===========================================#
# MÓDULOS (Semelhante a namespaces)         #
#===========================================#

# module Contas
    
#     class Corrente
#     end

#     class Poupanca
#     end

#     class Salario
#     end

# end

# conta_salario = Contas::Salario.new

#[ERRO]
#conta_corrente = Corrente.new

#[ACESSO A VALORES]
# module Calendario
#     HORA_ATUAL = Time.now
# end

# puts Calendario::HORA_ATUAL

#[MIXINS]
# module OparacoesBasicas

#     def soma(num_a, num_b)
#         num_a + num_b
#     end

#     def subtracao(num_a, num_b)
#         num_a - num_b
#     end

# end

# class Calculadora

#     include OparacoesBasicas

#     def Mutiplicacao(num_a, num_b)
#         num_a * num_b
#     end

# end

# calc = Calculadora.new
# puts calc.soma(10,20)

#[respond_to? RETORNA VERDADEIRO SE OBJ RESPONDE AO MÉTODO DADO]
#puts calc.respond_to? :subtracao


#===========================================#
# METAPROGRAMAÇÃO                           #
#===========================================#
# class Aluno
# end

# class Professor
#     def ensina(aluno)
#         def aluno.escreve
#             "Escrevendo"
#         end
#     end
# end

# aluno_a = Aluno.new
# puts aluno_a.respond_to? :escreve

# professor_a = Professor.new
# professor_a.ensina(aluno_a)
# puts aluno_a.respond_to? :escreve

#[attr_accessor (Gera métodos de acesso para atributo)]
# class Pessoa
#     attr_accessor :nome
# end

# p = Pessoa.new
# p.nome = "Paulo"
# puts p.nome


#[TESTE]
# class Restaurante

#     attr_reader :nome

#     def initialize(nome)
#         @nome = nome
#     end

#     def nome=(nome)
#         @nome = nome
#     end
    
#     def adiciona_pesquisa
#         def restaurante_cadastrado?(restaurantes)
#             restaurantes.each do |r|
#                 return true if(r.eql? @nome)
#             end
#             return false
#         end
#     end

# end


# lista_restaurantes = ["ABD", "AVA", "ABA", "CDB", "ABC"]
# lista_restaurantes2 = ["ABD", "AVA", "ABA", "CDB", "ABF", "CFG"]
# restaurante = Restaurante.new("ABC")

# restaurante.adiciona_pesquisa()
# puts restaurante.restaurante_cadastrado?(lista_restaurantes)
# puts restaurante.restaurante_cadastrado?(lista_restaurantes2)

#===========================================#
# MODIFICADORES DE VISIBILIDADE             #
#===========================================#
class Banco

    private
    
    def manipula_contas(*contas)
    end

    public 
    
    def exibe_extrato(cliente)
    end

end