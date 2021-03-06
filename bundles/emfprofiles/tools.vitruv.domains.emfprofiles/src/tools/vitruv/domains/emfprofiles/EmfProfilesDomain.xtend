package tools.vitruv.domains.emfprofiles

import tools.vitruv.framework.tuid.TuidCalculatorAndResolver
import static tools.vitruv.domains.emfprofiles.EmfProfilesNamespace.*;
import tools.vitruv.domains.emfprofiles.tuid.EmfProfilesTuidCalculatorAndResolver
import tools.vitruv.domains.emf.builder.VitruviusEmfBuilderApplicator
import tools.vitruv.framework.domains.AbstractTuidAwareVitruvDomain

class EmfProfilesDomain extends AbstractTuidAwareVitruvDomain {
	public static final String METAMODEL_NAME = "EmfProfiles"
	
	package new() {
		super(METAMODEL_NAME, ROOT_PACKAGE, #{PROFILE_PACKAGE}, generateTuidCalculator());
	}

	def protected static TuidCalculatorAndResolver generateTuidCalculator() {
		return new EmfProfilesTuidCalculatorAndResolver(METAMODEL_NAMESPACE);
	}
	
	
	override getBuilderApplicator() {
		return new VitruviusEmfBuilderApplicator();
	}
	
}