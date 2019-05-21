# cogwheel
OpenShift Scale Tests/Workloads Orchestrator

### Dependencies
```
- Git
- Latest OC client
```

### Run
```
$ git clone https://github.com/chaitanyaenr/cogwheel.git
$ cd cogwheel
$ cp cogwheel_env.example.sh cogwheel_env.sh 
```

Options supported by cogwheel:
```
$ ./cogwheel.sh help

Usage: source cogwheel_env.sh; ./cogwheel.sh

Options supported:
	 run_scale_test=str,            str=true or false
	 scale_test_image=str,          str=Image to run
	 cleanup=str,                   str=true or false
	 kubeconfig_path=str,           str=path to the kubeconfig
	 cogwheel_repo_location=str,    str=path to the cogwheel repo
	 properties_file_path=str,      str=path to the properties file
	 capture_prometheus_db=str,     str=true or false
	 prometheus_db_path=str,        str=path to export the prometheus DB
	 pbench=str,                    str=true or false
	 results_server=str,            str=server to copy the results captured including promtheus
```

Workload Images and OCP clusters supported:

Workload Image | Description | Privileged | Scale Cluster | Starter | OSD |
----- | ----------- | ---------- | ------------- | ------- | --- |
BYO ( Bring your own workload ) | Any image which works on OCP cluster | True/False ( False is preferred for it to work on Starter and OSD clusters | NA | NA | NA |

Create a properties file ( key=value format ), this gets converted to a configmap for the workload. For nodevertical, it's just JOB=nodevertical. Set the environment variables in cogwheel_env.sh, source it and run cogwheel:
```
$ source cogwheel_env.sh
$ ./cogwheel.sh
```
