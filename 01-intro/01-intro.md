<!SLIDE title-slide>

# Git for Scientists  

![octocat](../images/octocat.png)

Presented by John McDonnell  
July 12, 2012


!SLIDE bullets incremental

# Why use git?

1. Backups
1. Collaboration
1. Organization

!SLIDE bullets
# What is git? #

  * Git is a version control system. 

!SLIDE bullets
# What is git? #

![threecommits](../images/threecommits.png)

  * It stores snapshots of your projects.
  * ...It also stores the relationships between those snapshots.


!SLIDE commandline
# Let's try.

    $ mkdir /tmp/myfirstrepo

    $ cd /tmp/myfirstrepo

    $ echo "This is my first file." > myfile.txt

    $ git init
    Initialized empty Git repository in /tmp/.git/

    $ ls .git # A look at what we've done.
    branches  config  description  HEAD  
    hooks     info    objects      refs

    $ git commit -am 'Initial commit.'
    master (root-commit) 5b4f9ff] Initial commit.
    1 file changed, 1 insertion(+)
    create mode 100644 myfile.txt

