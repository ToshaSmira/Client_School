object SchoolData: TSchoolData
  OldCreateOrder = False
  Height = 285
  Width = 215
  object SchoolService: TRORemoteService
    Channel = Channel
    Message = SchoolMessage
    Left = 32
    Top = 48
  end
  object SchoolMessage: TROBinMessage
    Envelopes = <
      item
        Enabled = False
      end>
    Left = 152
    Top = 24
  end
  object Channel: TROIndyHTTPChannel
    UserAgent = 'Remoting SDK'
    DispatchOptions = []
    ServerLocators = <>
    TargetUrl = 'http://127.0.0.1:7777/bin'
    IndyClient.AllowCookies = True
    IndyClient.ProxyParams.BasicAuthentication = False
    IndyClient.ProxyParams.ProxyPort = 0
    IndyClient.Request.ContentLength = -1
    IndyClient.Request.ContentRangeEnd = -1
    IndyClient.Request.ContentRangeStart = -1
    IndyClient.Request.ContentRangeInstanceLength = -1
    IndyClient.Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    IndyClient.Request.AcceptEncoding = 'identity'
    IndyClient.Request.BasicAuthentication = False
    IndyClient.Request.Host = '127.0.0.1:7777'
    IndyClient.Request.UserAgent = 'Remoting SDK'
    IndyClient.Request.Ranges.Units = 'bytes'
    IndyClient.Request.Ranges = <>
    IndyClient.HTTPOptions = [hoKeepOrigProtocol, hoForceEncodeParams]
    Left = 104
    Top = 120
  end
end
