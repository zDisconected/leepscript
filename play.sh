#!/system/bin/sh

clear 
apt install python3
apt install python2
apt install python
apt install git
apt install git3
chmod +x leep
cp leep /data/data/com.termux/files/usr/bin
rm leep

clear

echo -e "\e[1;32m"
echo "Ya Tienes Todo Instalado"
echo "Por Favor para continuar pulsa ENTER"
read var
if [ var = *enter* ]
then
    
    echo "enter pressed"
    else
        
        echo $var 
    fi 
    clear

function _menu()
{
    echo ""
    echo -e "\e[1;31m"
    echo "Bienvenido a LeepScript"
    echo 
    echo "1) IPGeoLocation (Localizar a persona por ip)"
    echo "2) TBomb (Enviar miles de sms)"
    echo "3) FSociety (Script Hack de la serie MR.ROBOT)"
    echo "4) ScriptHackGmailRS (Script Hack de gmails)"
    echo 
    echo "5) Salir"
    echo ""
    
    }

opc=0
until [ "$opc" -eq "9" ]
do
    case $opc in
       1)
         
          cd ..
          git clone https://github.com/maldevel/IPGeoLocation.git
          cd IPGeoLocation
          clear
          chmod +x *
          pip3 install -r requirements.txt --user
          python ipgeolocation.py
          ;;
       2)
        
          cd ..
          git clone https://github.com/TheSpeedX/TBomb.git
          cd TBomb
          clear
          chmod +x *
          pip3 install -r requirements.txt -user
          bash TBomb.sh
          ;;
       3)
       
          cd ..
          git clone https://github.com/Manisso/fsociety.git
          clear
          cd fsociety
          clear
          bash install.sh
          python2 fsociety.py
          _menu
          ;;
          
       4)
       
          cd..
          git clone https://github.com/RealStrategy/ScriptHackGmailRS.git
          clear
          cd ScriptHackGmailRS
          clear
          bash gmailrs.sh
          _menu
          ;;

       5)
         
          rm play.sh
          cd ..
          rm -r leepscript
          git clone https://github.com/zDisconected/leepscript.git
          leep
       6)
    
          cd ..
          clear
          cd ..
          exit
          _menu
          ;;


       *)
    
          _menu
          ;;

     esac 
     read opc
done
