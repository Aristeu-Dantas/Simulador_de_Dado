#Simulando o uso de dados de 1 até 6
require 'securerandom'

#Definindo parametros
class SimuladorDeDados
  def initialize
    @valor_minimo = 1
    @valor_maximo = 6
    @mensagem = 'Você gostaria de gerar um valor para os dados?'
  end

  #Recebendo comando
  def iniciar
    resposta = gets.chomp.downcase
    begin
      #Inicializando
      if resposta == 'sim'
        gerar_valor_do_dado
      elsif
        puts 'Volte sempre!'
      else
        puts 'Digite sim ou não'
      end
    rescue StandError
      puts 'Ocorreu um erro em sua resposta'
    end
  end

  def gerar_valor_do_dado
    puts SecureRandom.random_number(@valor_maximo - @valor_minimo + 1) + valor_minimo
  end
end

simulador = SimuladorDeDados.new
puts simulador.mensagem
simulador.iniciar
