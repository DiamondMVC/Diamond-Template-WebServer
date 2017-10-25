/**
* Copyright © DiamondMVC 2016-2017
* License: MIT (https://github.com/DiamondMVC/Diamond-Template-WebServer/blob/master/LICENSE)
* Author: Jacob Jensen (bausshf)
*/
module core.websettings;

import diamond.core.websettings;

class DiamondWebSettings : WebSettings
{
  import vibe.d : HTTPServerRequest, HTTPServerResponse, HTTPServerErrorInfo;

  private:
  this()
  {
    super();
  }

  public:
  void onApplicationStart()
  {
  }

  override bool onBeforeRequest(HTTPServerRequest request, HTTPServerResponse response)
  {
    return true;
  }

  override void onAfterRequest(HTTPServerRequest request, HTTPServerResponse response)
  {

  }

  override void onHttpError(Throwable thrownError, HTTPServerRequest request,
    HTTPServerResponse response, HTTPServerErrorInfo error)
  {
    import std.conv : to;

    response.bodyWriter.write(to!string(thrownError));
  }

  override void onNotFound(HTTPServerRequest request, HTTPServerResponse response)
  {
    import std.string : format;

    response.bodyWriter.write(format("The path '%s' wasn't found.'", request.path));
  }

  override void onStaticFile(HTTPServerRequest request, HTTPServerResponse response)
  {

  }
}

shared static this()
{
  webSettings = new DiamondWebSettings;
}
