#!/usr/bin/env bash
# Bash completion for vke CLI command
# Generated by cli_taxo

_vke_complete () {

    local cur="${COMP_WORDS[COMP_CWORD]}"
    local prev="${COMP_WORDS[COMP_CWORD-1]}"

    echo "${COMP_WORDS[@]}" | grep -q '-' && {
        i=0
        until echo "${COMP_WORDS[i]}" | grep -q '-' ; do ((i++)); done
        prev="${COMP_WORDS[i-1]}"
    }
    
    case "$prev" in
                rename)    cmds="--folder --project";;
        set)    cmds="--folder";;
        show)    cmds="--folder --folder --perf --folder --project --folder --project --folder --project --folder --project";;
        cluster)    cmds="versions create show show-health list rename delete upgrade maintain get-kubectl-auth merge-kubectl-auth auth iam connection namespace ip-whitelist --help";;
        export)    cmds="--output --output --output --folder --output --folder --project";;
        show-health)    cmds="--folder --project";;
        merge-kubectl-auth)    cmds="--embed-ca --folder --project";;
        iam)    cmds="show export import add remove --help role user group --help show export import add remove --help show export import add remove --help show export import add remove --help show export import add remove --help";;
        upgrade)    cmds="--version --no-wait --folder --project";;
        group)    cmds="create delete show list member --help";;
        aws-peering)    cmds="create delete rename show list --help";;
        create)    cmds="--description --display-name --display-name --folder --name --cluster-type --display-name --cluster-network --pod-network --service-network --region --version --privilegedMode --force --ip-whitelist --no-wait --folder --project --folder --project --no-wait --folder --project";;
        namespace)    cmds="create delete show list iam --help";;
        member)    cmds="add remove list --help";;
        add)    cmds="--subject --role --subject --role --subject --role --folder --subject --role --folder --project --no-wait --folder --project";;
        ip-whitelist)    cmds="create delete show update add remove --help";;
        role)    cmds="list --help";;
        import)    cmds="--input --input --input --folder --input --folder --project";;
        folder)    cmds="create delete show get set unset list iam --help";;
        vke)    cmds="account organization info iam folder project cluster help --interactive --log-file --output --detail --help --version";;
        update)    cmds="--no-wait --folder --project";;
        auth)    cmds="setup delete --help";;
        user)    cmds="show list --help";;
        info)    cmds="region --help";;
        account)    cmds="show login logout --help";;
        get-kubectl-auth)    cmds="--configfile --folder --project";;
        versions)    cmds="list --help";;
        region)    cmds="list --help";;
        list)    cmds="--folder --region --folder --project --folder --project";;
        remove)    cmds="--subject --role --subject --role --subject --role --folder --subject --role --folder --project --folder --project";;
        project)    cmds="create delete show get set unset list iam --help";;
        connection)    cmds="aws-peering --help";;
        maintain)    cmds="--folder --project";;
        organization)    cmds="show iam --help";;
        login)    cmds="--organization --refresh-token";;
        setup)    cmds="--embed-ca --folder --project";;
        delete)    cmds="--folder --folder --project --no-wait --folder --project --folder --project --no-wait --folder --project";;
        *)    cmds="rename set show cluster export show-health merge-kubectl-auth iam upgrade group aws-peering create namespace member add ip-whitelist role import folder vke update auth user info account get-kubectl-auth versions region list remove project connection maintain organization login setup delete";;
    esac

    COMPREPLY=( $(compgen -W "$cmds" -- "$cur") )

    return 0
}

complete -F _vke_complete vke

