#Simulando o uso de dados de 1 até 6
import random

#Definindo parametros
class SimuladorDeDado:
    def __init__(self):
        self.valor_minimo: 1
        self.valor_maximo: 6
        self.mensagem = 'Você gostaria de gerar um valor para os dados?'

#Recebendo comando
    def Iniciar(self):
        resposta = input(self.mensagem)
        try:
#Inicializando            
            if resposta == 'sim':
                self.GerarValorDoDado()
            elif resposta == 'não':
                print('Volte sempre!')
            else:
                print('Digite sim ou não')
        except:
            print('Ocorreu um erro em sua resposta')


    def GerarValorDoDado(self):
        print(random.randint(self.valor_minimo,self.valor_maximo))

simulador = SimuladorDeDado()
simulador.Iniciar()
