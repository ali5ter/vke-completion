# vke-completion
[vke_bash_completion.sh](vke_bash_completion.sh) provides bash tab completion
for the VMware Cloud PKS (formerly VKE) CLI.

[![CircleCI](https://circleci.com/gh/ali5ter/vke-completion.svg?style=svg)](https://circleci.com/gh/ali5ter/vke-completion)

## Usage
Source this from your `.bash_profile` or, to use in your current shell, run 
`source vke_bash_completion.sh`

If you're using zsh, the following should allow this autocompletion to work:

    $ autoload bashcompinit
    $ bashcompinit
    $ source vke_bash_completion.sh

## Generation
The [create_completion](create_completion) script uses [cli_taxo](https://github.com/ali5ter/cli_taxo) to generate
this tab completion script using the Cloud PKS CLI help output.

## Other Cloud PKS utilities
You may have use for some other Cloud PKS projects:
* [Install Cloud PKS cli using homebrew](https://github.com/ali5ter/homebrew-vke-cli)
* [Scripts used with Cloud PKS](https://github.com/ali5ter/vmware_scripts/tree/master/vke)
* [A bash Cloud PKS prompt](https://github.com/ali5ter/vke-prompt)
* [Extended Cloud PKS CLI functionality](https://github.com/ali5ter/vke-cli-extended)
