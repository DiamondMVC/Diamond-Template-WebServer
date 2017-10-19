/**
* Copyright © DiamondMVC 2016-2017
* License: MIT (https://github.com/DiamondMVC/Diamond-Template-WebServer/blob/master/LICENSE)
* Author: Jacob Jensen (bausshf)
*/
module controllers.homecontroller;

import diamond.controllers;

/// The home controller.
final class HomeController(TView) : Controller!TView
{
  public:
  final:
  /**
  * Creates a new instance of the login controller.
  * Params:
  *   view =  The view assocaited with the controller.
  */
  this(TView view)
  {
    super(view);
  }

  /// Route: / | /home
  @HttpDefault Status home()
  {
    return Status.success;
  }
}
