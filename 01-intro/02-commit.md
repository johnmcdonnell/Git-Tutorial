
!SLIDE bullets
# File lifecycle.

![file lifecycle](../images/file_lifecycle.png)


1. Untracked
1. Tracked, unmodified
1. Tracked, modified
1. Staged

!SLIDE commandline 
## Staging, illustrated.
    $ echo "This is my second file." > myfile2.txt
    
    $ git status # UNTRACKED
    On branch master
    # Untracked files:
    #   (use "git add <file>..." to include in what will be committed)
    #
    #       myfile2.txt
    nothing added to commit but untracked files present (use "git add" to track)
    
    $ git add myfile.txt
    
    $ git status  # STAGED
    On branch master
    # Changes to be committed:
    #   (use "git reset HEAD <file>..." to unstage)
    #
    #       new file:   myfile2.txt
    
!SLIDE commandline
## Staging, illustrated.
     
    $ echo "A change to this file." >> myfile2.txt # MODIFIED
    
    $ git status # STAGED *and* MODIFIED
    # On branch master
    # Changes to be committed:
    #   (use "git reset HEAD <file>..." to unstage)
    #
    #       new file:   myfile2.txt
    #
    # Changes not staged for commit:
    #   (use "git add <file>..." to update what will be committed)
    #   (use "git checkout -- <file>..." to discard changes in working directory)
    #
    #       modified:   myfile2.txt
     
!SLIDE commandline
## Staging, illustrated.

    $ git diff
    diff --git a/myfile2.txt b/myfile2.txt
    index d237c5c..be14d23 100644
    --- a/myfile2.txt
    +++ b/myfile2.txt
    @@ -1 +1,2 @@
     This is my second file
     +A change to my file.
    
    $ git diff --cached
    diff --git a/myfile2.txt b/myfile2.txt
    new file mode 100644
    index 0000000..d237c5c
    --- /dev/null
    +++ b/myfile2.txt
    @@ -0,0 +1 @@
    +This is my second file
    

!SLIDE commandline
## Staging, illustrated.

    $ git commit -m "Any guess what gets committed here?"
    [master 21e4239] Any guess what gets committed here?
     1 file changed, 1 insertion(+)
      create mode 100644 myfile2.txt
    
    $ git status
    On branch master
    # Changes not staged for commit:
    #   (use "git add <file>..." to update what will be committed)
    #   (use "git checkout -- <file>..." to discard changes in working directory)
    #
    #       modified:   myfile2.txt
    #
    no changes added to commit (use "git add" and/or "git commit -a")
    
!SLIDE commandline
## Undo!

    # Amending commits
    $ echo "Forgot this file!" > forgot.txt
    $ git add forgot.txt
    $ git commit --amend


    # Undoing uncommitted changes
    $ echo "Don't really need this line." > myfile.txt
    $ git add myfile.txt
    $ git reset HEAD myfile.txt  # Unstage
    $ git myfile.txt             # delete change.

!SLIDE bullets incremental
# You just learned...

* ...how to add new files to the repository.
* ...how to stage and commit new changes.
* ...how to check the status of your current changes.
* ...how to undo changes to files and amend commts.
