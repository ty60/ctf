package android.support.constraint.solver.widgets;
public class ConstraintWidgetContainer extends android.support.constraint.solver.widgets.WidgetContainer {
    private static final boolean DEBUG = False;
    static final boolean DEBUG_GRAPH = False;
    private static final boolean DEBUG_LAYOUT = False;
    private static final int MAX_ITERATIONS = 8;
    private static final boolean USE_SNAPSHOT = True;
    int mDebugSolverPassCount;
    public boolean mGroupsWrapOptimized;
    private boolean mHeightMeasuredTooSmall;
    android.support.constraint.solver.widgets.ChainHead[] mHorizontalChainsArray;
    int mHorizontalChainsSize;
    public boolean mHorizontalWrapOptimized;
    private boolean mIsRtl;
    private int mOptimizationLevel;
    int mPaddingBottom;
    int mPaddingLeft;
    int mPaddingRight;
    int mPaddingTop;
    public boolean mSkipSolver;
    private android.support.constraint.solver.widgets.Snapshot mSnapshot;
    protected android.support.constraint.solver.LinearSystem mSystem;
    android.support.constraint.solver.widgets.ChainHead[] mVerticalChainsArray;
    int mVerticalChainsSize;
    public boolean mVerticalWrapOptimized;
    public java.util.List mWidgetGroups;
    private boolean mWidthMeasuredTooSmall;
    public int mWrapFixedHeight;
    public int mWrapFixedWidth;

    public ConstraintWidgetContainer()
    {
        this.mIsRtl = 0;
        this.mSystem = new android.support.constraint.solver.LinearSystem();
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
        android.support.constraint.solver.widgets.ChainHead[] v2 = new android.support.constraint.solver.widgets.ChainHead[4];
        this.mVerticalChainsArray = v2;
        int v1_0 = new android.support.constraint.solver.widgets.ChainHead[4];
        this.mHorizontalChainsArray = v1_0;
        this.mWidgetGroups = new java.util.ArrayList();
        this.mGroupsWrapOptimized = 0;
        this.mHorizontalWrapOptimized = 0;
        this.mVerticalWrapOptimized = 0;
        this.mWrapFixedWidth = 0;
        this.mWrapFixedHeight = 0;
        this.mOptimizationLevel = 7;
        this.mSkipSolver = 0;
        this.mWidthMeasuredTooSmall = 0;
        this.mHeightMeasuredTooSmall = 0;
        this.mDebugSolverPassCount = 0;
        return;
    }

    public ConstraintWidgetContainer(int p4, int p5)
    {
        super(p4, p5);
        super.mIsRtl = 0;
        super.mSystem = new android.support.constraint.solver.LinearSystem();
        super.mHorizontalChainsSize = 0;
        super.mVerticalChainsSize = 0;
        android.support.constraint.solver.widgets.ChainHead[] v2 = new android.support.constraint.solver.widgets.ChainHead[4];
        super.mVerticalChainsArray = v2;
        int v1_0 = new android.support.constraint.solver.widgets.ChainHead[4];
        super.mHorizontalChainsArray = v1_0;
        super.mWidgetGroups = new java.util.ArrayList();
        super.mGroupsWrapOptimized = 0;
        super.mHorizontalWrapOptimized = 0;
        super.mVerticalWrapOptimized = 0;
        super.mWrapFixedWidth = 0;
        super.mWrapFixedHeight = 0;
        super.mOptimizationLevel = 7;
        super.mSkipSolver = 0;
        super.mWidthMeasuredTooSmall = 0;
        super.mHeightMeasuredTooSmall = 0;
        super.mDebugSolverPassCount = 0;
        return;
    }

    public ConstraintWidgetContainer(int p4, int p5, int p6, int p7)
    {
        super(p4, p5, p6, p7);
        super.mIsRtl = 0;
        super.mSystem = new android.support.constraint.solver.LinearSystem();
        super.mHorizontalChainsSize = 0;
        super.mVerticalChainsSize = 0;
        android.support.constraint.solver.widgets.ChainHead[] v2 = new android.support.constraint.solver.widgets.ChainHead[4];
        super.mVerticalChainsArray = v2;
        int v1_0 = new android.support.constraint.solver.widgets.ChainHead[4];
        super.mHorizontalChainsArray = v1_0;
        super.mWidgetGroups = new java.util.ArrayList();
        super.mGroupsWrapOptimized = 0;
        super.mHorizontalWrapOptimized = 0;
        super.mVerticalWrapOptimized = 0;
        super.mWrapFixedWidth = 0;
        super.mWrapFixedHeight = 0;
        super.mOptimizationLevel = 7;
        super.mSkipSolver = 0;
        super.mWidthMeasuredTooSmall = 0;
        super.mHeightMeasuredTooSmall = 0;
        super.mDebugSolverPassCount = 0;
        return;
    }

