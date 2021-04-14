// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package emissioncalculatormodule.proxies;

public class Calculation
{
	private final com.mendix.systemwideinterfaces.core.IMendixObject calculationMendixObject;

	private final com.mendix.systemwideinterfaces.core.IContext context;

	/**
	 * Internal name of this entity
	 */
	public static final java.lang.String entityName = "EmissionCalculatorModule.Calculation";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		Weight("Weight"),
		IntermodalEmissions("IntermodalEmissions"),
		TruckEmissions("TruckEmissions"),
		OriginCity("OriginCity"),
		DestinationCity("DestinationCity"),
		DistanceKM("DistanceKM"),
		Calculation_Company("EmissionCalculatorModule.Calculation_Company");

		private java.lang.String metaName;

		MemberNames(java.lang.String s)
		{
			metaName = s;
		}

		@java.lang.Override
		public java.lang.String toString()
		{
			return metaName;
		}
	}

	public Calculation(com.mendix.systemwideinterfaces.core.IContext context)
	{
		this(context, com.mendix.core.Core.instantiate(context, "EmissionCalculatorModule.Calculation"));
	}

	protected Calculation(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject calculationMendixObject)
	{
		if (calculationMendixObject == null)
			throw new java.lang.IllegalArgumentException("The given object cannot be null.");
		if (!com.mendix.core.Core.isSubClassOf("EmissionCalculatorModule.Calculation", calculationMendixObject.getType()))
			throw new java.lang.IllegalArgumentException("The given object is not a EmissionCalculatorModule.Calculation");

		this.calculationMendixObject = calculationMendixObject;
		this.context = context;
	}

	/**
	 * @deprecated Use 'Calculation.load(IContext, IMendixIdentifier)' instead.
	 */
	@java.lang.Deprecated
	public static emissioncalculatormodule.proxies.Calculation initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		return emissioncalculatormodule.proxies.Calculation.load(context, mendixIdentifier);
	}

	/**
	 * Initialize a proxy using context (recommended). This context will be used for security checking when the get- and set-methods without context parameters are called.
	 * The get- and set-methods with context parameter should be used when for instance sudo access is necessary (IContext.createSudoClone() can be used to obtain sudo access).
	 */
	public static emissioncalculatormodule.proxies.Calculation initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixObject)
	{
		return new emissioncalculatormodule.proxies.Calculation(context, mendixObject);
	}

	public static emissioncalculatormodule.proxies.Calculation load(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		com.mendix.systemwideinterfaces.core.IMendixObject mendixObject = com.mendix.core.Core.retrieveId(context, mendixIdentifier);
		return emissioncalculatormodule.proxies.Calculation.initialize(context, mendixObject);
	}

	public static java.util.List<emissioncalculatormodule.proxies.Calculation> load(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String xpathConstraint) throws com.mendix.core.CoreException
	{
		java.util.List<emissioncalculatormodule.proxies.Calculation> result = new java.util.ArrayList<emissioncalculatormodule.proxies.Calculation>();
		for (com.mendix.systemwideinterfaces.core.IMendixObject obj : com.mendix.core.Core.retrieveXPathQuery(context, "//EmissionCalculatorModule.Calculation" + xpathConstraint))
			result.add(emissioncalculatormodule.proxies.Calculation.initialize(context, obj));
		return result;
	}

	/**
	 * Commit the changes made on this proxy object.
	 */
	public final void commit() throws com.mendix.core.CoreException
	{
		com.mendix.core.Core.commit(context, getMendixObject());
	}

	/**
	 * Commit the changes made on this proxy object using the specified context.
	 */
	public final void commit(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		com.mendix.core.Core.commit(context, getMendixObject());
	}

	/**
	 * Delete the object.
	 */
	public final void delete()
	{
		com.mendix.core.Core.delete(context, getMendixObject());
	}

	/**
	 * Delete the object using the specified context.
	 */
	public final void delete(com.mendix.systemwideinterfaces.core.IContext context)
	{
		com.mendix.core.Core.delete(context, getMendixObject());
	}
	/**
	 * @return value of Weight
	 */
	public final java.math.BigDecimal getWeight()
	{
		return getWeight(getContext());
	}

	/**
	 * @param context
	 * @return value of Weight
	 */
	public final java.math.BigDecimal getWeight(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.math.BigDecimal) getMendixObject().getValue(context, MemberNames.Weight.toString());
	}

	/**
	 * Set value of Weight
	 * @param weight
	 */
	public final void setWeight(java.math.BigDecimal weight)
	{
		setWeight(getContext(), weight);
	}

	/**
	 * Set value of Weight
	 * @param context
	 * @param weight
	 */
	public final void setWeight(com.mendix.systemwideinterfaces.core.IContext context, java.math.BigDecimal weight)
	{
		getMendixObject().setValue(context, MemberNames.Weight.toString(), weight);
	}

	/**
	 * @return value of IntermodalEmissions
	 */
	public final java.math.BigDecimal getIntermodalEmissions()
	{
		return getIntermodalEmissions(getContext());
	}

	/**
	 * @param context
	 * @return value of IntermodalEmissions
	 */
	public final java.math.BigDecimal getIntermodalEmissions(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.math.BigDecimal) getMendixObject().getValue(context, MemberNames.IntermodalEmissions.toString());
	}

	/**
	 * Set value of IntermodalEmissions
	 * @param intermodalemissions
	 */
	public final void setIntermodalEmissions(java.math.BigDecimal intermodalemissions)
	{
		setIntermodalEmissions(getContext(), intermodalemissions);
	}

	/**
	 * Set value of IntermodalEmissions
	 * @param context
	 * @param intermodalemissions
	 */
	public final void setIntermodalEmissions(com.mendix.systemwideinterfaces.core.IContext context, java.math.BigDecimal intermodalemissions)
	{
		getMendixObject().setValue(context, MemberNames.IntermodalEmissions.toString(), intermodalemissions);
	}

	/**
	 * @return value of TruckEmissions
	 */
	public final java.math.BigDecimal getTruckEmissions()
	{
		return getTruckEmissions(getContext());
	}

	/**
	 * @param context
	 * @return value of TruckEmissions
	 */
	public final java.math.BigDecimal getTruckEmissions(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.math.BigDecimal) getMendixObject().getValue(context, MemberNames.TruckEmissions.toString());
	}

	/**
	 * Set value of TruckEmissions
	 * @param truckemissions
	 */
	public final void setTruckEmissions(java.math.BigDecimal truckemissions)
	{
		setTruckEmissions(getContext(), truckemissions);
	}

	/**
	 * Set value of TruckEmissions
	 * @param context
	 * @param truckemissions
	 */
	public final void setTruckEmissions(com.mendix.systemwideinterfaces.core.IContext context, java.math.BigDecimal truckemissions)
	{
		getMendixObject().setValue(context, MemberNames.TruckEmissions.toString(), truckemissions);
	}

	/**
	 * @return value of OriginCity
	 */
	public final java.lang.String getOriginCity()
	{
		return getOriginCity(getContext());
	}

	/**
	 * @param context
	 * @return value of OriginCity
	 */
	public final java.lang.String getOriginCity(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.OriginCity.toString());
	}

	/**
	 * Set value of OriginCity
	 * @param origincity
	 */
	public final void setOriginCity(java.lang.String origincity)
	{
		setOriginCity(getContext(), origincity);
	}

	/**
	 * Set value of OriginCity
	 * @param context
	 * @param origincity
	 */
	public final void setOriginCity(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String origincity)
	{
		getMendixObject().setValue(context, MemberNames.OriginCity.toString(), origincity);
	}

	/**
	 * @return value of DestinationCity
	 */
	public final java.lang.String getDestinationCity()
	{
		return getDestinationCity(getContext());
	}

	/**
	 * @param context
	 * @return value of DestinationCity
	 */
	public final java.lang.String getDestinationCity(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.DestinationCity.toString());
	}

	/**
	 * Set value of DestinationCity
	 * @param destinationcity
	 */
	public final void setDestinationCity(java.lang.String destinationcity)
	{
		setDestinationCity(getContext(), destinationcity);
	}

	/**
	 * Set value of DestinationCity
	 * @param context
	 * @param destinationcity
	 */
	public final void setDestinationCity(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String destinationcity)
	{
		getMendixObject().setValue(context, MemberNames.DestinationCity.toString(), destinationcity);
	}

	/**
	 * @return value of DistanceKM
	 */
	public final java.math.BigDecimal getDistanceKM()
	{
		return getDistanceKM(getContext());
	}

	/**
	 * @param context
	 * @return value of DistanceKM
	 */
	public final java.math.BigDecimal getDistanceKM(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.math.BigDecimal) getMendixObject().getValue(context, MemberNames.DistanceKM.toString());
	}

	/**
	 * Set value of DistanceKM
	 * @param distancekm
	 */
	public final void setDistanceKM(java.math.BigDecimal distancekm)
	{
		setDistanceKM(getContext(), distancekm);
	}

	/**
	 * Set value of DistanceKM
	 * @param context
	 * @param distancekm
	 */
	public final void setDistanceKM(com.mendix.systemwideinterfaces.core.IContext context, java.math.BigDecimal distancekm)
	{
		getMendixObject().setValue(context, MemberNames.DistanceKM.toString(), distancekm);
	}

	/**
	 * @return value of Calculation_Company
	 */
	public final emissioncalculatormodule.proxies.Company getCalculation_Company() throws com.mendix.core.CoreException
	{
		return getCalculation_Company(getContext());
	}

	/**
	 * @param context
	 * @return value of Calculation_Company
	 */
	public final emissioncalculatormodule.proxies.Company getCalculation_Company(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		emissioncalculatormodule.proxies.Company result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Calculation_Company.toString());
		if (identifier != null)
			result = emissioncalculatormodule.proxies.Company.load(context, identifier);
		return result;
	}

	/**
	 * Set value of Calculation_Company
	 * @param calculation_company
	 */
	public final void setCalculation_Company(emissioncalculatormodule.proxies.Company calculation_company)
	{
		setCalculation_Company(getContext(), calculation_company);
	}

	/**
	 * Set value of Calculation_Company
	 * @param context
	 * @param calculation_company
	 */
	public final void setCalculation_Company(com.mendix.systemwideinterfaces.core.IContext context, emissioncalculatormodule.proxies.Company calculation_company)
	{
		if (calculation_company == null)
			getMendixObject().setValue(context, MemberNames.Calculation_Company.toString(), null);
		else
			getMendixObject().setValue(context, MemberNames.Calculation_Company.toString(), calculation_company.getMendixObject().getId());
	}

	/**
	 * @return the IMendixObject instance of this proxy for use in the Core interface.
	 */
	public final com.mendix.systemwideinterfaces.core.IMendixObject getMendixObject()
	{
		return calculationMendixObject;
	}

	/**
	 * @return the IContext instance of this proxy, or null if no IContext instance was specified at initialization.
	 */
	public final com.mendix.systemwideinterfaces.core.IContext getContext()
	{
		return context;
	}

	@java.lang.Override
	public boolean equals(Object obj)
	{
		if (obj == this)
			return true;

		if (obj != null && getClass().equals(obj.getClass()))
		{
			final emissioncalculatormodule.proxies.Calculation that = (emissioncalculatormodule.proxies.Calculation) obj;
			return getMendixObject().equals(that.getMendixObject());
		}
		return false;
	}

	@java.lang.Override
	public int hashCode()
	{
		return getMendixObject().hashCode();
	}

	/**
	 * @return String name of this class
	 */
	public static java.lang.String getType()
	{
		return "EmissionCalculatorModule.Calculation";
	}

	/**
	 * @return String GUID from this object, format: ID_0000000000
	 * @deprecated Use getMendixObject().getId().toLong() to get a unique identifier for this object.
	 */
	@java.lang.Deprecated
	public java.lang.String getGUID()
	{
		return "ID_" + getMendixObject().getId().toLong();
	}
}