package android.support.constraint.solver.widgets;
public class ConstraintWidget {
    protected static final int ANCHOR_BASELINE = 4;
    protected static final int ANCHOR_BOTTOM = 3;
    protected static final int ANCHOR_LEFT = 0;
    protected static final int ANCHOR_RIGHT = 1;
    protected static final int ANCHOR_TOP = 2;
    private static final boolean AUTOTAG_CENTER = False;
    public static final int CHAIN_PACKED = 2;
    public static final int CHAIN_SPREAD = 0;
    public static final int CHAIN_SPREAD_INSIDE = 1;
    public static float DEFAULT_BIAS = 0;
    static final int DIMENSION_HORIZONTAL = 0;
    static final int DIMENSION_VERTICAL = 1;
    protected static final int DIRECT = 2;
    public static final int GONE = 8;
    public static final int HORIZONTAL = 0;
    public static final int INVISIBLE = 4;
    public static final int MATCH_CONSTRAINT_PERCENT = 2;
    public static final int MATCH_CONSTRAINT_RATIO = 3;
    public static final int MATCH_CONSTRAINT_RATIO_RESOLVED = 4;
    public static final int MATCH_CONSTRAINT_SPREAD = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    protected static final int SOLVER = 1;
    public static final int UNKNOWN = 255;
    public static final int VERTICAL = 1;
    public static final int VISIBLE = 0;
    private static final int WRAP = 254;
    protected java.util.ArrayList mAnchors;
    android.support.constraint.solver.widgets.ConstraintAnchor mBaseline;
    int mBaselineDistance;
    android.support.constraint.solver.widgets.ConstraintWidgetGroup mBelongingGroup;
    android.support.constraint.solver.widgets.ConstraintAnchor mBottom;
    boolean mBottomHasCentered;
    android.support.constraint.solver.widgets.ConstraintAnchor mCenter;
    android.support.constraint.solver.widgets.ConstraintAnchor mCenterX;
    android.support.constraint.solver.widgets.ConstraintAnchor mCenterY;
    private float mCircleConstraintAngle;
    private Object mCompanionWidget;
    private int mContainerItemSkip;
    private String mDebugName;
    protected float mDimensionRatio;
    protected int mDimensionRatioSide;
    int mDistToBottom;
    int mDistToLeft;
    int mDistToRight;
    int mDistToTop;
    private int mDrawHeight;
    private int mDrawWidth;
    private int mDrawX;
    private int mDrawY;
    boolean mGroupsToSolver;
    int mHeight;
    float mHorizontalBiasPercent;
    boolean mHorizontalChainFixedPosition;
    int mHorizontalChainStyle;
    android.support.constraint.solver.widgets.ConstraintWidget mHorizontalNextWidget;
    public int mHorizontalResolution;
    boolean mHorizontalWrapVisited;
    boolean mIsHeightWrapContent;
    boolean mIsWidthWrapContent;
    android.support.constraint.solver.widgets.ConstraintAnchor mLeft;
    boolean mLeftHasCentered;
    protected android.support.constraint.solver.widgets.ConstraintAnchor[] mListAnchors;
    protected android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour[] mListDimensionBehaviors;
    protected android.support.constraint.solver.widgets.ConstraintWidget[] mListNextMatchConstraintsWidget;
    int mMatchConstraintDefaultHeight;
    int mMatchConstraintDefaultWidth;
    int mMatchConstraintMaxHeight;
    int mMatchConstraintMaxWidth;
    int mMatchConstraintMinHeight;
    int mMatchConstraintMinWidth;
    float mMatchConstraintPercentHeight;
    float mMatchConstraintPercentWidth;
    private int[] mMaxDimension;
    protected int mMinHeight;
    protected int mMinWidth;
    protected android.support.constraint.solver.widgets.ConstraintWidget[] mNextChainWidget;
    protected int mOffsetX;
    protected int mOffsetY;
    boolean mOptimizerMeasurable;
    boolean mOptimizerMeasured;
    android.support.constraint.solver.widgets.ConstraintWidget mParent;
    int mRelX;
    int mRelY;
    android.support.constraint.solver.widgets.ResolutionDimension mResolutionHeight;
    android.support.constraint.solver.widgets.ResolutionDimension mResolutionWidth;
    float mResolvedDimensionRatio;
    int mResolvedDimensionRatioSide;
    int[] mResolvedMatchConstraintDefault;
    android.support.constraint.solver.widgets.ConstraintAnchor mRight;
    boolean mRightHasCentered;
    android.support.constraint.solver.widgets.ConstraintAnchor mTop;
    boolean mTopHasCentered;
    private String mType;
    float mVerticalBiasPercent;
    boolean mVerticalChainFixedPosition;
    int mVerticalChainStyle;
    android.support.constraint.solver.widgets.ConstraintWidget mVerticalNextWidget;
    public int mVerticalResolution;
    boolean mVerticalWrapVisited;
    private int mVisibility;
    float[] mWeight;
    int mWidth;
    private int mWrapHeight;
    private int mWrapWidth;
    protected int mX;
    protected int mY;

    static ConstraintWidget()
    {
        android.support.constraint.solver.widgets.ConstraintWidget.DEFAULT_BIAS = 1056964608;
        return;
    }

    public ConstraintWidget()
    {
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        int v3_2 = new int[2];
        this.mResolvedMatchConstraintDefault = v3_2;
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMaxWidth = 0;
        this.mMatchConstraintPercentWidth = 1065353216;
        this.mMatchConstraintMinHeight = 0;
        this.mMatchConstraintMaxHeight = 0;
        this.mMatchConstraintPercentHeight = 1065353216;
        this.mResolvedDimensionRatioSide = -1;
        this.mResolvedDimensionRatio = 1065353216;
        this.mBelongingGroup = 0;
        int v4_0 = new int[2];
        v4_0 = {2147483647, 2147483647};
        this.mMaxDimension = v4_0;
        this.mCircleConstraintAngle = 0;
        this.mLeft = new android.support.constraint.solver.widgets.ConstraintAnchor(this, android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT);
        this.mTop = new android.support.constraint.solver.widgets.ConstraintAnchor(this, android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP);
        this.mRight = new android.support.constraint.solver.widgets.ConstraintAnchor(this, android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT);
        this.mBottom = new android.support.constraint.solver.widgets.ConstraintAnchor(this, android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM);
        this.mBaseline = new android.support.constraint.solver.widgets.ConstraintAnchor(this, android.support.constraint.solver.widgets.ConstraintAnchor$Type.BASELINE);
        this.mCenterX = new android.support.constraint.solver.widgets.ConstraintAnchor(this, android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER_X);
        this.mCenterY = new android.support.constraint.solver.widgets.ConstraintAnchor(this, android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER_Y);
        this.mCenter = new android.support.constraint.solver.widgets.ConstraintAnchor(this, android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER);
        android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour[] v5_17 = new android.support.constraint.solver.widgets.ConstraintAnchor[6];
        v5_17[0] = this.mLeft;
        v5_17[1] = this.mRight;
        v5_17[2] = this.mTop;
        v5_17[3] = this.mBottom;
        v5_17[4] = this.mBaseline;
        v5_17[5] = this.mCenter;
        this.mListAnchors = v5_17;
        this.mAnchors = new java.util.ArrayList();
        android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour[] v5_20 = new android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour[2];
        v5_20[0] = android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.FIXED;
        v5_20[1] = android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.FIXED;
        this.mListDimensionBehaviors = v5_20;
        this.mParent = 0;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0;
        this.mDimensionRatioSide = -1;
        this.mX = 0;
        this.mY = 0;
        this.mRelX = 0;
        this.mRelY = 0;
        this.mDrawX = 0;
        this.mDrawY = 0;
        this.mDrawWidth = 0;
        this.mDrawHeight = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        this.mHorizontalBiasPercent = android.support.constraint.solver.widgets.ConstraintWidget.DEFAULT_BIAS;
        this.mVerticalBiasPercent = android.support.constraint.solver.widgets.ConstraintWidget.DEFAULT_BIAS;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mDebugName = 0;
        this.mType = 0;
        this.mOptimizerMeasurable = 0;
        this.mOptimizerMeasured = 0;
        this.mGroupsToSolver = 0;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        android.support.constraint.solver.widgets.ConstraintWidget[] v0_3 = new float[2];
        v0_3 = {-1082130432, -1082130432};
        this.mWeight = v0_3;
        android.support.constraint.solver.widgets.ConstraintWidget[] v0_4 = new android.support.constraint.solver.widgets.ConstraintWidget[2];
        v0_4[0] = 0;
        v0_4[1] = 0;
        this.mListNextMatchConstraintsWidget = v0_4;
        android.support.constraint.solver.widgets.ConstraintWidget[] v0_5 = new android.support.constraint.solver.widgets.ConstraintWidget[2];
        v0_5[0] = 0;
        v0_5[1] = 0;
        this.mNextChainWidget = v0_5;
        this.mHorizontalNextWidget = 0;
        this.mVerticalNextWidget = 0;
        this.addAnchors();
        return;
    }

    public ConstraintWidget(int p2, int p3)
    {
        this(0, 0, p2, p3);
        return;
    }

    public ConstraintWidget(int p10, int p11, int p12, int p13)
    {
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        int v3_2 = new int[2];
        this.mResolvedMatchConstraintDefault = v3_2;
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMaxWidth = 0;
        this.mMatchConstraintPercentWidth = 1065353216;
        this.mMatchConstraintMinHeight = 0;
        this.mMatchConstraintMaxHeight = 0;
        this.mMatchConstraintPercentHeight = 1065353216;
        this.mResolvedDimensionRatioSide = -1;
        this.mResolvedDimensionRatio = 1065353216;
        this.mBelongingGroup = 0;
        int v4_0 = new int[2];
        v4_0 = {2147483647, 2147483647};
        this.mMaxDimension = v4_0;
        this.mCircleConstraintAngle = 0;
        this.mLeft = new android.support.constraint.solver.widgets.ConstraintAnchor(this, android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT);
        this.mTop = new android.support.constraint.solver.widgets.ConstraintAnchor(this, android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP);
        this.mRight = new android.support.constraint.solver.widgets.ConstraintAnchor(this, android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT);
        this.mBottom = new android.support.constraint.solver.widgets.ConstraintAnchor(this, android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM);
        this.mBaseline = new android.support.constraint.solver.widgets.ConstraintAnchor(this, android.support.constraint.solver.widgets.ConstraintAnchor$Type.BASELINE);
        this.mCenterX = new android.support.constraint.solver.widgets.ConstraintAnchor(this, android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER_X);
        this.mCenterY = new android.support.constraint.solver.widgets.ConstraintAnchor(this, android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER_Y);
        this.mCenter = new android.support.constraint.solver.widgets.ConstraintAnchor(this, android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER);
        android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour[] v5_17 = new android.support.constraint.solver.widgets.ConstraintAnchor[6];
        v5_17[0] = this.mLeft;
        v5_17[1] = this.mRight;
        v5_17[2] = this.mTop;
        v5_17[3] = this.mBottom;
        v5_17[4] = this.mBaseline;
        v5_17[5] = this.mCenter;
        this.mListAnchors = v5_17;
        this.mAnchors = new java.util.ArrayList();
        android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour[] v5_20 = new android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour[2];
        v5_20[0] = android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.FIXED;
        v5_20[1] = android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.FIXED;
        this.mListDimensionBehaviors = v5_20;
        this.mParent = 0;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0;
        this.mDimensionRatioSide = -1;
        this.mX = 0;
        this.mY = 0;
        this.mRelX = 0;
        this.mRelY = 0;
        this.mDrawX = 0;
        this.mDrawY = 0;
        this.mDrawWidth = 0;
        this.mDrawHeight = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        this.mHorizontalBiasPercent = android.support.constraint.solver.widgets.ConstraintWidget.DEFAULT_BIAS;
        this.mVerticalBiasPercent = android.support.constraint.solver.widgets.ConstraintWidget.DEFAULT_BIAS;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mDebugName = 0;
        this.mType = 0;
        this.mOptimizerMeasurable = 0;
        this.mOptimizerMeasured = 0;
        this.mGroupsToSolver = 0;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        android.support.constraint.solver.widgets.ConstraintWidget[] v0_3 = new float[2];
        v0_3 = {-1082130432, -1082130432};
        this.mWeight = v0_3;
        android.support.constraint.solver.widgets.ConstraintWidget[] v0_4 = new android.support.constraint.solver.widgets.ConstraintWidget[2];
        v0_4[0] = 0;
        v0_4[1] = 0;
        this.mListNextMatchConstraintsWidget = v0_4;
        android.support.constraint.solver.widgets.ConstraintWidget[] v0_5 = new android.support.constraint.solver.widgets.ConstraintWidget[2];
        v0_5[0] = 0;
        v0_5[1] = 0;
        this.mNextChainWidget = v0_5;
        this.mHorizontalNextWidget = 0;
        this.mVerticalNextWidget = 0;
        this.mX = p10;
        this.mY = p11;
        this.mWidth = p12;
        this.mHeight = p13;
        this.addAnchors();
        this.forceUpdateDrawPosition();
        return;
    }

