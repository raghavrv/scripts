function gitdate {
    export YEAR="$(date +'%Y')"
    if [ "$1" != "" ] && [ "$2" != "" ];
    then
        {
            if [ "$3" != "" ];
            then
                {
                    echo "Attempting to change date of commit $2 to : $YEAR-$1 +0530"

                    export EFilter="if [ \$GIT_COMMIT = $2 ];
                         then 
                             {
                                 export GIT_AUTHOR_DATE='$YEAR-$1 +0530'
                                 export GIT_COMMITTER_DATE='$YEAR-$1 +0530'
                             }
                         fi"

                    git filter-branch "$3" --env-filter "$EFilter" 
                }
            else
                {

                    echo "Attempting to change date of commit $2 to : $YEAR-$1 +0530"

                    export EFilter="if [ \$GIT_COMMIT = $2 ];
                         then 
                             {
                                 export GIT_AUTHOR_DATE='$YEAR-$1 +0530'
                                 export GIT_COMMITTER_DATE='$YEAR-$1 +0530'
                             }
                         fi"

                    git filter-branch --env-filter "$EFilter" 
                }
            fi
        }
    elif [ "$1" != "" ];
    then
        {
            echo "Attempting to change date of last commit to : $YEAR-$1 +0530"


            git commit --amend --date="$(date +'%Y')-$1 +0530"
        }
    else
        echo "Wrong input format. Usage : gitdate 'MM-DD HH:MM:SS' ['<Commit ID']"
    fi
}
