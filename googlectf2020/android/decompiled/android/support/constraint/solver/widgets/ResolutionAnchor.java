package android.support.constraint.solver.widgets;
public class ResolutionAnchor extends android.support.constraint.solver.widgets.ResolutionNode {
    public static final int BARRIER_CONNECTION = 5;
    public static final int CENTER_CONNECTION = 2;
    public static final int CHAIN_CONNECTION = 4;
    public static final int DIRECT_CONNECTION = 1;
    public static final int MATCH_CONNECTION = 3;
    public static final int UNCONNECTED;
    float computedValue;
    private android.support.constraint.solver.widgets.ResolutionDimension dimension;
    private int dimensionMultiplier;
    android.support.constraint.solver.widgets.ConstraintAnchor myAnchor;
    float offset;
    private android.support.constraint.solver.widgets.ResolutionAnchor opposite;
    private android.support.constraint.solver.widgets.ResolutionDimension oppositeDimension;
    private int oppositeDimensionMultiplier;
    private float oppositeOffset;
    float resolvedOffset;
    android.support.constraint.solver.widgets.ResolutionAnchor resolvedTarget;
    android.support.constraint.solver.widgets.ResolutionAnchor target;
    int type;

    public ResolutionAnchor(android.support.constraint.solver.widgets.ConstraintAnchor p3)
    {
        this.type = 0;
        this.dimension = 0;
        this.dimensionMultiplier = 1;
        this.oppositeDimension = 0;
        this.oppositeDimensionMultiplier = 1;
        this.myAnchor = p3;
        return;
    }

    void addResolvedValue(android.support.constraint.solver.LinearSystem p5)
    {
        android.support.constraint.solver.SolverVariable v0_1 = this.myAnchor.getSolverVariable();
        if (this.resolvedTarget != null) {
            p5.addEquality(v0_1, p5.createObjectVariable(this.resolvedTarget.myAnchor), ((int) (this.resolvedOffset + 1056964608)), 6);
        } else {
            p5.addEquality(v0_1, ((int) (this.resolvedOffset + 1056964608)));
        }
        return;
    }

    public void dependsOn(int p2, android.support.constraint.solver.widgets.ResolutionAnchor p3, int p4)
    {
        this.type = p2;
        this.target = p3;
        this.offset = ((float) p4);
        this.target.addDependent(this);
        return;
    }

    public void dependsOn(android.support.constraint.solver.widgets.ResolutionAnchor p2, int p3)
    {
        this.target = p2;
        this.offset = ((float) p3);
        this.target.addDependent(this);
        return;
    }

    public void dependsOn(android.support.constraint.solver.widgets.ResolutionAnchor p2, int p3, android.support.constraint.solver.widgets.ResolutionDimension p4)
    {
        this.target = p2;
        this.target.addDependent(this);
        this.dimension = p4;
        this.dimensionMultiplier = p3;
        this.dimension.addDependent(this);
        return;
    }

    public float getResolvedValue()
    {
        return this.resolvedOffset;
    }

    public void remove(android.support.constraint.solver.widgets.ResolutionDimension p4)
    {
        if (this.dimension != p4) {
            if (this.dimension == this.oppositeDimension) {
                this.oppositeDimension = 0;
                this.oppositeOffset = ((float) this.oppositeDimensionMultiplier);
            }
        } else {
            this.dimension = 0;
            this.offset = ((float) this.dimensionMultiplier);
        }
        this.resolve();
        return;
    }

    public void reset()
    {
        super.reset();
        this.target = 0;
        this.offset = 0;
        this.dimension = 0;
        this.dimensionMultiplier = 1;
        this.oppositeDimension = 0;
        this.oppositeDimensionMultiplier = 1;
        this.resolvedTarget = 0;
        this.resolvedOffset = 0;
        this.computedValue = 0;
        this.opposite = 0;
        this.oppositeOffset = 0;
        this.type = 0;
        return;
    }

