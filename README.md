# HPC-SS24

# Protocol HPC

Name: Daniela Alvarado Villanueva

Immatriculation Number: 12436419

# Introduction
<p> My motivation for choosing this course comes from my curiosity to experience more branches of biology. I was fascinated with the Computer course from last semester and although I didn't understand everything, I encourage myself to dive deeper into learning more about coding. More than anything I am interested in the applications of computation in biology and its potential in genetics and ecology. Behavioral ecology and genomics have always fascinated me and I hope that by bringing the computational aspect I might learn a new side of it. From the course, I expect to learn more about scripts and managing data, in order to be able to write my own without doubting the process too much and making less mistakes. I also wish to understand more about how huge amounts of data are processed, which is where high performance computing comes in. I think is really important, especially for me personally, as I want to continue with my masters and hopefully a post doc, that I learn more about computational science, as I really feel that it sets one apart from the rest and can make you stand out more amongst a crowd of applicants for example. More than anything, I've learned to enjoy the aspect of problem solving, as I really feel like a new side of my brain is being unlocked. 


# Course content

1. [Github](#github)
2. [Markdown](#markdown)
3. [Linux](#linux)
4. [Transfer](#transfer)
5. [Scripting](#shellscript)
6. [Slurm](#slurm)
7. [AliScale](#aliscale)
8. [Container](#docker)
9. [BacGenStat](#bacgen)
10. [Discussion](#discussion)

## Github <a name="github"></a>
<p> Github is a version control tool used for collaborative work. Here, we encounter concepts like a repository, which can be viewed as a folder, or commit, which allows us to create versions of our work, and many others that allow us to share our work within collegues. The main idea is to maintain a main branch and many side branches. The side branches can be changed and edited by many users, this allows the development of a project to be independent of the users working on it at the same time. At the end, the host, i.e. the owner of the main branch, can allow some of the changes made by the team on the side branches to be part of the main branch. 

<p> This tool is a security net for our work, as it can prevent contraproducent coding and saves us time. It not only protects the main branch but it also allows us to go back to previous versions, as it redords each commited change done. 

## Markdown <a name="markdown"></a>
<p> Markdown is a tool that enhances documet structure and allows for multiple readers to work similarly or edit shared work. For instance, with the help of Markdown we can write scripts easier, as it has the ability of ecompasing text and code on a same document. This makes it easier for the person who wrote it to share the document and allows the reproductability of the code to go smooth. 

### An example that we know from Microsoft, but can be used in Markdown is:
this is *italic* and **bold**
[I'm an inline-style link](https://www.google.com)

### This way we can also set text fromm scripts apart:
```python
s = "Python syntax highlighting"
print s
```

### We can also introduce multiple coding languages:
```sh
echo "Hello World"
```
### Markdown Cheatsheet
[Follow for cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)

## Linux <a name="linux"></a>
<p> Linux is an operating system just like IOS, Mac OS or Windows and is a tool that allows us to interact with a high performance computing environment while using shell commands. Using tools on the command line requires a structure build by obligatory items, such as commands, and optional items, such as parameters and arguments. In the following lines, we will see some very useful examples.

### Structure on the command line 

| Command | Parameters | Arguments |

### Working with the directory and getting help
```sh
pwd #shows us where we are on the directory
cd #change the working directory
cd ../ #go back to the parent directory
mkdir new_folder #create a directory/folder

ls #lists the content of the directory
ls -l #using parameter -l we get more information on the contents of the directory
ls file_name #adding an argument will show us if the file is in the directory

man ls #will show us a manual as to how to use ls, to close the manual use q
ls --help 
```

### Working with files and folders
```sh
cp my_file my_filecopy #using cp we copy a file and give it a name
mv my_file not_my_file #rename a file giving the actual name first and the new name second
mv not_my_file new_folder #move the new file into a folder 
rm new_folder/not_my_file #will delete the file from this folder
rm -r new_folder #will delete the whole folder
```
### Working with the content of a file
```sh
less my_file.txt #will show us the contents of the file in a viewer mode, use q to exit
cat my_file.txt #gives the content of a file on the standard output
cat my_file.txt file1.txt > new_file1.txt #content of both files will be saved on a new file
echo "Crazy" #it works just as print would work
echo "Crazy" >> new_file1.txt #it will add Crazy no the file without overwriting
head file1.txt #shows the first 10 lines of the file
tail -n 20 file1.txt #shows the last 20 lines of the file
cut -c 1-10 file1-txt #gets the first 10 columns, 1-10 or 1,10 depends on how the file is separated

wc -l file1.txt #allows us to get the number of lines in the file
grep species file1.txt #grep will extract all lines with the word species on them 
grep -i species file1.txt #refers to case sensitive, avoids getting Species 
grep -ic species file1.txt #it will count the amount of lines with the word species on them
tr A a < file1.txt # < will us content of file1 as standard input and change all A caps for small a 
sed "s/T/U/g" fileDNA.txt #sed will lokk for all Ts and replace them for Us, "g" stands for global, which will allow for sed to look all over the file and not stop on the first finding
```
### Pipes
<p> Pipes are a useful tool for conecting tasks on a same command line. This will result in standard outputs being used by standard inputs. In order to get all of our commands on the same line we use the " | " straight line.

```sh
head file1.txt | grep species | grep honey | tr A a #all of the commands will only be affecting the first 10 lines
```
### Run scripts
<p> As we saw already, we can modify and write scripts using the command line, but we can also run scripts from the command line.

```sh
bash script1.sh
```

## Transfer (Access HPC) <a name="transfer"></a>
<p> A high performance computer, in contrast to a regular computer, offers compute nodes with powerful processors and abundant memory, high-capacity storage systems, resource managers for resource allocation, a software stack for parallel computing, and a management infrastructure for system monitoring and administration. We can access to such a computer remotly by connecting to the server we want to work in. The new resources for processing allow us to submit heavy jobs that would take much more time otherwise and also work collectively with others, as files can be shared on the server.

### 1. Login to the shell
<p> Logging to the shell will provide us access to the command line interface of the computer and a secure encripted connection between the user and the hpc. Now we need the actual structure of the "connection command", her we use `ssh` (secure shell) to start the command line, then we add our user name `-l user_name`, the port number `-p ###` and lastly the host address.

To login to the uni server: 
```sh
ssh -l ra67tek -p 122  CON-compute1.it1.bio.lmu.de
```
### 2. Login via Remote Control
<p> We can also control another computer over a network connection. This can give us direct access to viewing files and directories. To conect to the network we need to open the Finder app, select "Go" on the upper console, than "Connect to server" and then we are given the option to copypaste the link to the server we want to use. The server we worked on is called "LETHE" and it belongs to the uni. There are other methods to get acces over remote control, which include `sftp`, `smb` if you want to mount protocols or `scp` if we want to transfer data as a secure copy.

Link to the server: smb://lethe.dept1.bio.lmu.de

### Mounting files
<p> In order to start working on the server, we have to locate our desired directory, this we can do very easily and over some of the shell commands we've seen already. After we've set our "/LETHE/COURSES" directory, we can mount our files. Mounting offers a two-way street command for transfering files from our computer to a location on the server and also the other way around. 

```sh
mount -t smbfs
```

### Working on a HPC
<p> While working on a HPC we might encounter problems such as corrupted files or bit flips. This can happen while we transfer files from one place to the other. In order for us to have certainty that all transfered files are intact, we can use the the `diff` or the `md5` methods.

```sh
cp file1.txt file2.txt #copy file1 
diff file1.txt file2.txt #thi function will show us the differences inbetween the two files, as we just copied it, it won't show us anything
md5 file1.txt #with this we just created a "hash" for file1, which is a numerical or alphanumeric string generated by a mathematical algorithm
```
### Transfering changed or missing data
<p> Using the command `rsync` can help us to synchronize data from different locations and also transfers big amounts of it. It's very usefull as it will synchronized only the parts of a file that have been changed or are missing.


```sh
rsync [-parameter] [argument] [argument]

rsync p 122 —avz fileA ra67tek@CON-compute1.it1.bio.lmu.de// destination/
```

Some of the parameters mostly used are:
-a (archive)-> preserves information like permissions, owner, times and symlink 
-v (verbose)-> prints as an output, information about the file
-z -> it will compresse files and reduce network traffic
--delete -> it will delete the files on the second location if the they are not on the source location
--checksum -> it will check wether the sizes are the same

### Exit
<p> After we are done with our work or for example, when we send something to the queue and it's lunch time, we can exit the server and go somewhere else without the need of waiting for the job to be done. If there is something from our work on the queue, it will continue processing.

```sh
exit
```

## Shell scripting <a name="shellscript"></a>
<p> We can use shell to write our scripts to make them reproductable, to automate tasks, to be able to run them remotly and to share it with other users. Writing scripts can be done on a text editor just like Visual Studio Code or also directly from the terminal using the tool `vi` followed by the script name on the command line. For starters, we need to tell the computer wich interpreter to use for our script, so that on the first line we would write `#!/bin/sh`. Sh refers to Shebang but there are many other interpreters, such as bash, zsh, python, R... Let's say the script is finished, then we would have to make the file searchable and executable by everyone, this we do with `chmod +x [script_name]. Lastly we can run the script on the terminal using `$sh ./[script_name.sh]`.

### Commands & Variables
<p> Variables can store many types of information, including strings, paths, files and more. 

```sh
#!/bin/sh
echo "Hello" #serves to print something as standard output
name="Dani" #when we define a variable we can call it later using $name

# We can observe the following exercise:
echo "What is your name?"
read name #with read we are able to execute the variable as an input
echo "Hello $name"

#we can also do:
echo "Hello $1" #this will print our first variable
```

Here we have an example with variables holding directories:

```sh
#!/bin/sh
workdir=$(pwd)      # pwd refers to the current directory
files=$(ls)      # it will list all the files that are inside of the current directory 
echo "Current directory:" $workdir     # recall the variable
echo "With files: " $files
```

Now an example of a variable becoming an array: 

```sh
#!/bin/sh
names[1]="lukas" #lukas becomes the first item of the array

names[2]="jan" #second array item

names[3]="annie" 

echo "some course participant: " ${names[*]} #the asterix means we'll get the whole array printed along with the str as output

echo "first one is: ${names[1]}" #here we'll get the first item on the array printed
```

### Loops 
<p> Loops are very useful for data iteration. For example, let's say we have a list and we want to do something to each of the items on the list, with loops we can indicate the computer to go through each item and do the command. We can also save the results over a new list or a file.

```sh
#!/bin/sh
names[1]="lukas"
names[2]="jan"
names[3]="annie"
for name in ${names[*]}; #here we indicate that each name on the list must be echoed as output
    do
        echo $name
    done;
```

We can also do mathematical operations in a loop 

```sh
#!/bin/sh
names[1]="lukas"
names[2]="jan"
names[3]="annie"
i=1
for name in ${names[*]};
    do
    echo "participant $i" $name;
    i=$((i+1))         # this means that for each loop there will be 1 added to the sum of i
    done;                  
```

### Conditions 
<p> Conditions can be used to verify the contents of an array. We can set values true and false to a certain condition and filter the items on our array with it.

```sh
#!/bin/sh
name=$1  
 
if [ $name == "Alex" ]             
 
 then                               
 
 echo "You are not a student. \n "       
 
 else                         
 
 echo "Good job making this script. "         
 
fi #it marks the end of the if statement 
 
echo "You are $name !"           
```
In this example we would compare the item given in the variable to the if condition giving it orders to follow if one of the both scenarios, true or false, presents itself.

### Combining Loops and Conditions 

Now we will se an example of a loop, whose continuity depends on the fullfilment of the condition inside of it.

```sh
#!/bin/sh
for a in 1 2 3 4 5 6 7 8 9 10       
do
 if [ $a == 5 ]
 then
 break             
 fi                  
echo "Iteration no $a"                
done                
```
The loop iterates over numbers from 1 to 10, if the number equals 5, the loop breaks. Otherwise, the loop gives the output "Iteration no $a". $a = number given at the begining.

### Condition inside of a while loop

```sh
#!/bin/sh
a=0           
while [ $a -lt 10 ]             
do
 echo $a                
 a=$((a+1))       
done
```
Here we set the condiiton that "a" has to be less than 10 (-lt 10). While this condition is true, the loop keeps running. The loop will stop at 9.

## Slurm <a name="slurm"></a>
<p> When using a shared computing environment, there are some guidelines that we must adhere too in order to ensure a safe and efficient environment to others. Here is where HPC etiquette comes through, as it encourages consideration of resource usage, proper submition of jobs, reducing data transfers and others. SLURM (Simple Linux Utility for Resource Managment) is a resource manager that will organize jobs in the queue into different categories. Some jobs are classified by resources or priority. If a job is categorized under resources, it means it will be allocated the next available resources in line. So that if our job is lower priority, there most likely will be higher-priority jobs ahead in the queue, and we must wait for them to complete before execution. Something important to note is that we can only cancel those jobs that belong to us, not those of others.

```sh
htop #used for checking current Node free capacities
sinfo #checking all available node informations
squeue #checking the queue
srun echo "Hello World" #we can run a command
srun -c 10 --mem 5G #reserve CPU allocation and max MEM usage
srun echo "Hello" & #the & symbol allows us to continue having our interactive shell while the job runs in the background
sbatch ./myscript.sh #type this into the terminal and the script will run
sh ./myscript.sh #we can also run our script this way
scancel myscript.sh #we can cancel things from the queue
```

## Project: AliScale <a name="aliscale"></a>
<p> Our first challenge was AliScale, the goal was to write a script based on our knowledge of scripting, slurm and bash to calculate the runtime of three different sequence alignment algorithms, BLAST (Basic local alignment tool), VSearch and Needle. For BLAST and VSearch we also compared the performance between 1 core and 10 cores, while on Needle we only meassured it with 1 core. We also included another version of BLAST into the analysis, so that it ended up being four algorithms.

<p> When comparing sequences, it is more practical to focus on homologous evolutionary sequences rather than on non-homologous ones that vary in length and other characteristics. Since calculating sequence alignments can be time-consuming, appropriate methods are used to obtain acceptable mathematical solutions. BLAST, for instance, splits the nucleotide sequence into numerous subsequences (k-mers) and searches against the reference database. Similarities identified during this process are referred to as seedings. BLAST offers a new approach to sequence comparison, as it directly approximates alignments that optimize a meassure of local similarity. Local alignments also signify aceptable searches in a more realistic time-frame. Global alignments on the other hand tend to show less seedings with much more slower results. VSearch and Needle for example, are global alignments. We can acredit three factors to the search runtime, being database size, multithreading and lenght of the sequence.

### Script with NEEDLE
<p> Everyone got to work specifically on a algorithm, as for me, it was NEEDLE. The script consists of a nested for loop that iterates over the sequences, the references databases and the threads. It contains an inner script that does the function of time meassuring whenever the algorithm compares two sequences. We also decided just to compare the sequences to fewer databases.

```sh
#!/bin/bash
rm -f results.sh # deete the results file each time we run the code
algorithm="NEEDLE" 
threads=(1) #Needle is not multithreadable
anseq=$(ls /LETHE/COURSES/HPC24SS/AliScale/query)
adbsize=$(ls /LETHE/COURSES/HPC24SS/AliScale/references)
less_db=$( $adbsize | sort -n | head -n 3) #this ill sort the databases numerically and will work with the first 3 lines

for seq in $anseq/*.fa;
    do
    for dbnew in $less_db/*.fa;
        do
        for number in ${threads[@]};
            do
            srun -c $number sh scriptneedles2.sh $number $dbnew $seq $algorithm #these variables will be used on inner script
            done
        done
    done
```
Now the inner script:
```sh
#!/bin/bash
number=$1
dbnew=$2 #we list the variables as they come from the outer script
seq=$3
algorithm=$4

time1="$(date +%s)"  #this represents the starttime in seconds
needleall -asequence $seq -bsequence $size
time2="$(date +%s)"  #second time stamp in seconds
time_elapsed="$((time2-time1))" #will meassure the elapsed time

echo "$time_elapsed;$number;$seq;$dbnew;$algorithm" >> results.sh
```
Our "echo" statement is build in a specific order so that everyone on class has standardize results.

### Results
<p> After the queue was finished with all the jobs, we collected all of the results into one folder on the server. Then, the information was processed in order to compile one file with the results of all of the four algorithms. Lastly, we ran an analysis through R to get the results on a graphic. Bonus: I also tried to do the plot through python and although it was working well for my results with NEEDLE, it wasn't possible to achieve a plot with all results combined, as the more characteristics the information had, the harder it was to represent it all in a plot.

Were are gonna copy the file over to the Lethe server under .csv.

```sh
cp /LETHE/COURSES/DANI/results.sh /LETHE/COURSES/AliScale/needle.csv
```

Now we combine all the files using cat.

``` sh
cat ( all files ).csv > results_combined.txt  
```

For a plot, we can't have non-numeric charcters, so we have to get rid of those. For example, we have to get rid of ".fasta" and ".fa" with the command sed.

```sh
cat results_combined.txt | sed "s/\.fasta//g" | sed "s/\.fa//g" > results_combined.csv # the s stands for searching and replacing, so that .fasta will be replaced for nothing "//"
```

### R Code
```R
# install.packages("ggplot2")
library(ggplot2)

daten <- read.table("/Users/ra67tek/HPC/results_combined.csv", sep=";")


head(daten)
daten$threads_nseq <- interaction(daten$V2, daten$V3) #interaction between two variables will free us of finding a parameter to interpret two variables, instead just one

ggplot(daten, aes(x=V4, y=V1, col=V5, shape=threads_nseq))+
  geom_point(size=5)+  
  scale_y_log10()+
  scale_x_log10()+
  scale_shape_manual(values = 0:10)+
  geom_smooth(se=F)+
  theme_bw()
```
The plot can be viewed on the git. (Results_R_aliscale.pdf)

### Python Attempt 
With the following code, it was possible to order, manage the data and finally, put it into a table.

```python
import os
os.chdir("/Users/ra67tek/HPC-SS24/hpc")
content_dir = os.listdir()
column_names = ["Time", "Query", "Reference", "Algorithm"]
table_results = open("results_table.csv","w")
table_results.write("\t".join(column_names) + "\n")

my_file = open("resultsda.txt")
file_contents = my_file.read()
all_lines = file_contents.split("\n")

for line in all_lines:
    columns = line.replace("; ", "\t")
    table_results.write(line + "\n")

table_results.close()
	
import pandas as pd
table_results = pd.read_csv("results_table.csv", sep = ";")
table_results.head(5)
	
results = pd.read_csv("results_combined.csv", sep = ";")
results.columns = ["Time", "Threads", "Query", "Reference", "Algorithm"]
results.to_csv("results1.csv", sep= ";", index=False)
results.head(5)
#results.tail(5)
```

For the next part, we try to create a plot with all algorithms, sadly, the amount of variables to represent caused problems, ultimately following by an error.

```python
import matplotlib.pyplot as plt
time = results["Time"]
reference= results["Reference"]
threads= results["Threads"]
query= results["Query"]
algorithm= results["Algorithm"]

# A good option seemed to be to create dictionaries of all of the variables, so that when the for loop iterated over something, it had a source from where to take an atribute.
color_map = {"BLAST": "red", "blast": "blue", "VSEARCH": "green", "needle": "yellow"}
marker_map = {"1": "o", "8": "x", "16": "*"}
size_map = {"1": 20, "5": 30, "10": 40}

#for i in range(len(time)):
for i in results["Reference"]:
    references =results  
    plt.scatter(reference[i], time[i], s= size_map[i], c= color_map[reference[i]], marker= marker_map[i])

    plt.colorbar(label= reference["BLAST"])
    plt.colorbar(label= reference["blast"])
    plt.colorbar(label= reference["VSEARCH"])
    plt.colorbar(label= reference["needle"])

    plt.xlabel("Reference")
    plt.ylabel("Time")
    plt.title("Processing sequences")
    plt.legend()
    plt.show()
```

## Container <a name="docker"></a>

<p> Containers are often used when there are things that we want to download, such as packages, softwares, etc. They can encapsure all of the download's dependencies and ensure consistency across different environments. It is also a good option when we have a multi user environment, as it will avoid downloads directly to the server. In the course, we use Docker, and some of the main advantages of this container is that as it encapsules a virual environment, it becomes very reproduceable. Its portability is also something astonishing, as it can run across many platforms. Lastly, by isolating applications, they also prevent conflict between different software dependencies.

```sh
docker pull ncbi/edirect #pulling a container by its name
docker run --rm -it ncbi/edirect #cre4taed a virtual environment
```
In many HPCs Singularity is used instead of Dockers, due to Sudo in dockers, as it creates a security risk.
```sh
singularity build docker://godlovedc/lolcow . 
singularity run lolcow.simg
```

## Project: BacGenStat <a name="bacgen"></a>
<p> In our last challenge we meassured genom size, number of genes and GC content from two file types. We had 30 000 ".fna" and ".gff" files with sequences and genes to bacteria species. The names of the files were extracted and saved into several files (xaa, xab, xad, ...). This allows everyone to have a smaller list with the names of the files, each file (xaa,...) was assigned to a student. It is important to note that each fasta file corresponded to its gff file. 

Fisrt we did two scripts, one outer and one inner script, in order to get all the information needed and compile it in a new file.
*Outer script:*
```sh
#!/bin/bash
workdir=/LETHE/COURSES/data/bac_genomes/refseq/bacteria
list=/LETHE/COURSES/data/bac_genomes/refseq/xad

rm resultsgenomeid.txt


for name in $(cat $list); #we want to take elements out of our file (xad) and run them on the inner script
    do 
    sleep 0.3
    srun -c 1 bash genomeinscript.sh $name & #call name from inner script
done
```

*Inner script:*
```sh
#!/bin/bash
name=$1

workdir=/LETHE/COURSES/data/bac_genomes/refseq/bacteria #established our working directory
folder=$workdir/$name
fastafile="$folder/$name*.fna"
gff_file="$folder/$name*.gff"

gunzip $folder/*.gz # for starters we have to unzip the files as we process them, this is going to make it faster to work with as we don't unzip everithing at once
sequence_length=$(grep -v ">" $fastafile | wc -m) #with grep -v we look in all lines apart from those, who start with > and we count number of characters
gc_count=$(grep -v ">" $fastafile| sed "s/[AT]//g" | wc -m) #we do something similar but now we also want to get rid of al As and Ts and just count GCs 
gc_content=$(echo "scale=5; $gc_count/$sequence_length" | bc) #the command bc allows us to do mathematical operations

gene_count=$(grep -c "gene" $gff_file) #grep will count how many times the word gene comes up

ID=$(grep "##species" $gff_file | head -n 1 | cut -d"=" -f2) #from the gff file, get the species ID

taxonomy=$(docker run --rm ncbi/edirect  /bin/bash -c  "efetch -db taxonomy -id $ID -format xml | xtract -pattern Taxon -block '*/Taxon' -tab '\n'  -element Id,Rank,TaxId,ScientificName" | grep "phylum" | cut -f 3) #we can use docker to pull the ncbi container and get the taxonomy by using the ID

echo "$name; $sequence_length; $gene_count; $gc_content; $taxonomy" >> resultsgenomeid.txt
```
### R Code
<p> Now we can save the results from all the students into the server and create a new results file combining all results.

#### Genom Size and Number of Genes
<p> First we want to plot the genom size against the amount of genes. Here we won't pay attention to the species yet. We will also add the GC content in a color map format.

```R
library(ggplot2)
# install.packages("ggplot2")

daten <- read.table("/Users/ra67tek/HPC-SS24/hpc/resultsgenome.txt", sep=";")


head(daten)
#by paying attention to the table first we can examine how our data is structured

ggplot(daten, aes(x=V2, y=V3, col=V4))+ geom_point()+
  scale_y_log10()+
  scale_x_log10()+
  scale_color_gradient(low= "green", high= "red")+
  xlab("Genome size")+
  ylab("Number of genes")+
  labs(color="GC content")+
  theme_bw()
```
The results of the plot can be visualized on github. (Rplotgenomecomplete.png)

In the results we can observe some discrepancies, as it appears that some of the gff files counted more genes than normal.

#### Genom Size and GC Content 
<p> Now we are going to replace the amount of genes by GC content, and use the color map to represent taxonomy.

```R
library(ggplot2)
# install.packages("ggplot2")

daten <- read.table("/Volumes/KELLER-COURSES/bacgenestat/part_taxonomy.csv", sep=";")

head(daten)

ggplot(daten, aes(x=V2, y=V4, group= V5, col=V5))+ geom_point()+
  scale_y_log10()+
  scale_x_log10()+
  xlab("Genome size")+
  ylab("GC Content")+
  labs(color="Taxonomy")+
  theme_bw()
```
The results of the plot can be visualized on github. (Rplotgenometaxgc.png)

# Discussion <a name="discussion"></a>
<p> The course was really interesting and I am glad i decided to dive deeper into the computational branch of biology. It has for sure made me more aware of the ways super computers work and also, it has made me more confident, when using Linux and R. I also enjoyed a lot solving problems, it truely feels like a new part of my brain is developing to understand better and in more creative ways, how to solve challenges just like the ones we did in class. I am looking forward in the future to attend more classes in relationship with computational biology and programming and keep widening my knowledge on the topic. 

# Ayudita
### 1 guardar, 2 darle al plus, 3 name the change, 4 commit <3

