## Programa simples que cria uma pasta para um user com alguns arquivos simulados

# Importa os componentes necessários
import os
import time

# Inicia o programa e verifica a resposta do usuário
val = 0

while val == 0:
	user = input("Digite seu nome de usuário para criar sua área de trabalho: (sem espaços e máximo de 6 caracteres):")

	if ' ' not in user and len(user) <= 6:
		print("Usuário criado com sucesso.")
		val = 1
	else:
		print("O nome de usuário não deve conter espaços ou possuir mais de 6 caracteres")

# Formata a pasta caso o usuário já exista
if os.path.isdir("./workspace/"+user):
	os.system("rm -R ./workspace/"+user)
else:
	print("...")

# Cria a pasta e os arquivos blank para o usuário
print('Criando seu espaço de trabalho...')
path = './workspace/' + user
os.makedirs(path)
with open("./workspace/"+user+"/App_A.txt", "w") as file:
	file.write("Exemplo de aplicação.")
with open("./workspace/"+user+"/App_B.txt", "w") as file:
	file.write("Exemplo de aplicação.")

# Copia o aplicativo da calculadora para o usuário
os.system("cp calcul.py ./workspace/"+user)

time.sleep(3)
print("Sucesso!")
