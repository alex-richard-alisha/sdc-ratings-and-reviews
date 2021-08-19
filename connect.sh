case $1 in

postgres)
    scp -i SDC.pem ./init.sh ec2-user@ec2-3-16-15-10.us-east-2.compute.amazonaws.com:~/init.sh
    ssh -i SDC.pem ec2-user@ec2-3-16-15-10.us-east-2.compute.amazonaws.com
    ;;

node)
    scp -i SDC.pem ./init.sh ec2-user@ec2-3-144-8-8.us-east-2.compute.amazonaws.com:~/init.sh
    ssh -i SDC.pem ec2-user@ec2-3-144-8-8.us-east-2.compute.amazonaws.com
    ;;
esac
