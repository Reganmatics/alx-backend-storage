```Back-end``` ```NoSQL``` ```MongoDB```

# Requirements
# MongoDB Command File
- All your files will be interpreted/compiled on Ubuntu 18.04 LTS using ```MongoDB``` (version 4.2)
- All your files should end with a new line
- The first line of all your files should be a comment: ```// my comment```
- A ```README.md``` file, at the root of the folder of the project, is mandatory
- The length of your files will be tested using ```wc```

### When working with docker container, the command ```sudo systemctl start mongod``` throws the error ```System has not been booted with systemd as init system (PID 1). Can't operate.```

| Systemd command | Sysvinit command |
| -------------- | ---------------- |
| systemctl start service_name | service service_name start |
| systemctl stop service_name | service service_name stop |
| systemctl restart service_name | service service_name restart |
| systemctl status service_name | service service_name status |
| systemctl enable service_name | chkconfig service_name on |
| systemctl disable service_name | chkconfig service_name off |
