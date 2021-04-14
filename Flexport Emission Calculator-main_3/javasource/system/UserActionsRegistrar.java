package system;

import com.mendix.core.actionmanagement.IActionRegistrator;

public class UserActionsRegistrar
{
  public void registerActions(IActionRegistrator registrator)
  {
    registrator.bundleComponentLoaded();
    registrator.registerUserAction(emissioncalculatormodule.actions.DistanceCalculator.class);
    registrator.registerUserAction(emissioncalculatormodule.actions.GetLatitudeJSON.class);
    registrator.registerUserAction(emissioncalculatormodule.actions.GetLongitudeJSON.class);
    registrator.registerUserAction(system.actions.VerifyPassword.class);
  }
}
