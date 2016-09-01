package edu.kit.ipd.sdq.vitruvius.domains.java.monitorededitor;

import java.util.Collection;

import edu.kit.ipd.sdq.vitruvius.domains.java.monitorededitor.changeclassification.events.ChangeClassifyingEventExtension;

/**
 * @author messinger
 * 
 *         Visitor for {@link ChangeClassifyingEventExtension}s which is responsible for handling a
 *         predefined list of change types.
 * 
 */
public interface ChangeEventExtendedVisitor {

    public void visit(ChangeClassifyingEventExtension changeClassifyingEvent, ChangeSubmitter submitter);

    public Collection<Class<? extends ChangeClassifyingEventExtension>> getTreatedClasses();
}