    private void addHorizontalChain(android.support.constraint.solver.widgets.ConstraintWidget p6)
    {
        if ((this.mHorizontalChainsSize + 1) >= this.mHorizontalChainsArray.length) {
            this.mHorizontalChainsArray = ((android.support.constraint.solver.widgets.ChainHead[]) java.util.Arrays.copyOf(this.mHorizontalChainsArray, (this.mHorizontalChainsArray.length * 2)));
        }
        this.mHorizontalChainsArray[this.mHorizontalChainsSize] = new android.support.constraint.solver.widgets.ChainHead(p6, 0, this.isRtl());
        this.mHorizontalChainsSize = (this.mHorizontalChainsSize + 1);
        return;
    }

    private void addVerticalChain(android.support.constraint.solver.widgets.ConstraintWidget p6)
    {
        if ((this.mVerticalChainsSize + 1) >= this.mVerticalChainsArray.length) {
            this.mVerticalChainsArray = ((android.support.constraint.solver.widgets.ChainHead[]) java.util.Arrays.copyOf(this.mVerticalChainsArray, (this.mVerticalChainsArray.length * 2)));
        }
        this.mVerticalChainsArray[this.mVerticalChainsSize] = new android.support.constraint.solver.widgets.ChainHead(p6, 1, this.isRtl());
        this.mVerticalChainsSize = (this.mVerticalChainsSize + 1);
        return;
    }

    private void resetChains()
    {
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
        return;
    }

    void addChain(android.support.constraint.solver.widgets.ConstraintWidget p3, int p4)
    {
        if (p4 != 0) {
            if (p4 == 1) {
                this.addVerticalChain(p3);
            }
        } else {
            this.addHorizontalChain(p3);
        }
        return;
    }

    public boolean addChildrenToSolver(android.support.constraint.solver.LinearSystem p8)
    {
        this.addToSolver(p8);
        int v0_1 = this.mChildren.size();
        int v2_0 = 0;
        while (v2_0 < v0_1) {
            android.support.constraint.solver.widgets.ConstraintWidget v4_2 = ((android.support.constraint.solver.widgets.ConstraintWidget) this.mChildren.get(v2_0));
            if (!(v4_2 instanceof android.support.constraint.solver.widgets.ConstraintWidgetContainer)) {
                android.support.constraint.solver.widgets.Optimizer.checkMatchParent(this, p8, v4_2);
                v4_2.addToSolver(p8);
            } else {
                android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour v5_2 = v4_2.mListDimensionBehaviors[0];
                android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour v3_0 = v4_2.mListDimensionBehaviors[1];
                if (v5_2 == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) {
                    v4_2.setHorizontalDimensionBehaviour(android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.FIXED);
                }
                if (v3_0 == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) {
                    v4_2.setVerticalDimensionBehaviour(android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.FIXED);
                }
                v4_2.addToSolver(p8);
                if (v5_2 == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) {
                    v4_2.setHorizontalDimensionBehaviour(v5_2);
                }
                if (v3_0 == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) {
                    v4_2.setVerticalDimensionBehaviour(v3_0);
                }
            }
            v2_0++;
        }
        if (this.mHorizontalChainsSize > 0) {
            android.support.constraint.solver.widgets.Chain.applyChainConstraints(this, p8, 0);
        }
        if (this.mVerticalChainsSize > 0) {
            android.support.constraint.solver.widgets.Chain.applyChainConstraints(this, p8, 1);
        }
        return 1;
    }

    public void analyze(int p4)
    {
        super.analyze(p4);
        int v0_1 = this.mChildren.size();
        int v1 = 0;
        while (v1 < v0_1) {
            ((android.support.constraint.solver.widgets.ConstraintWidget) this.mChildren.get(v1)).analyze(p4);
            v1++;
        }
        return;
    }

    public void fillMetrics(android.support.constraint.solver.Metrics p2)
    {
        this.mSystem.fillMetrics(p2);
        return;
    }

