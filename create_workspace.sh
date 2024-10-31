#!/bin/bash
#Instala a última versão do Python
#sudo apt update
#sudo apt install python3

#Executa o código para criar a área de trabalho
python3 ./prog_script_1.py

#Executa a calculadora dentro da pasta do usuário
echo 'Você deseja executar o aplicativo de calculadora na sua área de trabalho? (y/n)'
read answer

if [[ "$answer" == "y" ]]; then
	echo Abrindo calculadora...
	U_FOLDER=$(ls -td workspace/*/ | head -1)
	python3 $U_FOLDER/calcul.py
	echo "Obrigado por testar este script. Sua área de trabalho será aberta a seguir."
	sleep 2
	explorer.exe workspace

elif [[ "$answer" == "n" ]]; then
	echo "Obrigado por testar esse script. Sua área de trabalho será aberta a seguir."
	sleep 2
	explorer.exe workspace

else
	echo "Erro ao ler resposta, obrigado por testar o script!"
fi


val=0
while [ $val == 0 ]
do
	echo "Deseja criar uma nova área de trabalho com um novo usuário? (y/n)"
	read answer
	if [[ "$answer" == "y" ]]; then
		python3 ./prog_script_1.py
	elif [[ "$answer" == "n" ]]; then
		val=1
		echo "Obrigado. Programa finalizado."
	else
        echo "Erro ao ler resposta, obrigado por testar o script!"
	val=1
	fi
done
