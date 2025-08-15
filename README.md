> **⚠️ This project is archived and no longer maintained.**

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
The [create_completion](create_completion) script uses [cli_taxo](https://github.com/ali5ter/cli_taxo)
to generate this tab completion script using the Cloud PKS CLI help output.

## CLI Taxonomy Diagram
The [create_taxo_graph](create_taxo_graph) script uses [cli_taxo](https://github.com/ali5ter/cli_taxo)
to generate a radial diagram illustrating the taxonomy of the VMware
Cloud PKS CLI as an SVG embedded in a webpage under [taxonomy](taxonomy).

You can view this by running locally as a container like this:
1. Build the docker image: <pre>docker build -t ali5ter/vke-cli-taxonomy:1.0 .</pre>
2. Run the container: <pre>docker run -d -p8080:80 ali5ter/vke-cli-taxonomy:1.0</pre>
3. Open http://localhost:8080/ to view the diagram.
4. Stop and remove the container: <pre>docker rm -f $(docker ps | grep vke-cli-taxonomy | awk '{print $1}')</pre>

## Other Cloud PKS utilities
You may have use for some other Cloud PKS projects:
* [Install Cloud PKS CLI using homebrew](https://github.com/ali5ter/homebrew-vke-cli)
* [Scripts used with Cloud PKS](https://github.com/ali5ter/vmware_scripts/tree/master/vke)
* [A bash Cloud PKS prompt](https://github.com/ali5ter/vke-prompt)
* [Extended Cloud PKS CLI functionality](https://github.com/ali5ter/vke-cli-extended)