    public java.util.ArrayList getHorizontalGuidelines()
    {
        java.util.ArrayList v0_1 = new java.util.ArrayList();
        int v1 = 0;
        int v2_1 = this.mChildren.size();
        while (v1 < v2_1) {
            android.support.constraint.solver.widgets.ConstraintWidget v3_1 = ((android.support.constraint.solver.widgets.ConstraintWidget) this.mChildren.get(v1));
            if ((v3_1 instanceof android.support.constraint.solver.widgets.Guideline)) {
                android.support.constraint.solver.widgets.Guideline v4_2 = ((android.support.constraint.solver.widgets.Guideline) v3_1);
                if (v4_2.getOrientation() == 0) {
                    v0_1.add(v4_2);
                }
            }
            v1++;
        }
        return v0_1;
    }

    public int getOptimizationLevel()
    {
        return this.mOptimizationLevel;
    }

    public android.support.constraint.solver.LinearSystem getSystem()
    {
        return this.mSystem;
    }

    public String getType()
    {
        return "ConstraintLayout";
    }

    public java.util.ArrayList getVerticalGuidelines()
    {
        java.util.ArrayList v0_1 = new java.util.ArrayList();
        int v1 = 0;
        int v2_1 = this.mChildren.size();
        while (v1 < v2_1) {
            android.support.constraint.solver.widgets.ConstraintWidget v3_1 = ((android.support.constraint.solver.widgets.ConstraintWidget) this.mChildren.get(v1));
            if ((v3_1 instanceof android.support.constraint.solver.widgets.Guideline)) {
                android.support.constraint.solver.widgets.Guideline v4_2 = ((android.support.constraint.solver.widgets.Guideline) v3_1);
                if (v4_2.getOrientation() == 1) {
                    v0_1.add(v4_2);
                }
            }
            v1++;
        }
        return v0_1;
    }

    public java.util.List getWidgetGroups()
    {
        return this.mWidgetGroups;
    }

    public boolean handlesInternalConstraints()
    {
        return 0;
    }

    public boolean isHeightMeasuredTooSmall()
    {
        return this.mHeightMeasuredTooSmall;
    }

    public boolean isRtl()
    {
        return this.mIsRtl;
    }

    public boolean isWidthMeasuredTooSmall()
    {
        return this.mWidthMeasuredTooSmall;
    }

