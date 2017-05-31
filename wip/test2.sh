   echo  "Select the Employee Type:"
echo "1- Salaried Employee"
echo "2- Hourly Employee"
echo "3- Commission Employee"
echo -en "Enter Selection: "
read -n 1 choice

 case $choice in
         "1")  
    Type="Salaried Employee"
      break
      ;;
      "2") 
    Type = "Hourly Employee"
      break
      ;;
      "3") 
    Type ="Commission Employee"
      break
      ;;
          *) echo "Error: Please enter a choice between 1 - 7"
             echo -en "Hit [Enter] to return..."
             read
           ;;
  esac
