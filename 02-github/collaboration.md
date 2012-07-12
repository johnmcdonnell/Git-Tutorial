<!SLIDE subsection bigimage>
.notes first slide

# Github / Remotes

![codercat](../images/codercat.jpg)


<!SLIDE bullets>

# Remotes

    * Link your repo to the cloud.
    * Provide an interface for sharing with others.
    * Github provides free public repo hosting!

!SLIDE commandline
## Creating a github repo

    $ git remote add origin git@github.com:johnmcdonnell/demo.git
    $ git push -u origin master

!SLIDE commandline
## Cloning a github repo

    $ cd /tmp
    $ git clone git@github.com:johnmcdonnell/demo.git myclone
    Cloning into 'myclone'...
    remote: Counting objects: 9, done.
    remote: Compressing objects: 100% (4/4), done.
    Receiving objects: 100% (9/9), done.
    remote: Total 9 (delta 0), reused 9 (delta 0)

!SLIDE commandline
## Making changes and sending them back.

    $ cd /myclone
    $ echo "Changes to our file, in the clone." >> myfile.txt
    [master 1d5dd39] Changes in the clone.
     1 file changed, 1 insertion(+)

    $ git commit -a -m "Remote changes made."
    $ git push origin master
    Counting objects: 5, done.
    Delta compression using up to 4 threads.
    Compressing objects: 100% (3/3), done.
    Writing objects: 100% (3/3), 350 bytes, done.
    Total 3 (delta 0), reused 0 (delta 0)
    To git@github.com:johnmcdonnell/demo.git
       21e4239..1d5dd39  master -> master

!SLIDE commandline
## Getting our changes, with a twist.

    $ cd ../myrepo
    $ echo "Changes to our file, in our own repo." >> myfile.txt
    $ git commit -a -m "Local changes made."
    [master 672b384] Local changes made.
     1 file changed, 1 insertion(+)
    
    $ git pull origin master
    From github.com:johnmcdonnell/demo
     * branch            master     -> FETCH_HEAD
       Auto-merging myfile.txt
       CONFLICT (content): Merge conflict in myfile.txt
       Automatic merge failed; fix conflicts and then commit the result.
    
    $ $EDITOR myfile.txt # fix the conflict.
    
    $ git status
    # On branch master
    # Your branch is ahead of 'origin/master' by 2 commits.
    #
    nothing to commit (working directory clean)
    
    $ git commit
    $ git push origin master

!SLIDE bullets incremental
# You just learned...

* ...how to create a new repository in github.
* ...how to clone remote repos and push changes to them.
* ...how to deal with merge conflicts.



