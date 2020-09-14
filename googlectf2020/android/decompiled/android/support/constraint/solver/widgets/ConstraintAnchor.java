package android.support.constraint.solver.widgets;
public class ConstraintAnchor {
    private static final boolean ALLOW_BINARY = False;
    public static final int AUTO_CONSTRAINT_CREATOR = 2;
    public static final int SCOUT_CREATOR = 1;
    private static final int UNSET_GONE_MARGIN = 255;
    public static final int USER_CREATOR;
    private int mConnectionCreator;
    private android.support.constraint.solver.widgets.ConstraintAnchor$ConnectionType mConnectionType;
    int mGoneMargin;
    public int mMargin;
    final android.support.constraint.solver.widgets.ConstraintWidget mOwner;
    private android.support.constraint.solver.widgets.ResolutionAnchor mResolutionAnchor;
    android.support.constraint.solver.SolverVariable mSolverVariable;
    private android.support.constraint.solver.widgets.ConstraintAnchor$Strength mStrength;
    android.support.constraint.solver.widgets.ConstraintAnchor mTarget;
    final android.support.constraint.solver.widgets.ConstraintAnchor$Type mType;

    public ConstraintAnchor(android.support.constraint.solver.widgets.ConstraintWidget p3, android.support.constraint.solver.widgets.ConstraintAnchor$Type p4)
    {
        this.mResolutionAnchor = new android.support.constraint.solver.widgets.ResolutionAnchor(this);
        this.mMargin = 0;
        this.mGoneMargin = -1;
        this.mStrength = android.support.constraint.solver.widgets.ConstraintAnchor$Strength.NONE;
        this.mConnectionType = android.support.constraint.solver.widgets.ConstraintAnchor$ConnectionType.RELAXED;
        this.mConnectionCreator = 0;
        this.mOwner = p3;
        this.mType = p4;
        return;
    }

    private boolean isConnectionToMe(android.support.constraint.solver.widgets.ConstraintWidget p8, java.util.HashSet p9)
    {
        if (!p9.contains(p8)) {
            p9.add(p8);
            if (p8 != this.getOwner()) {
                java.util.ArrayList v0_1 = p8.getAnchors();
                int v3 = 0;
                int v4 = v0_1.size();
                while (v3 < v4) {
                    android.support.constraint.solver.widgets.ConstraintAnchor v5_1 = ((android.support.constraint.solver.widgets.ConstraintAnchor) v0_1.get(v3));
                    if ((!v5_1.isSimilarDimensionConnection(this)) || ((!v5_1.isConnected()) || (!this.isConnectionToMe(v5_1.getTarget().getOwner(), p9)))) {
                        v3++;
                    } else {
                        return 1;
                    }
                }
                return 0;
            } else {
                return 1;
            }
        } else {
            return 0;
        }
    }

    public boolean connect(android.support.constraint.solver.widgets.ConstraintAnchor p8, int p9)
    {
        return this.connect(p8, p9, -1, android.support.constraint.solver.widgets.ConstraintAnchor$Strength.STRONG, 0, 0);
    }

    public boolean connect(android.support.constraint.solver.widgets.ConstraintAnchor p8, int p9, int p10)
    {
        return this.connect(p8, p9, -1, android.support.constraint.solver.widgets.ConstraintAnchor$Strength.STRONG, p10, 0);
    }

    public boolean connect(android.support.constraint.solver.widgets.ConstraintAnchor p4, int p5, int p6, android.support.constraint.solver.widgets.ConstraintAnchor$Strength p7, int p8, boolean p9)
    {
        if (p4 != null) {
            if ((p9) || (this.isValidConnection(p4))) {
                this.mTarget = p4;
                if (p5 <= 0) {
                    this.mMargin = 0;
                } else {
                    this.mMargin = p5;
                }
                this.mGoneMargin = p6;
                this.mStrength = p7;
                this.mConnectionCreator = p8;
                return 1;
            } else {
                return 0;
            }
        } else {
            this.mTarget = 0;
            this.mMargin = 0;
            this.mGoneMargin = -1;
            this.mStrength = android.support.constraint.solver.widgets.ConstraintAnchor$Strength.NONE;
            this.mConnectionCreator = 2;
            return 1;
        }
    }

