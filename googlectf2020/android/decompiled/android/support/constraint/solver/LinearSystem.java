package android.support.constraint.solver;
public class LinearSystem {
    private static final boolean DEBUG;
    public static final boolean FULL_DEBUG;
    private static int POOL_SIZE;
    public static android.support.constraint.solver.Metrics sMetrics;
    private int TABLE_SIZE;
    public boolean graphOptimizer;
    private boolean[] mAlreadyTestedCandidates;
    final android.support.constraint.solver.Cache mCache;
    private android.support.constraint.solver.LinearSystem$Row mGoal;
    private int mMaxColumns;
    private int mMaxRows;
    int mNumColumns;
    int mNumRows;
    private android.support.constraint.solver.SolverVariable[] mPoolVariables;
    private int mPoolVariablesCount;
    android.support.constraint.solver.ArrayRow[] mRows;
    private final android.support.constraint.solver.LinearSystem$Row mTempGoal;
    private java.util.HashMap mVariables;
    int mVariablesID;
    private android.support.constraint.solver.ArrayRow[] tempClientsCopy;

    static LinearSystem()
    {
        android.support.constraint.solver.LinearSystem.POOL_SIZE = 1000;
        return;
    }

    public LinearSystem()
    {
        this.mVariablesID = 0;
        this.mVariables = 0;
        this.TABLE_SIZE = 32;
        this.mMaxColumns = this.TABLE_SIZE;
        this.mRows = 0;
        this.graphOptimizer = 0;
        android.support.constraint.solver.Cache v1_1 = new boolean[this.TABLE_SIZE];
        this.mAlreadyTestedCandidates = v1_1;
        this.mNumColumns = 1;
        this.mNumRows = 0;
        this.mMaxRows = this.TABLE_SIZE;
        android.support.constraint.solver.Cache v1_5 = new android.support.constraint.solver.SolverVariable[android.support.constraint.solver.LinearSystem.POOL_SIZE];
        this.mPoolVariables = v1_5;
        this.mPoolVariablesCount = 0;
        android.support.constraint.solver.ArrayRow v0_2 = new android.support.constraint.solver.ArrayRow[this.TABLE_SIZE];
        this.tempClientsCopy = v0_2;
        android.support.constraint.solver.ArrayRow v0_4 = new android.support.constraint.solver.ArrayRow[this.TABLE_SIZE];
        this.mRows = v0_4;
        this.releaseRows();
        this.mCache = new android.support.constraint.solver.Cache();
        this.mGoal = new android.support.constraint.solver.GoalRow(this.mCache);
        this.mTempGoal = new android.support.constraint.solver.ArrayRow(this.mCache);
        return;
    }

    private android.support.constraint.solver.SolverVariable acquireSolverVariable(android.support.constraint.solver.SolverVariable$Type p5, String p6)
    {
        android.support.constraint.solver.SolverVariable v0_2 = ((android.support.constraint.solver.SolverVariable) this.mCache.solverVariablePool.acquire());
        if (v0_2 != null) {
            v0_2.reset();
            v0_2.setType(p5, p6);
        } else {
            v0_2 = new android.support.constraint.solver.SolverVariable(p5, p6);
            v0_2.setType(p5, p6);
        }
        if (this.mPoolVariablesCount >= android.support.constraint.solver.LinearSystem.POOL_SIZE) {
            android.support.constraint.solver.LinearSystem.POOL_SIZE = (android.support.constraint.solver.LinearSystem.POOL_SIZE * 2);
            this.mPoolVariables = ((android.support.constraint.solver.SolverVariable[]) java.util.Arrays.copyOf(this.mPoolVariables, android.support.constraint.solver.LinearSystem.POOL_SIZE));
        }
        android.support.constraint.solver.SolverVariable[] v1_6 = this.mPoolVariables;
        int v2_2 = this.mPoolVariablesCount;
        this.mPoolVariablesCount = (v2_2 + 1);
        v1_6[v2_2] = v0_2;
        return v0_2;
    }

    private void addError(android.support.constraint.solver.ArrayRow p2)
    {
        p2.addError(this, 0);
        return;
    }

    private final void addRow(android.support.constraint.solver.ArrayRow p4)
    {
        if (this.mRows[this.mNumRows] != null) {
            this.mCache.arrayRowPool.release(this.mRows[this.mNumRows]);
        }
        this.mRows[this.mNumRows] = p4;
        p4.variable.definitionId = this.mNumRows;
        this.mNumRows = (this.mNumRows + 1);
        p4.variable.updateReferencesWithNewDefinition(p4);
        return;
    }

    private void addSingleError(android.support.constraint.solver.ArrayRow p2, int p3)
    {
        this.addSingleError(p2, p3, 0);
        return;
    }

    private void computeValues()
    {
        int v0 = 0;
        while (v0 < this.mNumRows) {
            android.support.constraint.solver.ArrayRow v1_2 = this.mRows[v0];
            v1_2.variable.computedValue = v1_2.constantValue;
            v0++;
        }
        return;
    }

    public static android.support.constraint.solver.ArrayRow createRowCentering(android.support.constraint.solver.LinearSystem p9, android.support.constraint.solver.SolverVariable p10, android.support.constraint.solver.SolverVariable p11, int p12, float p13, android.support.constraint.solver.SolverVariable p14, android.support.constraint.solver.SolverVariable p15, int p16, boolean p17)
    {
        android.support.constraint.solver.ArrayRow v8 = p9.createRow();
        v8.createRowCentering(p10, p11, p12, p13, p14, p15, p16);
        if (p17) {
            v8.addError(p9, 4);
        }
        return v8;
    }

