=begin
#OAuthService

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

OpenAPI spec version: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'uri'

module Hubspot
  module Client
    module Oauth
      module Api
        class AccessTokensApi
          attr_accessor :api_client

          def initialize(api_client = ApiClient.default)
            @api_client = api_client
          end
          # Auth Level: none ([Docs](https://product.hubteam.com/docs/appsystems/auth-and-rest/auth-levels.html)) [Source Code](https://private.hubteam.com/opengrok/search?project=all&path=AccessTokensResource%20OR%20Object&defs=requestAccessTokenInfo)&nbsp;|&nbsp;[API Goggles](https://tools.hubteam.com/api/get/api.hubapi.com%2Foauth%2Fv1%2Faccess-tokens%2F%28%28%7Btoken%7D%29%29?showRequestDetails=true)&nbsp;|&nbsp;<a href='#operations-Access_Tokens-get-%2Foauth%2Fv1%2Faccess-tokens%2F%7Btoken%7D'>Permalink</a>
          # @param token 
          # @param [Hash] opts the optional parameters
          # @return [AccessTokenInfoResponse]
          def getoauthv1access_tokenstoken(token, opts = {})
            data, _status_code, _headers = getoauthv1access_tokenstoken_with_http_info(token, opts)
            data
          end

          # Auth Level: none ([Docs](https://product.hubteam.com/docs/appsystems/auth-and-rest/auth-levels.html)) [Source Code](https://private.hubteam.com/opengrok/search?project&#x3D;all&amp;path&#x3D;AccessTokensResource%20OR%20Object&amp;defs&#x3D;requestAccessTokenInfo)&amp;nbsp;|&amp;nbsp;[API Goggles](https://tools.hubteam.com/api/get/api.hubapi.com%2Foauth%2Fv1%2Faccess-tokens%2F%28%28%7Btoken%7D%29%29?showRequestDetails&#x3D;true)&amp;nbsp;|&amp;nbsp;&lt;a href&#x3D;&#39;#operations-Access_Tokens-get-%2Foauth%2Fv1%2Faccess-tokens%2F%7Btoken%7D&#39;&gt;Permalink&lt;/a&gt;
          # @param token 
          # @param [Hash] opts the optional parameters
          # @return [Array<(AccessTokenInfoResponse, Fixnum, Hash)>] AccessTokenInfoResponse data, response status code and response headers
          def getoauthv1access_tokenstoken_with_http_info(token, opts = {})
            if @api_client.config.debugging
              @api_client.config.logger.debug 'Calling API: AccessTokensApi.getoauthv1access_tokenstoken ...'
            end
            # verify the required parameter 'token' is set
            if @api_client.config.client_side_validation && token.nil?
              fail ArgumentError, "Missing the required parameter 'token' when calling AccessTokensApi.getoauthv1access_tokenstoken"
            end
            # resource path
            local_var_path = '/v1/access-tokens/{token}'.sub('{' + 'token' + '}', token.to_s)

            # query parameters
            query_params = {}

            # header parameters
            header_params = {}
            # HTTP header 'Accept' (if needed)
            header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

            # form parameters
            form_params = {}

            # http body (model)
            post_body = nil
            auth_names = []
            data, status_code, headers = @api_client.call_api(:GET, local_var_path,
              :header_params => header_params,
              :query_params => query_params,
              :form_params => form_params,
              :body => post_body,
              :auth_names => auth_names,
              :return_type => 'AccessTokenInfoResponse')
            if @api_client.config.debugging
              @api_client.config.logger.debug "API called: AccessTokensApi#getoauthv1access_tokenstoken\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
            end
            return data, status_code, headers
          end

        end
      end
    end
  end
end