    public boolean connect(android.support.constraint.solver.widgets.ConstraintAnchor p8, int p9, android.support.constraint.solver.widgets.ConstraintAnchor$Strength p10, int p11)
    {
        return this.connect(p8, p9, -1, p10, p11, 0);
    }

    public int getConnectionCreator()
    {
        return this.mConnectionCreator;
    }

    public android.support.constraint.solver.widgets.ConstraintAnchor$ConnectionType getConnectionType()
    {
        return this.mConnectionType;
    }

    public int getMargin()
    {
        if (this.mOwner.getVisibility() != 8) {
            if ((this.mGoneMargin <= -1) || ((this.mTarget == null) || (this.mTarget.mOwner.getVisibility() != 8))) {
                return this.mMargin;
            } else {
                return this.mGoneMargin;
            }
        } else {
            return 0;
        }
    }

    public final android.support.constraint.solver.widgets.ConstraintAnchor getOpposite()
    {
        switch (android.support.constraint.solver.widgets.ConstraintAnchor$1.$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type[this.mType.ordinal()]) {
            case 1:
            case 6:
            case 7:
            case 8:
            case 9:
                return 0;
            case 2:
                return this.mOwner.mRight;
            case 3:
                return this.mOwner.mLeft;
            case 4:
                return this.mOwner.mBottom;
            case 5:
                return this.mOwner.mTop;
            default:
                throw new AssertionError(this.mType.name());
        }
    }

    public android.support.constraint.solver.widgets.ConstraintWidget getOwner()
    {
        return this.mOwner;
    }

    public int getPriorityLevel()
    {
        switch (android.support.constraint.solver.widgets.ConstraintAnchor$1.$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type[this.mType.ordinal()]) {
            case 1:
                return 2;
            case 2:
                return 2;
            case 3:
                return 2;
            case 4:
                return 2;
            case 5:
                return 2;
            case 6:
                return 1;
            case 7:
                return 0;
            case 8:
                return 0;
            case 9:
                return 0;
            default:
                throw new AssertionError(this.mType.name());
        }
    }

    public android.support.constraint.solver.widgets.ResolutionAnchor getResolutionNode()
    {
        return this.mResolutionAnchor;
    }

    public int getSnapPriorityLevel()
    {
        switch (android.support.constraint.solver.widgets.ConstraintAnchor$1.$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type[this.mType.ordinal()]) {
            case 1:
                return 3;
            case 2:
                return 1;
            case 3:
                return 1;
            case 4:
                return 0;
            case 5:
                return 0;
            case 6:
                return 2;
            case 7:
                return 0;
            case 8:
                return 1;
            case 9:
                return 0;
            default:
                throw new AssertionError(this.mType.name());
        }
    }

    public android.support.constraint.solver.SolverVariable getSolverVariable()
    {
        return this.mSolverVariable;
    }

    public android.support.constraint.solver.widgets.ConstraintAnchor$Strength getStrength()
    {
        return this.mStrength;
    }

    public android.support.constraint.solver.widgets.ConstraintAnchor getTarget()
    {
        return this.mTarget;
    }

    public android.support.constraint.solver.widgets.ConstraintAnchor$Type getType()
    {
        return this.mType;
    }

    public boolean isConnected()
    {
        int v0_1;
        if (this.mTarget == null) {
            v0_1 = 0;
        } else {
            v0_1 = 1;
        }
        return v0_1;
    }

    public boolean isConnectionAllowed(android.support.constraint.solver.widgets.ConstraintWidget p6)
    {
        if (!this.isConnectionToMe(p6, new java.util.HashSet())) {
            android.support.constraint.solver.widgets.ConstraintWidget v1_2 = this.getOwner().getParent();
            if (v1_2 != p6) {
                if (p6.getParent() != v1_2) {
                    return 0;
                } else {
                    return 1;
                }
            } else {
                return 1;
            }
        } else {
            return 0;
        }
    }

    public boolean isConnectionAllowed(android.support.constraint.solver.widgets.ConstraintWidget p2, android.support.constraint.solver.widgets.ConstraintAnchor p3)
    {
        return this.isConnectionAllowed(p2);
    }

