#!/bin/bash

export cogwheel_repo_location=/root
export properties_file_path=/root/properties
export kubeconfig_path=/root/.kube/config
export cleanup=true
export run_scale_test=true
export workload_image="ravielluri/image:nodevertical"
export capture_prometheus_db=true
export prometheus_db_path=/root