    public static android.support.constraint.solver.ArrayRow createRowDimensionPercent(android.support.constraint.solver.LinearSystem p2, android.support.constraint.solver.SolverVariable p3, android.support.constraint.solver.SolverVariable p4, android.support.constraint.solver.SolverVariable p5, float p6, boolean p7)
    {
        android.support.constraint.solver.ArrayRow v0 = p2.createRow();
        if (p7) {
            p2.addError(v0);
        }
        return v0.createRowDimensionPercent(p3, p4, p5, p6);
    }

    public static android.support.constraint.solver.ArrayRow createRowEquals(android.support.constraint.solver.LinearSystem p2, android.support.constraint.solver.SolverVariable p3, android.support.constraint.solver.SolverVariable p4, int p5, boolean p6)
    {
        android.support.constraint.solver.ArrayRow v0 = p2.createRow();
        v0.createRowEquals(p3, p4, p5);
        if (p6) {
            p2.addSingleError(v0, 1);
        }
        return v0;
    }

    public static android.support.constraint.solver.ArrayRow createRowGreaterThan(android.support.constraint.solver.LinearSystem p4, android.support.constraint.solver.SolverVariable p5, android.support.constraint.solver.SolverVariable p6, int p7, boolean p8)
    {
        android.support.constraint.solver.SolverVariable v0 = p4.createSlackVariable();
        android.support.constraint.solver.ArrayRow v1 = p4.createRow();
        v1.createRowGreaterThan(p5, p6, v0, p7);
        if (p8) {
            p4.addSingleError(v1, ((int) (-1082130432 * v1.variables.get(v0))));
        }
        return v1;
    }

    public static android.support.constraint.solver.ArrayRow createRowLowerThan(android.support.constraint.solver.LinearSystem p4, android.support.constraint.solver.SolverVariable p5, android.support.constraint.solver.SolverVariable p6, int p7, boolean p8)
    {
        android.support.constraint.solver.SolverVariable v0 = p4.createSlackVariable();
        android.support.constraint.solver.ArrayRow v1 = p4.createRow();
        v1.createRowLowerThan(p5, p6, v0, p7);
        if (p8) {
            p4.addSingleError(v1, ((int) (-1082130432 * v1.variables.get(v0))));
        }
        return v1;
    }

    private android.support.constraint.solver.SolverVariable createVariable(String p6, android.support.constraint.solver.SolverVariable$Type p7)
    {
        if (android.support.constraint.solver.LinearSystem.sMetrics != null) {
            android.support.constraint.solver.SolverVariable v0_3 = android.support.constraint.solver.LinearSystem.sMetrics;
            v0_3.variables = (v0_3.variables + 1);
        }
        if ((this.mNumColumns + 1) >= this.mMaxColumns) {
            this.increaseTableSize();
        }
        android.support.constraint.solver.SolverVariable v0_2 = this.acquireSolverVariable(p7, 0);
        v0_2.setName(p6);
        this.mVariablesID = (this.mVariablesID + 1);
        this.mNumColumns = (this.mNumColumns + 1);
        v0_2.id = this.mVariablesID;
        if (this.mVariables == null) {
            this.mVariables = new java.util.HashMap();
        }
        this.mVariables.put(p6, v0_2);
        this.mCache.mIndexedVariables[this.mVariablesID] = v0_2;
        return v0_2;
    }

    private void displayRows()
    {
        this.displaySolverVariables();
        String v0_0 = "";
        java.io.PrintStream v1_1 = 0;
        while (v1_1 < this.mNumRows) {
            String v2_2 = new StringBuilder();
            v2_2.append(v0_0);
            v2_2.append(this.mRows[v1_1]);
            String v0_2 = v2_2.toString();
            String v2_4 = new StringBuilder();
            v2_4.append(v0_2);
            v2_4.append("\n");
            v0_0 = v2_4.toString();
            v1_1++;
        }
        java.io.PrintStream v1_3 = new StringBuilder();
        v1_3.append(v0_0);
        v1_3.append(this.mGoal);
        v1_3.append("\n");
        System.out.println(v1_3.toString());
        return;
    }

    private void displaySolverVariables()
    {
        String v0_1 = new StringBuilder();
        v0_1.append("Display Rows (");
        v0_1.append(this.mNumRows);
        v0_1.append("x");
        v0_1.append(this.mNumColumns);
        v0_1.append(")\n");
        System.out.println(v0_1.toString());
        return;
    }

