package fr.uga.pddl4j.plan;

import fr.uga.pddl4j.problem.Action;

import java.util.ArrayList;
import java.util.List;

public class HDDLCertificate extends SequentialPlan {

    private List<Integer> operatorIDs = new ArrayList<>();

    public HDDLCertificate() {
        super();
    }

    public HDDLCertificate(final Plan plan) {
        super(plan);
    }

    public List<Integer> getOperatorIDs() {
        return operatorIDs;
    }

    public final boolean add(final int time, final Action action, final Integer id) {
        if (this.isTimeSpecifierOutOfBound(time)) {
            return false;
        }
        this.actions().add(time, action);
        this.operatorIDs.add(time, id);
        return true;
    }
}
