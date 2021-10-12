#!/usr/bin/bash

PATH=/local/softwareag/common/lib/ant/bin/:/local/softwareag/jvm/jvm/bin:$PATH

usage()
{
    echo -e "usage: build.sh [-a (all)]\n\t\t[-b (build)]\n\t\t[-c (checkpoint)]\n\t\t[-d (Checkpoint, Create Project, Variable Substitution, Deploy, Testing, Report)]\n\t\t[-o (Deploy Only)]\n\t\t[-p (Create Project)]\n\t\t[-r (Retrieve Deployment Report)]\n\t\t[-t (Perform Testing Scripts)]\n\t\t[-v (Variable Substitution)]\n\t\t\n\t\tThe following parameters must also be on the commmand line:\n\t\t-DprojectName= (Name of sprint to create)\n\t\t-DvsFile= (Variable Substitution filename)\n\t\t-DdeployerPassword= (deployer password)" >&2
    exit 1
}

error_exit() { 
    echo -e "$1" 1>&2; 
    exit 1 
}

wmall()
{
    echo "All"
    ant buildDeploy ${javaparams[@]}
} 

wmbuild()
{
    echo "Trigger build process"
    ant  build ${javaparams[@]} 
}

wmcreateProject()
{
    echo "Create Project"
    ant createProject ${javaparams[@]}
}

wmdeployOnly()
{
    echo "Trigger Deployment Only Process"
    ant deployOnly ${javaparams[@]}
}

wmvs()
{
    echo "Trigger Vaiable Substitution"
    ant variablesubstitution ${javaparams[@]}
}

wmdeploy()
{
    echo "Trigger deployment process"
    ant deploy ${javaparams[@]}
}

wmcheckpoint()
{
    echo "Creating Checkpoint for rollback"
    ant checkpoint ${javaparams[@]}
}

wmreport()
{
    echo "Retrieving Report for build"
    ant report ${javaparams[@]}
}
 
wmtesting()
{
    echo "Perform test scripts"
    ant testing ${javaparams[@]}
}

if [ "$*" == "" ]; then
    echo "No arguments provided"
    usage 
fi
argc=$#
argv=("$@")
javaparams=()
for (( j=0; j<argc; j++ )); do
  case $j in
    0) action=${argv[j]} ;;
    *) javaparams+=( ${argv[j]} );;
  esac
done
 
  case $action in
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
    -a) wmall
      ;;
    -b) wmbuild
      ;;
    -c) wmcheckpoint
      ;;
    -d) wmdeploy 
      ;;
    -o) wmdeployOnly
      ;;
    -p) wmcreateProject
      ;;
    -r) wmreport
      ;;
    -t) wmtesting
      ;;
    -v) wmvs
      ;;
    \?)
      usage      
      exit 1
      ;;
  esac
