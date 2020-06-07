package fr.uga.pddl4j.plan;

import fr.uga.pddl4j.problem.Action;
import fr.uga.pddl4j.problem.Method;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class HDDLCertificate extends SequentialPlan {

    /**
     * List of tasks solved by actions in the sequential plan
     */
    private List<Integer> taskIDs = new ArrayList<>();

    /**
     * Decomposition of the initial task
     */
    private List<Method> decomposition = new LinkedList<>();

    public HDDLCertificate() {
        super();
    }

    public HDDLCertificate(final Plan plan) {
        super(plan);
    }

    public List<Integer> getTaskIDs() {
        return taskIDs;
    }

    public List<Method> getDecomposition() {
        return decomposition;
    }

    public void setDecomposition(List<Method> decomposition) {
        this.decomposition = decomposition;
    }

    public final boolean add(final int time, final Action action, final Integer id) {
        if (this.isTimeSpecifierOutOfBound(time)) {
            return false;
        }
        this.actions().add(time, action);
        this.taskIDs.add(time, id);
        return true;
    }
}
