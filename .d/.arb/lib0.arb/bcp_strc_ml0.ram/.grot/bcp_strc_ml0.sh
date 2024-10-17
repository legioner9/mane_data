#!/bin/bash

#. "${HOME}/.bashrc"

filename="${MANE_PATH}/.d/.arb/lib0.arb/bcp_strc_ml0.ram/.grot/bcp_strc_ml0.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

bcp_strc_ml0() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0
    # [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    # [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    local d_name=$(dirname ${MANE_PATH}/.d/.arb/bsh.arb/bcp_strc_ml0.ram/.grot/bcp_strc_ml0.sh)
    # wrp_fifs1_ cd ${d_name} -d
    #{intro_fn}
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: ${FNN} :: 
TAGS:
ARGS: 
\$1
[ ,\$2 num_menu ]
CNTL: 
    _go  : _edit ${d_name}/${FNN}.sh
    _tst :  . ${d_name}/_tst/exec.tst
RETURN: ( result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
ERROR: ( (plt_err | plt_pause | plt_exit) errmes return 1 | ... )
EXAM:
    ${FNN} 
${NORMAL}"
        return 0
    fi
    #{help_cntl_fn}

    if [[ "_go" == "$1" ]]; then
        _edit "${d_name}/${FNN}".sh
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        if [[ -f ${d_name}/_tst/exec.tst ]]; then
            . ${d_name}/_tst/exec.tst
        else
            echo "in fs= file://${MANE_PATH}/.d/.arb/lib0.arb/bcp_strc_ml0.ram/.grot/bcp_strc_ml0.sh , line=${LINENO}, ${FNN}() :  NOT_FILE : 'file://${d_name}/_tst/exec.tst' : ${hint} : return 1" >&2
            return 1
        fi
    fi

    # echo -e "${RED}--- START rsync -avn ${HOME}/.st.rc.d  ${MANE_PATH}/.d/.st.rc.d ---${NORMAL}" #exit 1
    # rsync -azvun --delete ${HOME}/.st.rc.d ${MANE_PATH}/.d/.st.rc.d
    # if [[ -n "$(rsync -avn ${HOME}/.st.rc.d/ ${MANE_PATH}/.d/.st.rc.d)" ]]; then
    #     if _is_yes "DO?: _dSYd ${HOME}/.st.rc.d ${MANE_PATH}/.d/.st.rc.d"; then
    #         if ! _dSYd ${HOME}/.st.rc.d ${MANE_PATH}/.d/.st.rc.d; then
    #             echo "in fs= file://${MANE_PATH}/.d/.arb/lib0.arb/bcp_strc_ml0.ram/.grot/bcp_strc_ml0.sh , line=${LINENO}, ${FNN}() :  EXEC_FAIL : '_dSYd file://${HOME}/.st.rc.d file://${MANE_PATH}/.d/.st.rc.d : ${hint} : return 1" >&2
    #             return 1
    #         fi
    #     fi
    # fi

    local zip_mane=${MANE_PATH}/.d/.zip/.st.rc.d.zip
    local src=${HOME}/.st.rc.d
    

}

cd "${idir}"
unset filename
#{post_fn}