    public void resolve()
    {
        int v1_0 = 1;
        if (this.state != 1) {
            if (this.type != 4) {
                if (this.dimension != null) {
                    if (this.dimension.state == 1) {
                        this.offset = (((float) this.dimensionMultiplier) * this.dimension.value);
                    } else {
                        return;
                    }
                }
                if (this.oppositeDimension != null) {
                    if (this.oppositeDimension.state == 1) {
                        this.oppositeOffset = (((float) this.oppositeDimensionMultiplier) * this.oppositeDimension.value);
                    } else {
                        return;
                    }
                }
                if ((this.type != 1) || ((this.target != null) && (this.target.state != 1))) {
                    if ((this.type != 2) || ((this.target == null) || ((this.target.state != 1) || ((this.opposite == null) || ((this.opposite.target == null) || (this.opposite.target.state != 1)))))) {
                        if ((this.type != 3) || ((this.target == null) || ((this.target.state != 1) || ((this.opposite == null) || ((this.opposite.target == null) || (this.opposite.target.state != 1)))))) {
                            if (this.type == 5) {
                                this.myAnchor.mOwner.resolve();
                            }
                        } else {
                            if (android.support.constraint.solver.LinearSystem.getMetrics() != null) {
                                int v0_71 = android.support.constraint.solver.LinearSystem.getMetrics();
                                v0_71.matchConnectionResolved = (v0_71.matchConnectionResolved + 1);
                            }
                            this.resolvedTarget = this.target.resolvedTarget;
                            this.opposite.resolvedTarget = this.opposite.target.resolvedTarget;
                            this.resolvedOffset = (this.target.resolvedOffset + this.offset);
                            this.opposite.resolvedOffset = (this.opposite.target.resolvedOffset + this.opposite.offset);
                            this.didResolve();
                            this.opposite.didResolve();
                        }
                    } else {
                        if (android.support.constraint.solver.LinearSystem.getMetrics() != null) {
                            int v0_4 = android.support.constraint.solver.LinearSystem.getMetrics();
                            v0_4.centerConnectionResolved = (v0_4.centerConnectionResolved + 1);
                        }
                        this.resolvedTarget = this.target.resolvedTarget;
                        this.opposite.resolvedTarget = this.opposite.target.resolvedTarget;
                        int v2 = 1056964608;
                        if ((this.myAnchor.mType != android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT) && (this.myAnchor.mType != android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM)) {
                            v1_0 = 0;
                        }
                        float v3_7;
                        if (v1_0 == 0) {
                            v3_7 = (this.opposite.target.resolvedOffset - this.target.resolvedOffset);
                        } else {
                            v3_7 = (this.target.resolvedOffset - this.opposite.target.resolvedOffset);
                        }
                        if ((this.myAnchor.mType != android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT) && (this.myAnchor.mType != android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT)) {
                            float v3_10 = (v3_7 - ((float) this.myAnchor.mOwner.getHeight()));
                            int v0_20 = this.myAnchor.mOwner.mVerticalBiasPercent;
                        } else {
                            v3_10 = (v3_7 - ((float) this.myAnchor.mOwner.getWidth()));
                            v0_20 = this.myAnchor.mOwner.mHorizontalBiasPercent;
                        }
                        int v2_8 = this.myAnchor.getMargin();
                        int v4_11 = this.opposite.myAnchor.getMargin();
                        if (this.myAnchor.getTarget() == this.opposite.myAnchor.getTarget()) {
                            v0_20 = 1056964608;
                            v2_8 = 0;
                            v4_11 = 0;
                        }
                        float v3_12 = ((v3_10 - ((float) v2_8)) - ((float) v4_11));
                        if (v1_0 == 0) {
                            this.resolvedOffset = ((this.target.resolvedOffset + ((float) v2_8)) + (v3_12 * v0_20));
                            this.opposite.resolvedOffset = ((this.opposite.target.resolvedOffset - ((float) v4_11)) - ((1065353216 - v0_20) * v3_12));
                        } else {
                            this.opposite.resolvedOffset = ((this.opposite.target.resolvedOffset + ((float) v4_11)) + (v3_12 * v0_20));
                            this.resolvedOffset = ((this.target.resolvedOffset - ((float) v2_8)) - ((1065353216 - v0_20) * v3_12));
                        }
                        this.didResolve();
                        this.opposite.didResolve();
                    }
                } else {
                    if (this.target != null) {
                        this.resolvedTarget = this.target.resolvedTarget;
                        this.resolvedOffset = (this.target.resolvedOffset + this.offset);
                    } else {
                        this.resolvedTarget = this;
                        this.resolvedOffset = this.offset;
                    }
                    this.didResolve();
                }
                return;
            } else {
                return;
            }
        } else {
            return;
        }
    }

