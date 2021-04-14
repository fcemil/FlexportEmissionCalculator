// This file was generated by Mendix Studio Pro.
//
// WARNING: Only the following code will be retained when actions are regenerated:
// - the import list
// - the code between BEGIN USER CODE and END USER CODE
// - the code between BEGIN EXTRA CODE and END EXTRA CODE
// Other code you write will be lost the next time you deploy the project.
// Special characters, e.g., é, ö, à, etc. are supported in comments.

package emissioncalculatormodule.actions;

import java.math.BigDecimal;
import com.mendix.systemwideinterfaces.core.IContext;
import com.mendix.thirdparty.org.json.JSONArray;
import com.mendix.thirdparty.org.json.JSONObject;
import com.mendix.webui.CustomJavaAction;

public class GetLongitudeJSON extends CustomJavaAction<java.math.BigDecimal>
{
	private java.lang.String JSON;

	public GetLongitudeJSON(IContext context, java.lang.String JSON)
	{
		super(context);
		this.JSON = JSON;
	}

	@java.lang.Override
	public java.math.BigDecimal executeAction() throws Exception
	{
		// BEGIN USER CODE
		JSONArray array = new JSONArray(JSON);  
		 
		JSONObject object = array.getJSONObject(0);  
		String result= object.getString("lon");
		BigDecimal resultBD=new BigDecimal(result);		
		  
		return resultBD;
		// END USER CODE
	}

	/**
	 * Returns a string representation of this action
	 */
	@java.lang.Override
	public java.lang.String toString()
	{
		return "GetLongitudeJSON";
	}

	// BEGIN EXTRA CODE
	// END EXTRA CODE
}
