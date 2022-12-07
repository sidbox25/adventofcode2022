#!/bin/bash
set -eou pipefail

TARGETFILE="cleanInputToRun.sh"
#FILE="input.txt"
FILE="smallInput.txt"
touch ${TARGETFILE}
chmod +x ${TARGETFILE}
applyRules(){
    if [ "${1:2:4}" == "cd /" ];
    then
        echo "#!/bin/bash">> ${TARGETFILE}
        echo "mkdir test;cd test" >> ${TARGETFILE}
        return
    fi

    if [ ${1:0:1} == "$" ];
    then
        if [ ${1:2:2} != "ls" ];
        then
            echo ${1:1} >> ${TARGETFILE}
            return
        fi

    elif [ ${1:0:3} == "dir" ];
    then
        echo "mk${1:0}" >> ${TARGETFILE}
        return
    else
        echo "fallocate -l ${1}" >> ${TARGETFILE}
        return
    fi
}



while read line; do
    applyRules "${line}"
done <"${FILE}"
applyRules "$(tail -n 1 ${FILE})"

