#!/bin/bash

# Replace 'your-heroku-app-name' with the name of your Heroku app
HEROKU_APP_NAME="movieshubproo"

# Get the current scale of all dyno types
current_scale=$(heroku ps:scale --app $HEROKU_APP_NAME)

# Stop all processes (scale all dyno types to 0)
echo "Stopping all processes..."
heroku ps:scale web=0 worker=0 --app $HEROKU_APP_NAME

# Wait for a few seconds (optional)
sleep 10

# Start all processes (scale all dyno types to their previous scale)
echo "Starting all processes..."
heroku ps:scale $current_scale --app $HEROKU_APP_NAME

echo "All processes have been stopped and started successfully."
