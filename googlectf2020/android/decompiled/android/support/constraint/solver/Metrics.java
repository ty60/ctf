package android.support.constraint.solver;
public class Metrics {
    public long additionalMeasures;
    public long barrierConnectionResolved;
    public long bfs;
    public long centerConnectionResolved;
    public long chainConnectionResolved;
    public long constraints;
    public long errors;
    public long extravariables;
    public long fullySolved;
    public long graphOptimizer;
    public long iterations;
    public long lastTableSize;
    public long matchConnectionResolved;
    public long maxRows;
    public long maxTableSize;
    public long maxVariables;
    public long measures;
    public long minimize;
    public long minimizeGoal;
    public long nonresolvedWidgets;
    public long oldresolvedWidgets;
    public long optimize;
    public long pivots;
    public java.util.ArrayList problematicLayouts;
    public long resolutions;
    public long resolvedWidgets;
    public long simpleconstraints;
    public long slackvariables;
    public long tableSizeIncrease;
    public long variables;

    public Metrics()
    {
        this.problematicLayouts = new java.util.ArrayList();
        return;
    }

    public void reset()
    {
        this.measures = 0;
        this.additionalMeasures = 0;
        this.resolutions = 0;
        this.tableSizeIncrease = 0;
        this.maxTableSize = 0;
        this.lastTableSize = 0;
        this.maxVariables = 0;
        this.maxRows = 0;
        this.minimize = 0;
        this.minimizeGoal = 0;
        this.constraints = 0;
        this.simpleconstraints = 0;
        this.optimize = 0;
        this.iterations = 0;
        this.pivots = 0;
        this.bfs = 0;
        this.variables = 0;
        this.errors = 0;
        this.slackvariables = 0;
        this.extravariables = 0;
        this.fullySolved = 0;
        this.graphOptimizer = 0;
        this.resolvedWidgets = 0;
        this.oldresolvedWidgets = 0;
        this.nonresolvedWidgets = 0;
        this.centerConnectionResolved = 0;
        this.matchConnectionResolved = 0;
        this.chainConnectionResolved = 0;
        this.barrierConnectionResolved = 0;
        this.problematicLayouts.clear();
        return;
    }

    public String toString()
    {
        String v0_1 = new StringBuilder();
        v0_1.append("\n*** Metrics ***\nmeasures: ");
        v0_1.append(this.measures);
        v0_1.append("\nadditionalMeasures: ");
        v0_1.append(this.additionalMeasures);
        v0_1.append("\nresolutions passes: ");
        v0_1.append(this.resolutions);
        v0_1.append("\ntable increases: ");
        v0_1.append(this.tableSizeIncrease);
        v0_1.append("\nmaxTableSize: ");
        v0_1.append(this.maxTableSize);
        v0_1.append("\nmaxVariables: ");
        v0_1.append(this.maxVariables);
        v0_1.append("\nmaxRows: ");
        v0_1.append(this.maxRows);
        v0_1.append("\n\nminimize: ");
        v0_1.append(this.minimize);
        v0_1.append("\nminimizeGoal: ");
        v0_1.append(this.minimizeGoal);
        v0_1.append("\nconstraints: ");
        v0_1.append(this.constraints);
        v0_1.append("\nsimpleconstraints: ");
        v0_1.append(this.simpleconstraints);
        v0_1.append("\noptimize: ");
        v0_1.append(this.optimize);
        v0_1.append("\niterations: ");
        v0_1.append(this.iterations);
        v0_1.append("\npivots: ");
        v0_1.append(this.pivots);
        v0_1.append("\nbfs: ");
        v0_1.append(this.bfs);
        v0_1.append("\nvariables: ");
        v0_1.append(this.variables);
        v0_1.append("\nerrors: ");
        v0_1.append(this.errors);
        v0_1.append("\nslackvariables: ");
        v0_1.append(this.slackvariables);
        v0_1.append("\nextravariables: ");
        v0_1.append(this.extravariables);
        v0_1.append("\nfullySolved: ");
        v0_1.append(this.fullySolved);
        v0_1.append("\ngraphOptimizer: ");
        v0_1.append(this.graphOptimizer);
        v0_1.append("\nresolvedWidgets: ");
        v0_1.append(this.resolvedWidgets);
        v0_1.append("\noldresolvedWidgets: ");
        v0_1.append(this.oldresolvedWidgets);
        v0_1.append("\nnonresolvedWidgets: ");
        v0_1.append(this.nonresolvedWidgets);
        v0_1.append("\ncenterConnectionResolved: ");
        v0_1.append(this.centerConnectionResolved);
        v0_1.append("\nmatchConnectionResolved: ");
        v0_1.append(this.matchConnectionResolved);
        v0_1.append("\nchainConnectionResolved: ");
        v0_1.append(this.chainConnectionResolved);
        v0_1.append("\nbarrierConnectionResolved: ");
        v0_1.append(this.barrierConnectionResolved);
        v0_1.append("\nproblematicsLayouts: ");
        v0_1.append(this.problematicLayouts);
        v0_1.append("\n");
        return v0_1.toString();
    }
}
