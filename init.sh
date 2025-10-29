if [ "$pipeline" == "true" ] ;then 
    exit 
fi 

ansible-playbook -i inv-${env} -e ansible_user=ec2-user -e ansible_password=${ssh_pwd} -e COMP=${COMP} -e env=${env} -e pwd=${pwd} expense.yml #ExpenseApp@1


echo "Printing Environment Variables To Detect Secrets If Any"
env 