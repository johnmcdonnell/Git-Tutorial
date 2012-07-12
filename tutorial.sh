
# First practice slide: Initializing
mkdir /tmp/myrepo
cd /tmp/myrepo
echo "This is my first file." > myfile.txt
git init
ls .git # This folder contains all the crazy git stuff.
git commit -a -m "Initial commit."

# Second practice slide: Staging
echo "This is my second file." > myfile2.txt # UNTRACKED
git status # UNTRACKED
git add myfile.txt
git status  # STAGED

echo "A change to this file." >> myfile2.txt # MODIFIED

git status # STAGED *and* MODIFIED
git diff
git diff --cached

git commit -m "Any guess what gets committed here?"
git status

git log # I see what you did there.

# Undoing
echo "Forgot this file!" > forgot.txt
echo add forgot.txt
git commit --amend
git log

echo "Don't really need this line." > myfile.txt
git add myfile.txt
git reset HEAD myfile.txt  # Unstage
git myfile.txt             # delete change.

# Github
git remote add origin git@github.com:johnmcdonnell/demo.git
git push -u origin master


# Make a clone, and push some changes.
cd /tmp
git clone git@github.com:johnmcdonnell/demo.git myclone
cd myclone
echo "Changes to our file, in the clone." >> myfile.txt
git commit -a -m "Remote changes made."
git push origin master

# Back to our other repo.
cd ../myrepo
echo "Changes to our file, in our own repo." >> myfile.txt
git commit -a -m "Local changes made."
git status

git fetch origin master
git status # the two changesets aren't merged yet.



# Branches and tags
git tag -a pilot -m "Our initial pilot experiment"

git branch exp1
git branch exp2

git checkout exp1
echo "Exp 1 makes manipulation A" >> myfile.txt
git commit -a -m "Added manipulation A"

git checkout exp2
echo "Exp 2 makes manipulation B" >> myfile.txt
git commit -a -m "Added manipulation B"

git checkout master
$EDITOR myfile.txt  # Make an important bugfix
git commit -a -m "Important bugfix"

git checkout exp1
git merge master

git checkout exp2
git merge master

# And remember our tag?
git show pilot
git checkout pilot

# Open gitx to show the structure.