    private void addAnchors()
    {
        this.mAnchors.add(this.mLeft);
        this.mAnchors.add(this.mTop);
        this.mAnchors.add(this.mRight);
        this.mAnchors.add(this.mBottom);
        this.mAnchors.add(this.mCenterX);
        this.mAnchors.add(this.mCenterY);
        this.mAnchors.add(this.mCenter);
        this.mAnchors.add(this.mBaseline);
        return;
    }

    private void applyConstraints(android.support.constraint.solver.LinearSystem p44, boolean p45, android.support.constraint.solver.SolverVariable p46, android.support.constraint.solver.SolverVariable p47, android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour p48, boolean p49, android.support.constraint.solver.widgets.ConstraintAnchor p50, android.support.constraint.solver.widgets.ConstraintAnchor p51, int p52, int p53, int p54, int p55, float p56, boolean p57, boolean p58, int p59, int p60, int p61, float p62, boolean p63)
    {
        int v7_2 = p44.createObjectVariable(p50);
        float v6_0 = p44.createObjectVariable(p51);
        int v5_1 = p44.createObjectVariable(p50.getTarget());
        int v4_2 = p44.createObjectVariable(p51.getTarget());
        if ((!p44.graphOptimizer) || ((p50.getResolutionNode().state != 1) || (p51.getResolutionNode().state != 1))) {
            int v18_1 = v4_2;
            if (android.support.constraint.solver.LinearSystem.getMetrics() != null) {
                int v1_36 = android.support.constraint.solver.LinearSystem.getMetrics();
                v1_36.nonresolvedWidgets = (v1_36.nonresolvedWidgets + 1);
            }
            long v15_1 = p50.isConnected();
            boolean v16 = p51.isConnected();
            boolean v20 = this.mCenter.isConnected();
            int v1_41 = 0;
            int v3_12 = 0;
            if (v15_1 != 0) {
                v3_12 = (0 + 1);
            }
            if (v16) {
                v3_12++;
            }
            if (v20) {
                v3_12++;
            }
            int v3_15;
            int v4_12 = v3_12;
            if (!p57) {
                v3_15 = p59;
            } else {
                v3_15 = 3;
            }
            switch (android.support.constraint.solver.widgets.ConstraintWidget$1.$SwitchMap$android$support$constraint$solver$widgets$ConstraintWidget$DimensionBehaviour[p48.ordinal()]) {
                case 1:
                    v1_41 = 0;
                    break;
                case 2:
                    v1_41 = 0;
                    break;
                case 3:
                    v1_41 = 0;
                    break;
                case 4:
                    v1_41 = 1;
                    if (v3_15 != 4) {
                    } else {
                        v1_41 = 0;
                    }
                    break;
                default:
            }
            int v1_0;
            int v25 = v1_41;
            if (this.mVisibility != 8) {
                v1_0 = p53;
            } else {
                v1_0 = 0;
                v25 = 0;
            }
            int v27_1;
            if (!p63) {
                v27_1 = v4_12;
            } else {
                if ((v15_1 != 0) || ((v16) || (v20))) {
                    if ((v15_1 == 0) || (v16)) {
                    } else {
                        v27_1 = v4_12;
                        p44.addEquality(v7_2, v5_1, p50.getMargin(), 6);
                    }
                } else {
                    p44.addEquality(v7_2, p52);
                    v27_1 = v4_12;
                }
            }
            android.support.constraint.solver.SolverVariable v35;
            android.support.constraint.solver.SolverVariable v0_1;
            int v33;
            int v17_1;
            int v18_0;
            float v6_2;
            int v9_0;
            int v32;
            if (v25 != 0) {
                int v4_0 = p60;
                if (p60 == -2) {
                    v4_0 = v1_0;
                }
                android.support.constraint.solver.SolverVariable v28 = v5_1;
                int v5_0 = p61;
                if (p61 == -2) {
                    v5_0 = v1_0;
                }
                int v2_1;
                if (v4_0 <= 0) {
                    v2_1 = 6;
                } else {
                    v2_1 = 6;
                    p44.addGreaterThan(v6_0, v7_2, v4_0, 6);
                    v1_0 = Math.max(v1_0, v4_0);
                }
                if (v5_0 > 0) {
                    p44.addLowerThan(v6_0, v7_2, v5_0, v2_1);
                    v1_0 = Math.min(v1_0, v5_0);
                }
                android.support.constraint.solver.widgets.ConstraintWidget v13_0;
                int v34;
                int v8_0;
                if (v3_15 != 1) {
                    if (v3_15 != 2) {
                        v8_0 = v1_0;
                        v32 = v3_15;
                        v34 = v4_0;
                        v13_0 = v5_0;
                        v9_0 = v6_0;
                        v33 = v18_1;
                        v0_1 = v27_1;
                        v35 = v28;
                    } else {
                        int v17_0;
                        android.support.constraint.solver.SolverVariable v30;
                        int v19 = 0;
                        if ((p50.getType() != android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP) && (p50.getType() != android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM)) {
                            v30 = p44.createObjectVariable(this.mParent.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT));
                            v17_0 = p44.createObjectVariable(this.mParent.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT));
                        } else {
                            v17_0 = p44.createObjectVariable(this.mParent.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM));
                            v30 = p44.createObjectVariable(this.mParent.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP));
                        }
                        v8_0 = v1_0;
                        v19 = 6;
                        v32 = v3_15;
                        v34 = v4_0;
                        v33 = v18_1;
                        v0_1 = v27_1;
                        v13_0 = v5_0;
                        v35 = v28;
                        v9_0 = v6_0;
                        p44.addConstraint(p44.createRow().createRowDimensionRatio(v6_0, v7_2, v17_0, v30, p62));
                        v25 = 0;
                    }
                } else {
                    if (!p45) {
                        if (!p58) {
                            p44.addEquality(v6_0, v7_2, v1_0, 1);
                        } else {
                            p44.addEquality(v6_0, v7_2, v1_0, 4);
                        }
                    } else {
                        p44.addEquality(v6_0, v7_2, v1_0, 6);
                    }
                    v8_0 = v1_0;
                    v32 = v3_15;
                    v34 = v4_0;
                    v13_0 = v5_0;
                    v9_0 = v6_0;
                    v33 = v18_1;
                    v0_1 = v27_1;
                    v35 = v28;
                }
                if ((v25 == 0) || ((v0_1 == 2) || (p57))) {
                    int v4_3 = v34;
                    v6_2 = 6;
                } else {
                    v25 = 0;
                    v4_3 = v34;
                    int v1_21 = Math.max(v4_3, v8_0);
                    if (v13_0 > null) {
                        v1_21 = Math.min(v13_0, v1_21);
                    }
                    v6_2 = 6;
                    p44.addEquality(v9_0, v7_2, v1_21, 6);
                }
                v17_1 = v4_3;
                v18_0 = v13_0;
            } else {
                if (!p49) {
                    p44.addEquality(v6_0, v7_2, v1_0, 6);
                } else {
                    int v2_18;
                    p44.addEquality(v6_0, v7_2, 0, 3);
                    if (p54 <= 0) {
                        v2_18 = 6;
                    } else {
                        v2_18 = 6;
                        p44.addGreaterThan(v6_0, v7_2, p54, 6);
                    }
                    if (p55 < 2147483647) {
                        p44.addLowerThan(v6_0, v7_2, p55, v2_18);
                    }
                }
                v17_1 = p60;
                v32 = v3_15;
                v35 = v5_1;
                v9_0 = v6_0;
                v33 = v18_1;
                v0_1 = v27_1;
                v6_2 = 6;
                v18_0 = p61;
            }
            int v2_19;
            int v5_3;
            int v4_5;
            android.support.constraint.solver.widgets.ConstraintWidget v13_2;
            android.support.constraint.solver.SolverVariable v37;
            int v3_1;
            if (!p63) {
                v37 = v0_1;
                v4_5 = v6_2;
                v5_3 = v9_0;
                v2_19 = p47;
                android.support.constraint.solver.widgets.ConstraintWidget v38 = v32;
                android.support.constraint.solver.SolverVariable v0 = v35;
                v3_1 = 0;
                v13_2 = v7_2;
            } else {
                if (!p58) {
                    if ((v15_1 != 0) || ((v16) || (v20))) {
                        int v8_1 = 0;
                        if ((v15_1 == 0) || (v16)) {
                            if ((v15_1 != 0) || (!v16)) {
                                int v5_4 = v33;
                                if ((v15_1 == 0) || (!v16)) {
                                    int v4_6 = v6_2;
                                    int v12_0 = 0;
                                    v38 = v32;
                                    int v1 = p50;
                                    android.support.constraint.solver.widgets.ConstraintWidget v13 = v7_2;
                                    int v5_5 = v9_0;
                                } else {
                                    int v19_0;
                                    int v39;
                                    int v2_21;
                                    int v4_7;
                                    android.support.constraint.solver.SolverVariable v0_2;
                                    int v22_0;
                                    int v1_26 = 0;
                                    int v2_20 = 0;
                                    if (v25 == 0) {
                                        v4_7 = v9_0;
                                        v38 = v32;
                                        v0_2 = v35;
                                        v13 = this;
                                        v2_21 = 1;
                                        v39 = 0;
                                        v19_0 = v2_21;
                                        v22_0 = 5;
                                    } else {
                                        if (!p45) {
                                            v4_7 = v9_0;
                                        } else {
                                            v4_7 = v9_0;
                                            if (p54 == 0) {
                                                p44.addGreaterThan(v4_7, v7_2, 0, v6_2);
                                            }
                                        }
                                        android.support.constraint.solver.widgets.ConstraintWidget v13_3 = v32;
                                        if (v13_3 != null) {
                                            v0_2 = v35;
                                            if (v13_3 != 1) {
                                                if (v13_3 != 3) {
                                                    v13 = this;
                                                    v39 = 0;
                                                    v19_0 = 0;
                                                    v22_0 = 5;
                                                } else {
                                                    v2_21 = 1;
                                                    float v6_5 = 4;
                                                    if (p57) {
                                                        v39 = 1;
                                                        v13 = this;
                                                    } else {
                                                        v39 = 1;
                                                        if ((this.mResolvedDimensionRatioSide != -1) && (v18_0 <= 0)) {
                                                            v6_5 = 6;
                                                        }
                                                    }
                                                    p44.addEquality(v7_2, v0_2, p50.getMargin(), v6_5);
                                                    p44.addEquality(v4_7, v5_4, (- p51.getMargin()), v6_5);
                                                }
                                            } else {
                                                v39 = 1;
                                                v19_0 = 1;
                                                v22_0 = 6;
                                                v13 = this;
                                            }
                                        } else {
                                            int v19_1 = 6;
                                            if ((v18_0 > 0) || (v17_1 > 0)) {
                                                v19_1 = 4;
                                                v1_26 = 1;
                                            }
                                            int v19_2 = v1_26;
                                            int v1_35 = v19_1;
                                            v0_2 = v35;
                                            p44.addEquality(v7_2, v0_2, p50.getMargin(), v1_35);
                                            p44.addEquality(v4_7, v5_4, (- p51.getMargin()), v1_35);
                                            if ((v18_0 > 0) || (v17_1 > 0)) {
                                                v2_20 = 1;
                                            }
                                            v22_0 = 5;
                                            v39 = v19_2;
                                            v19_0 = v2_20;
                                        }
                                    }
                                    android.support.constraint.solver.widgets.ConstraintWidget v13_5;
                                    int v40;
                                    float v41;
                                    int v23 = 5;
                                    int v24 = 5;
                                    int v26 = p45;
                                    int v27_0 = p45;
                                    if (v19_0 == 0) {
                                        v40 = v4_7;
                                        v41 = v5_4;
                                        v13_5 = v7_2;
                                        v12_0 = 0;
                                    } else {
                                        v40 = v4_7;
                                        float v6_10 = v5_4;
                                        v41 = v6_10;
                                        v13_5 = v7_2;
                                        v12_0 = 0;
                                        p44.addCentering(v7_2, v0_2, p50.getMargin(), p56, v6_10, v40, p51.getMargin(), v22_0);
                                        int v2_26 = (p50.mTarget.mOwner instanceof android.support.constraint.solver.widgets.Barrier);
                                        int v3_9 = (p51.mTarget.mOwner instanceof android.support.constraint.solver.widgets.Barrier);
                                        if ((v2_26 == 0) || (v3_9 != 0)) {
                                            if ((v2_26 == 0) && (v3_9 != 0)) {
                                                v23 = 6;
                                                v26 = 1;
                                            }
                                        } else {
                                            v24 = 6;
                                            v27_0 = 1;
                                        }
                                    }
                                    if (v39 != 0) {
                                        v23 = 6;
                                        v24 = 6;
                                    }
                                    int v3_10 = v24;
                                    if (((v25 == 0) && (v26 != 0)) || (v39 != 0)) {
                                        p44.addGreaterThan(v13_5, v0_2, p50.getMargin(), v23);
                                    }
                                    if (((v25 != 0) || (v27_0 == 0)) && (v39 == 0)) {
                                        v5_5 = v40;
                                    } else {
                                        v5_5 = v40;
                                        p44.addLowerThan(v5_5, v41, (- p51.getMargin()), v3_10);
                                    }
                                    if (!p45) {
                                        v4_6 = 6;
                                    } else {
                                        v4_6 = 6;
                                        p44.addGreaterThan(v13_5, p46, v12_0, 6);
                                    }
                                }
                            } else {
                                p44.addEquality(v9_0, v33, (- p51.getMargin()), v6_2);
                                if (p45) {
                                    p44.addGreaterThan(v7_2, p46, 0, 5);
                                }
                                v4_6 = v6_2;
                                v12_0 = 0;
                                v38 = v32;
                                v1 = p50;
                                v13 = v7_2;
                                v5_5 = v9_0;
                            }
                        } else {
                            if (!p45) {
                                v4_6 = v6_2;
                                v12_0 = v8_1;
                                v5_5 = v9_0;
                                v38 = v32;
                                v0 = v35;
                            } else {
                                p44.addGreaterThan(p47, v9_0, 0, 5);
                            }
                        }
                    } else {
                        if (!p45) {
                            v4_6 = v6_2;
                            v5_5 = v9_0;
                            v38 = v32;
                            v0 = v35;
                            v12_0 = 0;
                        } else {
                            v8_1 = 0;
                            p44.addGreaterThan(p47, v9_0, 0, 5);
                        }
                    }
                    if (p45) {
                        p44.addGreaterThan(p47, v5_5, v12_0, v4_6);
                    }
                    return;
                } else {
                    v37 = v0_1;
                    v4_5 = v6_2;
                    v5_3 = v9_0;
                    v2_19 = p47;
                    v38 = v32;
                    v0 = v35;
                    v3_1 = 0;
                    v13_2 = v7_2;
                }
            }
            if ((v37 < 2) && (p45)) {
                p44.addGreaterThan(v13_2, p46, v3_1, v4_5);
                p44.addGreaterThan(v2_19, v5_3, v3_1, v4_5);
            }
            return;
        } else {
            if (android.support.constraint.solver.LinearSystem.getMetrics() != null) {
                int v1_43 = android.support.constraint.solver.LinearSystem.getMetrics();
                v1_43.resolvedWidgets = (v1_43.resolvedWidgets + 1);
            }
            p50.getResolutionNode().addResolvedValue(p44);
            p51.getResolutionNode().addResolvedValue(p44);
            if ((!p58) && (p45)) {
                p44.addGreaterThan(p47, v6_0, 0, 6);
            }
            return;
        }
    }

    private boolean isChainHead(int p5)
    {
        int v1_9;
        int v0 = (p5 * 2);
        if ((this.mListAnchors[v0].mTarget == null) || ((this.mListAnchors[v0].mTarget.mTarget == this.mListAnchors[v0]) || ((this.mListAnchors[(v0 + 1)].mTarget == null) || (this.mListAnchors[(v0 + 1)].mTarget.mTarget != this.mListAnchors[(v0 + 1)])))) {
            v1_9 = 0;
        } else {
            v1_9 = 1;
        }
        return v1_9;
    }

    public void addToSolver(android.support.constraint.solver.LinearSystem p58)
    {
        void v15_0 = this;
        android.support.constraint.solver.SolverVariable v36 = p58.createObjectVariable(this.mLeft);
        int v12_21 = p58.createObjectVariable(this.mRight);
        int v11_0 = p58.createObjectVariable(this.mTop);
        android.support.constraint.solver.SolverVariable v10_0 = p58.createObjectVariable(this.mBottom);
        android.support.constraint.solver.SolverVariable v9_0 = p58.createObjectVariable(this.mBaseline);
        android.support.constraint.solver.widgets.ConstraintWidget v0_4 = 0;
        float v1_0 = 0;
        int v2_0 = 0;
        android.support.constraint.solver.SolverVariable v3_4 = 0;
        if (this.mParent != null) {
            if ((this.mParent == null) || (this.mParent.mListDimensionBehaviors[0] != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT)) {
                android.support.constraint.solver.SolverVariable v4_11 = 0;
            } else {
                v4_11 = 1;
            }
            android.support.constraint.solver.SolverVariable v4_18;
            v2_0 = v4_11;
            if ((this.mParent == null) || (this.mParent.mListDimensionBehaviors[1] != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT)) {
                v4_18 = 0;
            } else {
                v4_18 = 1;
            }
            v3_4 = v4_18;
            if (!this.isChainHead(0)) {
                v0_4 = this.isInHorizontalChain();
            } else {
                ((android.support.constraint.solver.widgets.ConstraintWidgetContainer) this.mParent).addChain(this, 0);
                v0_4 = 1;
            }
            if (!this.isChainHead(1)) {
                v1_0 = this.isInVerticalChain();
            } else {
                ((android.support.constraint.solver.widgets.ConstraintWidgetContainer) this.mParent).addChain(this, 1);
                v1_0 = 1;
            }
            if ((v2_0 != 0) && ((this.mVisibility != 8) && ((this.mLeft.mTarget == null) && (this.mRight.mTarget == null)))) {
                p58.addGreaterThan(p58.createObjectVariable(this.mParent.mRight), v12_21, 0, 1);
            }
            if ((v3_4 != null) && ((this.mVisibility != 8) && ((this.mTop.mTarget == null) && ((this.mBottom.mTarget == null) && (this.mBaseline == null))))) {
                p58.addGreaterThan(p58.createObjectVariable(this.mParent.mBottom), v10_0, 0, 1);
            }
        }
        int v37 = v0_4;
        int v38 = v1_0;
        float v1_11 = v3_4;
        android.support.constraint.solver.widgets.ConstraintWidget v0_0 = this.mWidth;
        if (v0_0 < this.mMinWidth) {
            v0_0 = this.mMinWidth;
        }
        android.support.constraint.solver.SolverVariable v3_0 = this.mHeight;
        if (v3_0 < this.mMinHeight) {
            v3_0 = this.mMinHeight;
        }
        android.support.constraint.solver.SolverVariable v4_3;
        if (this.mListDimensionBehaviors[0] == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) {
            v4_3 = 0;
        } else {
            v4_3 = 1;
        }
        int v6_3;
        if (this.mListDimensionBehaviors[1] == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) {
            v6_3 = 0;
        } else {
            v6_3 = 1;
        }
        int v44_1;
        int v47;
        int v46;
        int v41;
        int v44_0;
        int v45;
        int v14_1 = 0;
        this.mResolvedDimensionRatioSide = this.mDimensionRatioSide;
        v15_0.mResolvedDimensionRatio = v15_0.mDimensionRatio;
        android.support.constraint.solver.widgets.ConstraintAnchor v7_2 = this.mMatchConstraintDefaultWidth;
        android.support.constraint.solver.LinearSystem v8_0 = this.mMatchConstraintDefaultHeight;
        android.support.constraint.solver.SolverVariable v42 = v12_21;
        if ((this.mDimensionRatio <= 0) || (this.mVisibility == 8)) {
            v44_0 = v0_0;
            v47 = v3_0;
            v41 = v7_2;
            v45 = v14_1;
            v46 = v44_0;
            v44_1 = v8_0;
        } else {
            v14_1 = 1;
            if ((this.mListDimensionBehaviors[0] == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) && (v7_2 == null)) {
                v7_2 = 3;
            }
            if ((this.mListDimensionBehaviors[1] == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) && (v8_0 == null)) {
                v8_0 = 3;
            }
            v44_0 = v0_0;
            if ((this.mListDimensionBehaviors[0] != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) || ((this.mListDimensionBehaviors[1] != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) || ((v7_2 != 3) || (v8_0 != 3)))) {
                if ((this.mListDimensionBehaviors[0] != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) || (v7_2 != 3)) {
                    if ((this.mListDimensionBehaviors[1] != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) || (v8_0 != 3)) {
                    } else {
                        this.mResolvedDimensionRatioSide = 1;
                        if (this.mDimensionRatioSide == -1) {
                            this.mResolvedDimensionRatio = (1065353216 / this.mResolvedDimensionRatio);
                        }
                        android.support.constraint.solver.widgets.ConstraintWidget v0_11 = ((int) (this.mResolvedDimensionRatio * ((float) this.mWidth)));
                        if (this.mListDimensionBehaviors[0] == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) {
                            v47 = v0_11;
                        } else {
                            v47 = v0_11;
                            v41 = v7_2;
                            v45 = 0;
                            v46 = v44_0;
                            v44_1 = 4;
                        }
                    }
                } else {
                    this.mResolvedDimensionRatioSide = 0;
                    android.support.constraint.solver.widgets.ConstraintWidget v0_16 = ((int) (this.mResolvedDimensionRatio * ((float) this.mHeight)));
                    if (this.mListDimensionBehaviors[1] == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) {
                        v46 = v0_16;
                        v47 = v3_0;
                        v41 = v7_2;
                    } else {
                        v14_1 = 0;
                        v46 = v0_16;
                        v47 = v3_0;
                        v41 = 4;
                    }
                    v44_1 = v8_0;
                    v45 = v14_1;
                }
            } else {
                this.setupDimensionRatio(v2_0, v1_11, v4_3, v6_3);
            }
        }
        int v14_3;
        this.mResolvedMatchConstraintDefault[0] = v41;
        this.mResolvedMatchConstraintDefault[1] = v44_1;
        if ((v45 == 0) || ((this.mResolvedDimensionRatioSide != 0) && (this.mResolvedDimensionRatioSide != -1))) {
            v14_3 = 0;
        } else {
            v14_3 = 1;
        }
        if ((this.mListDimensionBehaviors[0] != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) || (!(this instanceof android.support.constraint.solver.widgets.ConstraintWidgetContainer))) {
            android.support.constraint.solver.widgets.ConstraintWidget v0_24 = 0;
        } else {
            v0_24 = 1;
        }
        int v6_4 = v0_24;
        android.support.constraint.solver.widgets.ConstraintWidget v0_25 = 1;
        if (this.mCenter.isConnected()) {
            v0_25 = 0;
        }
        android.support.constraint.solver.SolverVariable v54;
        android.support.constraint.solver.SolverVariable v48;
        int v24_0;
        int v40;
        android.support.constraint.solver.SolverVariable v55;
        android.support.constraint.solver.widgets.ConstraintAnchor v22_0 = v0_25;
        if (this.mHorizontalResolution == 2) {
            v40 = v1_11;
            android.support.constraint.solver.SolverVariable v43 = v4_3;
            v54 = v9_0;
            v48 = v10_0;
            v55 = v11_0;
            v24_0 = 0;
        } else {
            android.support.constraint.solver.widgets.ConstraintWidget v0_28;
            if (this.mParent == null) {
                v0_28 = 0;
            } else {
                v0_28 = p58.createObjectVariable(this.mParent.mRight);
            }
            android.support.constraint.solver.SolverVariable v3_10;
            if (this.mParent == null) {
                v3_10 = 0;
            } else {
                v3_10 = p58.createObjectVariable(this.mParent.mLeft);
            }
            v40 = v1_11;
            v24_0 = 0;
            v54 = v9_0;
            v48 = v10_0;
            v55 = v11_0;
            this.applyConstraints(p58, v2_0, v3_10, v0_28, this.mListDimensionBehaviors[0], v6_4, this.mLeft, this.mRight, this.mX, v46, this.mMinWidth, this.mMaxDimension[0], this.mHorizontalBiasPercent, v14_3, v37, v41, this.mMatchConstraintMinWidth, this.mMatchConstraintMaxWidth, this.mMatchConstraintPercentWidth, v22_0);
        }
        if (this.mVerticalResolution != 2) {
            if ((this.mListDimensionBehaviors[1] != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) || (!(this instanceof android.support.constraint.solver.widgets.ConstraintWidgetContainer))) {
                android.support.constraint.solver.LinearSystem v21 = v24_0;
            } else {
                v21 = 1;
            }
            if ((v45 == 0) || ((this.mResolvedDimensionRatioSide != 1) && (this.mResolvedDimensionRatioSide != -1))) {
                android.support.constraint.solver.LinearSystem v29 = v24_0;
            } else {
                v29 = 1;
            }
            int v11_2;
            android.support.constraint.solver.SolverVariable v9_2;
            android.support.constraint.solver.LinearSystem v8_4;
            if (this.mBaselineDistance <= 0) {
                v9_2 = v55;
                v8_4 = p58;
                v11_2 = v22_0;
            } else {
                if (this.mBaseline.getResolutionNode().state != 1) {
                    v8_4 = p58;
                    android.support.constraint.solver.SolverVariable v10_2 = v54;
                    v9_2 = v55;
                    p58.addEquality(v10_2, v9_2, this.getBaselineDistance(), 6);
                    if (this.mBaseline.mTarget == null) {
                    } else {
                        v8_4.addEquality(v10_2, v8_4.createObjectVariable(this.mBaseline.mTarget), 0, 6);
                        v11_2 = 0;
                    }
                } else {
                    v8_4 = p58;
                    this.mBaseline.getResolutionNode().addResolvedValue(p58);
                    v9_2 = v55;
                }
            }
            int v19_2;
            if (this.mParent == null) {
                v19_2 = 0;
            } else {
                v19_2 = v8_4.createObjectVariable(this.mParent.mBottom);
            }
            int v18_2;
            if (this.mParent == null) {
                v18_2 = 0;
            } else {
                v18_2 = v8_4.createObjectVariable(this.mParent.mTop);
            }
            this.applyConstraints(v8_4, v40, v18_2, v19_2, this.mListDimensionBehaviors[1], v21, this.mTop, this.mBottom, this.mY, v47, this.mMinHeight, this.mMaxDimension[1], this.mVerticalBiasPercent, v29, v38, v44_1, this.mMatchConstraintMinHeight, this.mMatchConstraintMaxHeight, this.mMatchConstraintPercentHeight, v11_2);
            if (v45 != 0) {
                if (this.mResolvedDimensionRatioSide != 1) {
                    v8_4.addRatio(v42, v36, v48, v9_2, this.mResolvedDimensionRatio, 6);
                } else {
                    v8_4.addRatio(v48, v9_2, v42, v36, this.mResolvedDimensionRatio, 6);
                }
            }
            if (this.mCenter.isConnected()) {
                v8_4.addCenterPoint(this, this.mCenter.getTarget().getOwner(), ((float) Math.toRadians(((double) (this.mCircleConstraintAngle + 1119092736)))), this.mCenter.getMargin());
            }
            return;
        } else {
            return;
        }
    }

    public boolean allowedInBarrier()
    {
        int v0_1;
        if (this.mVisibility == 8) {
            v0_1 = 0;
        } else {
            v0_1 = 1;
        }
        return v0_1;
    }

    public void analyze(int p1)
    {
        android.support.constraint.solver.widgets.Optimizer.analyze(p1, this);
        return;
    }

    public void connect(android.support.constraint.solver.widgets.ConstraintAnchor$Type p7, android.support.constraint.solver.widgets.ConstraintWidget p8, android.support.constraint.solver.widgets.ConstraintAnchor$Type p9)
    {
        this.connect(p7, p8, p9, 0, android.support.constraint.solver.widgets.ConstraintAnchor$Strength.STRONG);
        return;
    }

    public void connect(android.support.constraint.solver.widgets.ConstraintAnchor$Type p7, android.support.constraint.solver.widgets.ConstraintWidget p8, android.support.constraint.solver.widgets.ConstraintAnchor$Type p9, int p10)
    {
        this.connect(p7, p8, p9, p10, android.support.constraint.solver.widgets.ConstraintAnchor$Strength.STRONG);
        return;
    }

    public void connect(android.support.constraint.solver.widgets.ConstraintAnchor$Type p8, android.support.constraint.solver.widgets.ConstraintWidget p9, android.support.constraint.solver.widgets.ConstraintAnchor$Type p10, int p11, android.support.constraint.solver.widgets.ConstraintAnchor$Strength p12)
    {
        this.connect(p8, p9, p10, p11, p12, 0);
        return;
    }

    public void connect(android.support.constraint.solver.widgets.ConstraintAnchor$Type p20, android.support.constraint.solver.widgets.ConstraintWidget p21, android.support.constraint.solver.widgets.ConstraintAnchor$Type p22, int p23, android.support.constraint.solver.widgets.ConstraintAnchor$Strength p24, int p25)
    {
        if (p20 != android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER) {
            if ((p20 != android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER_X) || ((p22 != android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT) && (p22 != android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT))) {
                if ((p20 != android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER_Y) || ((p22 != android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP) && (p22 != android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM))) {
                    if ((p20 != android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER_X) || (p22 != android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER_X)) {
                        if ((p20 != android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER_Y) || (p22 != android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER_Y)) {
                            android.support.constraint.solver.widgets.ConstraintAnchor v0_36 = this.getAnchor(p20);
                            android.support.constraint.solver.widgets.ConstraintAnchor v1_21 = p21.getAnchor(p22);
                            if (v0_36.isValidConnection(v1_21)) {
                                int v2_24;
                                if (p20 != android.support.constraint.solver.widgets.ConstraintAnchor$Type.BASELINE) {
                                    if ((p20 != android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP) && (p20 != android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM)) {
                                        if ((p20 == android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT) || (p20 == android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT)) {
                                            int v2_21 = this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER);
                                            if (v2_21.getTarget() != v1_21) {
                                                v2_21.reset();
                                            }
                                            android.support.constraint.solver.widgets.ConstraintAnchor v3_16 = this.getAnchor(p20).getOpposite();
                                            android.support.constraint.solver.widgets.ConstraintAnchor v4_14 = this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER_X);
                                            if (v4_14.isConnected()) {
                                                v3_16.reset();
                                                v4_14.reset();
                                            }
                                        }
                                    } else {
                                        int v2_23 = this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.BASELINE);
                                        if (v2_23 != 0) {
                                            v2_23.reset();
                                        }
                                        android.support.constraint.solver.widgets.ConstraintAnchor v3_18 = this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER);
                                        if (v3_18.getTarget() != v1_21) {
                                            v3_18.reset();
                                        }
                                        android.support.constraint.solver.widgets.ConstraintAnchor v4_17 = this.getAnchor(p20).getOpposite();
                                        boolean v5_11 = this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER_Y);
                                        if (v5_11.isConnected()) {
                                            v4_17.reset();
                                            v5_11.reset();
                                        }
                                    }
                                    v2_24 = p23;
                                } else {
                                    int v2_26 = this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP);
                                    android.support.constraint.solver.widgets.ConstraintAnchor v3_20 = this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM);
                                    if (v2_26 != 0) {
                                        v2_26.reset();
                                    }
                                    if (v3_20 != null) {
                                        v3_20.reset();
                                    }
                                    v2_24 = 0;
                                }
                                v0_36.connect(v1_21, v2_24, p24, p25);
                                v1_21.getOwner().connectedTo(v0_36.getOwner());
                            }
                        } else {
                            this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP).connect(p21.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP), 0, p25);
                            this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM).connect(p21.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM), 0, p25);
                            this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER_Y).connect(p21.getAnchor(p22), 0, p25);
                        }
                    } else {
                        this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT).connect(p21.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT), 0, p25);
                        this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT).connect(p21.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT), 0, p25);
                        this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER_X).connect(p21.getAnchor(p22), 0, p25);
                    }
                } else {
                    android.support.constraint.solver.widgets.ConstraintAnchor v0_7 = p21.getAnchor(p22);
                    this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP).connect(v0_7, 0, p25);
                    this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM).connect(v0_7, 0, p25);
                    this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER_Y).connect(v0_7, 0, p25);
                }
            } else {
                android.support.constraint.solver.widgets.ConstraintAnchor v0_9 = this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT);
                android.support.constraint.solver.widgets.ConstraintAnchor v1_6 = p21.getAnchor(p22);
                int v2_4 = this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT);
                v0_9.connect(v1_6, 0, p25);
                v2_4.connect(v1_6, 0, p25);
                this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER_X).connect(v1_6, 0, p25);
            }
        } else {
            if (p22 != android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER) {
                if ((p22 != android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT) && (p22 != android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT)) {
                    if ((p22 == android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP) || (p22 == android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM)) {
                        this.connect(android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP, p21, p22, 0, p24, p25);
                        this.connect(android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM, p21, p22, 0, p24, p25);
                        this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER).connect(p21.getAnchor(p22), 0, p25);
                    }
                } else {
                    this.connect(android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT, p21, p22, 0, p24, p25);
                    this.connect(android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT, p21, p22, 0, p24, p25);
                    this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER).connect(p21.getAnchor(p22), 0, p25);
                }
            } else {
                int v12;
                android.support.constraint.solver.widgets.ConstraintAnchor v13 = this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT);
                android.support.constraint.solver.widgets.ConstraintAnchor v14 = this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT);
                android.support.constraint.solver.widgets.ConstraintAnchor v15 = this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP);
                boolean v6_4 = this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM);
                int v16 = 0;
                int v17 = 0;
                if (((v13 == null) || (!v13.isConnected())) && ((v14 == null) || (!v14.isConnected()))) {
                    v12 = v6_4;
                    this.connect(android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT, p21, android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT, 0, p24, p25);
                    this.connect(android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT, p21, android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT, 0, p24, p25);
                    v16 = 1;
                } else {
                    v12 = v6_4;
                }
                if (((v15 == null) || (!v15.isConnected())) && ((v12 == 0) || (!v12.isConnected()))) {
                    this.connect(android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP, p21, android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP, 0, p24, p25);
                    this.connect(android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM, p21, android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM, 0, p24, p25);
                    v17 = 1;
                }
                if ((v16 == 0) || (v17 == 0)) {
                    if (v16 == 0) {
                        if (v17 != 0) {
                            this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER_Y).connect(p21.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER_Y), 0, p25);
                        }
                    } else {
                        this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER_X).connect(p21.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER_X), 0, p25);
                    }
                } else {
                    this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER).connect(p21.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER), 0, p25);
                }
            }
        }
        return;
    }

    public void connect(android.support.constraint.solver.widgets.ConstraintAnchor p7, android.support.constraint.solver.widgets.ConstraintAnchor p8, int p9)
    {
        this.connect(p7, p8, p9, android.support.constraint.solver.widgets.ConstraintAnchor$Strength.STRONG, 0);
        return;
    }

    public void connect(android.support.constraint.solver.widgets.ConstraintAnchor p7, android.support.constraint.solver.widgets.ConstraintAnchor p8, int p9, int p10)
    {
        this.connect(p7, p8, p9, android.support.constraint.solver.widgets.ConstraintAnchor$Strength.STRONG, p10);
        return;
    }

    public void connect(android.support.constraint.solver.widgets.ConstraintAnchor p9, android.support.constraint.solver.widgets.ConstraintAnchor p10, int p11, android.support.constraint.solver.widgets.ConstraintAnchor$Strength p12, int p13)
    {
        if (p9.getOwner() == this) {
            this.connect(p9.getType(), p10.getOwner(), p10.getType(), p11, p12, p13);
        }
        return;
    }

    public void connectCircularConstraint(android.support.constraint.solver.widgets.ConstraintWidget p7, float p8, int p9)
    {
        this.immediateConnect(android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER, p7, android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER, p9, 0);
        this.mCircleConstraintAngle = p8;
        return;
    }

    public void connectedTo(android.support.constraint.solver.widgets.ConstraintWidget p1)
    {
        return;
    }

    public void createObjectVariables(android.support.constraint.solver.LinearSystem p6)
    {
        p6.createObjectVariable(this.mLeft);
        p6.createObjectVariable(this.mTop);
        p6.createObjectVariable(this.mRight);
        p6.createObjectVariable(this.mBottom);
        if (this.mBaselineDistance > 0) {
            p6.createObjectVariable(this.mBaseline);
        }
        return;
    }

    public void disconnectUnlockedWidget(android.support.constraint.solver.widgets.ConstraintWidget p7)
    {
        java.util.ArrayList v0 = this.getAnchors();
        int v1 = 0;
        int v2 = v0.size();
        while (v1 < v2) {
            android.support.constraint.solver.widgets.ConstraintAnchor v3_1 = ((android.support.constraint.solver.widgets.ConstraintAnchor) v0.get(v1));
            if ((v3_1.isConnected()) && ((v3_1.getTarget().getOwner() == p7) && (v3_1.getConnectionCreator() == 2))) {
                v3_1.reset();
            }
            v1++;
        }
        return;
    }

    public void disconnectWidget(android.support.constraint.solver.widgets.ConstraintWidget p6)
    {
        java.util.ArrayList v0 = this.getAnchors();
        int v1 = 0;
        int v2 = v0.size();
        while (v1 < v2) {
            android.support.constraint.solver.widgets.ConstraintAnchor v3_1 = ((android.support.constraint.solver.widgets.ConstraintAnchor) v0.get(v1));
            if ((v3_1.isConnected()) && (v3_1.getTarget().getOwner() == p6)) {
                v3_1.reset();
            }
            v1++;
        }
        return;
    }

    public void forceUpdateDrawPosition()
    {
        int v0 = this.mX;
        int v1 = this.mY;
        int v2_1 = (this.mX + this.mWidth);
        int v3_2 = (this.mY + this.mHeight);
        this.mDrawX = v0;
        this.mDrawY = v1;
        this.mDrawWidth = (v2_1 - v0);
        this.mDrawHeight = (v3_2 - v1);
        return;
    }

    public android.support.constraint.solver.widgets.ConstraintAnchor getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type p3)
    {
        switch (android.support.constraint.solver.widgets.ConstraintWidget$1.$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type[p3.ordinal()]) {
            case 1:
                return this.mLeft;
            case 2:
                return this.mTop;
            case 3:
                return this.mRight;
            case 4:
                return this.mBottom;
            case 5:
                return this.mBaseline;
            case 6:
                return this.mCenter;
            case 7:
                return this.mCenterX;
            case 8:
                return this.mCenterY;
            case 9:
                return 0;
            default:
                throw new AssertionError(p3.name());
        }
    }

    public java.util.ArrayList getAnchors()
    {
        return this.mAnchors;
    }

    public int getBaselineDistance()
    {
        return this.mBaselineDistance;
    }

    public float getBiasPercent(int p2)
    {
        if (p2 != 0) {
            if (p2 != 1) {
                return -1082130432;
            } else {
                return this.mVerticalBiasPercent;
            }
        } else {
            return this.mHorizontalBiasPercent;
        }
    }

    public int getBottom()
    {
        return (this.getY() + this.mHeight);
    }

    public Object getCompanionWidget()
    {
        return this.mCompanionWidget;
    }

    public int getContainerItemSkip()
    {
        return this.mContainerItemSkip;
    }

    public String getDebugName()
    {
        return this.mDebugName;
    }

    public android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour getDimensionBehaviour(int p2)
    {
        if (p2 != 0) {
            if (p2 != 1) {
                return 0;
            } else {
                return this.getVerticalDimensionBehaviour();
            }
        } else {
            return this.getHorizontalDimensionBehaviour();
        }
    }

    public float getDimensionRatio()
    {
        return this.mDimensionRatio;
    }

    public int getDimensionRatioSide()
    {
        return this.mDimensionRatioSide;
    }

    public int getDrawBottom()
    {
        return (this.getDrawY() + this.mDrawHeight);
    }

    public int getDrawHeight()
    {
        return this.mDrawHeight;
    }

    public int getDrawRight()
    {
        return (this.getDrawX() + this.mDrawWidth);
    }

    public int getDrawWidth()
    {
        return this.mDrawWidth;
    }

    public int getDrawX()
    {
        return (this.mDrawX + this.mOffsetX);
    }

    public int getDrawY()
    {
        return (this.mDrawY + this.mOffsetY);
    }

    public int getHeight()
    {
        if (this.mVisibility != 8) {
            return this.mHeight;
        } else {
            return 0;
        }
    }

    public float getHorizontalBiasPercent()
    {
        return this.mHorizontalBiasPercent;
    }

    public android.support.constraint.solver.widgets.ConstraintWidget getHorizontalChainControlWidget()
    {
        android.support.constraint.solver.widgets.ConstraintWidget v1_1;
        if (!this.isInHorizontalChain()) {
            v1_1 = 0;
        } else {
            v1_1 = 0;
            android.support.constraint.solver.widgets.ConstraintWidget v0_1 = this;
            while ((v1_1 == null) && (v0_1 != null)) {
                android.support.constraint.solver.widgets.ConstraintAnchor v4;
                android.support.constraint.solver.widgets.ConstraintAnchor v2_0 = v0_1.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT);
                android.support.constraint.solver.widgets.ConstraintAnchor v3_0 = 0;
                if (v2_0 != null) {
                    v4 = v2_0.getTarget();
                } else {
                    v4 = 0;
                }
                android.support.constraint.solver.widgets.ConstraintWidget v5;
                if (v4 != null) {
                    v5 = v4.getOwner();
                } else {
                    v5 = 0;
                }
                if (v5 != this.getParent()) {
                    if (v5 != null) {
                        v3_0 = v5.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT).getTarget();
                    }
                    if ((v3_0 == null) || (v3_0.getOwner() == v0_1)) {
                        v0_1 = v5;
                    } else {
                        v1_1 = v0_1;
                    }
                } else {
                    v1_1 = v0_1;
                    break;
                }
            }
        }
        return v1_1;
    }

    public int getHorizontalChainStyle()
    {
        return this.mHorizontalChainStyle;
    }

    public android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour getHorizontalDimensionBehaviour()
    {
        return this.mListDimensionBehaviors[0];
    }

    public int getInternalDrawBottom()
    {
        return (this.mDrawY + this.mDrawHeight);
    }

    public int getInternalDrawRight()
    {
        return (this.mDrawX + this.mDrawWidth);
    }

    int getInternalDrawX()
    {
        return this.mDrawX;
    }

    int getInternalDrawY()
    {
        return this.mDrawY;
    }

    public int getLeft()
    {
        return this.getX();
    }

    public int getLength(int p2)
    {
        if (p2 != 0) {
            if (p2 != 1) {
                return 0;
            } else {
                return this.getHeight();
            }
        } else {
            return this.getWidth();
        }
    }

    public int getMaxHeight()
    {
        return this.mMaxDimension[1];
    }

    public int getMaxWidth()
    {
        return this.mMaxDimension[0];
    }

    public int getMinHeight()
    {
        return this.mMinHeight;
    }

    public int getMinWidth()
    {
        return this.mMinWidth;
    }

    public int getOptimizerWrapHeight()
    {
        int v0 = this.mHeight;
        if (this.mListDimensionBehaviors[1] == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) {
            if (this.mMatchConstraintDefaultHeight != 1) {
                if (this.mMatchConstraintMinHeight <= 0) {
                    v0 = 0;
                } else {
                    v0 = this.mMatchConstraintMinHeight;
                    this.mHeight = v0;
                }
            } else {
                v0 = Math.max(this.mMatchConstraintMinHeight, v0);
            }
            if ((this.mMatchConstraintMaxHeight > 0) && (this.mMatchConstraintMaxHeight < v0)) {
                v0 = this.mMatchConstraintMaxHeight;
            }
        }
        return v0;
    }

    public int getOptimizerWrapWidth()
    {
        int v0 = this.mWidth;
        if (this.mListDimensionBehaviors[0] == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) {
            if (this.mMatchConstraintDefaultWidth != 1) {
                if (this.mMatchConstraintMinWidth <= 0) {
                    v0 = 0;
                } else {
                    v0 = this.mMatchConstraintMinWidth;
                    this.mWidth = v0;
                }
            } else {
                v0 = Math.max(this.mMatchConstraintMinWidth, v0);
            }
            if ((this.mMatchConstraintMaxWidth > 0) && (this.mMatchConstraintMaxWidth < v0)) {
                v0 = this.mMatchConstraintMaxWidth;
            }
        }
        return v0;
    }

    public android.support.constraint.solver.widgets.ConstraintWidget getParent()
    {
        return this.mParent;
    }

    int getRelativePositioning(int p2)
    {
        if (p2 != 0) {
            if (p2 != 1) {
                return 0;
            } else {
                return this.mRelY;
            }
        } else {
            return this.mRelX;
        }
    }

    public android.support.constraint.solver.widgets.ResolutionDimension getResolutionHeight()
    {
        if (this.mResolutionHeight == null) {
            this.mResolutionHeight = new android.support.constraint.solver.widgets.ResolutionDimension();
        }
        return this.mResolutionHeight;
    }

    public android.support.constraint.solver.widgets.ResolutionDimension getResolutionWidth()
    {
        if (this.mResolutionWidth == null) {
            this.mResolutionWidth = new android.support.constraint.solver.widgets.ResolutionDimension();
        }
        return this.mResolutionWidth;
    }

    public int getRight()
    {
        return (this.getX() + this.mWidth);
    }

    public android.support.constraint.solver.widgets.WidgetContainer getRootWidgetContainer()
    {
        android.support.constraint.solver.widgets.ConstraintWidget v0 = this;
        while (v0.getParent() != null) {
            v0 = v0.getParent();
        }
        if (!(v0 instanceof android.support.constraint.solver.widgets.WidgetContainer)) {
            return 0;
        } else {
            return ((android.support.constraint.solver.widgets.WidgetContainer) v0);
        }
    }

    protected int getRootX()
    {
        return (this.mX + this.mOffsetX);
    }

    protected int getRootY()
    {
        return (this.mY + this.mOffsetY);
    }

    public int getTop()
    {
        return this.getY();
    }

    public String getType()
    {
        return this.mType;
    }

    public float getVerticalBiasPercent()
    {
        return this.mVerticalBiasPercent;
    }

    public android.support.constraint.solver.widgets.ConstraintWidget getVerticalChainControlWidget()
    {
        android.support.constraint.solver.widgets.ConstraintWidget v1_1;
        if (!this.isInVerticalChain()) {
            v1_1 = 0;
        } else {
            v1_1 = 0;
            android.support.constraint.solver.widgets.ConstraintWidget v0_1 = this;
            while ((v1_1 == null) && (v0_1 != null)) {
                android.support.constraint.solver.widgets.ConstraintAnchor v4;
                android.support.constraint.solver.widgets.ConstraintAnchor v2_0 = v0_1.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP);
                android.support.constraint.solver.widgets.ConstraintAnchor v3_0 = 0;
                if (v2_0 != null) {
                    v4 = v2_0.getTarget();
                } else {
                    v4 = 0;
                }
                android.support.constraint.solver.widgets.ConstraintWidget v5;
                if (v4 != null) {
                    v5 = v4.getOwner();
                } else {
                    v5 = 0;
                }
                if (v5 != this.getParent()) {
                    if (v5 != null) {
                        v3_0 = v5.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM).getTarget();
                    }
                    if ((v3_0 == null) || (v3_0.getOwner() == v0_1)) {
                        v0_1 = v5;
                    } else {
                        v1_1 = v0_1;
                    }
                } else {
                    v1_1 = v0_1;
                    break;
                }
            }
        }
        return v1_1;
    }

    public int getVerticalChainStyle()
    {
        return this.mVerticalChainStyle;
    }

    public android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour getVerticalDimensionBehaviour()
    {
        return this.mListDimensionBehaviors[1];
    }

    public int getVisibility()
    {
        return this.mVisibility;
    }

    public int getWidth()
    {
        if (this.mVisibility != 8) {
            return this.mWidth;
        } else {
            return 0;
        }
    }

    public int getWrapHeight()
    {
        return this.mWrapHeight;
    }

    public int getWrapWidth()
    {
        return this.mWrapWidth;
    }

    public int getX()
    {
        return this.mX;
    }

    public int getY()
    {
        return this.mY;
    }

    public boolean hasAncestor(android.support.constraint.solver.widgets.ConstraintWidget p5)
    {
        android.support.constraint.solver.widgets.ConstraintWidget v0 = this.getParent();
        if (v0 != p5) {
            if (v0 == p5.getParent()) {
                return 0;
            }
            while (v0 != null) {
                if (v0 != p5) {
                    if (v0 != p5.getParent()) {
                        v0 = v0.getParent();
                    } else {
                        return 1;
                    }
                } else {
                    return 1;
                }
            }
            return 0;
        } else {
            return 1;
        }
    }

    public boolean hasBaseline()
    {
        int v0_1;
        if (this.mBaselineDistance <= 0) {
            v0_1 = 0;
        } else {
            v0_1 = 1;
        }
        return v0_1;
    }

    public void immediateConnect(android.support.constraint.solver.widgets.ConstraintAnchor$Type p10, android.support.constraint.solver.widgets.ConstraintWidget p11, android.support.constraint.solver.widgets.ConstraintAnchor$Type p12, int p13, int p14)
    {
        this.getAnchor(p10).connect(p11.getAnchor(p12), p13, p14, android.support.constraint.solver.widgets.ConstraintAnchor$Strength.STRONG, 0, 1);
        return;
    }

    public boolean isFullyResolved()
    {
        if ((this.mLeft.getResolutionNode().state != 1) || ((this.mRight.getResolutionNode().state != 1) || ((this.mTop.getResolutionNode().state != 1) || (this.mBottom.getResolutionNode().state != 1)))) {
            return 0;
        } else {
            return 1;
        }
    }

    public boolean isHeightWrapContent()
    {
        return this.mIsHeightWrapContent;
    }

    public boolean isInHorizontalChain()
    {
        if (((this.mLeft.mTarget == null) || (this.mLeft.mTarget.mTarget != this.mLeft)) && ((this.mRight.mTarget == null) || (this.mRight.mTarget.mTarget != this.mRight))) {
            return 0;
        } else {
            return 1;
        }
    }

    public boolean isInVerticalChain()
    {
        if (((this.mTop.mTarget == null) || (this.mTop.mTarget.mTarget != this.mTop)) && ((this.mBottom.mTarget == null) || (this.mBottom.mTarget.mTarget != this.mBottom))) {
            return 0;
        } else {
            return 1;
        }
    }

    public boolean isInsideConstraintLayout()
    {
        android.support.constraint.solver.widgets.ConstraintWidget v0 = this.getParent();
        if (v0 == null) {
            return 0;
        }
        while (v0 != null) {
            if (!(v0 instanceof android.support.constraint.solver.widgets.ConstraintWidgetContainer)) {
                v0 = v0.getParent();
            } else {
                return 1;
            }
        }
        return 0;
    }

    public boolean isRoot()
    {
        int v0_1;
        if (this.mParent != null) {
            v0_1 = 0;
        } else {
            v0_1 = 1;
        }
        return v0_1;
    }

    public boolean isRootContainer()
    {
        if ((!(this instanceof android.support.constraint.solver.widgets.ConstraintWidgetContainer)) || ((this.mParent != null) && ((this.mParent instanceof android.support.constraint.solver.widgets.ConstraintWidgetContainer)))) {
            int v0_4 = 0;
        } else {
            v0_4 = 1;
        }
        return v0_4;
    }

    public boolean isSpreadHeight()
    {
        int v1 = 1;
        if ((this.mMatchConstraintDefaultHeight != 0) || ((this.mDimensionRatio != 0) || ((this.mMatchConstraintMinHeight != 0) || ((this.mMatchConstraintMaxHeight != 0) || (this.mListDimensionBehaviors[1] != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT))))) {
            v1 = 0;
        }
        return v1;
    }

    public boolean isSpreadWidth()
    {
        int v1 = 0;
        if ((this.mMatchConstraintDefaultWidth == 0) && ((this.mDimensionRatio == 0) && ((this.mMatchConstraintMinWidth == 0) && ((this.mMatchConstraintMaxWidth == 0) && (this.mListDimensionBehaviors[0] == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT))))) {
            v1 = 1;
        }
        return v1;
    }

    public boolean isWidthWrapContent()
    {
        return this.mIsWidthWrapContent;
    }

    public void reset()
    {
        this.mLeft.reset();
        this.mTop.reset();
        this.mRight.reset();
        this.mBottom.reset();
        this.mBaseline.reset();
        this.mCenterX.reset();
        this.mCenterY.reset();
        this.mCenter.reset();
        this.mParent = 0;
        this.mCircleConstraintAngle = 0;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0;
        this.mDimensionRatioSide = -1;
        this.mX = 0;
        this.mY = 0;
        this.mDrawX = 0;
        this.mDrawY = 0;
        this.mDrawWidth = 0;
        this.mDrawHeight = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mWrapWidth = 0;
        this.mWrapHeight = 0;
        this.mHorizontalBiasPercent = android.support.constraint.solver.widgets.ConstraintWidget.DEFAULT_BIAS;
        this.mVerticalBiasPercent = android.support.constraint.solver.widgets.ConstraintWidget.DEFAULT_BIAS;
        this.mListDimensionBehaviors[0] = android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.FIXED;
        this.mListDimensionBehaviors[1] = android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.FIXED;
        this.mCompanionWidget = 0;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mType = 0;
        this.mHorizontalWrapVisited = 0;
        this.mVerticalWrapVisited = 0;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mHorizontalChainFixedPosition = 0;
        this.mVerticalChainFixedPosition = 0;
        this.mWeight[0] = -1082130432;
        this.mWeight[1] = -1082130432;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.mMaxDimension[0] = 2147483647;
        this.mMaxDimension[1] = 2147483647;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mMatchConstraintPercentWidth = 1065353216;
        this.mMatchConstraintPercentHeight = 1065353216;
        this.mMatchConstraintMaxWidth = 2147483647;
        this.mMatchConstraintMaxHeight = 2147483647;
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMinHeight = 0;
        this.mResolvedDimensionRatioSide = -1;
        this.mResolvedDimensionRatio = 1065353216;
        if (this.mResolutionWidth != null) {
            this.mResolutionWidth.reset();
        }
        if (this.mResolutionHeight != null) {
            this.mResolutionHeight.reset();
        }
        this.mBelongingGroup = 0;
        this.mOptimizerMeasurable = 0;
        this.mOptimizerMeasured = 0;
        this.mGroupsToSolver = 0;
        return;
    }

    public void resetAllConstraints()
    {
        this.resetAnchors();
        this.setVerticalBiasPercent(android.support.constraint.solver.widgets.ConstraintWidget.DEFAULT_BIAS);
        this.setHorizontalBiasPercent(android.support.constraint.solver.widgets.ConstraintWidget.DEFAULT_BIAS);
        if (!(this instanceof android.support.constraint.solver.widgets.ConstraintWidgetContainer)) {
            if (this.getHorizontalDimensionBehaviour() == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) {
                if (this.getWidth() != this.getWrapWidth()) {
                    if (this.getWidth() > this.getMinWidth()) {
                        this.setHorizontalDimensionBehaviour(android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.FIXED);
                    }
                } else {
                    this.setHorizontalDimensionBehaviour(android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT);
                }
            }
            if (this.getVerticalDimensionBehaviour() == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) {
                if (this.getHeight() != this.getWrapHeight()) {
                    if (this.getHeight() > this.getMinHeight()) {
                        this.setVerticalDimensionBehaviour(android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.FIXED);
                    }
                } else {
                    this.setVerticalDimensionBehaviour(android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT);
                }
            }
            return;
        } else {
            return;
        }
    }

    public void resetAnchor(android.support.constraint.solver.widgets.ConstraintAnchor p11)
    {
        if ((this.getParent() == null) || ((!(this.getParent() instanceof android.support.constraint.solver.widgets.ConstraintWidgetContainer)) || (!((android.support.constraint.solver.widgets.ConstraintWidgetContainer) this.getParent()).handlesInternalConstraints()))) {
            android.support.constraint.solver.widgets.ConstraintWidgetContainer v0_2 = this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT);
            boolean v1_2 = this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT);
            android.support.constraint.solver.widgets.ConstraintAnchor v2_1 = this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP);
            android.support.constraint.solver.widgets.ConstraintAnchor v3_1 = this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM);
            android.support.constraint.solver.widgets.ConstraintAnchor v4_1 = this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER);
            android.support.constraint.solver.widgets.ConstraintAnchor v5_1 = this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER_X);
            android.support.constraint.solver.widgets.ConstraintAnchor vtmp9 = this.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER_Y);
            if (p11 != v4_1) {
                if (p11 != v5_1) {
                    if (p11 != vtmp9) {
                        if ((p11 != v0_2) && (p11 != v1_2)) {
                            if (((p11 == v2_1) || (p11 == v3_1)) && ((v2_1.isConnected()) && (v2_1.getTarget() == v3_1.getTarget()))) {
                                v4_1.reset();
                            }
                        } else {
                            if ((v0_2.isConnected()) && (v0_2.getTarget() == v1_2.getTarget())) {
                                v4_1.reset();
                            }
                        }
                    } else {
                        if ((v2_1.isConnected()) && ((v3_1.isConnected()) && (v2_1.getTarget().getOwner() == v3_1.getTarget().getOwner()))) {
                            v2_1.reset();
                            v3_1.reset();
                        }
                        this.mVerticalBiasPercent = 1056964608;
                    }
                } else {
                    if ((v0_2.isConnected()) && ((v1_2.isConnected()) && (v0_2.getTarget().getOwner() == v1_2.getTarget().getOwner()))) {
                        v0_2.reset();
                        v1_2.reset();
                    }
                    this.mHorizontalBiasPercent = 1056964608;
                }
            } else {
                if ((v0_2.isConnected()) && ((v1_2.isConnected()) && (v0_2.getTarget() == v1_2.getTarget()))) {
                    v0_2.reset();
                    v1_2.reset();
                }
                if ((v2_1.isConnected()) && ((v3_1.isConnected()) && (v2_1.getTarget() == v3_1.getTarget()))) {
                    v2_1.reset();
                    v3_1.reset();
                }
                this.mHorizontalBiasPercent = 1056964608;
                this.mVerticalBiasPercent = 1056964608;
            }
            p11.reset();
            return;
        } else {
            return;
        }
    }

    public void resetAnchors()
    {
        android.support.constraint.solver.widgets.ConstraintWidget v0 = this.getParent();
        if ((v0 == null) || ((!(v0 instanceof android.support.constraint.solver.widgets.ConstraintWidgetContainer)) || (!((android.support.constraint.solver.widgets.ConstraintWidgetContainer) this.getParent()).handlesInternalConstraints()))) {
            int v1_0 = 0;
            boolean v2_1 = this.mAnchors.size();
            while (v1_0 < v2_1) {
                ((android.support.constraint.solver.widgets.ConstraintAnchor) this.mAnchors.get(v1_0)).reset();
                v1_0++;
            }
            return;
        } else {
            return;
        }
    }

    public void resetAnchors(int p6)
    {
        android.support.constraint.solver.widgets.ConstraintWidget v0 = this.getParent();
        if ((v0 == null) || ((!(v0 instanceof android.support.constraint.solver.widgets.ConstraintWidgetContainer)) || (!((android.support.constraint.solver.widgets.ConstraintWidgetContainer) this.getParent()).handlesInternalConstraints()))) {
            int v1_0 = 0;
            boolean v2_1 = this.mAnchors.size();
            while (v1_0 < v2_1) {
                android.support.constraint.solver.widgets.ConstraintAnchor v3_2 = ((android.support.constraint.solver.widgets.ConstraintAnchor) this.mAnchors.get(v1_0));
                if (p6 == v3_2.getConnectionCreator()) {
                    if (!v3_2.isVerticalAnchor()) {
                        this.setHorizontalBiasPercent(android.support.constraint.solver.widgets.ConstraintWidget.DEFAULT_BIAS);
                    } else {
                        this.setVerticalBiasPercent(android.support.constraint.solver.widgets.ConstraintWidget.DEFAULT_BIAS);
                    }
                    v3_2.reset();
                }
                v1_0++;
            }
            return;
        } else {
            return;
        }
    }

    public void resetResolutionNodes()
    {
        int v0 = 0;
        while (v0 < 6) {
            this.mListAnchors[v0].getResolutionNode().reset();
            v0++;
        }
        return;
    }

    public void resetSolverVariables(android.support.constraint.solver.Cache p2)
    {
        this.mLeft.resetSolverVariable(p2);
        this.mTop.resetSolverVariable(p2);
        this.mRight.resetSolverVariable(p2);
        this.mBottom.resetSolverVariable(p2);
        this.mBaseline.resetSolverVariable(p2);
        this.mCenter.resetSolverVariable(p2);
        this.mCenterX.resetSolverVariable(p2);
        this.mCenterY.resetSolverVariable(p2);
        return;
    }

    public void resolve()
    {
        return;
    }

    public void setBaselineDistance(int p1)
    {
        this.mBaselineDistance = p1;
        return;
    }

    public void setCompanionWidget(Object p1)
    {
        this.mCompanionWidget = p1;
        return;
    }

    public void setContainerItemSkip(int p2)
    {
        if (p2 < 0) {
            this.mContainerItemSkip = 0;
        } else {
            this.mContainerItemSkip = p2;
        }
        return;
    }

    public void setDebugName(String p1)
    {
        this.mDebugName = p1;
        return;
    }

    public void setDebugSolverName(android.support.constraint.solver.LinearSystem p8, String p9)
    {
        this.mDebugName = p9;
        android.support.constraint.solver.SolverVariable v0_1 = p8.createObjectVariable(this.mLeft);
        android.support.constraint.solver.SolverVariable v1_1 = p8.createObjectVariable(this.mTop);
        android.support.constraint.solver.SolverVariable v2_1 = p8.createObjectVariable(this.mRight);
        android.support.constraint.solver.SolverVariable v3_1 = p8.createObjectVariable(this.mBottom);
        android.support.constraint.solver.SolverVariable v4_1 = new StringBuilder();
        v4_1.append(p9);
        v4_1.append(".left");
        v0_1.setName(v4_1.toString());
        android.support.constraint.solver.SolverVariable v4_4 = new StringBuilder();
        v4_4.append(p9);
        v4_4.append(".top");
        v1_1.setName(v4_4.toString());
        android.support.constraint.solver.SolverVariable v4_7 = new StringBuilder();
        v4_7.append(p9);
        v4_7.append(".right");
        v2_1.setName(v4_7.toString());
        android.support.constraint.solver.SolverVariable v4_10 = new StringBuilder();
        v4_10.append(p9);
        v4_10.append(".bottom");
        v3_1.setName(v4_10.toString());
        if (this.mBaselineDistance > 0) {
            android.support.constraint.solver.SolverVariable v4_14 = p8.createObjectVariable(this.mBaseline);
            String v5_5 = new StringBuilder();
            v5_5.append(p9);
            v5_5.append(".baseline");
            v4_14.setName(v5_5.toString());
        }
        return;
    }

    public void setDimension(int p3, int p4)
    {
        this.mWidth = p3;
        if (this.mWidth < this.mMinWidth) {
            this.mWidth = this.mMinWidth;
        }
        this.mHeight = p4;
        if (this.mHeight < this.mMinHeight) {
            this.mHeight = this.mMinHeight;
        }
        return;
    }

    public void setDimensionRatio(float p1, int p2)
    {
        this.mDimensionRatio = p1;
        this.mDimensionRatioSide = p2;
        return;
    }

    public void setDimensionRatio(String p13)
    {
        if ((p13 != null) && (p13.length() != 0)) {
            int v4_1;
            int v1_0 = -1;
            float v2 = 0;
            int v3 = p13.length();
            int v4_0 = p13.indexOf(44);
            if ((v4_0 <= 0) || (v4_0 >= (v3 - 1))) {
                v4_1 = 0;
            } else {
                int v6_2 = p13.substring(0, v4_0);
                if (!v6_2.equalsIgnoreCase("W")) {
                    if (v6_2.equalsIgnoreCase("H")) {
                        v1_0 = 1;
                    }
                } else {
                    v1_0 = 0;
                }
                v4_1 = (v4_0 + 1);
            }
            int v6_4 = p13.indexOf(58);
            if ((v6_4 < 0) || (v6_4 >= (v3 - 1))) {
                float v5_1 = p13.substring(v4_1);
                if (v5_1.length() > 0) {
                    try {
                        v2 = Float.parseFloat(v5_1);
                    } catch (NumberFormatException v7) {
                    }
                }
            } else {
                NumberFormatException v7_7 = p13.substring(v4_1, v6_4);
                String v8_1 = p13.substring((v6_4 + 1));
                if ((v7_7.length() > 0) && (v8_1.length() > 0)) {
                    try {
                        float v9_2 = Float.parseFloat(v7_7);
                        float v10 = Float.parseFloat(v8_1);
                    } catch (float v5) {
                    }
                    if ((v9_2 > 0) && (v10 > 0)) {
                        if (v1_0 != 1) {
                            v2 = Math.abs((v9_2 / v10));
                        } else {
                            v2 = Math.abs((v10 / v9_2));
                        }
                    }
                }
            }
            if (v2 > 0) {
                this.mDimensionRatio = v2;
                this.mDimensionRatioSide = v1_0;
            }
            return;
        } else {
            this.mDimensionRatio = 0;
            return;
        }
    }

    public void setDrawHeight(int p1)
    {
        this.mDrawHeight = p1;
        return;
    }

    public void setDrawOrigin(int p2, int p3)
    {
        this.mDrawX = (p2 - this.mOffsetX);
        this.mDrawY = (p3 - this.mOffsetY);
        this.mX = this.mDrawX;
        this.mY = this.mDrawY;
        return;
    }

    public void setDrawWidth(int p1)
    {
        this.mDrawWidth = p1;
        return;
    }

    public void setDrawX(int p2)
    {
        this.mDrawX = (p2 - this.mOffsetX);
        this.mX = this.mDrawX;
        return;
    }

    public void setDrawY(int p2)
    {
        this.mDrawY = (p2 - this.mOffsetY);
        this.mY = this.mDrawY;
        return;
    }

    public void setFrame(int p2, int p3, int p4)
    {
        if (p4 != 0) {
            if (p4 == 1) {
                this.setVerticalDimension(p2, p3);
            }
        } else {
            this.setHorizontalDimension(p2, p3);
        }
        this.mOptimizerMeasured = 1;
        return;
    }

    public void setFrame(int p6, int p7, int p8, int p9)
    {
        int v0 = (p8 - p6);
        int v1 = (p9 - p7);
        this.mX = p6;
        this.mY = p7;
        if (this.mVisibility != 8) {
            if ((this.mListDimensionBehaviors[0] == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.FIXED) && (v0 < this.mWidth)) {
                v0 = this.mWidth;
            }
            if ((this.mListDimensionBehaviors[1] == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.FIXED) && (v1 < this.mHeight)) {
                v1 = this.mHeight;
            }
            this.mWidth = v0;
            this.mHeight = v1;
            if (this.mHeight < this.mMinHeight) {
                this.mHeight = this.mMinHeight;
            }
            if (this.mWidth < this.mMinWidth) {
                this.mWidth = this.mMinWidth;
            }
            this.mOptimizerMeasured = 1;
            return;
        } else {
            this.mWidth = 0;
            this.mHeight = 0;
            return;
        }
    }

    public void setGoneMargin(android.support.constraint.solver.widgets.ConstraintAnchor$Type p3, int p4)
    {
        switch (android.support.constraint.solver.widgets.ConstraintWidget$1.$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type[p3.ordinal()]) {
            case 1:
                this.mLeft.mGoneMargin = p4;
                break;
            case 2:
                this.mTop.mGoneMargin = p4;
                break;
            case 3:
                this.mRight.mGoneMargin = p4;
                break;
            case 4:
                this.mBottom.mGoneMargin = p4;
                break;
            default:
        }
        return;
    }

    public void setHeight(int p3)
    {
        this.mHeight = p3;
        if (this.mHeight < this.mMinHeight) {
            this.mHeight = this.mMinHeight;
        }
        return;
    }

    public void setHeightWrapContent(boolean p1)
    {
        this.mIsHeightWrapContent = p1;
        return;
    }

    public void setHorizontalBiasPercent(float p1)
    {
        this.mHorizontalBiasPercent = p1;
        return;
    }

    public void setHorizontalChainStyle(int p1)
    {
        this.mHorizontalChainStyle = p1;
        return;
    }

    public void setHorizontalDimension(int p3, int p4)
    {
        this.mX = p3;
        this.mWidth = (p4 - p3);
        if (this.mWidth < this.mMinWidth) {
            this.mWidth = this.mMinWidth;
        }
        return;
    }

    public void setHorizontalDimensionBehaviour(android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour p3)
    {
        this.mListDimensionBehaviors[0] = p3;
        if (p3 == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) {
            this.setWidth(this.mWrapWidth);
        }
        return;
    }

    public void setHorizontalMatchStyle(int p2, int p3, int p4, float p5)
    {
        this.mMatchConstraintDefaultWidth = p2;
        this.mMatchConstraintMinWidth = p3;
        this.mMatchConstraintMaxWidth = p4;
        this.mMatchConstraintPercentWidth = p5;
        if ((p5 < 1065353216) && (this.mMatchConstraintDefaultWidth == 0)) {
            this.mMatchConstraintDefaultWidth = 2;
        }
        return;
    }

    public void setHorizontalWeight(float p3)
    {
        this.mWeight[0] = p3;
        return;
    }

    public void setLength(int p2, int p3)
    {
        if (p3 != 0) {
            if (p3 == 1) {
                this.setHeight(p2);
            }
        } else {
            this.setWidth(p2);
        }
        return;
    }

    public void setMaxHeight(int p3)
    {
        this.mMaxDimension[1] = p3;
        return;
    }

    public void setMaxWidth(int p3)
    {
        this.mMaxDimension[0] = p3;
        return;
    }

    public void setMinHeight(int p2)
    {
        if (p2 >= 0) {
            this.mMinHeight = p2;
        } else {
            this.mMinHeight = 0;
        }
        return;
    }

    public void setMinWidth(int p2)
    {
        if (p2 >= 0) {
            this.mMinWidth = p2;
        } else {
            this.mMinWidth = 0;
        }
        return;
    }

    public void setOffset(int p1, int p2)
    {
        this.mOffsetX = p1;
        this.mOffsetY = p2;
        return;
    }

    public void setOrigin(int p1, int p2)
    {
        this.mX = p1;
        this.mY = p2;
        return;
    }

    public void setParent(android.support.constraint.solver.widgets.ConstraintWidget p1)
    {
        this.mParent = p1;
        return;
    }

    void setRelativePositioning(int p2, int p3)
    {
        if (p3 != 0) {
            if (p3 == 1) {
                this.mRelY = p2;
            }
        } else {
            this.mRelX = p2;
        }
        return;
    }

    public void setType(String p1)
    {
        this.mType = p1;
        return;
    }

    public void setVerticalBiasPercent(float p1)
    {
        this.mVerticalBiasPercent = p1;
        return;
    }

    public void setVerticalChainStyle(int p1)
    {
        this.mVerticalChainStyle = p1;
        return;
    }

    public void setVerticalDimension(int p3, int p4)
    {
        this.mY = p3;
        this.mHeight = (p4 - p3);
        if (this.mHeight < this.mMinHeight) {
            this.mHeight = this.mMinHeight;
        }
        return;
    }

    public void setVerticalDimensionBehaviour(android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour p3)
    {
        this.mListDimensionBehaviors[1] = p3;
        if (p3 == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) {
            this.setHeight(this.mWrapHeight);
        }
        return;
    }

    public void setVerticalMatchStyle(int p2, int p3, int p4, float p5)
    {
        this.mMatchConstraintDefaultHeight = p2;
        this.mMatchConstraintMinHeight = p3;
        this.mMatchConstraintMaxHeight = p4;
        this.mMatchConstraintPercentHeight = p5;
        if ((p5 < 1065353216) && (this.mMatchConstraintDefaultHeight == 0)) {
            this.mMatchConstraintDefaultHeight = 2;
        }
        return;
    }

    public void setVerticalWeight(float p3)
    {
        this.mWeight[1] = p3;
        return;
    }

    public void setVisibility(int p1)
    {
        this.mVisibility = p1;
        return;
    }

    public void setWidth(int p3)
    {
        this.mWidth = p3;
        if (this.mWidth < this.mMinWidth) {
            this.mWidth = this.mMinWidth;
        }
        return;
    }

    public void setWidthWrapContent(boolean p1)
    {
        this.mIsWidthWrapContent = p1;
        return;
    }

    public void setWrapHeight(int p1)
    {
        this.mWrapHeight = p1;
        return;
    }

    public void setWrapWidth(int p1)
    {
        this.mWrapWidth = p1;
        return;
    }

    public void setX(int p1)
    {
        this.mX = p1;
        return;
    }

    public void setY(int p1)
    {
        this.mY = p1;
        return;
    }

    public void setupDimensionRatio(boolean p6, boolean p7, boolean p8, boolean p9)
    {
        if (this.mResolvedDimensionRatioSide == -1) {
            if ((!p8) || (p9)) {
                if ((!p8) && (p9)) {
                    this.mResolvedDimensionRatioSide = 1;
                    if (this.mDimensionRatioSide == -1) {
                        this.mResolvedDimensionRatio = (1065353216 / this.mResolvedDimensionRatio);
                    }
                }
            } else {
                this.mResolvedDimensionRatioSide = 0;
            }
        }
        if ((this.mResolvedDimensionRatioSide != 0) || ((this.mTop.isConnected()) && (this.mBottom.isConnected()))) {
            if ((this.mResolvedDimensionRatioSide == 1) && ((!this.mLeft.isConnected()) || (!this.mRight.isConnected()))) {
                this.mResolvedDimensionRatioSide = 0;
            }
        } else {
            this.mResolvedDimensionRatioSide = 1;
        }
        if ((this.mResolvedDimensionRatioSide == -1) && ((!this.mTop.isConnected()) || ((!this.mBottom.isConnected()) || ((!this.mLeft.isConnected()) || (!this.mRight.isConnected()))))) {
            if ((!this.mTop.isConnected()) || (!this.mBottom.isConnected())) {
                if ((this.mLeft.isConnected()) && (this.mRight.isConnected())) {
                    this.mResolvedDimensionRatio = (1065353216 / this.mResolvedDimensionRatio);
                    this.mResolvedDimensionRatioSide = 1;
                }
            } else {
                this.mResolvedDimensionRatioSide = 0;
            }
        }
        if (this.mResolvedDimensionRatioSide == -1) {
            if ((!p6) || (p7)) {
                if ((!p6) && (p7)) {
                    this.mResolvedDimensionRatio = (1065353216 / this.mResolvedDimensionRatio);
                    this.mResolvedDimensionRatioSide = 1;
                }
            } else {
                this.mResolvedDimensionRatioSide = 0;
            }
        }
        if (this.mResolvedDimensionRatioSide == -1) {
            if ((this.mMatchConstraintMinWidth <= 0) || (this.mMatchConstraintMinHeight != 0)) {
                if ((this.mMatchConstraintMinWidth == 0) && (this.mMatchConstraintMinHeight > 0)) {
                    this.mResolvedDimensionRatio = (1065353216 / this.mResolvedDimensionRatio);
                    this.mResolvedDimensionRatioSide = 1;
                }
            } else {
                this.mResolvedDimensionRatioSide = 0;
            }
        }
        if ((this.mResolvedDimensionRatioSide == -1) && ((p6) && (p7))) {
            this.mResolvedDimensionRatio = (1065353216 / this.mResolvedDimensionRatio);
            this.mResolvedDimensionRatioSide = 1;
        }
        return;
    }

    public String toString()
    {
        String v1_0;
        String v0_1 = new StringBuilder();
        if (this.mType == null) {
            v1_0 = "";
        } else {
            String v1_20 = new StringBuilder();
            v1_20.append("type: ");
            v1_20.append(this.mType);
            v1_20.append(" ");
            v1_0 = v1_20.toString();
        }
        String v1_2;
        v0_1.append(v1_0);
        if (this.mDebugName == null) {
            v1_2 = "";
        } else {
            String v1_5 = new StringBuilder();
            v1_5.append("id: ");
            v1_5.append(this.mDebugName);
            v1_5.append(" ");
            v1_2 = v1_5.toString();
        }
        v0_1.append(v1_2);
        v0_1.append("(");
        v0_1.append(this.mX);
        v0_1.append(", ");
        v0_1.append(this.mY);
        v0_1.append(") - (");
        v0_1.append(this.mWidth);
        v0_1.append(" x ");
        v0_1.append(this.mHeight);
        v0_1.append(") wrap: (");
        v0_1.append(this.mWrapWidth);
        v0_1.append(" x ");
        v0_1.append(this.mWrapHeight);
        v0_1.append(")");
        return v0_1.toString();
    }

    public void updateDrawPosition()
    {
        int v0 = this.mX;
        int v1 = this.mY;
        int v2_1 = (this.mX + this.mWidth);
        int v3_2 = (this.mY + this.mHeight);
        this.mDrawX = v0;
        this.mDrawY = v1;
        this.mDrawWidth = (v2_1 - v0);
        this.mDrawHeight = (v3_2 - v1);
        return;
    }

    public void updateFromSolver(android.support.constraint.solver.LinearSystem p9)
    {
        int v0_1 = p9.getObjectVariableValue(this.mLeft);
        int v1_0 = p9.getObjectVariableValue(this.mTop);
        int v2_0 = p9.getObjectVariableValue(this.mRight);
        int v3_0 = p9.getObjectVariableValue(this.mBottom);
        if (((v2_0 - v0_1) < 0) || (((v3_0 - v1_0) < 0) || ((v0_1 == -2147483648) || ((v0_1 == 2147483647) || ((v1_0 == -2147483648) || ((v1_0 == 2147483647) || ((v2_0 == -2147483648) || ((v2_0 == 2147483647) || ((v3_0 == -2147483648) || (v3_0 == 2147483647)))))))))) {
            v0_1 = 0;
            v1_0 = 0;
            v2_0 = 0;
            v3_0 = 0;
        }
        this.setFrame(v0_1, v1_0, v2_0, v3_0);
        return;
    }

    public void updateResolutionNodes()
    {
        int v0 = 0;
        while (v0 < 6) {
            this.mListAnchors[v0].getResolutionNode().update();
            v0++;
        }
        return;
    }
}
