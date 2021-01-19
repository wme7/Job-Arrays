#!/bin/bash

# Ref.: stackoverflow.com/questions/26173141/bash-script-that-allows-qsub-in-torque-to-wait-until-the-job-get-finished-prett

JOBID=$(qsub arrayTest.pbs)
while qstat $JOBID &> /dev/null; do
    sleep 5;
done;