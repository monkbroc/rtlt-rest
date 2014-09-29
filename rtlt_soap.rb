
class RtltSoap
  class MissingParameterException; end

  def wsdl
    'http://rtlt.ptaccenter.org/WebServices/DefinitionResourceSoapService.svc?singleWsdl'
  end

  def client
    @client ||= Savon.client(:wsdl => wsdl)
  end

  def get(params)
    response = client.call(:get, :message => { :fema_id => params[:fema_id] })
    response.body[:get_response][:get_result][:definition]
  end

  def get_all(params)
    get_all_pages(:get_all, params) do |result|
      result[:definitions][:resource_definition]
    end
  end

  def get_headers(params)
    get_all_pages(:get_headers, params) do |result|
      result[:headers][:definition_header]
    end
  end

  private

  def get_all_pages(service, params, &block)
    current_page = 1
    page_count = 1
    results = []
    while current_page <= page_count
      response = client.call(service, :message => { :page => current_page })
      result = response.body["#{service}_response".to_sym]["#{service}_result".to_sym]
      page_count = result[:page_count].to_i
      results += yield result
      current_page += 1
    end

    results
  end
end

