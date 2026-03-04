
#!/usr/bin/env bash

# Create app
heroku create bennyfi-resource-provider-extst --team bennyfi --remote bennyfi-resource-provider-extst

# Enable app to be run using a docker container
heroku stack:set container --app bennyfi-resource-provider-extst

# Set env vars for the app example use the set env var script
./set-env-exsat-testnet.sh

git push bennyfi-resource-provider-extst master

# scale the app to 1 dyno, basically run the app
heroku ps:scale worker=1:basic --app bennyfi-resource-provider-extst

# check if app is running
# heroku ps --app bennyfi-resource-provider-extst

# view app info
# heroku apps:info --app bennyfi-resource-provider-extst

# view logs
# heroku logs --tail --app bennyfi-resource-provider-extst


# destroy the app
# heroku apps:destroy --app bennyfi-jobs-staging --confirm bennyfi-jobs-staging

