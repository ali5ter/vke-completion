# vke-completion
[vke_bash_completion.sh](vke_bash_completion.sh) provides bash tab completion
for the VMware Kubernetes Engine cli. 

## Usage
Source this from your `.bash_profile` or, to use in your current shell, run 
`source vke_bash_completion.sh`

If you're using zsh, the following should allow this autocompletion to work:

    $ autoload bashcompinit
    $ bashcompinit
    $ source vke_bash_completion.sh

## Generation
The [create_completion](create_completion) script uses [cli_taxo]() to generate
this tab completion script using the VKE cli help output.

## Other VKE utilities
You may have use for some other VKE projects:
* [Scripts used with VKE](https://github.com/ali5ter/vmware_scripts/tree/master/vke)
* [A bash VKE prompt]()
* [Extended VKE cli functionality]()