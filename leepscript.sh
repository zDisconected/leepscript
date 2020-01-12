#!/system/bin/sh

clear 
apt install python3
apt install python2
apt install python
apt install git
else
apt-get install python3
apt-get install python2
apt-get install python
apt-get install git
else
pkg install python3
pkg install python2
pkg install python
pkg install git

function _menu()
{
    echo ""
    echo -e "\e[1;31m"
    echo "Bienvenido a LeepScript"
    echo 
    echo "1) IPGeoLocation (Localizar a persona por ip)"
    echo "2) TBomb (Enviar miles de sms)"
    echo "3) FSociety (Script Hack de la serie MR.ROBOT)"
    echo
    echo "4) Salir"
    echo ""
    
    }

opc=0
until [ $opc -eq 9 ]
do
    case $opc in
       1)
         
          cd ..
          git clone https://github.com/maldevel/IPGeoLocation.git
          _menu
          ;;
       2)
        
          cd ..
          git clone https://github.com/TheSpeedX/TBomb.git
          _menu
          ;;
       3)
       
          cd ..
          git clone https://github.com/Manisso/fsociety.git
          _menu
          ;;

       *)
    
          _menu
          ;;

     esac 
     read opc
done