    public boolean isSideAnchor()
    {
        switch (android.support.constraint.solver.widgets.ConstraintAnchor$1.$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type[this.mType.ordinal()]) {
            case 1:
            case 6:
            case 7:
            case 8:
            case 9:
                return 0;
            case 2:
            case 3:
            case 4:
            case 5:
                return 1;
            default:
                throw new AssertionError(this.mType.name());
        }
    }

    public boolean isSimilarDimensionConnection(android.support.constraint.solver.widgets.ConstraintAnchor p5)
    {
        android.support.constraint.solver.widgets.ConstraintAnchor$Type v0 = p5.getType();
        int v2_0 = 1;
        if (v0 != this.mType) {
            switch (android.support.constraint.solver.widgets.ConstraintAnchor$1.$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type[this.mType.ordinal()]) {
                case 1:
                    if (v0 == android.support.constraint.solver.widgets.ConstraintAnchor$Type.BASELINE) {
                        v2_0 = 0;
                    }
                    return v2_0;
                case 2:
                case 3:
                case 7:
                    if ((v0 != android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT) && ((v0 != android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT) && (v0 != android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER_X))) {
                        v2_0 = 0;
                    }
                    return v2_0;
                case 4:
                case 5:
                case 6:
                case 8:
                    if ((v0 != android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP) && ((v0 != android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM) && ((v0 != android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER_Y) && (v0 != android.support.constraint.solver.widgets.ConstraintAnchor$Type.BASELINE)))) {
                        v2_0 = 0;
                    }
                    return v2_0;
                case 9:
                    return 0;
                default:
                    throw new AssertionError(this.mType.name());
            }
        } else {
            return 1;
        }
    }

    public boolean isSnapCompatibleWith(android.support.constraint.solver.widgets.ConstraintAnchor p6)
    {
        if (this.mType != android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER) {
            if (this.mType != p6.getType()) {
                switch (android.support.constraint.solver.widgets.ConstraintAnchor$1.$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type[this.mType.ordinal()]) {
                    case 1:
                    case 6:
                    case 9:
                        return 0;
                    case 2:
                        int v0_14 = android.support.constraint.solver.widgets.ConstraintAnchor$1.$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type[p6.getType().ordinal()];
                        if (v0_14 == 3) {
                            return 1;
                        } else {
                            if (v0_14 == 7) {
                                return 1;
                            } else {
                                return 0;
                            }
                        }
                    case 3:
                        int v0_12 = android.support.constraint.solver.widgets.ConstraintAnchor$1.$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type[p6.getType().ordinal()];
                        if (v0_12 == 2) {
                            return 1;
                        } else {
                            if (v0_12 == 7) {
                                return 1;
                            } else {
                                return 0;
                            }
                        }
                    case 4:
                        int v0_10 = android.support.constraint.solver.widgets.ConstraintAnchor$1.$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type[p6.getType().ordinal()];
                        if (v0_10 == 5) {
                            return 1;
                        } else {
                            if (v0_10 == 8) {
                                return 1;
                            } else {
                                return 0;
                            }
                        }
                    case 5:
                        int v0_8 = android.support.constraint.solver.widgets.ConstraintAnchor$1.$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type[p6.getType().ordinal()];
                        if (v0_8 == 4) {
                            return 1;
                        } else {
                            if (v0_8 == 8) {
                                return 1;
                            } else {
                                return 0;
                            }
                        }
                    case 7:
                        switch (android.support.constraint.solver.widgets.ConstraintAnchor$1.$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type[p6.getType().ordinal()]) {
                            case 2:
                                return 1;
                            case 3:
                                return 1;
                            default:
                                return 0;
                        }
                    case 8:
                        switch (android.support.constraint.solver.widgets.ConstraintAnchor$1.$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type[p6.getType().ordinal()]) {
                            case 4:
                                return 1;
                            case 5:
                                return 1;
                            default:
                                return 0;
                        }
                    default:
                        throw new AssertionError(this.mType.name());
                }
            } else {
                return 1;
            }
        } else {
            return 0;
        }
    }

