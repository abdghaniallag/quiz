int currentQuestion = 0;
int currentScore = 0;
bool currentThemeIsLight = false;
 
String get resultCommente {
  if (currentScore > 200) {
    return 'Amazing ';
  } else {
    if (currentScore > 110) {
      return 'Intermidiate ';
    } else {
      return 'Bad ';
    }
  }
}

final List<Map<String, Object>> questions = [
    {
        "id": 804,
        "questionText": "Suppose you have 3 containers running and out of these, you wish to access one of them. How do you access a running container?",
        "description": '',
        "answers": [
             {'score': 0 , "text": "\$ docker exec it <container id> bash"},
             {'score': 0 , "text": "\$ docker exec --it <container id>"},
             {'score': 20 , "text": "\$ docker exec -it <container id> bash"},
      ]
    },
    {
        "id": 396,
        "questionText": "What kind of replication is supported by the MySQL Server?",
        "description": '',
        "answers": [
             {'score': 0 , "text": "Multiple-master Replication"},
             {'score': 0 , "text": "MySQL Doesn't Support Replication"},
             {'score': 20 , "text": "Master To Slave Replication"},
             {'score': 0 , "text": "Single File Based Clustering"},
             {'score': 20 , "text": "Master to Master Replication"},
             ]
    },
    {
        "id": 871,
        "questionText": "Volume mapping maps the host server's directory into the Docker container. The data will remain in a safe and accessible place if you do which of the following?",
        "description": '',
        "answers": [
             {'score': 20 , "text": "re-create the container"},
             {'score': 20 , "text": "backup the container"},
             {'score': 0 , "text": "delete the container"},
             {'score': 20 , "text": "migrate the container"},
             {'score': 0 , "text": "break the container"},]
    },
    {
        "id": 23,
        "questionText": "What Linux command is the modern replacement for Telnet, and allows admins to connect to a specific network port?",
        "description": '',
        "answers": [
             {'score': 0 , "text": "dhclient"},
             {'score': 0 , "text": "ethtool"},
             {'score': 0 , "text": "ip"},
             {'score': 20 , "text": "ncat"},
        ] 
    },
    {
        "id": 891,
        "questionText": "Is it possible to build environment-agnostic systems with Docker?",
        "description": '',
        "answers": [
             {'score': 20 , "text": "True"},
             {'score': 0 , "text": "False"},
          ]
    },
    {
        "id": 567,
        "questionText": "Which of the following methods sends input to a script via a URL?",
        "description": '',
        "answers": [
             {'score': 20 , "text": "Get"},
             {'score': 0 , "text": "None"},
             {'score': 0 , "text": "Both"},
             {'score': 0 , "text": "Post"},
        ] 
    },
    {
        "id": 1033,
        "questionText": "How to scale a service to 7 replicas in Docker Swarm?",
        "description": '',
        "answers": [
             {'score': 20 , "text": "docker service scale name_of_your_service_here=7"},
             {'score': 0 , "text": "docker service replica-set name_of_your_service_here=7"},
             {'score': 0 , "text": "docker service update name_of_your_service_here=7"},
             {'score': 0 , "text": "docker service upgrade name_of_your_service_here=7"},
         ]
    },
    {
        "id": 1079,
        "questionText": "Which command do we need to execute to check the available repos in yum (CentOS)",
        "description": '',
        "answers": [
             {'score': 20 , "text": "yum repolist"},
             {'score': 0 , "text": "yum listrepo"},
             {'score': 0 , "text": "yum searchrepo"},
             {'score': 0 , "text": "yum reposearch"},
             {'score': 0 , "text": "yum reposhow"},
             {'score': 0 , "text": "yum showrepo"}
        ]
    },
    {
        "id": 733,
        "questionText": "How to watch rolling update status of \"frontend\" deployment until completion in Kubernetes?",
        "description": '',
        "answers": [
             {'score': 0 , "text": "kubectl rollout status --live deployment/frontend"},
             {'score': 20 , "text": "kubectl rollout status -w deployment/frontend"},
             {'score': 0 , "text": "kubectl rollout status -l deployment/frontend"},
             {'score': 0 , "text": "kubectl rollout status -s deployment/frontend"},
        ]
    },
    {
        "id": 162,
        "questionText": "Which HTML element is used to specify a header for a document or section?",
        "description": '',
        "answers": [
             {'score': 0 , "text": "<top>"},
             {'score': 20 , "text": "<header>"},
             {'score': 0 , "text": "<head>"},
             {'score': 0 , "text": "<section>"},
             ]
    },
    {
        "id": 997,
        "questionText": "Is JavaScript case-sensitive?",
        "description": '',
        "answers": [
             {'score': 20 , "text": "True"},
             {'score': 0 , "text": "False"},
        ] 
    },
    {
        "id": 1052,
        "questionText": "What does 'become: yes' mean in Ansible playbooks?",
        "description": '',
        "answers": [
             {'score': 0 , "text": "It means that the command must be retried until it succeeds"},
             {'score': 0 , "text": "It means that the service needs to be started once installed"},
             {'score': 0 , "text": "It means that the worker node should become a manager node"},
             {'score': 20 , "text": "It means that we would run all commands as root"},
             
             
        ] 
    },
    {
        "id": 552,
        "questionText": "Which function is used to get the ASCII value of a character in PHP ?",
        "description": '',
        "answers": [
             {'score': 0 , "text": "asc()"},
             {'score': 0 , "text": "ascii()"},
             {'score': 20 , "text": "chr( )"},
             {'score': 0 , "text": "val( )"},
        ]
             
         
    },
    {
        "id": 1065,
        "questionText": "What is the name of the Template Engine utilized by Laravel?",
        "description": '',
        "answers": [
             {'score': 20 , "text": "Blade"},
             {'score': 0 , "text": "Twig"},
             {'score': 0 , "text": "Pug"},
             {'score': 0 , "text": "Squirrelly"},
             
             
        ],
        }, 
    {
        "id": 1007,
        "questionText": "On which of the following systems can minikube be installed on? Select one.",
        "description": '',
        "answers": [
             {'score': 0 , "text": "Linux"},
             {'score': 0 , "text": "Windows"},
             {'score': 0 , "text": "macOS"},
             {'score': 20 , "text": "All of the mentioned"},
             
             

            ],},
    {
        "id": 565,
        "questionText": "Which of the following variables is not a predefined variable?",
        "description": '',
        "answers": [
             {'score': 0 , "text": "\$get"},
             {'score': 0 , "text": ".\$post"},
             {'score': 0 , "text": "\$request"},
             {'score': 20 , "text": "\$ask"},
             
             
        ], 
    },
    {
        "id": 1005,
        "questionText": "Which of the following are Kubernetes installation tools? Select all answers that apply.",
        "description": '',
        "answers": [
            {'score': 20 , "text": "kops"},
            {'score': 20 , "text": "kubeadm"},
            {'score': 20 , "text": "kubespray (formerly known as kargo)"},
            {'score': 0 , "text": "None of the mentioned"},
            
              
], 
    },
    {
        "id": 433,
        "questionText": "_____ is process of extracting previously non known valid and actionable information from large data to make crucial business and strategic decisions.",
        "description": '',
        "answers": [
            {'score': 0 , "text": "Data Management"},
            {'score': 0 , "text": "Meta Data"},
            {'score': 20 , "text": "Data Mining"},
            {'score': 0 , "text": "Database"},
            
            
        ], 
    },
    {
        "id": 1037,
        "questionText": "The default location of the ansible.cfg file is:",
        "description": '',
        "answers": [
             {'score': 0 , "text": "/etc/ansible.cfg"},
             {'score': 0 , "text": "/etc/ansible/ansible.conf"},
             {'score': 20 , "text": "/etc/ansible/ansible.cfg"},
             {'score': 0 , "text": "/home/ansible/ansible.cfg"},
              
            ], 
    },
    {
        "id": 446,
        "questionText": "All HTML Tags must be enclosed In?",
        "description": '',
        "answers": [
             {'score': 0 , "text": "? And !"},
             {'score': 0 , "text": "# And #"},
             {'score': 0 , "text": "{ And }"},
             {'score': 20 , "text": "<And >"},
             
             
],
       
    },  
];
