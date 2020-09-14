package android.support.constraint.solver.widgets;
public class Guideline extends android.support.constraint.solver.widgets.ConstraintWidget {
    public static final int HORIZONTAL = 0;
    public static final int RELATIVE_BEGIN = 1;
    public static final int RELATIVE_END = 2;
    public static final int RELATIVE_PERCENT = 0;
    public static final int RELATIVE_UNKNWON = 255;
    public static final int VERTICAL = 1;
    private android.support.constraint.solver.widgets.ConstraintAnchor mAnchor;
    private android.support.constraint.solver.widgets.Rectangle mHead;
    private int mHeadSize;
    private boolean mIsPositionRelaxed;
    private int mMinimumPosition;
    private int mOrientation;
    protected int mRelativeBegin;
    protected int mRelativeEnd;
    protected float mRelativePercent;

    public Guideline()
    {
        this.mRelativePercent = -1082130432;
        this.mRelativeBegin = -1;
        this.mRelativeEnd = -1;
        this.mAnchor = this.mTop;
        int v0_2 = 0;
        this.mOrientation = 0;
        this.mIsPositionRelaxed = 0;
        this.mMinimumPosition = 0;
        this.mHead = new android.support.constraint.solver.widgets.Rectangle();
        this.mHeadSize = 8;
        this.mAnchors.clear();
        this.mAnchors.add(this.mAnchor);
        int v1_6 = this.mListAnchors.length;
        while (v0_2 < v1_6) {
            this.mListAnchors[v0_2] = this.mAnchor;
            v0_2++;
        }
        return;
    }

