

Exemplo Como executar o smtp fake via docker no boot2docker.

  #Construir a imagem do smtp fake
  docker build -t smtpfake .
  
  #Criar o volume dos emails enviados entre o host e a máquina
  docker create -v //c/Users/bernardo.joaquim/fake-smtp-docker/tmp:/tmp/spool_mail --name spool_email smtpfake
  
  #Criar o container com base na imagem smtpfake apontando para o volume spool.
  winpty docker run  --volumes-from spool_email -it -p 2525:2525 smtpfake