    private int enforceBFS(android.support.constraint.solver.LinearSystem$Row p18)
    {
        int v1 = 0;
        int v2 = 0;
        int v4_0 = 0;
        while(true) {
            int v6_1 = 0;
            if (v4_0 < this.mNumRows) {
                if ((this.mRows[v4_0].variable.mType != android.support.constraint.solver.SolverVariable$Type.UNRESTRICTED) && (this.mRows[v4_0].constantValue < 0)) {
                    break;
                }
                v4_0++;
            }
            if (v2 != 0) {
                int v4_1 = 0;
                v1 = 0;
                while (v4_1 == 0) {
                    if (android.support.constraint.solver.LinearSystem.sMetrics != null) {
                        int v5_2 = android.support.constraint.solver.LinearSystem.sMetrics;
                        v5_2.bfs = (v5_2.bfs + 1);
                    }
                    v1++;
                    int v10 = -1;
                    int v11 = -1;
                    int v12 = 0;
                    float v9_0 = 2139095039;
                    int v5_0 = 0;
                    while (v5_0 < this.mNumRows) {
                        long v13_3 = this.mRows[v5_0];
                        if ((v13_3.variable.mType != android.support.constraint.solver.SolverVariable$Type.UNRESTRICTED) && ((!v13_3.isSimpleDefinition) && (v13_3.constantValue < v6_1))) {
                            int v3_0 = 1;
                            while (v3_0 < this.mNumColumns) {
                                android.support.constraint.solver.SolverVariable v15_4 = this.mCache.mIndexedVariables[v3_0];
                                long v7_7 = v13_3.variables.get(v15_4);
                                if (v7_7 > v6_1) {
                                    int v8_0 = 0;
                                    while (v8_0 < 7) {
                                        int v6_8 = (v15_4.strengthVector[v8_0] / v7_7);
                                        if (((v6_8 < v9_0) && (v8_0 == v12)) || (v8_0 > v12)) {
                                            v9_0 = v6_8;
                                            v10 = v5_0;
                                            v11 = v3_0;
                                            v12 = v8_0;
                                        }
                                        v8_0++;
                                    }
                                }
                                v3_0++;
                                v6_1 = 0;
                            }
                        }
                        v5_0++;
                        v6_1 = 0;
                    }
                    if (v10 == -1) {
                        v4_1 = 1;
                    } else {
                        int v5_6 = this.mRows[v10];
                        v5_6.variable.definitionId = -1;
                        if (android.support.constraint.solver.LinearSystem.sMetrics != null) {
                            int v3_3 = android.support.constraint.solver.LinearSystem.sMetrics;
                            v3_3.pivots = (v3_3.pivots + 1);
                        }
                        v5_6.pivot(this.mCache.mIndexedVariables[v11]);
                        v5_6.variable.definitionId = v10;
                        v5_6.variable.updateReferencesWithNewDefinition(v5_6);
                    }
                    if (v1 > (this.mNumColumns / 2)) {
                        v4_1 = 1;
                    }
                    v6_1 = 0;
                }
            }
            return v1;
        }
        v2 = 1;
    }

    private String getDisplaySize(int p5)
    {
        int v0_2 = (((p5 * 4) / 1024) / 1024);
        if (v0_2 <= 0) {
            int v1_4 = ((p5 * 4) / 1024);
            if (v1_4 <= 0) {
                String v2_7 = new StringBuilder();
                v2_7.append("");
                v2_7.append((p5 * 4));
                v2_7.append(" bytes");
                return v2_7.toString();
            } else {
                String v2_2 = new StringBuilder();
                v2_2.append("");
                v2_2.append(v1_4);
                v2_2.append(" Kb");
                return v2_2.toString();
            }
        } else {
            int v1_1 = new StringBuilder();
            v1_1.append("");
            v1_1.append(v0_2);
            v1_1.append(" Mb");
            return v1_1.toString();
        }
    }

    private String getDisplayStrength(int p2)
    {
        if (p2 != 1) {
            if (p2 != 2) {
                if (p2 != 3) {
                    if (p2 != 4) {
                        if (p2 != 5) {
                            if (p2 != 6) {
                                return "NONE";
                            } else {
                                return "FIXED";
                            }
                        } else {
                            return "EQUALITY";
                        }
                    } else {
                        return "HIGHEST";
                    }
                } else {
                    return "HIGH";
                }
            } else {
                return "MEDIUM";
            }
        } else {
            return "LOW";
        }
    }

    public static android.support.constraint.solver.Metrics getMetrics()
    {
        return android.support.constraint.solver.LinearSystem.sMetrics;
    }

    private void increaseTableSize()
    {
        this.TABLE_SIZE = (this.TABLE_SIZE * 2);
        this.mRows = ((android.support.constraint.solver.ArrayRow[]) java.util.Arrays.copyOf(this.mRows, this.TABLE_SIZE));
        this.mCache.mIndexedVariables = ((android.support.constraint.solver.SolverVariable[]) java.util.Arrays.copyOf(this.mCache.mIndexedVariables, this.TABLE_SIZE));
        android.support.constraint.solver.Metrics v0_3 = new boolean[this.TABLE_SIZE];
        this.mAlreadyTestedCandidates = v0_3;
        this.mMaxColumns = this.TABLE_SIZE;
        this.mMaxRows = this.TABLE_SIZE;
        if (android.support.constraint.solver.LinearSystem.sMetrics != null) {
            android.support.constraint.solver.Metrics v0_7 = android.support.constraint.solver.LinearSystem.sMetrics;
            v0_7.tableSizeIncrease = (v0_7.tableSizeIncrease + 1);
            android.support.constraint.solver.LinearSystem.sMetrics.maxTableSize = Math.max(android.support.constraint.solver.LinearSystem.sMetrics.maxTableSize, ((long) this.TABLE_SIZE));
            android.support.constraint.solver.LinearSystem.sMetrics.lastTableSize = android.support.constraint.solver.LinearSystem.sMetrics.maxTableSize;
        }
        return;
    }

