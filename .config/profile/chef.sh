alias chef-cookstyle='docker run --rm -v `pwd`:/code registry.x-plose.be/xplose-docker/gitlab-pronto-chef rubocop --display-cop-names --display-style-guide -c /config/rubocop.yml'
alias chef-foodcritic='docker run --rm -v `pwd`:/code registry.x-plose.be/xplose-docker/gitlab-pronto-chef foodcritic'
alias pronto-cookstyle='docker run --rm -v `pwd`:/code registry.x-plose.be/xplose-docker/gitlab-pronto-chef pronto run --exit-code --formatters text -r rubocop'
alias pronto-foodcritic='docker run -e PRONTO_FOODCRITIC_EXCLUDE="test/**/*" --rm -v `pwd`:/code registry.x-plose.be/xplose-docker/gitlab-pronto-chef pronto run --exit-code --formatters text -r foodcritic'
