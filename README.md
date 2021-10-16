# jenkins
## Utilidades
###  Codigo fuente del grupo
    git clone https://github.com/jleetutorial/maven-project
### Grupo de facebook
    https://www.facebook.com/groups/1911219079195863/


## Que es integracion continua?
   Es la practica de la fusion entre el trabajo de desarrollo con la rama principal constantemente.

   * Desarrolladores requieren integrar codigo dentro de un repositorio varias veces al dia.
   * El sistema de control de versiones es monitoreado. Cuando un cambio es detectado, el      sistema automaticamnete construira y ejecutara tu aplicacion.
   * Si la construccion no es correcta, el sistema automaticamente notificara a los desarrolladores.

## Porque necesitamos Integracion Continua?
* Deteccion de problemas o bugs, tan pronto como sea posible, durante el desarrollo del proyecto.

* Dado que el codigo base completo es integrado, construido y ejecutado constantemente, los potenciales bugs y errores son descubiertos tempranamente en el ciclo de vida, lo cual resulta en un software de mejor calidad.

## Diferentes etapas en adoptar Integracion Continua
* Etapa 1:
    - No hay servidores build
    - No se les exige a los desarrolladores que registren sus cambios continuamnete.
    - Cambios son integrados y ejecutados manualmente
    - Puede causar retrasos

* Etapa 2:
    -  Builds automatizados son programados de manera regular.
    -  Build script compilaria la aplicacion y ejecutaria un grupo de prebas automatizadas.
    - Ahora los Desarrolladores registran sus cambios de manera regular.
    - El servidor Build alertara a los miembros del equipo en caso de conflicto

* Etapa 3:
    - El servidor Build esta configurado para comenzar una compilacion cada vez que crea un codigo nuevo en el repositorio central.
    - Compilaciones defectuosas son tratadas como un roblema de alta prioridad y se solucionan rapidamente.

* Etapa 4:
    - Calidad de codigo automatizada y metricas de cobertura de coidgo son ahora ejecutadas junto con pruebas unitarias para evaluar continuamnete la calidad del codigo.

    - Esta aumentadndo la cobertura de codigo?
    Tenemos cada vez menos errores de compilacion?

* Etapa 5:
    - Implemenatación automatizada



## Diferencia entre Integración continua, Entrega Continua, Implementación continua
    Integración continua:
        Es la practica de la fusion entre el trabajo de desarrollo con la rama principal constantemente.
    
    Entrega Continua:
        Es la entre constante de codigo a un entorno una vez que el codigo este listo para ser enviado. Esto podria ser la puesta en escena o producción. La idea es que el producto se entregue a una base de usuarios, quienes pueden ser aseguradores de calidad o clientes para revisión e inspección.

    Implementación Continua:
        La implementación continua o integración de codigo para producción tan pronto como este listo.

## Como impelmentar la integración continua?
    Jenkins - No hosted solutions

    La Integración Continua e suna forma de pensar:
        - La reparación de compilaciones defetuosas debe tratarse como una problematica de alta prioridad para todos los miembros del equipo.

        - El proceso de implementación debe ser automatico sin pasos manuales involucrados
        - Todos los miembros del equipo deben enfocarse en contribuir a pruebas de alta calidad.

## Que es Jenkins
    - Jenkins es un servidor de integracion continua y construccion.
    - Se usa para construir proyectos de desarrollo de software de manera manual, periodica o automatica.
    - Es una herramienta de integracion continua de codigo abierto escrita en Java
    - Es utiizada por equipos de varios tamaños, para proyectos con varios lenguajes.

## Arquitectura Master and Slave de Jenkins
* Master
    - Gestiona builds jobs
    - Destina build a los slaves para la ejecucion del job real.
    - Monitorea los slaves y registra los resultados del build
    - Puede ejecutar build jobs directamente

* Slave
    Ejecutar build jobs enviados por el master

* Job/Project
    Tareas ejecutables que son controladas o monitoreadas por Jenkins
* Slave/Node
    - Slaves son computadoras establecidas para construir projectos para un master
    - Jenkins ejecuta un programa por separado llamado "slave agent" en los slaves
    - Cuando los slave estan registrados a un master, el master empieza a distribuir los trabajos a los slaves
    - Node se utilizara para referirse a todas las maquinas que son parte de una malla Jenkins, slaves y master.

* Executor
    - Executor es una rama de builds a ser ejecutados en un node en paralelo.
    - Un Node puede tener uno o mas executors
* Build
    - Es un resultado de uno de los proyectos.
* Plugin
    Es una pieza de software que amplia la funcionalidad fundamnetal del servidor central de Jenkins.

## Sintaxis de Cron

*  *  *  *  *
|  |  |  |  |___    dia de la semana(0-6)(Domingo = 0)
|  |  |  |_______   mes(1-12)   
|  |  |__________   dia del mes(1-31)
|  |_____________   hora(0-23)
|________________   minute(0-59)

    *       todos los valores validos
    M-N     un rango de valores
    A,B,Z   enumera valores multiples 

0 0 * * *       todos los días a la media noche
0 2-4 * * *     2 am, 3 am y 4 am todos los días