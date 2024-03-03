
#First we generate ssh key  : 
ssh-keygen -t rsa

# clone the github repo 
git clone git@github.com:mikdadkanbar/CI_CD_pipeline2.git]

#  enter the folder : 
cd CI_CD_pipeline2

#  run make all
make all

# run the python app 
python app.py

#test on the local host : 
curl -d '{
   "CHAS":{
      "0":0
   },
   "RM":{
      "0":6.575
   },
   "TAX":{
      "0":296.0
   },
   "PTRATIO":{
      "0":15.3
   },
   "B":{
      "0":396.9
   },
   "LSTAT":{
      "0":4.98
   }
}'\
     -H "Content-Type: application/json" \
     -X POST http://localhost:5000/predict


#create a webapp : 
az webapp up --name webappudacity2223 --resource-group rgudacity2 --sku F1 --runtime "python|3.9"

#test the prediction using the webapp : 

     chmod +x make_predict_azure_app.sh
./make_predict_azure_app.sh

#After creating a vm (  for the self hosted agen ) : 

ssh devopsagent@172.211.88.89

# After we connect to the vm : 

 sudo snap install docker
sudo groupadd docker
sudo usermod -aG docker $USER
exit



# to download and configure the agent :
curl -O  https://vstsagentpackage.azureedge.net/agent/3.234.0/vsts-agent-linux-x64-3.234.0.tar.gz
mkdir myagent && cd myagent
tar zxvf ../vsts-agent-linux-x64-3.236.0.tar.gz
 ./config.sh

#start the agen 
sudo ./svc.sh install
sudo ./svc.sh start


#prepare the agent :

sudo apt-get update
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa

sudo apt install python3.7
sudo apt-get install python3.7-venv
sudo apt-get install python3-pip
python3.7 --version
pip --version 

sudo apt-get install python3.7-distutils
sudo apt-get -y install zip


pip install pylint==2.13.7
pip show --files pylint
echo $PATH


export PATH=$HOME/.local/bin:$PATH
echo $PATH
which pylint
