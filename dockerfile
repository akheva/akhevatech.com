# Create a Jekyll container from a Ruby Alpine image
####################################################
# Jekyll requires the following:
# Ruby version 2.5.0 or higher
# RubyGems
# GCC and Make
####################################################

# Use Ruby 2.5 or later
FROM ruby:2.7.7-alpine3.16 

LABEL org.opencontainers.image.authors="rmims@akhevatech.com"

# Add Jekyll dependencies to Alpine
RUN apk update
RUN apk add --no-cache build-base gcc cmake git 

# Update the Ruby bundler and install Jekyll
RUN gem update --system
RUN gem update bundler
RUN gem install bundler jekyll