    private final int optimize(android.support.constraint.solver.LinearSystem$Row p17, boolean p18)
    {
        if (android.support.constraint.solver.LinearSystem.sMetrics != null) {
            int v1_1 = android.support.constraint.solver.LinearSystem.sMetrics;
            v1_1.optimize = (v1_1.optimize + 1);
        }
        int v1_2 = 0;
        int v4_0 = 0;
        android.support.constraint.solver.SolverVariable v6_0 = 0;
        while (v6_0 < this.mNumColumns) {
            this.mAlreadyTestedCandidates[v6_0] = 0;
            v6_0++;
        }
        while (v1_2 == 0) {
            if (android.support.constraint.solver.LinearSystem.sMetrics != null) {
                android.support.constraint.solver.SolverVariable v6_2 = android.support.constraint.solver.LinearSystem.sMetrics;
                v6_2.iterations = (v6_2.iterations + 1);
            }
            v4_0++;
            if (v4_0 < (this.mNumColumns * 2)) {
                if (p17.getKey() != null) {
                    this.mAlreadyTestedCandidates[p17.getKey().id] = 1;
                }
                android.support.constraint.solver.SolverVariable v6_8 = p17.getPivotCandidate(this, this.mAlreadyTestedCandidates);
                if (v6_8 != null) {
                    if (!this.mAlreadyTestedCandidates[v6_8.id]) {
                        this.mAlreadyTestedCandidates[v6_8.id] = 1;
                    } else {
                        return v4_0;
                    }
                }
                if (v6_8 == null) {
                    v1_2 = 1;
                } else {
                    android.support.constraint.solver.SolverVariable v9_3 = -1;
                    float v10_2 = 2139095039;
                    android.support.constraint.solver.SolverVariable v7_6 = 0;
                    while (v7_6 < this.mNumRows) {
                        android.support.constraint.solver.ArrayRow v11_4 = this.mRows[v7_6];
                        if ((v11_4.variable.mType != android.support.constraint.solver.SolverVariable$Type.UNRESTRICTED) && ((!v11_4.isSimpleDefinition) && (v11_4.hasVariable(v6_8)))) {
                            float v13_4 = v11_4.variables.get(v6_8);
                            if (v13_4 < 0) {
                                float v14_5 = ((- v11_4.constantValue) / v13_4);
                                if (v14_5 < v10_2) {
                                    v10_2 = v14_5;
                                    v9_3 = v7_6;
                                }
                            }
                        }
                        v7_6++;
                    }
                    if (v9_3 <= -1) {
                        v1_2 = 1;
                    } else {
                        android.support.constraint.solver.ArrayRow v11_2 = this.mRows[v9_3];
                        v11_2.variable.definitionId = -1;
                        if (android.support.constraint.solver.LinearSystem.sMetrics != null) {
                            android.support.constraint.solver.SolverVariable v7_9 = android.support.constraint.solver.LinearSystem.sMetrics;
                            v7_9.pivots = (v7_9.pivots + 1);
                        }
                        v11_2.pivot(v6_8);
                        v11_2.variable.definitionId = v9_3;
                        v11_2.variable.updateReferencesWithNewDefinition(v11_2);
                    }
                }
            } else {
                return v4_0;
            }
        }
        return v4_0;
    }

    private void releaseRows()
    {
        int v0 = 0;
        while (v0 < this.mRows.length) {
            android.support.constraint.solver.ArrayRow v1_3 = this.mRows[v0];
            if (v1_3 != null) {
                this.mCache.arrayRowPool.release(v1_3);
            }
            this.mRows[v0] = 0;
            v0++;
        }
        return;
    }

    private final void updateRowFromVariables(android.support.constraint.solver.ArrayRow p3)
    {
        if (this.mNumRows > 0) {
            p3.variables.updateFromSystem(p3, this.mRows);
            if (p3.variables.currentSize == 0) {
                p3.isSimpleDefinition = 1;
            }
        }
        return;
    }

