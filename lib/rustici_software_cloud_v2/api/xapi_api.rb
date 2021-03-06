=begin
#SCORM Cloud Rest API

#REST API used for SCORM Cloud integrations.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module RusticiSoftwareCloudV2
  class XapiApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an xAPI statement pipe.
    # Create an xAPI statement pipe.
    # @param xapi_statement_pipe 
    # @param [Hash] opts the optional parameters
    # @return [StringResultSchema]
    def create_statement_pipe(xapi_statement_pipe, opts = {})
      data, _status_code, _headers = create_statement_pipe_with_http_info(xapi_statement_pipe, opts)
      data
    end

    # Create an xAPI statement pipe.
    # Create an xAPI statement pipe.
    # @param xapi_statement_pipe 
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringResultSchema, Fixnum, Hash)>] StringResultSchema data, response status code and response headers
    def create_statement_pipe_with_http_info(xapi_statement_pipe, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: XapiApi.create_statement_pipe ...'
      end
      # verify the required parameter 'xapi_statement_pipe' is set
      if @api_client.config.client_side_validation && xapi_statement_pipe.nil?
        fail ArgumentError, "Missing the required parameter 'xapi_statement_pipe' when calling XapiApi.create_statement_pipe"
      end
      # resource path
      local_var_path = '/xapi/statementPipes'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(xapi_statement_pipe)
      auth_names = ['APP_NORMAL', 'OAUTH']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'StringResultSchema')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: XapiApi#create_statement_pipe\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a xAPI credential.
    # Create a xAPI credential.
    # @param xapi_credential 
    # @param [Hash] opts the optional parameters
    # @return [StringResultSchema]
    def create_xapi_credential(xapi_credential, opts = {})
      data, _status_code, _headers = create_xapi_credential_with_http_info(xapi_credential, opts)
      data
    end

    # Create a xAPI credential.
    # Create a xAPI credential.
    # @param xapi_credential 
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringResultSchema, Fixnum, Hash)>] StringResultSchema data, response status code and response headers
    def create_xapi_credential_with_http_info(xapi_credential, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: XapiApi.create_xapi_credential ...'
      end
      # verify the required parameter 'xapi_credential' is set
      if @api_client.config.client_side_validation && xapi_credential.nil?
        fail ArgumentError, "Missing the required parameter 'xapi_credential' when calling XapiApi.create_xapi_credential"
      end
      # resource path
      local_var_path = '/xapi/credentials'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(xapi_credential)
      auth_names = ['APP_NORMAL', 'OAUTH']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'StringResultSchema')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: XapiApi#create_xapi_credential\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deletes this xAPI pipe.
    # Caution: avoid re-creating a pipe with the same ID quickly after a delete. The old version could still be processing, in which case the new pipe could be updated improperly by the processor. 
    # @param statement_pipe_id id for this xAPI statement pipe
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_statement_pipe(statement_pipe_id, opts = {})
      delete_statement_pipe_with_http_info(statement_pipe_id, opts)
      nil
    end

    # Deletes this xAPI pipe.
    # Caution: avoid re-creating a pipe with the same ID quickly after a delete. The old version could still be processing, in which case the new pipe could be updated improperly by the processor. 
    # @param statement_pipe_id id for this xAPI statement pipe
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_statement_pipe_with_http_info(statement_pipe_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: XapiApi.delete_statement_pipe ...'
      end
      # verify the required parameter 'statement_pipe_id' is set
      if @api_client.config.client_side_validation && statement_pipe_id.nil?
        fail ArgumentError, "Missing the required parameter 'statement_pipe_id' when calling XapiApi.delete_statement_pipe"
      end
      # resource path
      local_var_path = '/xapi/statementPipes/{statementPipeId}'.sub('{' + 'statementPipeId' + '}', statement_pipe_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['APP_NORMAL', 'OAUTH']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: XapiApi#delete_statement_pipe\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deletes the xAPI credentials specified by the xAPI credentials id
    # Deletes the xAPI credentials specified by the xAPI credentials id
    # @param xapi_credential_id id for this xAPI credential
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_xapi_credential(xapi_credential_id, opts = {})
      delete_xapi_credential_with_http_info(xapi_credential_id, opts)
      nil
    end

    # Deletes the xAPI credentials specified by the xAPI credentials id
    # Deletes the xAPI credentials specified by the xAPI credentials id
    # @param xapi_credential_id id for this xAPI credential
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_xapi_credential_with_http_info(xapi_credential_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: XapiApi.delete_xapi_credential ...'
      end
      # verify the required parameter 'xapi_credential_id' is set
      if @api_client.config.client_side_validation && xapi_credential_id.nil?
        fail ArgumentError, "Missing the required parameter 'xapi_credential_id' when calling XapiApi.delete_xapi_credential"
      end
      # resource path
      local_var_path = '/xapi/credentials/{xapiCredentialId}'.sub('{' + 'xapiCredentialId' + '}', xapi_credential_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['APP_NORMAL', 'OAUTH']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: XapiApi#delete_xapi_credential\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves xAPI pipe for `xapiPipeId`
    # Retrieves xAPI pipe for `xapiPipeId`
    # @param statement_pipe_id id for this xAPI statement pipe
    # @param [Hash] opts the optional parameters
    # @return [XapiStatementPipeSchema]
    def get_statement_pipe(statement_pipe_id, opts = {})
      data, _status_code, _headers = get_statement_pipe_with_http_info(statement_pipe_id, opts)
      data
    end

    # Retrieves xAPI pipe for &#x60;xapiPipeId&#x60;
    # Retrieves xAPI pipe for &#x60;xapiPipeId&#x60;
    # @param statement_pipe_id id for this xAPI statement pipe
    # @param [Hash] opts the optional parameters
    # @return [Array<(XapiStatementPipeSchema, Fixnum, Hash)>] XapiStatementPipeSchema data, response status code and response headers
    def get_statement_pipe_with_http_info(statement_pipe_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: XapiApi.get_statement_pipe ...'
      end
      # verify the required parameter 'statement_pipe_id' is set
      if @api_client.config.client_side_validation && statement_pipe_id.nil?
        fail ArgumentError, "Missing the required parameter 'statement_pipe_id' when calling XapiApi.get_statement_pipe"
      end
      # resource path
      local_var_path = '/xapi/statementPipes/{statementPipeId}'.sub('{' + 'statementPipeId' + '}', statement_pipe_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['APP_NORMAL', 'OAUTH']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'XapiStatementPipeSchema')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: XapiApi#get_statement_pipe\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get all of the xapiPipes for `appId`
    # Get all of the xapiPipes for `appId`
    # @param [Hash] opts the optional parameters
    # @return [XapiStatementPipeListSchema]
    def get_statement_pipes(opts = {})
      data, _status_code, _headers = get_statement_pipes_with_http_info(opts)
      data
    end

    # Get all of the xapiPipes for &#x60;appId&#x60;
    # Get all of the xapiPipes for &#x60;appId&#x60;
    # @param [Hash] opts the optional parameters
    # @return [Array<(XapiStatementPipeListSchema, Fixnum, Hash)>] XapiStatementPipeListSchema data, response status code and response headers
    def get_statement_pipes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: XapiApi.get_statement_pipes ...'
      end
      # resource path
      local_var_path = '/xapi/statementPipes'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['APP_NORMAL', 'OAUTH']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'XapiStatementPipeListSchema')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: XapiApi#get_statement_pipes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves the xAPI credentials specified by the xAPI credentials id.
    # Retrieves the xAPI credentials specified by the xAPI credentials id.
    # @param xapi_credential_id id for this xAPI credential
    # @param [Hash] opts the optional parameters
    # @return [XapiCredentialSchema]
    def get_xapi_credential(xapi_credential_id, opts = {})
      data, _status_code, _headers = get_xapi_credential_with_http_info(xapi_credential_id, opts)
      data
    end

    # Retrieves the xAPI credentials specified by the xAPI credentials id.
    # Retrieves the xAPI credentials specified by the xAPI credentials id.
    # @param xapi_credential_id id for this xAPI credential
    # @param [Hash] opts the optional parameters
    # @return [Array<(XapiCredentialSchema, Fixnum, Hash)>] XapiCredentialSchema data, response status code and response headers
    def get_xapi_credential_with_http_info(xapi_credential_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: XapiApi.get_xapi_credential ...'
      end
      # verify the required parameter 'xapi_credential_id' is set
      if @api_client.config.client_side_validation && xapi_credential_id.nil?
        fail ArgumentError, "Missing the required parameter 'xapi_credential_id' when calling XapiApi.get_xapi_credential"
      end
      # resource path
      local_var_path = '/xapi/credentials/{xapiCredentialId}'.sub('{' + 'xapiCredentialId' + '}', xapi_credential_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['APP_NORMAL', 'OAUTH']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'XapiCredentialSchema')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: XapiApi#get_xapi_credential\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the list of xapiCredentials
    # Get the list of xapiCredentials
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :since Only &lt;&lt;resourcePathName&gt;&gt; updated since the specified ISO 8601 TimeStamp (inclusive) are included. If a time zone is not specified, UTC time zone will be used.
    # @option opts [String] :more Value for this parameter will be provided in the &#39;more&#39; property of &lt;&lt;resourcePathName&gt;&gt; lists, where needed. An opaque value, construction and parsing may change without notice.
    # @return [XapiCredentialsListSchema]
    def get_xapi_credentials(opts = {})
      data, _status_code, _headers = get_xapi_credentials_with_http_info(opts)
      data
    end

    # Get the list of xapiCredentials
    # Get the list of xapiCredentials
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :since Only &lt;&lt;resourcePathName&gt;&gt; updated since the specified ISO 8601 TimeStamp (inclusive) are included. If a time zone is not specified, UTC time zone will be used.
    # @option opts [String] :more Value for this parameter will be provided in the &#39;more&#39; property of &lt;&lt;resourcePathName&gt;&gt; lists, where needed. An opaque value, construction and parsing may change without notice.
    # @return [Array<(XapiCredentialsListSchema, Fixnum, Hash)>] XapiCredentialsListSchema data, response status code and response headers
    def get_xapi_credentials_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: XapiApi.get_xapi_credentials ...'
      end
      # resource path
      local_var_path = '/xapi/credentials'

      # query parameters
      query_params = {}
      query_params[:'since'] = opts[:'since'] if !opts[:'since'].nil?
      query_params[:'more'] = opts[:'more'] if !opts[:'more'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['APP_NORMAL', 'OAUTH']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'XapiCredentialsListSchema')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: XapiApi#get_xapi_credentials\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Edit an existing xAPI pipe or create a new one.
    # Editing a pipe will cause it to start over and forward any statements it finds, even if the prior version of the pipe had already forwarded those statements. If the pipe being edited is currently being processed, the this request will fail with a status code of 409. 
    # @param statement_pipe_id id for this xAPI statement pipe
    # @param xapi_statement_pipe 
    # @param [Hash] opts the optional parameters
    # @return [StringResultSchema]
    def set_statement_pipe(statement_pipe_id, xapi_statement_pipe, opts = {})
      data, _status_code, _headers = set_statement_pipe_with_http_info(statement_pipe_id, xapi_statement_pipe, opts)
      data
    end

    # Edit an existing xAPI pipe or create a new one.
    # Editing a pipe will cause it to start over and forward any statements it finds, even if the prior version of the pipe had already forwarded those statements. If the pipe being edited is currently being processed, the this request will fail with a status code of 409. 
    # @param statement_pipe_id id for this xAPI statement pipe
    # @param xapi_statement_pipe 
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringResultSchema, Fixnum, Hash)>] StringResultSchema data, response status code and response headers
    def set_statement_pipe_with_http_info(statement_pipe_id, xapi_statement_pipe, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: XapiApi.set_statement_pipe ...'
      end
      # verify the required parameter 'statement_pipe_id' is set
      if @api_client.config.client_side_validation && statement_pipe_id.nil?
        fail ArgumentError, "Missing the required parameter 'statement_pipe_id' when calling XapiApi.set_statement_pipe"
      end
      # verify the required parameter 'xapi_statement_pipe' is set
      if @api_client.config.client_side_validation && xapi_statement_pipe.nil?
        fail ArgumentError, "Missing the required parameter 'xapi_statement_pipe' when calling XapiApi.set_statement_pipe"
      end
      # resource path
      local_var_path = '/xapi/statementPipes/{statementPipeId}'.sub('{' + 'statementPipeId' + '}', statement_pipe_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(xapi_statement_pipe)
      auth_names = ['APP_NORMAL', 'OAUTH']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'StringResultSchema')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: XapiApi#set_statement_pipe\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Edit an existing xAPI credential or create a new one, specified by the xAPI credentials id
    # Edit an existing xAPI credential or create a new one, specified by the xAPI credentials id
    # @param xapi_credential_id id for this xAPI credential
    # @param xapi_credential 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def set_xapi_credential(xapi_credential_id, xapi_credential, opts = {})
      set_xapi_credential_with_http_info(xapi_credential_id, xapi_credential, opts)
      nil
    end

    # Edit an existing xAPI credential or create a new one, specified by the xAPI credentials id
    # Edit an existing xAPI credential or create a new one, specified by the xAPI credentials id
    # @param xapi_credential_id id for this xAPI credential
    # @param xapi_credential 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_xapi_credential_with_http_info(xapi_credential_id, xapi_credential, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: XapiApi.set_xapi_credential ...'
      end
      # verify the required parameter 'xapi_credential_id' is set
      if @api_client.config.client_side_validation && xapi_credential_id.nil?
        fail ArgumentError, "Missing the required parameter 'xapi_credential_id' when calling XapiApi.set_xapi_credential"
      end
      # verify the required parameter 'xapi_credential' is set
      if @api_client.config.client_side_validation && xapi_credential.nil?
        fail ArgumentError, "Missing the required parameter 'xapi_credential' when calling XapiApi.set_xapi_credential"
      end
      # resource path
      local_var_path = '/xapi/credentials/{xapiCredentialId}'.sub('{' + 'xapiCredentialId' + '}', xapi_credential_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(xapi_credential)
      auth_names = ['APP_NORMAL', 'OAUTH']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: XapiApi#set_xapi_credential\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
