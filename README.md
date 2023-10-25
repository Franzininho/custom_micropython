# Micropython para as placas Franzininho

## Passos para gerar os binários e configurar o Docker no Visual Studio.

### Pré requisitos

* Ter o docker instalado na máquina
* Visual Studio Code
* Instalar as extensões do Visual Studio Code: Remote Containers e Remote Development

### Clonar o projeto
```shell
git clone https://github.com/Franzininho/custom_micropython.git
```

## Abra a pasta com o Visual Studio Code

### Nas configurações do Visual Studio Code procure por: Remote-Container: Reopen Folder in Container
Ao fazer isso o Visual Studio vai abrir o container já com IDF instalado.


Com o container aberto agora é só abrir o terminal do Visual Studio Code(esse terminal é o terminal de dentro do container) e seguir os passos abaixo para gerar os binários do micropython 

###  Setup dos submódulos
```shell
git submodule init
git submodule update --recursive
cd micropython
git submodule update --init lib/axtls
git submodule update --init lib/berkeley-db-1.xx
cd ..
```

### Fazer o build da mpy-cross do micropython

```shell
cd ./micropython
make -C mpy-cross V=1 clean all
```

### * Comando para gerar os binários do micropython para a Franzininho

#### Na raiz do projeto digite: ####

```shell
./build.sh
```

### Depois de concluída a compilação, os binários estarão disponíveis na pasta build na raiz do projeto ###

##Versão atual do micropyhton: 1.21