    public void addCenterPoint(android.support.constraint.solver.widgets.ConstraintWidget p22, android.support.constraint.solver.widgets.ConstraintWidget p23, float p24, int p25)
    {
        android.support.constraint.solver.SolverVariable v5_2 = this.createObjectVariable(p22.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT));
        android.support.constraint.solver.SolverVariable v13 = this.createObjectVariable(p22.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP));
        android.support.constraint.solver.SolverVariable v14 = this.createObjectVariable(p22.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT));
        android.support.constraint.solver.SolverVariable v15 = this.createObjectVariable(p22.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM));
        android.support.constraint.solver.SolverVariable v16 = this.createObjectVariable(p23.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT));
        android.support.constraint.solver.SolverVariable v17 = this.createObjectVariable(p23.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP));
        android.support.constraint.solver.SolverVariable v18 = this.createObjectVariable(p23.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT));
        android.support.constraint.solver.SolverVariable v19 = this.createObjectVariable(p23.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM));
        android.support.constraint.solver.ArrayRow v6_14 = this.createRow();
        android.support.constraint.solver.ArrayRow vtmp19 = v6_14.createRowWithAngle(v13, v15, v17, v19, ((float) (Math.sin(((double) p24)) * ((double) p25))));
        this.addConstraint(v6_14);
        android.support.constraint.solver.ArrayRow v12_1 = this.createRow();
        android.support.constraint.solver.ArrayRow vtmp22 = v12_1.createRowWithAngle(v5_2, v14, v16, v18, ((float) (Math.cos(((double) p24)) * ((double) p25))));
        this.addConstraint(v12_1);
        return;
    }

    public void addCentering(android.support.constraint.solver.SolverVariable p12, android.support.constraint.solver.SolverVariable p13, int p14, float p15, android.support.constraint.solver.SolverVariable p16, android.support.constraint.solver.SolverVariable p17, int p18, int p19)
    {
        android.support.constraint.solver.ArrayRow v10 = this.createRow();
        v10.createRowCentering(p12, p13, p14, p15, p16, p17, p18);
        if (p19 != 6) {
            v10.addError(this, p19);
        }
        this.addConstraint(v10);
        return;
    }

    public void addConstraint(android.support.constraint.solver.ArrayRow p10)
    {
        if (p10 != null) {
            if (android.support.constraint.solver.LinearSystem.sMetrics != null) {
                int v0_7 = android.support.constraint.solver.LinearSystem.sMetrics;
                v0_7.constraints = (v0_7.constraints + 1);
                if (p10.isSimpleDefinition) {
                    int v0_1 = android.support.constraint.solver.LinearSystem.sMetrics;
                    v0_1.simpleconstraints = (v0_1.simpleconstraints + 1);
                }
            }
            if (((this.mNumRows + 1) >= this.mMaxRows) || ((this.mNumColumns + 1) >= this.mMaxColumns)) {
                this.increaseTableSize();
            }
            int v0_6 = 0;
            if (!p10.isSimpleDefinition) {
                this.updateRowFromVariables(p10);
                if (!p10.isEmpty()) {
                    p10.ensurePositiveConstant();
                    if (p10.chooseSubject(this)) {
                        android.support.constraint.solver.SolverVariable v4_5 = this.createExtraVariable();
                        p10.variable = v4_5;
                        this.addRow(p10);
                        v0_6 = 1;
                        this.mTempGoal.initFromRow(p10);
                        this.optimize(this.mTempGoal, 1);
                        if (v4_5.definitionId == -1) {
                            if (p10.variable == v4_5) {
                                android.support.constraint.solver.SolverVariable v5_4 = p10.pickPivot(v4_5);
                                if (v5_4 != null) {
                                    if (android.support.constraint.solver.LinearSystem.sMetrics != null) {
                                        android.support.constraint.solver.Metrics v6_2 = android.support.constraint.solver.LinearSystem.sMetrics;
                                        v6_2.pivots = (v6_2.pivots + 1);
                                    }
                                    p10.pivot(v5_4);
                                }
                            }
                            if (!p10.isSimpleDefinition) {
                                p10.variable.updateReferencesWithNewDefinition(p10);
                            }
                            this.mNumRows = (this.mNumRows - 1);
                        }
                    }
                    if (!p10.hasKeyVariable()) {
                        return;
                    }
                } else {
                    return;
                }
            }
            if (v0_6 == 0) {
                this.addRow(p10);
            }
            return;
        } else {
            return;
        }
    }

    public android.support.constraint.solver.ArrayRow addEquality(android.support.constraint.solver.SolverVariable p3, android.support.constraint.solver.SolverVariable p4, int p5, int p6)
    {
        android.support.constraint.solver.ArrayRow v0 = this.createRow();
        v0.createRowEquals(p3, p4, p5);
        if (p6 != 6) {
            v0.addError(this, p6);
        }
        this.addConstraint(v0);
        return v0;
    }

    public void addEquality(android.support.constraint.solver.SolverVariable p4, int p5)
    {
        if (p4.definitionId == -1) {
            android.support.constraint.solver.ArrayRow v1_1 = this.createRow();
            v1_1.createRowDefinition(p4, p5);
            this.addConstraint(v1_1);
        } else {
            android.support.constraint.solver.ArrayRow v1_3 = this.mRows[p4.definitionId];
            if (!v1_3.isSimpleDefinition) {
                if (v1_3.variables.currentSize != 0) {
                    android.support.constraint.solver.ArrayRow v2_3 = this.createRow();
                    v2_3.createRowEquals(p4, p5);
                    this.addConstraint(v2_3);
                } else {
                    v1_3.isSimpleDefinition = 1;
                    v1_3.constantValue = ((float) p5);
                }
            } else {
                v1_3.constantValue = ((float) p5);
            }
        }
        return;
    }

    public void addEquality(android.support.constraint.solver.SolverVariable p4, int p5, int p6)
    {
        if (p4.definitionId == -1) {
            android.support.constraint.solver.ArrayRow v1_2 = this.createRow();
            v1_2.createRowDefinition(p4, p5);
            v1_2.addError(this, p6);
            this.addConstraint(v1_2);
        } else {
            android.support.constraint.solver.ArrayRow v1_1 = this.mRows[p4.definitionId];
            if (!v1_1.isSimpleDefinition) {
                android.support.constraint.solver.ArrayRow v2_1 = this.createRow();
                v2_1.createRowEquals(p4, p5);
                v2_1.addError(this, p6);
                this.addConstraint(v2_1);
            } else {
                v1_1.constantValue = ((float) p5);
            }
        }
        return;
    }

    public void addGreaterBarrier(android.support.constraint.solver.SolverVariable p6, android.support.constraint.solver.SolverVariable p7, boolean p8)
    {
        android.support.constraint.solver.ArrayRow v0 = this.createRow();
        android.support.constraint.solver.SolverVariable v1 = this.createSlackVariable();
        v1.strength = 0;
        v0.createRowGreaterThan(p6, p7, v1, 0);
        if (p8) {
            this.addSingleError(v0, ((int) (-1082130432 * v0.variables.get(v1))), 1);
        }
        this.addConstraint(v0);
        return;
    }

    public void addGreaterThan(android.support.constraint.solver.SolverVariable p4, int p5)
    {
        android.support.constraint.solver.ArrayRow v0 = this.createRow();
        android.support.constraint.solver.SolverVariable v1 = this.createSlackVariable();
        v1.strength = 0;
        v0.createRowGreaterThan(p4, p5, v1);
        this.addConstraint(v0);
        return;
    }

    public void addGreaterThan(android.support.constraint.solver.SolverVariable p5, android.support.constraint.solver.SolverVariable p6, int p7, int p8)
    {
        android.support.constraint.solver.ArrayRow v0 = this.createRow();
        android.support.constraint.solver.SolverVariable v1 = this.createSlackVariable();
        v1.strength = 0;
        v0.createRowGreaterThan(p5, p6, v1, p7);
        if (p8 != 6) {
            this.addSingleError(v0, ((int) (-1082130432 * v0.variables.get(v1))), p8);
        }
        this.addConstraint(v0);
        return;
    }

    public void addLowerBarrier(android.support.constraint.solver.SolverVariable p6, android.support.constraint.solver.SolverVariable p7, boolean p8)
    {
        android.support.constraint.solver.ArrayRow v0 = this.createRow();
        android.support.constraint.solver.SolverVariable v1 = this.createSlackVariable();
        v1.strength = 0;
        v0.createRowLowerThan(p6, p7, v1, 0);
        if (p8) {
            this.addSingleError(v0, ((int) (-1082130432 * v0.variables.get(v1))), 1);
        }
        this.addConstraint(v0);
        return;
    }

    public void addLowerThan(android.support.constraint.solver.SolverVariable p5, android.support.constraint.solver.SolverVariable p6, int p7, int p8)
    {
        android.support.constraint.solver.ArrayRow v0 = this.createRow();
        android.support.constraint.solver.SolverVariable v1 = this.createSlackVariable();
        v1.strength = 0;
        v0.createRowLowerThan(p5, p6, v1, p7);
        if (p8 != 6) {
            this.addSingleError(v0, ((int) (-1082130432 * v0.variables.get(v1))), p8);
        }
        this.addConstraint(v0);
        return;
    }

    public void addRatio(android.support.constraint.solver.SolverVariable p8, android.support.constraint.solver.SolverVariable p9, android.support.constraint.solver.SolverVariable p10, android.support.constraint.solver.SolverVariable p11, float p12, int p13)
    {
        android.support.constraint.solver.ArrayRow v6 = this.createRow();
        v6.createRowDimensionRatio(p8, p9, p10, p11, p12);
        if (p13 != 6) {
            v6.addError(this, p13);
        }
        this.addConstraint(v6);
        return;
    }

    void addSingleError(android.support.constraint.solver.ArrayRow p3, int p4, int p5)
    {
        p3.addSingleError(this.createErrorVariable(p5, 0), p4);
        return;
    }

    public android.support.constraint.solver.SolverVariable createErrorVariable(int p6, String p7)
    {
        if (android.support.constraint.solver.LinearSystem.sMetrics != null) {
            android.support.constraint.solver.SolverVariable v0_3 = android.support.constraint.solver.LinearSystem.sMetrics;
            v0_3.errors = (v0_3.errors + 1);
        }
        if ((this.mNumColumns + 1) >= this.mMaxColumns) {
            this.increaseTableSize();
        }
        android.support.constraint.solver.SolverVariable v0_2 = this.acquireSolverVariable(android.support.constraint.solver.SolverVariable$Type.ERROR, p7);
        this.mVariablesID = (this.mVariablesID + 1);
        this.mNumColumns = (this.mNumColumns + 1);
        v0_2.id = this.mVariablesID;
        v0_2.strength = p6;
        this.mCache.mIndexedVariables[this.mVariablesID] = v0_2;
        this.mGoal.addError(v0_2);
        return v0_2;
    }

    public android.support.constraint.solver.SolverVariable createExtraVariable()
    {
        if (android.support.constraint.solver.LinearSystem.sMetrics != null) {
            android.support.constraint.solver.SolverVariable v0_3 = android.support.constraint.solver.LinearSystem.sMetrics;
            v0_3.extravariables = (v0_3.extravariables + 1);
        }
        if ((this.mNumColumns + 1) >= this.mMaxColumns) {
            this.increaseTableSize();
        }
        android.support.constraint.solver.SolverVariable v0_2 = this.acquireSolverVariable(android.support.constraint.solver.SolverVariable$Type.SLACK, 0);
        this.mVariablesID = (this.mVariablesID + 1);
        this.mNumColumns = (this.mNumColumns + 1);
        v0_2.id = this.mVariablesID;
        this.mCache.mIndexedVariables[this.mVariablesID] = v0_2;
        return v0_2;
    }

    public android.support.constraint.solver.SolverVariable createObjectVariable(Object p5)
    {
        if (p5 != null) {
            if ((this.mNumColumns + 1) >= this.mMaxColumns) {
                this.increaseTableSize();
            }
            android.support.constraint.solver.SolverVariable v0_1 = 0;
            if ((p5 instanceof android.support.constraint.solver.widgets.ConstraintAnchor)) {
                v0_1 = ((android.support.constraint.solver.widgets.ConstraintAnchor) p5).getSolverVariable();
                if (v0_1 == null) {
                    ((android.support.constraint.solver.widgets.ConstraintAnchor) p5).resetSolverVariable(this.mCache);
                    v0_1 = ((android.support.constraint.solver.widgets.ConstraintAnchor) p5).getSolverVariable();
                }
                if ((v0_1.id == -1) || ((v0_1.id > this.mVariablesID) || (this.mCache.mIndexedVariables[v0_1.id] == null))) {
                    if (v0_1.id != -1) {
                        v0_1.reset();
                    }
                    this.mVariablesID = (this.mVariablesID + 1);
                    this.mNumColumns = (this.mNumColumns + 1);
                    v0_1.id = this.mVariablesID;
                    v0_1.mType = android.support.constraint.solver.SolverVariable$Type.UNRESTRICTED;
                    this.mCache.mIndexedVariables[this.mVariablesID] = v0_1;
                }
            }
            return v0_1;
        } else {
            return 0;
        }
    }

    public android.support.constraint.solver.ArrayRow createRow()
    {
        android.support.constraint.solver.ArrayRow v0_2 = ((android.support.constraint.solver.ArrayRow) this.mCache.arrayRowPool.acquire());
        if (v0_2 != null) {
            v0_2.reset();
        } else {
            v0_2 = new android.support.constraint.solver.ArrayRow(this.mCache);
        }
        android.support.constraint.solver.SolverVariable.increaseErrorId();
        return v0_2;
    }

    public android.support.constraint.solver.SolverVariable createSlackVariable()
    {
        if (android.support.constraint.solver.LinearSystem.sMetrics != null) {
            android.support.constraint.solver.SolverVariable v0_3 = android.support.constraint.solver.LinearSystem.sMetrics;
            v0_3.slackvariables = (v0_3.slackvariables + 1);
        }
        if ((this.mNumColumns + 1) >= this.mMaxColumns) {
            this.increaseTableSize();
        }
        android.support.constraint.solver.SolverVariable v0_2 = this.acquireSolverVariable(android.support.constraint.solver.SolverVariable$Type.SLACK, 0);
        this.mVariablesID = (this.mVariablesID + 1);
        this.mNumColumns = (this.mNumColumns + 1);
        v0_2.id = this.mVariablesID;
        this.mCache.mIndexedVariables[this.mVariablesID] = v0_2;
        return v0_2;
    }

    void displayReadableRows()
    {
        this.displaySolverVariables();
        String v0_0 = " #  ";
        java.io.PrintStream v1_1 = 0;
        while (v1_1 < this.mNumRows) {
            String v2_3 = new StringBuilder();
            v2_3.append(v0_0);
            v2_3.append(this.mRows[v1_1].toReadableString());
            String v0_1 = v2_3.toString();
            String v2_6 = new StringBuilder();
            v2_6.append(v0_1);
            v2_6.append("\n #  ");
            v0_0 = v2_6.toString();
            v1_1++;
        }
        if (this.mGoal != null) {
            java.io.PrintStream v1_4 = new StringBuilder();
            v1_4.append(v0_0);
            v1_4.append(this.mGoal);
            v1_4.append("\n");
            v0_0 = v1_4.toString();
        }
        System.out.println(v0_0);
        return;
    }

    void displaySystemInformations()
    {
        int v2_1 = 0;
        int v3 = 0;
        int v1_1 = 0;
        while (v1_1 < this.TABLE_SIZE) {
            if (this.mRows[v1_1] != null) {
                v3 += this.mRows[v1_1].sizeInBytes();
            }
            v1_1++;
        }
        int v1_2 = 0;
        while (v2_1 < this.mNumRows) {
            if (this.mRows[v2_1] != null) {
                v1_2 += this.mRows[v2_1].sizeInBytes();
            }
            v2_1++;
        }
        int v4_1 = new StringBuilder();
        v4_1.append("Linear System -> Table size: ");
        v4_1.append(this.TABLE_SIZE);
        v4_1.append(" (");
        v4_1.append(this.getDisplaySize((this.TABLE_SIZE * this.TABLE_SIZE)));
        v4_1.append(") -- row sizes: ");
        v4_1.append(this.getDisplaySize(v3));
        v4_1.append(", actual size: ");
        v4_1.append(this.getDisplaySize(v1_2));
        v4_1.append(" rows: ");
        v4_1.append(this.mNumRows);
        v4_1.append("/");
        v4_1.append(this.mMaxRows);
        v4_1.append(" cols: ");
        v4_1.append(this.mNumColumns);
        v4_1.append("/");
        v4_1.append(this.mMaxColumns);
        v4_1.append(" ");
        v4_1.append(0);
        v4_1.append(" occupied cells, ");
        v4_1.append(this.getDisplaySize(0));
        System.out.println(v4_1.toString());
        return;
    }

    public void displayVariablesReadableRows()
    {
        this.displaySolverVariables();
        String v0_0 = "";
        int v1_1 = 0;
        while (v1_1 < this.mNumRows) {
            if (this.mRows[v1_1].variable.mType == android.support.constraint.solver.SolverVariable$Type.UNRESTRICTED) {
                StringBuilder v2_6 = new StringBuilder();
                v2_6.append(v0_0);
                v2_6.append(this.mRows[v1_1].toReadableString());
                String v0_2 = v2_6.toString();
                StringBuilder v2_9 = new StringBuilder();
                v2_9.append(v0_2);
                v2_9.append("\n");
                v0_0 = v2_9.toString();
            }
            v1_1++;
        }
        int v1_3 = new StringBuilder();
        v1_3.append(v0_0);
        v1_3.append(this.mGoal);
        v1_3.append("\n");
        System.out.println(v1_3.toString());
        return;
    }

    public void fillMetrics(android.support.constraint.solver.Metrics p1)
    {
        android.support.constraint.solver.LinearSystem.sMetrics = p1;
        return;
    }

    public android.support.constraint.solver.Cache getCache()
    {
        return this.mCache;
    }

    android.support.constraint.solver.LinearSystem$Row getGoal()
    {
        return this.mGoal;
    }

    public int getMemoryUsed()
    {
        int v0 = 0;
        int v1 = 0;
        while (v1 < this.mNumRows) {
            if (this.mRows[v1] != null) {
                v0 += this.mRows[v1].sizeInBytes();
            }
            v1++;
        }
        return v0;
    }

    public int getNumEquations()
    {
        return this.mNumRows;
    }

    public int getNumVariables()
    {
        return this.mVariablesID;
    }

    public int getObjectVariableValue(Object p4)
    {
        android.support.constraint.solver.SolverVariable v0_2 = ((android.support.constraint.solver.widgets.ConstraintAnchor) p4).getSolverVariable();
        if (v0_2 == null) {
            return 0;
        } else {
            return ((int) (v0_2.computedValue + 1056964608));
        }
    }

    android.support.constraint.solver.ArrayRow getRow(int p2)
    {
        return this.mRows[p2];
    }

    float getValueFor(String p3)
    {
        android.support.constraint.solver.SolverVariable v0_1 = this.getVariable(p3, android.support.constraint.solver.SolverVariable$Type.UNRESTRICTED);
        if (v0_1 != null) {
            return v0_1.computedValue;
        } else {
            return 0;
        }
    }

    android.support.constraint.solver.SolverVariable getVariable(String p2, android.support.constraint.solver.SolverVariable$Type p3)
    {
        if (this.mVariables == null) {
            this.mVariables = new java.util.HashMap();
        }
        android.support.constraint.solver.SolverVariable v0_1 = ((android.support.constraint.solver.SolverVariable) this.mVariables.get(p2));
        if (v0_1 == null) {
            v0_1 = this.createVariable(p2, p3);
        }
        return v0_1;
    }

    public void minimize()
    {
        if (android.support.constraint.solver.LinearSystem.sMetrics != null) {
            int v0_4 = android.support.constraint.solver.LinearSystem.sMetrics;
            v0_4.minimize = (v0_4.minimize + 1);
        }
        if (!this.graphOptimizer) {
            this.minimizeGoal(this.mGoal);
        } else {
            if (android.support.constraint.solver.LinearSystem.sMetrics != null) {
                int v0_2 = android.support.constraint.solver.LinearSystem.sMetrics;
                v0_2.graphOptimizer = (v0_2.graphOptimizer + 1);
            }
            int v0_3 = 1;
            android.support.constraint.solver.Metrics v3_2 = 0;
            while (v3_2 < this.mNumRows) {
                if (this.mRows[v3_2].isSimpleDefinition) {
                    v3_2++;
                } else {
                    v0_3 = 0;
                    break;
                }
            }
            if (v0_3 != 0) {
                if (android.support.constraint.solver.LinearSystem.sMetrics != null) {
                    android.support.constraint.solver.Metrics v3_4 = android.support.constraint.solver.LinearSystem.sMetrics;
                    v3_4.fullySolved = (v3_4.fullySolved + 1);
                }
                this.computeValues();
            } else {
                this.minimizeGoal(this.mGoal);
            }
        }
        return;
    }

    void minimizeGoal(android.support.constraint.solver.LinearSystem$Row p6)
    {
        if (android.support.constraint.solver.LinearSystem.sMetrics != null) {
            int v0_2 = android.support.constraint.solver.LinearSystem.sMetrics;
            v0_2.minimizeGoal = (v0_2.minimizeGoal + 1);
            android.support.constraint.solver.LinearSystem.sMetrics.maxVariables = Math.max(android.support.constraint.solver.LinearSystem.sMetrics.maxVariables, ((long) this.mNumColumns));
            android.support.constraint.solver.LinearSystem.sMetrics.maxRows = Math.max(android.support.constraint.solver.LinearSystem.sMetrics.maxRows, ((long) this.mNumRows));
        }
        this.updateRowFromVariables(((android.support.constraint.solver.ArrayRow) p6));
        this.enforceBFS(p6);
        this.optimize(p6, 0);
        this.computeValues();
        return;
    }

    public void reset()
    {
        int v1_0 = 0;
        while (v1_0 < this.mCache.mIndexedVariables.length) {
            android.support.constraint.solver.ArrayRow v2_8 = this.mCache.mIndexedVariables[v1_0];
            if (v2_8 != null) {
                v2_8.reset();
            }
            v1_0++;
        }
        this.mCache.solverVariablePool.releaseAll(this.mPoolVariables, this.mPoolVariablesCount);
        this.mPoolVariablesCount = 0;
        java.util.Arrays.fill(this.mCache.mIndexedVariables, 0);
        if (this.mVariables != null) {
            this.mVariables.clear();
        }
        this.mVariablesID = 0;
        this.mGoal.clear();
        this.mNumColumns = 1;
        int v1_7 = 0;
        while (v1_7 < this.mNumRows) {
            this.mRows[v1_7].used = 0;
            v1_7++;
        }
        this.releaseRows();
        this.mNumRows = 0;
        return;
    }
}
