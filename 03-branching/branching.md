<!SLIDE title-slide>
.notes first slide

# Branches

![treebranch](../images/branch.jpg)


<!SLIDE bullets incremental>
.notes These are some notes.

# What is a branch?

  * A branch is really just a seperate version of your code.
  * E.g., A 'pretty' version of your paper, vs. one you're overhauling.
  * In technical terms, it is a pointer to a commit.

<!SLIDE bigimage>
# What is a commit, really?

![Commit Anatomy](../images/commit_anatomy.png)

<!SLIDE bigimage>
# Repo as collection of commits
![Three commits](../images/threecommits.png)

<!SLIDE bigimage>
# A branch is a pointer to a commit.
![Master branch](../images/masterbranch.png)

<!SLIDE bigimage>
# Two branches can point to the same commit.
![New branch](../images/newbranch.png)

`git branch testing`

<!SLIDE bullets>
# The files in our working directory reflect HEAD
![HEAD](../images/HEAD.png)

HEAD points to master. Master points to the snapshot "f30ab".

<!SLIDE bullets>
# Move HEAD with checkout
![HEAD](../images/HEAD_testing.png)

`git checkout testing`

<!SLIDE bullets>
# New commits move the HEAD branch
![Branch Commit](../images/branchcommit.png)

`git commit...`


<!SLIDE bullets>
# A merge scenario
![Merge Scenario](../images/mergescenario.png)

`git checkout master`  
`git commit...`

<!SLIDE bullets>
# A merge scenario
![Merge Aftermath](../images/mergeaftermath.png)

`git merge iss53`

!SLIDE commandline
# Making branches and tags

    $ git tag -a pilot -m "Our initial pilot experiment"
     
    $ git branch exp1
    $ git branch exp2
     
    $ git checkout exp1
    $ echo "Exp 1 makes manipulation A" >> myfile.txt
    $ git commit -a -m "Added manipulation A"
     
    $ git checkout exp2
    $ echo "Exp 2 makes manipulation B" >> myfile.txt
    $ git commit -a -m "Added manipulation B"

!SLIDE commandline
# Merging

    $ git checkout master
    $ $EDITOR myfile.txt  # Make an important bugfix
    $ git commit -a -m "Important bugfix"
    
    $ git checkout exp1
    $ git merge master
    
    $ git checkout exp2
    $ git merge master
    $ git diff master

!SLIDE commandline
# Using tags

    $git show pilot
    $git checkout pilot

     
!SLIDE bullets incremental
# You just learned...

* What tags and branches are.
* How to make one.
* How to merge changes from one branch onto another branch.