    public void layout()
    {
        android.support.constraint.solver.widgets.ConstraintWidgetContainer v1 = this;
        int v2 = this.mX;
        int v3_4 = this.mY;
        int v4_1 = Math.max(0, this.getWidth());
        int v6_0 = Math.max(0, this.getHeight());
        this.mWidthMeasuredTooSmall = 0;
        this.mHeightMeasuredTooSmall = 0;
        if (this.mParent == null) {
            this.mX = 0;
            this.mY = 0;
        } else {
            if (this.mSnapshot == null) {
                this.mSnapshot = new android.support.constraint.solver.widgets.Snapshot(this);
            }
            this.mSnapshot.updateFrom(this);
            v1.setX(v1.mPaddingLeft);
            v1.setY(v1.mPaddingTop);
            this.resetAnchors();
            this.resetSolverVariables(this.mSystem.getCache());
        }
        int v8_24 = 32;
        if (this.mOptimizationLevel == 0) {
            this.mSystem.graphOptimizer = 0;
        } else {
            if (!this.optimizeFor(8)) {
                this.optimizeReset();
            }
            if (!this.optimizeFor(32)) {
                this.optimize();
            }
            this.mSystem.graphOptimizer = 1;
        }
        android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour v11_1 = this.mListDimensionBehaviors[1];
        android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour v12_1 = this.mListDimensionBehaviors[0];
        void v28_1 = this.resetChains();
        if (this.mWidgetGroups.size() == 0) {
            this.mWidgetGroups.clear();
            this.mWidgetGroups.add(0, new android.support.constraint.solver.widgets.ConstraintWidgetGroup(this.mChildren));
        }
        int v9_3;
        android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour[] v14_33 = this.mWidgetGroups.size();
        java.util.ArrayList v15_1 = this.mChildren;
        if ((v28_1.getHorizontalDimensionBehaviour() != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) && (v28_1.getVerticalDimensionBehaviour() != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT)) {
            v9_3 = 0;
        } else {
            v9_3 = 1;
        }
        int v10_2 = 0;
        int v7_22 = 0;
        while ((v7_22 < v14_33) && (!this.mSkipSolver)) {
            boolean v20_0;
            String v23_0;
            if (!((android.support.constraint.solver.widgets.ConstraintWidgetGroup) this.mWidgetGroups.get(v7_22)).mSkipSolver) {
                if (this.optimizeFor(v8_24)) {
                    if ((v28_1.getHorizontalDimensionBehaviour() != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.FIXED) || (v28_1.getVerticalDimensionBehaviour() != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.FIXED)) {
                        this.mChildren = ((java.util.ArrayList) ((android.support.constraint.solver.widgets.ConstraintWidgetGroup) this.mWidgetGroups.get(v7_22)).mConstrainedGroup);
                    } else {
                        this.mChildren = ((java.util.ArrayList) ((android.support.constraint.solver.widgets.ConstraintWidgetGroup) this.mWidgetGroups.get(v7_22)).getWidgetsToSolve());
                    }
                }
                v28_1 = v28_1.resetChains();
                int v5_26 = this.mChildren.size();
                int v8_4 = 0;
                android.support.constraint.solver.widgets.ConstraintWidget v13_0 = 0;
                while (v13_0 < v5_26) {
                    android.support.constraint.solver.widgets.ConstraintWidget v19_1 = v8_4;
                    int v8_29 = ((android.support.constraint.solver.widgets.ConstraintWidget) this.mChildren.get(v13_0));
                    boolean v20_1 = v14_33;
                    if ((v8_29 instanceof android.support.constraint.solver.widgets.WidgetContainer)) {
                        ((android.support.constraint.solver.widgets.WidgetContainer) v8_29).layout();
                    }
                    v13_0++;
                    v8_4 = v19_1;
                    v14_33 = v20_1;
                }
                android.support.constraint.solver.widgets.ConstraintWidget v19_0 = v8_4;
                v20_0 = v14_33;
                int v8_5 = 1;
                while (v8_5 != 0) {
                    android.support.constraint.solver.widgets.ConstraintWidget v13_1 = (v19_0 + 1);
                    try {
                        this.mSystem.reset();
                        v28_1 = v28_1.resetChains();
                        this.createObjectVariables(this.mSystem);
                        android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour[] v14_2 = 0;
                    } catch (Exception v0_0) {
                        android.support.constraint.solver.widgets.ConstraintWidget v21 = v8_5;
                        boolean[] v22 = v10_2;
                        int v8_6 = v0_0;
                        v8_6.printStackTrace();
                        android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour[] v14_4 = new StringBuilder();
                        String v23_1 = v3_4;
                        v14_4.append("EXCEPTION : ");
                        v14_4.append(v8_6);
                        System.out.println(v14_4.toString());
                        if (v21 == null) {
                            this.updateFromSolver(this.mSystem);
                            int v8_13 = 0;
                            while (v8_13 < v5_26) {
                                int v10_6 = ((android.support.constraint.solver.widgets.ConstraintWidget) this.mChildren.get(v8_13));
                                if ((v10_6.mListDimensionBehaviors[0] != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) || (v10_6.getWidth() >= v10_6.getWrapWidth())) {
                                    if ((v10_6.mListDimensionBehaviors[1] != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) || (v10_6.getHeight() >= v10_6.getWrapHeight())) {
                                        v8_13++;
                                    } else {
                                        android.support.constraint.solver.widgets.Optimizer.flags[2] = 1;
                                        break;
                                    }
                                } else {
                                    android.support.constraint.solver.widgets.Optimizer.flags[2] = 1;
                                    break;
                                }
                            }
                        } else {
                            this.updateChildrenFromSolver(this.mSystem, android.support.constraint.solver.widgets.Optimizer.flags);
                        }
                        int v3_15;
                        int v25_0;
                        int v3_14 = 0;
                        if ((v9_3 == 0) || ((v13_1 >= 8) || (!android.support.constraint.solver.widgets.Optimizer.flags[2]))) {
                            v25_0 = v5_26;
                            v10_2 = v22;
                            v3_15 = 0;
                        } else {
                            int v8_16 = 0;
                            android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour[] v14_15 = 0;
                            int v10_11 = 0;
                            while (v10_11 < v5_26) {
                                boolean[] v24_2 = v3_14;
                                int v3_30 = ((android.support.constraint.solver.widgets.ConstraintWidget) this.mChildren.get(v10_11));
                                int v25_1 = v5_26;
                                v14_15 = Math.max(v14_15, (v3_30.mX + v3_30.getWidth()));
                                v8_16 = Math.max(v8_16, (v3_30.mY + v3_30.getHeight()));
                                v10_11++;
                                v3_14 = v24_2;
                                v5_26 = v25_1;
                            }
                            int v8_19;
                            boolean[] v24_1 = v3_14;
                            v25_0 = v5_26;
                            int v3_17 = Math.max(this.mMinWidth, v14_15);
                            int v5_28 = Math.max(this.mMinHeight, v8_16);
                            if ((v12_1 != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) || (v28_1.getWidth() >= v3_17)) {
                                v10_2 = v22;
                                v8_19 = v24_1;
                            } else {
                                this.setWidth(v3_17);
                                this.mListDimensionBehaviors[0] = android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
                                v10_2 = 1;
                                v8_19 = 1;
                            }
                            if ((v11_1 != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) || (v28_1.getHeight() >= v5_28)) {
                                v3_15 = v8_19;
                            } else {
                                this.setHeight(v5_28);
                                this.mListDimensionBehaviors[1] = android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
                                v10_2 = 1;
                                v3_15 = 1;
                            }
                        }
                        int v5_30 = Math.max(this.mMinWidth, v28_1.getWidth());
                        if (v5_30 > v28_1.getWidth()) {
                            this.setWidth(v5_30);
                            this.mListDimensionBehaviors[0] = android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.FIXED;
                            v10_2 = 1;
                            v3_15 = 1;
                        }
                        int v8_26 = Math.max(this.mMinHeight, v28_1.getHeight());
                        if (v8_26 > v28_1.getHeight()) {
                            this.setHeight(v8_26);
                            this.mListDimensionBehaviors[1] = android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.FIXED;
                            v10_2 = 1;
                            v3_15 = 1;
                        }
                        if (v10_2 != 0) {
                            v8_5 = v3_15;
                        } else {
                            int v26_1 = v3_15;
                            if ((this.mListDimensionBehaviors[0] == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) && ((v4_1 > 0) && (v28_1.getWidth() > v4_1))) {
                                this.mWidthMeasuredTooSmall = 1;
                                v10_2 = 1;
                                this.mListDimensionBehaviors[0] = android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.FIXED;
                                this.setWidth(v4_1);
                                v26_1 = 1;
                            }
                            if ((this.mListDimensionBehaviors[1] != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) || ((v6_0 <= 0) || (v28_1.getHeight() <= v6_0))) {
                                v8_5 = v26_1;
                            } else {
                                this.mHeightMeasuredTooSmall = 1;
                                v10_2 = 1;
                                this.mListDimensionBehaviors[1] = android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.FIXED;
                                this.setHeight(v6_0);
                                v8_5 = 1;
                            }
                        }
                        v19_0 = v13_1;
                        v3_4 = v23_1;
                        v5_26 = v25_0;
                    }
                    while (v14_2 < v5_26) {
                        v21 = v8_5;
                        try {
                            v22 = v10_2;
                        } catch (Exception v0_1) {
                            v8_6 = v0_1;
                        }
                        ((android.support.constraint.solver.widgets.ConstraintWidget) this.mChildren.get(v14_2)).createObjectVariables(this.mSystem);
                        v14_2++;
                        v8_5 = v21;
                        v10_2 = v22;
                    }
                    v22 = v10_2;
                    int v8_8 = this.addChildrenToSolver(this.mSystem);
                    if (v8_8 != 0) {
                        try {
                            this.mSystem.minimize();
                        } catch (Exception v0_1) {
                            v21 = v8_8;
                        }
                    }
                    v23_1 = v3_4;
                    v21 = v8_8;
                }
                v23_0 = v3_4;
                v21 = v8_5;
                ((android.support.constraint.solver.widgets.ConstraintWidgetGroup) this.mWidgetGroups.get(v7_22)).updateUnresolvedWidgets();
            } else {
                v23_0 = v3_4;
                v20_0 = v14_33;
            }
            v7_22++;
            v14_33 = v20_0;
            v3_4 = v23_0;
            v8_24 = 32;
        }
        String v23_2 = v3_4;
        this.mChildren = ((java.util.ArrayList) v15_1);
        if (this.mParent == null) {
            this.mX = v2;
            this.mY = v23_2;
        } else {
            int v3_0 = Math.max(this.mMinWidth, v28_1.getWidth());
            int v5_2 = Math.max(this.mMinHeight, v28_1.getHeight());
            v1.mSnapshot.applyTo(this);
            this.setWidth(((v1.mPaddingLeft + v3_0) + v1.mPaddingRight));
            v1.setHeight(((v1.mPaddingTop + v5_2) + v1.mPaddingBottom));
        }
        if (v10_2 != 0) {
            this.mListDimensionBehaviors[0] = v12_1;
            this.mListDimensionBehaviors[1] = v11_1;
        }
        this.resetSolverVariables(this.mSystem.getCache());
        if (this == v28_1.getRootConstraintContainer()) {
            v28_1.updateDrawPosition();
        }
        return;
    }