    public boolean isValidConnection(android.support.constraint.solver.widgets.ConstraintAnchor p6)
    {
        int v0_0 = 0;
        if (p6 != null) {
            android.support.constraint.solver.widgets.ConstraintAnchor$Type v1 = p6.getType();
            if (v1 != this.mType) {
                switch (android.support.constraint.solver.widgets.ConstraintAnchor$1.$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type[this.mType.ordinal()]) {
                    case 1:
                        if ((v1 != android.support.constraint.solver.widgets.ConstraintAnchor$Type.BASELINE) && ((v1 != android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER_X) && (v1 != android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER_Y))) {
                            v0_0 = 1;
                        }
                        return v0_0;
                    case 2:
                    case 3:
                        if ((v1 != android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT) && (v1 != android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT)) {
                            int v2_6 = 0;
                        } else {
                            v2_6 = 1;
                        }
                        if ((p6.getOwner() instanceof android.support.constraint.solver.widgets.Guideline)) {
                            if ((v2_6 != 0) || (v1 == android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER_X)) {
                                v0_0 = 1;
                            }
                            v2_6 = v0_0;
                        }
                        return v2_6;
                    case 4:
                    case 5:
                        if ((v1 != android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP) && (v1 != android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM)) {
                            int v2_3 = 0;
                        } else {
                            v2_3 = 1;
                        }
                        if ((p6.getOwner() instanceof android.support.constraint.solver.widgets.Guideline)) {
                            if ((v2_3 != 0) || (v1 == android.support.constraint.solver.widgets.ConstraintAnchor$Type.CENTER_Y)) {
                                v0_0 = 1;
                            }
                            v2_3 = v0_0;
                        }
                        return v2_3;
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                        return 0;
                    default:
                        throw new AssertionError(this.mType.name());
                }
            } else {
                if ((this.mType != android.support.constraint.solver.widgets.ConstraintAnchor$Type.BASELINE) || ((p6.getOwner().hasBaseline()) && (this.getOwner().hasBaseline()))) {
                    return 1;
                } else {
                    return 0;
                }
            }
        } else {
            return 0;
        }
    }

    public boolean isVerticalAnchor()
    {
        switch (android.support.constraint.solver.widgets.ConstraintAnchor$1.$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type[this.mType.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 7:
                return 0;
            case 4:
            case 5:
            case 6:
            case 8:
            case 9:
                return 1;
            default:
                throw new AssertionError(this.mType.name());
        }
    }

    public void reset()
    {
        this.mTarget = 0;
        this.mMargin = 0;
        this.mGoneMargin = -1;
        this.mStrength = android.support.constraint.solver.widgets.ConstraintAnchor$Strength.STRONG;
        this.mConnectionCreator = 0;
        this.mConnectionType = android.support.constraint.solver.widgets.ConstraintAnchor$ConnectionType.RELAXED;
        this.mResolutionAnchor.reset();
        return;
    }

    public void resetSolverVariable(android.support.constraint.solver.Cache p4)
    {
        if (this.mSolverVariable != null) {
            this.mSolverVariable.reset();
        } else {
            this.mSolverVariable = new android.support.constraint.solver.SolverVariable(android.support.constraint.solver.SolverVariable$Type.UNRESTRICTED, 0);
        }
        return;
    }

    public void setConnectionCreator(int p1)
    {
        this.mConnectionCreator = p1;
        return;
    }

    public void setConnectionType(android.support.constraint.solver.widgets.ConstraintAnchor$ConnectionType p1)
    {
        this.mConnectionType = p1;
        return;
    }

    public void setGoneMargin(int p2)
    {
        if (this.isConnected()) {
            this.mGoneMargin = p2;
        }
        return;
    }

    public void setMargin(int p2)
    {
        if (this.isConnected()) {
            this.mMargin = p2;
        }
        return;
    }

    public void setStrength(android.support.constraint.solver.widgets.ConstraintAnchor$Strength p2)
    {
        if (this.isConnected()) {
            this.mStrength = p2;
        }
        return;
    }

    public String toString()
    {
        String v0_1 = new StringBuilder();
        v0_1.append(this.mOwner.getDebugName());
        v0_1.append(":");
        v0_1.append(this.mType.toString());
        return v0_1.toString();
    }
}
