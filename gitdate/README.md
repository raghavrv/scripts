#####GITDATE

Small bash function to change the timestamp of a git commit.

#####USAGE

Include this function in your ~/.bashrc

Restart your shell before using the function.

To display the input format use gitdate without any input parameters:

    gitdate    
    Wrong input format. Usage : gitdate 'MM-DD HH:MM:SS' ['<Commit ID']

Move to the top level of your git directory

    gitdate '09-28 12:30:59' 'd09f9ecf57800b265dd22f1f97780648fafee790'

Use -f to force the change when required

    gitdate '09-28 12:30:59' 'd09f9ecf57800b265dd22f1f97780648fafee790' -f

For changing the last commit date alone, the commit id can be skipped
    
    gitdate '09-28 12:30:59'

#####NOTE

Use with caution, editing the commit date, rewrites the entire git history. Check [this](https://www.kernel.org/pub/software/scm/git/docs/git-filter-branch.html) for more info.