    public void optimize()
    {
        if (!this.optimizeFor(8)) {
            this.analyze(this.mOptimizationLevel);
        }
        this.solveGraph();
        return;
    }

    public boolean optimizeFor(int p2)
    {
        int v0_2;
        if ((this.mOptimizationLevel & p2) != p2) {
            v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    public void optimizeForDimensions(int p3, int p4)
    {
        if ((this.mListDimensionBehaviors[0] != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) && (this.mResolutionWidth != null)) {
            this.mResolutionWidth.resolve(p3);
        }
        if ((this.mListDimensionBehaviors[1] != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) && (this.mResolutionHeight != null)) {
            this.mResolutionHeight.resolve(p4);
        }
        return;
    }

    public void optimizeReset()
    {
        int v0_1 = this.mChildren.size();
        this.resetResolutionNodes();
        int v1 = 0;
        while (v1 < v0_1) {
            ((android.support.constraint.solver.widgets.ConstraintWidget) this.mChildren.get(v1)).resetResolutionNodes();
            v1++;
        }
        return;
    }

    public void preOptimize()
    {
        this.optimizeReset();
        this.analyze(this.mOptimizationLevel);
        return;
    }

    public void reset()
    {
        this.mSystem.reset();
        this.mPaddingLeft = 0;
        this.mPaddingRight = 0;
        this.mPaddingTop = 0;
        this.mPaddingBottom = 0;
        this.mWidgetGroups.clear();
        this.mSkipSolver = 0;
        super.reset();
        return;
    }

    public void resetGraph()
    {
        android.support.constraint.solver.widgets.ResolutionAnchor v0_2 = this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT).getResolutionNode();
        android.support.constraint.solver.widgets.ResolutionAnchor v1_2 = this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP).getResolutionNode();
        v0_2.invalidateAnchors();
        v1_2.invalidateAnchors();
        v0_2.resolve(0, 0);
        v1_2.resolve(0, 0);
        return;
    }

