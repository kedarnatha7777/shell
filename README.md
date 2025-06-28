# shell
# how can we call a shell script for the another script 
there are 2 ways 
  1.  ./<anotherfile>.sh  -> need excuite permission to the calling file 
  2.   source ./<anotherfile>.sh 

./<anotherfile> 
    pid is different 
    no changes in the current file 

source ./<anotherfile>.sh
    pid issaame 
    changes in the current file  after calling the another files by over-riding the values of the another script 
    variable values are changed here 
    because running script will take over the calling script insde to the current script 
    
