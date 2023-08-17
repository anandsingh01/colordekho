<?php

return [
    /*
    |--------------------------------------------------------------------------
    | Easyship API Configuration
    |--------------------------------------------------------------------------
    | Defines the hostname and access tokens to use for easyship API calls
    | through the EasyshipAPI service.
    |
    | Access token is always required but host should only need to be set for
    | doing testing.
    */
    'host'         => env('EASYSHIP_API_HOST', null),
    'api_token'    => env('EASYSHIP_API_TOKEN', null),

    /*
    |--------------------------------------------------------------------------
    | Easyship Webhooks Configuration
    |--------------------------------------------------------------------------
    | Set your webhook secret key, required for decoding incoming webhook
    | posts.
    */
    'webhook_secret' => env('EASYSHIP_WEBHOOK_SECRET', null),

    /*
    |--------------------------------------------------------------------------
    | Easyship API Request Options
    |--------------------------------------------------------------------------
    | For API calls, you can provide custom request options to be passed into
    | the guzzle HTTP client. These options get merged with the options
    | built by the API client, so beware of defining options that are core
    | parts of any request, such as 'headers'.
    |
    | Guzzle Request Options:
    | https://docs.guzzlephp.org/en/stable/request-options.html
    */
    'request_options' => [],
];