    public void setOptimizationLevel(int p1)
    {
        this.mOptimizationLevel = p1;
        return;
    }

    public void setPadding(int p1, int p2, int p3, int p4)
    {
        this.mPaddingLeft = p1;
        this.mPaddingTop = p2;
        this.mPaddingRight = p3;
        this.mPaddingBottom = p4;
        return;
    }

    public void setRtl(boolean p1)
    {
        this.mIsRtl = p1;
        return;
    }

    public void solveGraph()
    {
        android.support.constraint.solver.widgets.ResolutionAnchor v0_2 = this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT).getResolutionNode();
        android.support.constraint.solver.widgets.ResolutionAnchor v1_2 = this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP).getResolutionNode();
        v0_2.resolve(0, 0);
        v1_2.resolve(0, 0);
        return;
    }

    public void updateChildrenFromSolver(android.support.constraint.solver.LinearSystem p9, boolean[] p10)
    {
        p10[2] = 0;
        this.updateFromSolver(p9);
        int v2_1 = this.mChildren.size();
        int v3 = 0;
        while (v3 < v2_1) {
            android.support.constraint.solver.widgets.ConstraintWidget v4_2 = ((android.support.constraint.solver.widgets.ConstraintWidget) this.mChildren.get(v3));
            v4_2.updateFromSolver(p9);
            if ((v4_2.mListDimensionBehaviors[0] == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) && (v4_2.getWidth() < v4_2.getWrapWidth())) {
                p10[2] = 1;
            }
            if ((v4_2.mListDimensionBehaviors[1] == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) && (v4_2.getHeight() < v4_2.getWrapHeight())) {
                p10[2] = 1;
            }
            v3++;
        }
        return;
    }
}