    public void resolve(android.support.constraint.solver.widgets.ResolutionAnchor p3, float p4)
    {
        if ((this.state == 0) || ((this.resolvedTarget != p3) && (this.resolvedOffset != p4))) {
            this.resolvedTarget = p3;
            this.resolvedOffset = p4;
            if (this.state == 1) {
                this.invalidate();
            }
            this.didResolve();
        }
        return;
    }

    String sType(int p2)
    {
        if (p2 != 1) {
            if (p2 != 2) {
                if (p2 != 3) {
                    if (p2 != 4) {
                        if (p2 != 5) {
                            return "UNCONNECTED";
                        } else {
                            return "BARRIER";
                        }
                    } else {
                        return "CHAIN";
                    }
                } else {
                    return "MATCH";
                }
            } else {
                return "CENTER";
            }
        } else {
            return "DIRECT";
        }
    }

    public void setOpposite(android.support.constraint.solver.widgets.ResolutionAnchor p1, float p2)
    {
        this.opposite = p1;
        this.oppositeOffset = p2;
        return;
    }

    public void setOpposite(android.support.constraint.solver.widgets.ResolutionAnchor p1, int p2, android.support.constraint.solver.widgets.ResolutionDimension p3)
    {
        this.opposite = p1;
        this.oppositeDimension = p3;
        this.oppositeDimensionMultiplier = p2;
        return;
    }

    public void setType(int p1)
    {
        this.type = p1;
        return;
    }

    public String toString()
    {
        if (this.state != 1) {
            String v0_6 = new StringBuilder();
            v0_6.append("{ ");
            v0_6.append(this.myAnchor);
            v0_6.append(" UNRESOLVED} type: ");
            v0_6.append(this.sType(this.type));
            return v0_6.toString();
        } else {
            if (this.resolvedTarget != this) {
                String v0_4 = new StringBuilder();
                v0_4.append("[");
                v0_4.append(this.myAnchor);
                v0_4.append(", RESOLVED: ");
                v0_4.append(this.resolvedTarget);
                v0_4.append(":");
                v0_4.append(this.resolvedOffset);
                v0_4.append("] type: ");
                v0_4.append(this.sType(this.type));
                return v0_4.toString();
            } else {
                String v0_9 = new StringBuilder();
                v0_9.append("[");
                v0_9.append(this.myAnchor);
                v0_9.append(", RESOLVED: ");
                v0_9.append(this.resolvedOffset);
                v0_9.append("]  type: ");
                v0_9.append(this.sType(this.type));
                return v0_9.toString();
            }
        }
    }

    public void update()
    {
        android.support.constraint.solver.widgets.ConstraintAnchor v0_1 = this.myAnchor.getTarget();
        if (v0_1 != null) {
            if (v0_1.getTarget() == this.myAnchor) {
                this.type = 4;
                v0_1.getResolutionNode().type = 4;
            }
            int v1_1 = this.myAnchor.getMargin();
            if ((this.myAnchor.mType == android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT) || (this.myAnchor.mType == android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM)) {
                v1_1 = (- v1_1);
            }
            this.dependsOn(v0_1.getResolutionNode(), v1_1);
            return;
        } else {
            return;
        }
    }
}
