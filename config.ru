# This file is used by Rack-based servers to start the application.

require 'rubygems'
require 'bundler'

Bundler.require

require './rtlt_rest_app'
run RtltRestApp

