# FEMA Resource Typing REST API

Access the FEMA Resource Typing Library Tool (RTLT) using REST API

## Overview

The FEMA Resource Typing Library Tool (RTLT) offers a SOAP
API to access the list of federally-defined emergency
resources. For modern web applications, a REST API with a JSON
response is more convenient. This site provides a wrapper on top
of the FEMA RTLT API and returns responses in JSON.

## Usage

This application is available publicly at
[http://rtlt-rest.herokuapp.com/](http://rtlt-rest.herokuapp.com/)

## Installation

Clone.

`git clone http://github.com/monkbroc/rtlt-rest`

Install dependencies with Bundler.

`bundle install`

Start application

`rackup`

## Endpoints

*   Get all FEMA RTLT resources

`GET /resources`

*   Get one FEMA RTLT resource by FEMA ID

`GET /resources/:fema_id`

*   Get all FEMA RTLT resource headers

`GET /resources/headers`

## More Information

[FEMA RTLT home page](https://rtlt.ptaccenter.org/Public)

[RTLT SOAP API documentation](RTLT_API.pdf)

### Provided by [MuniRent](http://munirent.co)
