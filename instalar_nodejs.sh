#!/bin/zsh


if [ $1 ]
then
    if [ $1 = -h ]
    then

        echo -e "Un pequeño script creado como solución a una forma de instalar nodejs rápidamente y sin la necesidad de abrir un navegador.\n\n"
        echo -e "Modo de Uso:  ./instalar_nodejs.sh [Opciones]\n"
        echo -e "[Opciones]\n"
        echo -e "--lts"
        echo -e "--current"
        echo -e '\nRecuerde que si instala nodeJS atravez de este script, reemplazara cualquier version que tenga instalada en su equipo.'
        echo -e 'Este Instalador, Descarga e Instala Node.js desde la pagina oficial de nodejs.org\n'
    elif [ $1 = --help ]
    then
        echo -e "Un pequeño script creado como solución a una forma de instalar nodejs rápidamente y sin la necesidad de abrir un navegador.\n\n"
        echo -e "Modo de Uso:  ./instalar_nodejs.sh [Opciones]\n"
        echo -e "[Opciones]\n"
        echo -e "--lts"
        echo -e "--current"
        echo -e '\nRecuerde que si instala nodeJS atravez de este script, reemplazara cualquier version que tenga instalada en su equipo.'
        echo -e 'Este Instalador, Descarga e Instala Node.js desde la pagina oficial de nodejs.org\n'
    else

        if [ $1 = --lts ]
        then
        echo "Instalando Version LTS {v14.17.0}"
            wget 'https://nodejs.org/dist/v14.17.0/node-v14.17.0-linux-x64.tar.xz'
            tar -xvf node-v14.17.0-linux-x64.tar.xz
            rm -f node-v14.17.0-linux-x64.tar.xz
            sudo cp -rf node-v14.17.0-linux-x64/* /usr/
        rm -rf  node-v14.17.0-linux-x64
        fi

        if [ $1 = --current ]
        then
            echo "Instalando Version Current {v16.3.0}"
            wget 'https://nodejs.org/dist/v14.17.0/node-v16.3.0-linux-x64.tar.xz'
            tar -xvf node-v16.3.0-linux-x64.tar.xz
            rm -f node-v16.3.0-linux-x64.tar.xz
            sudo cp -r node-v16.3.0-linux-x64/* /usr/
        rm -rf node-v16.3.0-linux-x64
        fi
    fi

else
    echo "Seleccionar version:"
    echo " 1· LTS {v14.17.0}"
    echo " 2· Current {v16.3.0}"
    read i
    echo $i
    if [ $i ]
    then
        if [ $i = 1 ]
        then
            echo "Instalando Version LTS {v14.17.0}"
            wget 'https://nodejs.org/dist/v14.17.0/node-v14.17.0-linux-x64.tar.xz'
            tar -xvf node-v14.17.0-linux-x64.tar.xz
            sudo cp -rf node-v14.17.0-linux-x64/* /usr/
            rm -rf  node-v14.17.0-linux-x64
        fi
        if [ $i = 2 ]
        then
            echo "Instalando Version Current {v16.3.0}"
            wget 'https://nodejs.org/dist/v14.17.0/node-v16.3.0-linux-x64.tar.xz'
            tar -xvf node-v16.3.0-linux-x64.tar.xz
            rm -f node-v16.3.0-linux-x64.tar.xz
            sudo cp -r node-v16.3.0-linux-x64/* /usr/
            rm -rf node-v16.3.0-linux-x64
        fi
    else
        echo "No se instalara o actualizara NodeJS"
    fi
fi
