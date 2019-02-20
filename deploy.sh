#!/bin/bash

set -e

BASEDIR="${BASEDIR:-https://raw.githubusercontent.com/bcrochet/coredns-deploy/master}"

oc apply -f ${BASEDIR}/namespace.yaml
oc apply -f ${BASEDIR}/configmap.yaml
oc apply -f ${BASEDIR}/service.yaml
oc apply -f ${BASEDIR}/serviceaccount.yaml 
oc apply -f ${BASEDIR}/clusterrole.yaml
oc apply -f ${BASEDIR}/clusterrolebinding.yaml
oc apply -f ${BASEDIR}/pod.yaml