    public void addToSolver(android.support.constraint.solver.LinearSystem p14)
    {
        android.support.constraint.solver.widgets.ConstraintWidgetContainer v0_1 = ((android.support.constraint.solver.widgets.ConstraintWidgetContainer) this.getParent());
        if (v0_1 != null) {
            int v3_4;
            android.support.constraint.solver.widgets.ConstraintAnchor v1_0 = v0_1.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT);
            android.support.constraint.solver.widgets.ConstraintAnchor v2_0 = v0_1.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT);
            android.support.constraint.solver.SolverVariable v4_0 = 1;
            if ((this.mParent == null) || (this.mParent.mListDimensionBehaviors[0] != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT)) {
                v3_4 = 0;
            } else {
                v3_4 = 1;
            }
            if (this.mOrientation == 0) {
                v1_0 = v0_1.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP);
                v2_0 = v0_1.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM);
                if ((this.mParent == null) || (this.mParent.mListDimensionBehaviors[1] != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT)) {
                    v4_0 = 0;
                }
                v3_4 = v4_0;
            }
            if (this.mRelativeBegin == -1) {
                if (this.mRelativeEnd == -1) {
                    if (this.mRelativePercent != -1082130432) {
                        p14.addConstraint(android.support.constraint.solver.LinearSystem.createRowDimensionPercent(p14, p14.createObjectVariable(this.mAnchor), p14.createObjectVariable(v1_0), p14.createObjectVariable(v2_0), this.mRelativePercent, this.mIsPositionRelaxed));
                    }
                } else {
                    android.support.constraint.solver.SolverVariable v4_8 = p14.createObjectVariable(this.mAnchor);
                    android.support.constraint.solver.SolverVariable v7_3 = p14.createObjectVariable(v2_0);
                    p14.addEquality(v4_8, v7_3, (- this.mRelativeEnd), 6);
                    if (v3_4 != 0) {
                        p14.addGreaterThan(v4_8, p14.createObjectVariable(v1_0), 0, 5);
                        p14.addGreaterThan(v7_3, v4_8, 0, 5);
                    }
                }
            } else {
                android.support.constraint.solver.SolverVariable v4_10 = p14.createObjectVariable(this.mAnchor);
                p14.addEquality(v4_10, p14.createObjectVariable(v1_0), this.mRelativeBegin, 6);
                if (v3_4 != 0) {
                    p14.addGreaterThan(p14.createObjectVariable(v2_0), v4_10, 0, 5);
                }
            }
            return;
        } else {
            return;
        }
    }

    public boolean allowedInBarrier()
    {
        return 1;
    }

    public void analyze(int p8)
    {
        android.support.constraint.solver.widgets.ConstraintWidget v0 = this.getParent();
        if (v0 != null) {
            if (this.getOrientation() != 1) {
                this.mLeft.getResolutionNode().dependsOn(1, v0.mLeft.getResolutionNode(), 0);
                this.mRight.getResolutionNode().dependsOn(1, v0.mLeft.getResolutionNode(), 0);
                if (this.mRelativeBegin == -1) {
                    if (this.mRelativeEnd == -1) {
                        if ((this.mRelativePercent != -1082130432) && (v0.getVerticalDimensionBehaviour() == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.FIXED)) {
                            int v1_29 = ((int) (((float) v0.mHeight) * this.mRelativePercent));
                            this.mTop.getResolutionNode().dependsOn(1, v0.mTop.getResolutionNode(), v1_29);
                            this.mBottom.getResolutionNode().dependsOn(1, v0.mTop.getResolutionNode(), v1_29);
                        }
                    } else {
                        this.mTop.getResolutionNode().dependsOn(1, v0.mBottom.getResolutionNode(), (- this.mRelativeEnd));
                        this.mBottom.getResolutionNode().dependsOn(1, v0.mBottom.getResolutionNode(), (- this.mRelativeEnd));
                    }
                } else {
                    this.mTop.getResolutionNode().dependsOn(1, v0.mTop.getResolutionNode(), this.mRelativeBegin);
                    this.mBottom.getResolutionNode().dependsOn(1, v0.mTop.getResolutionNode(), this.mRelativeBegin);
                }
            } else {
                this.mTop.getResolutionNode().dependsOn(1, v0.mTop.getResolutionNode(), 0);
                this.mBottom.getResolutionNode().dependsOn(1, v0.mTop.getResolutionNode(), 0);
                if (this.mRelativeBegin == -1) {
                    if (this.mRelativeEnd == -1) {
                        if ((this.mRelativePercent != -1082130432) && (v0.getHorizontalDimensionBehaviour() == android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.FIXED)) {
                            int v1_9 = ((int) (((float) v0.mWidth) * this.mRelativePercent));
                            this.mLeft.getResolutionNode().dependsOn(1, v0.mLeft.getResolutionNode(), v1_9);
                            this.mRight.getResolutionNode().dependsOn(1, v0.mLeft.getResolutionNode(), v1_9);
                        }
                    } else {
                        this.mLeft.getResolutionNode().dependsOn(1, v0.mRight.getResolutionNode(), (- this.mRelativeEnd));
                        this.mRight.getResolutionNode().dependsOn(1, v0.mRight.getResolutionNode(), (- this.mRelativeEnd));
                    }
                } else {
                    this.mLeft.getResolutionNode().dependsOn(1, v0.mLeft.getResolutionNode(), this.mRelativeBegin);
                    this.mRight.getResolutionNode().dependsOn(1, v0.mLeft.getResolutionNode(), this.mRelativeBegin);
                }
            }
            return;
        } else {
            return;
        }
    }

    public void cyclePosition()
    {
        if (this.mRelativeBegin == -1) {
            if (this.mRelativePercent == -1082130432) {
                if (this.mRelativeEnd != -1) {
                    this.inferRelativeBeginPosition();
                }
            } else {
                this.inferRelativeEndPosition();
            }
        } else {
            this.inferRelativePercentPosition();
        }
        return;
    }

    public android.support.constraint.solver.widgets.ConstraintAnchor getAnchor()
    {
        return this.mAnchor;
    }

    public android.support.constraint.solver.widgets.ConstraintAnchor getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type p3)
    {
        switch (android.support.constraint.solver.widgets.Guideline$1.$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type[p3.ordinal()]) {
            case 1:
            case 2:
                if (this.mOrientation != 1) {
                } else {
                    return this.mAnchor;
                }
            case 3:
            case 4:
                if (this.mOrientation != 0) {
                } else {
                    return this.mAnchor;
                }
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return 0;
            default:
        }
        throw new AssertionError(p3.name());
    }

    public java.util.ArrayList getAnchors()
    {
        return this.mAnchors;
    }

    public android.support.constraint.solver.widgets.Rectangle getHead()
    {
        this.mHead.setBounds((this.getDrawX() - this.mHeadSize), (this.getDrawY() - (this.mHeadSize * 2)), (this.mHeadSize * 2), (this.mHeadSize * 2));
        if (this.getOrientation() == 0) {
            this.mHead.setBounds((this.getDrawX() - (this.mHeadSize * 2)), (this.getDrawY() - this.mHeadSize), (this.mHeadSize * 2), (this.mHeadSize * 2));
        }
        return this.mHead;
    }

    public int getOrientation()
    {
        return this.mOrientation;
    }

    public int getRelativeBegin()
    {
        return this.mRelativeBegin;
    }

    public int getRelativeBehaviour()
    {
        if (this.mRelativePercent == -1082130432) {
            if (this.mRelativeBegin == -1) {
                if (this.mRelativeEnd == -1) {
                    return -1;
                } else {
                    return 2;
                }
            } else {
                return 1;
            }
        } else {
            return 0;
        }
    }

    public int getRelativeEnd()
    {
        return this.mRelativeEnd;
    }

    public float getRelativePercent()
    {
        return this.mRelativePercent;
    }

    public String getType()
    {
        return "Guideline";
    }

    void inferRelativeBeginPosition()
    {
        int v0 = this.getX();
        if (this.mOrientation == 0) {
            v0 = this.getY();
        }
        this.setGuideBegin(v0);
        return;
    }

    void inferRelativeEndPosition()
    {
        int v0_1 = (this.getParent().getWidth() - this.getX());
        if (this.mOrientation == 0) {
            v0_1 = (this.getParent().getHeight() - this.getY());
        }
        this.setGuideEnd(v0_1);
        return;
    }

    void inferRelativePercentPosition()
    {
        float v0_1 = (((float) this.getX()) / ((float) this.getParent().getWidth()));
        if (this.mOrientation == 0) {
            v0_1 = (((float) this.getY()) / ((float) this.getParent().getHeight()));
        }
        this.setGuidePercent(v0_1);
        return;
    }

    public void setDrawOrigin(int p5, int p6)
    {
        if (this.mOrientation != 1) {
            int v0_4 = (p6 - this.mOffsetY);
            if (this.mRelativeBegin == -1) {
                if (this.mRelativeEnd == -1) {
                    if (this.mRelativePercent != -1082130432) {
                        this.setGuidePercent((((float) v0_4) / ((float) this.getParent().getHeight())));
                    }
                } else {
                    this.setGuideEnd((this.getParent().getHeight() - v0_4));
                }
            } else {
                this.setGuideBegin(v0_4);
            }
        } else {
            int v0_2 = (p5 - this.mOffsetX);
            if (this.mRelativeBegin == -1) {
                if (this.mRelativeEnd == -1) {
                    if (this.mRelativePercent != -1082130432) {
                        this.setGuidePercent((((float) v0_2) / ((float) this.getParent().getWidth())));
                    }
                } else {
                    this.setGuideEnd((this.getParent().getWidth() - v0_2));
                }
            } else {
                this.setGuideBegin(v0_2);
            }
        }
        return;
    }

    public void setGuideBegin(int p3)
    {
        if (p3 > -1) {
            this.mRelativePercent = -1082130432;
            this.mRelativeBegin = p3;
            this.mRelativeEnd = -1;
        }
        return;
    }

    public void setGuideEnd(int p3)
    {
        if (p3 > -1) {
            this.mRelativePercent = -1082130432;
            this.mRelativeBegin = -1;
            this.mRelativeEnd = p3;
        }
        return;
    }

    public void setGuidePercent(float p2)
    {
        if (p2 > -1082130432) {
            this.mRelativePercent = p2;
            this.mRelativeBegin = -1;
            this.mRelativeEnd = -1;
        }
        return;
    }

    public void setGuidePercent(int p3)
    {
        this.setGuidePercent((((float) p3) / 1120403456));
        return;
    }

    public void setMinimumPosition(int p1)
    {
        this.mMinimumPosition = p1;
        return;
    }

    public void setOrientation(int p5)
    {
        if (this.mOrientation != p5) {
            this.mOrientation = p5;
            this.mAnchors.clear();
            if (this.mOrientation != 1) {
                this.mAnchor = this.mTop;
            } else {
                this.mAnchor = this.mLeft;
            }
            this.mAnchors.add(this.mAnchor);
            int v0_4 = this.mListAnchors.length;
            int v1_1 = 0;
            while (v1_1 < v0_4) {
                this.mListAnchors[v1_1] = this.mAnchor;
                v1_1++;
            }
            return;
        } else {
            return;
        }
    }

    public void setPositionRelaxed(boolean p2)
    {
        if (this.mIsPositionRelaxed != p2) {
            this.mIsPositionRelaxed = p2;
            return;
        } else {
            return;
        }
    }

    public void updateFromSolver(android.support.constraint.solver.LinearSystem p5)
    {
        if (this.getParent() != null) {
            int v0_2 = p5.getObjectVariableValue(this.mAnchor);
            if (this.mOrientation != 1) {
                this.setX(0);
                this.setY(v0_2);
                this.setWidth(this.getParent().getWidth());
                this.setHeight(0);
            } else {
                this.setX(v0_2);
                this.setY(0);
                this.setHeight(this.getParent().getHeight());
                this.setWidth(0);
            }
            return;
        } else {
            return;
        }
    }
}
