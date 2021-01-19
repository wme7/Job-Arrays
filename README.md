# Job-Arrays
A minimalist bash script for submitting job-arrays on Torque/PBS and Slurm workload managers.

The main idea behind this script is to provide simple manner to submit a Job Array and wait for the completition of the bacth and then return control to a Python/Matlab script.

## How to use?
* `step one: set up your *.pbs script.`
This is the [job array submition script](/src/arrayTest.pbs). The parameters in it might vary depending on the PBS's or Slurm's version and costumizations produced by the Manager of the cluster.
* `step two: create your array of input files.`
Here, I use the [create_inputFiles.sh](/src/create_inputFiles.sh) to build example input file for each subprocess
* `step three: submit the job.` using a simple [bash script](/src/submit_JobArray.sh) we submit the job array, capture the job-ID, and monitor the completition of the entire batch. One it finishes, the script returns control to --wherever-- it was called.

Happy codding !

Manuel A. Diaz