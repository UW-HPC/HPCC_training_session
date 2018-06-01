#!/bin/bash
## Specify name of the job, can be renamed to anything your want
#PBS -N hello_world

## Request 16 CPU cores on 1 nodes
#PBS -l nodes=1:ppn=16,mem=10gb,feature=16core,walltime=1:00:00


## Put both the stderr and stdout into a single file
#PBS -j oe

## Specify the working directory for this job
#PBS -d /usr/lusers/xsqin/hello_world

## Specify which group's node your would like to run your job on
#PBS -W group_list=hyak-stf
   
## Actual command that get executed
./test
