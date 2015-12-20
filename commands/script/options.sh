# Generated by stubbs:add-option. Do not edit, if using stubbs.
# Created: Sun Dec 20 15:30:32 PST 2015
#
#/ usage: rundeck-adhoc:script  --project <>  --filter <> [ --threadcount <1>] [ --keepgoing <false>] [ --asuser <>]  --url <$RUNDECK_URL> [ --username <$RUNDECK_USER>] [ --password <$RUNDECK_PASSWORD>] [ --apikey <$RUNDECK_APIKEY>]  --scriptfile <> [ --interpreter <>] [ --file-extension <>] [ --interpreter-args-quoted <>] 

# _rerun_options_parse_ - Parse the command arguments and set option variables.
#
#     rerun_options_parse "$@"
#
# Arguments:
#
# * the command options and their arguments
#
# Notes:
# 
# * Sets shell variables for any parsed options.
# * The "-?" help argument prints command usage and will exit 2.
# * Return 0 for successful option parse.
#
rerun_options_parse() {

    while (( "$#" > 0 ))
    do
        OPT="$1"
        case "$OPT" in
            --project) rerun_option_check $# $1; PROJECT=$2 ; shift ;;
            --filter) rerun_option_check $# $1; FILTER=$2 ; shift ;;
            --threadcount) rerun_option_check $# $1; THREADCOUNT=$2 ; shift ;;
            --keepgoing) rerun_option_check $# $1; KEEPGOING=$2 ; shift ;;
            --asuser) rerun_option_check $# $1; ASUSER=$2 ; shift ;;
            --url) rerun_option_check $# $1; URL=$2 ; shift ;;
            --username) rerun_option_check $# $1; USERNAME=$2 ; shift ;;
            --password) rerun_option_check $# $1; PASSWORD=$2 ; shift ;;
            --apikey) rerun_option_check $# $1; APIKEY=$2 ; shift ;;
            --scriptfile) rerun_option_check $# $1; SCRIPTFILE=$2 ; shift ;;
            --interpreter) rerun_option_check $# $1; INTERPRETER=$2 ; shift ;;
            --file-extension) rerun_option_check $# $1; FILE_EXTENSION=$2 ; shift ;;
            --interpreter-args-quoted) rerun_option_check $# $1; INTERPRETER_ARGS_QUOTED=$2 ; shift ;;
            # help option
            -|--*?)
                rerun_option_usage
                exit 2
                ;;
            # end of options, just arguments left
            *)
              break
        esac
        shift
    done

    # Set defaultable options.
    [[ -z "$THREADCOUNT" ]] && THREADCOUNT="$(rerun_property_get $RERUN_MODULE_DIR/options/threadcount DEFAULT)"
    [[ -z "$KEEPGOING" ]] && KEEPGOING="$(rerun_property_get $RERUN_MODULE_DIR/options/keepgoing DEFAULT)"
    [[ -z "$URL" ]] && URL="$(rerun_property_get $RERUN_MODULE_DIR/options/url DEFAULT)"
    [[ -z "$USERNAME" ]] && USERNAME="$(rerun_property_get $RERUN_MODULE_DIR/options/username DEFAULT)"
    [[ -z "$PASSWORD" ]] && PASSWORD="$(rerun_property_get $RERUN_MODULE_DIR/options/password DEFAULT)"
    # Check required options are set
    [[ -z "$PROJECT" ]] && { echo >&2 "missing required option: --project" ; return 2 ; }
    [[ -z "$FILTER" ]] && { echo >&2 "missing required option: --filter" ; return 2 ; }
    [[ -z "$URL" ]] && { echo >&2 "missing required option: --url" ; return 2 ; }
    [[ -z "$SCRIPTFILE" ]] && { echo >&2 "missing required option: --scriptfile" ; return 2 ; }
    # If option variables are declared exportable, export them.
    export URL
    export USERNAME
    export PASSWORD
    export APIKEY
    #
    return 0
}


# If not already set, initialize the options variables to null.
: ${PROJECT:=}
: ${FILTER:=}
: ${THREADCOUNT:=}
: ${KEEPGOING:=}
: ${ASUSER:=}
: ${URL:=}
: ${USERNAME:=}
: ${PASSWORD:=}
: ${APIKEY:=}
: ${SCRIPTFILE:=}
: ${INTERPRETER:=}
: ${FILE_EXTENSION:=}
: ${INTERPRETER_ARGS_QUOTED:=}


