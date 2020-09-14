package android.support.constraint.solver.widgets;
public class ConstraintTableLayout extends android.support.constraint.solver.widgets.ConstraintWidgetContainer {
    public static final int ALIGN_CENTER = 0;
    private static final int ALIGN_FULL = 3;
    public static final int ALIGN_LEFT = 1;
    public static final int ALIGN_RIGHT = 2;
    private java.util.ArrayList mHorizontalGuidelines;
    private java.util.ArrayList mHorizontalSlices;
    private int mNumCols;
    private int mNumRows;
    private int mPadding;
    private boolean mVerticalGrowth;
    private java.util.ArrayList mVerticalGuidelines;
    private java.util.ArrayList mVerticalSlices;
    private android.support.constraint.solver.LinearSystem system;

    public ConstraintTableLayout()
    {
        this.mVerticalGrowth = 1;
        this.mNumCols = 0;
        this.mNumRows = 0;
        this.mPadding = 8;
        this.mVerticalSlices = new java.util.ArrayList();
        this.mHorizontalSlices = new java.util.ArrayList();
        this.mVerticalGuidelines = new java.util.ArrayList();
        this.mHorizontalGuidelines = new java.util.ArrayList();
        this.system = 0;
        return;
    }

    public ConstraintTableLayout(int p2, int p3)
    {
        super(p2, p3);
        super.mVerticalGrowth = 1;
        super.mNumCols = 0;
        super.mNumRows = 0;
        super.mPadding = 8;
        super.mVerticalSlices = new java.util.ArrayList();
        super.mHorizontalSlices = new java.util.ArrayList();
        super.mVerticalGuidelines = new java.util.ArrayList();
        super.mHorizontalGuidelines = new java.util.ArrayList();
        super.system = 0;
        return;
    }

    public ConstraintTableLayout(int p2, int p3, int p4, int p5)
    {
        super(p2, p3, p4, p5);
        super.mVerticalGrowth = 1;
        super.mNumCols = 0;
        super.mNumRows = 0;
        super.mPadding = 8;
        super.mVerticalSlices = new java.util.ArrayList();
        super.mHorizontalSlices = new java.util.ArrayList();
        super.mVerticalGuidelines = new java.util.ArrayList();
        super.mHorizontalGuidelines = new java.util.ArrayList();
        super.system = 0;
        return;
    }

    private void setChildrenConnections()
    {
        int v0_1 = this.mChildren.size();
        int v1_0 = 0;
        int v2 = 0;
        while (v2 < v0_1) {
            android.support.constraint.solver.widgets.ConstraintWidget v3_0 = ((android.support.constraint.solver.widgets.ConstraintWidget) this.mChildren.get(v2));
            int v1_1 = (v1_0 + v3_0.getContainerItemSkip());
            android.support.constraint.solver.widgets.ConstraintTableLayout$HorizontalSlice v6_2 = ((android.support.constraint.solver.widgets.ConstraintTableLayout$HorizontalSlice) this.mHorizontalSlices.get((v1_1 / this.mNumCols)));
            android.support.constraint.solver.widgets.ConstraintTableLayout$VerticalSlice v7_2 = ((android.support.constraint.solver.widgets.ConstraintTableLayout$VerticalSlice) this.mVerticalSlices.get((v1_1 % this.mNumCols)));
            android.support.constraint.solver.widgets.ConstraintWidget v9 = v7_2.right;
            android.support.constraint.solver.widgets.ConstraintWidget v10 = v6_2.top;
            android.support.constraint.solver.widgets.ConstraintWidget v11 = v6_2.bottom;
            v3_0.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT).connect(v7_2.left.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT), this.mPadding);
            if (!(v9 instanceof android.support.constraint.solver.widgets.Guideline)) {
                v3_0.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT).connect(v9.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT), this.mPadding);
            } else {
                v3_0.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT).connect(v9.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT), this.mPadding);
            }
            switch (v7_2.alignment) {
                case 1:
                    v3_0.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT).setStrength(android.support.constraint.solver.widgets.ConstraintAnchor$Strength.STRONG);
                    v3_0.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT).setStrength(android.support.constraint.solver.widgets.ConstraintAnchor$Strength.WEAK);
                    break;
                case 2:
                    v3_0.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.LEFT).setStrength(android.support.constraint.solver.widgets.ConstraintAnchor$Strength.WEAK);
                    v3_0.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.RIGHT).setStrength(android.support.constraint.solver.widgets.ConstraintAnchor$Strength.STRONG);
                    break;
                case 3:
                    v3_0.setHorizontalDimensionBehaviour(android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT);
                    break;
                default:
            }
            v3_0.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP).connect(v10.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP), this.mPadding);
            if (!(v11 instanceof android.support.constraint.solver.widgets.Guideline)) {
                v3_0.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM).connect(v11.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM), this.mPadding);
            } else {
                v3_0.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.BOTTOM).connect(v11.getAnchor(android.support.constraint.solver.widgets.ConstraintAnchor$Type.TOP), this.mPadding);
            }
            v1_0 = (v1_1 + 1);
            v2++;
        }
        return;
    }

    private void setHorizontalSlices()
    {
        this.mHorizontalSlices.clear();
        float v1_1 = (1120403456 / ((float) this.mNumRows));
        android.support.constraint.solver.widgets.ConstraintWidget v2 = this;
        float v4 = v1_1;
        int v0_1 = 0;
        while (v0_1 < this.mNumRows) {
            android.support.constraint.solver.widgets.ConstraintTableLayout$HorizontalSlice v5_2 = new android.support.constraint.solver.widgets.ConstraintTableLayout$HorizontalSlice(this);
            v5_2.top = v2;
            if (v0_1 >= (this.mNumRows - 1)) {
                v5_2.bottom = this;
            } else {
                java.util.ArrayList v6_3 = new android.support.constraint.solver.widgets.Guideline();
                v6_3.setOrientation(0);
                v6_3.setParent(this);
                v6_3.setGuidePercent(((int) v4));
                v4 += v1_1;
                v5_2.bottom = v6_3;
                this.mHorizontalGuidelines.add(v6_3);
            }
            v2 = v5_2.bottom;
            this.mHorizontalSlices.add(v5_2);
            v0_1++;
        }
        this.updateDebugSolverNames();
        return;
    }

    private void setVerticalSlices()
    {
        this.mVerticalSlices.clear();
        android.support.constraint.solver.widgets.ConstraintWidget v0_1 = this;
        float v2_1 = (1120403456 / ((float) this.mNumCols));
        float v1_0 = v2_1;
        int v3 = 0;
        while (v3 < this.mNumCols) {
            android.support.constraint.solver.widgets.ConstraintTableLayout$VerticalSlice v4_1 = new android.support.constraint.solver.widgets.ConstraintTableLayout$VerticalSlice(this);
            v4_1.left = v0_1;
            if (v3 >= (this.mNumCols - 1)) {
                v4_1.right = this;
            } else {
                java.util.ArrayList v5_3 = new android.support.constraint.solver.widgets.Guideline();
                v5_3.setOrientation(1);
                v5_3.setParent(this);
                v5_3.setGuidePercent(((int) v1_0));
                v1_0 += v2_1;
                v4_1.right = v5_3;
                this.mVerticalGuidelines.add(v5_3);
            }
            v0_1 = v4_1.right;
            this.mVerticalSlices.add(v4_1);
            v3++;
        }
        this.updateDebugSolverNames();
        return;
    }

    private void updateDebugSolverNames()
    {
        if (this.system != null) {
            int v0_3 = this.mVerticalGuidelines.size();
            int v1 = 0;
            android.support.constraint.solver.widgets.Guideline v2_3 = 0;
            while (v2_3 < v0_3) {
                android.support.constraint.solver.LinearSystem v3_3 = ((android.support.constraint.solver.widgets.Guideline) this.mVerticalGuidelines.get(v2_3));
                String v4_3 = this.system;
                String v5_3 = new StringBuilder();
                v5_3.append(this.getDebugName());
                v5_3.append(".VG");
                v5_3.append(v2_3);
                v3_3.setDebugSolverName(v4_3, v5_3.toString());
                v2_3++;
            }
            int v0_1 = this.mHorizontalGuidelines.size();
            while (v1 < v0_1) {
                android.support.constraint.solver.widgets.Guideline v2_2 = ((android.support.constraint.solver.widgets.Guideline) this.mHorizontalGuidelines.get(v1));
                android.support.constraint.solver.LinearSystem v3_0 = this.system;
                String v4_1 = new StringBuilder();
                v4_1.append(this.getDebugName());
                v4_1.append(".HG");
                v4_1.append(v1);
                v2_2.setDebugSolverName(v3_0, v4_1.toString());
                v1++;
            }
            return;
        } else {
            return;
        }
    }

    public void addToSolver(android.support.constraint.solver.LinearSystem p9)
    {
        super.addToSolver(p9);
        int v0_1 = this.mChildren.size();
        if (v0_1 != 0) {
            this.setTableDimensions();
            if (p9 == this.mSystem) {
                int v1_0 = this.mVerticalGuidelines.size();
                int v2 = 0;
                android.support.constraint.solver.widgets.ConstraintWidget v3_0 = 0;
                while(true) {
                    int v4 = 1;
                    if (v3_0 >= v1_0) {
                        break;
                    }
                    android.support.constraint.solver.widgets.Guideline v5_5 = ((android.support.constraint.solver.widgets.Guideline) this.mVerticalGuidelines.get(v3_0));
                    if (this.getHorizontalDimensionBehaviour() != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) {
                        v4 = 0;
                    }
                    v5_5.setPositionRelaxed(v4);
                    v5_5.addToSolver(p9);
                    v3_0++;
                }
                int v1_1 = this.mHorizontalGuidelines.size();
                android.support.constraint.solver.widgets.ConstraintWidget v3_2 = 0;
                while (v3_2 < v1_1) {
                    int v6_1;
                    android.support.constraint.solver.widgets.Guideline v5_2 = ((android.support.constraint.solver.widgets.Guideline) this.mHorizontalGuidelines.get(v3_2));
                    if (this.getVerticalDimensionBehaviour() != android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) {
                        v6_1 = 0;
                    } else {
                        v6_1 = 1;
                    }
                    v5_2.setPositionRelaxed(v6_1);
                    v5_2.addToSolver(p9);
                    v3_2++;
                }
                while (v2 < v0_1) {
                    ((android.support.constraint.solver.widgets.ConstraintWidget) this.mChildren.get(v2)).addToSolver(p9);
                    v2++;
                }
            }
            return;
        } else {
            return;
        }
    }

    public void computeGuidelinesPercentPositions()
    {
        int v0_1 = this.mVerticalGuidelines.size();
        int v1 = 0;
        android.support.constraint.solver.widgets.Guideline v2_3 = 0;
        while (v2_3 < v0_1) {
            ((android.support.constraint.solver.widgets.Guideline) this.mVerticalGuidelines.get(v2_3)).inferRelativePercentPosition();
            v2_3++;
        }
        int v0_2 = this.mHorizontalGuidelines.size();
        while (v1 < v0_2) {
            ((android.support.constraint.solver.widgets.Guideline) this.mHorizontalGuidelines.get(v1)).inferRelativePercentPosition();
            v1++;
        }
        return;
    }

    public void cycleColumnAlignment(int p3)
    {
        android.support.constraint.solver.widgets.ConstraintTableLayout$VerticalSlice v0_2 = ((android.support.constraint.solver.widgets.ConstraintTableLayout$VerticalSlice) this.mVerticalSlices.get(p3));
        switch (v0_2.alignment) {
            case 0:
                v0_2.alignment = 2;
                break;
            case 1:
                v0_2.alignment = 0;
                break;
            case 2:
                v0_2.alignment = 1;
                break;
            default:
        }
        this.setChildrenConnections();
        return;
    }

    public String getColumnAlignmentRepresentation(int p4)
    {
        android.support.constraint.solver.widgets.ConstraintTableLayout$VerticalSlice v0_2 = ((android.support.constraint.solver.widgets.ConstraintTableLayout$VerticalSlice) this.mVerticalSlices.get(p4));
        if (v0_2.alignment != 1) {
            if (v0_2.alignment != 0) {
                if (v0_2.alignment != 3) {
                    if (v0_2.alignment != 2) {
                        return "!";
                    } else {
                        return "R";
                    }
                } else {
                    return "F";
                }
            } else {
                return "C";
            }
        } else {
            return "L";
        }
    }

    public String getColumnsAlignmentRepresentation()
    {
        int v0_1 = this.mVerticalSlices.size();
        String v1 = "";
        int v2 = 0;
        while (v2 < v0_1) {
            android.support.constraint.solver.widgets.ConstraintTableLayout$VerticalSlice v3_0 = ((android.support.constraint.solver.widgets.ConstraintTableLayout$VerticalSlice) this.mVerticalSlices.get(v2));
            if (v3_0.alignment != 1) {
                if (v3_0.alignment != 0) {
                    if (v3_0.alignment != 3) {
                        if (v3_0.alignment == 2) {
                            StringBuilder v4_5 = new StringBuilder();
                            v4_5.append(v1);
                            v4_5.append("R");
                            v1 = v4_5.toString();
                        }
                    } else {
                        StringBuilder v4_7 = new StringBuilder();
                        v4_7.append(v1);
                        v4_7.append("F");
                        v1 = v4_7.toString();
                    }
                } else {
                    StringBuilder v4_9 = new StringBuilder();
                    v4_9.append(v1);
                    v4_9.append("C");
                    v1 = v4_9.toString();
                }
            } else {
                StringBuilder v4_11 = new StringBuilder();
                v4_11.append(v1);
                v4_11.append("L");
                v1 = v4_11.toString();
            }
            v2++;
        }
        return v1;
    }

    public java.util.ArrayList getHorizontalGuidelines()
    {
        return this.mHorizontalGuidelines;
    }

    public int getNumCols()
    {
        return this.mNumCols;
    }

    public int getNumRows()
    {
        return this.mNumRows;
    }

    public int getPadding()
    {
        return this.mPadding;
    }

    public String getType()
    {
        return "ConstraintTableLayout";
    }

    public java.util.ArrayList getVerticalGuidelines()
    {
        return this.mVerticalGuidelines;
    }

    public boolean handlesInternalConstraints()
    {
        return 1;
    }

    public boolean isVerticalGrowth()
    {
        return this.mVerticalGrowth;
    }

    public void setColumnAlignment(int p2, int p3)
    {
        if (p2 < this.mVerticalSlices.size()) {
            ((android.support.constraint.solver.widgets.ConstraintTableLayout$VerticalSlice) this.mVerticalSlices.get(p2)).alignment = p3;
            this.setChildrenConnections();
        }
        return;
    }

    public void setColumnAlignment(String p6)
    {
        int v0 = 0;
        int v1 = p6.length();
        while (v0 < v1) {
            char v2 = p6.charAt(v0);
            if (v2 != 76) {
                if (v2 != 67) {
                    if (v2 != 70) {
                        if (v2 != 82) {
                            this.setColumnAlignment(v0, 0);
                        } else {
                            this.setColumnAlignment(v0, 2);
                        }
                    } else {
                        this.setColumnAlignment(v0, 3);
                    }
                } else {
                    this.setColumnAlignment(v0, 0);
                }
            } else {
                this.setColumnAlignment(v0, 1);
            }
            v0++;
        }
        return;
    }

    public void setDebugSolverName(android.support.constraint.solver.LinearSystem p1, String p2)
    {
        this.system = p1;
        super.setDebugSolverName(p1, p2);
        this.updateDebugSolverNames();
        return;
    }

    public void setNumCols(int p2)
    {
        if ((this.mVerticalGrowth) && (this.mNumCols != p2)) {
            this.mNumCols = p2;
            this.setVerticalSlices();
            this.setTableDimensions();
        }
        return;
    }

    public void setNumRows(int p2)
    {
        if ((!this.mVerticalGrowth) && (this.mNumCols != p2)) {
            this.mNumRows = p2;
            this.setHorizontalSlices();
            this.setTableDimensions();
        }
        return;
    }

    public void setPadding(int p2)
    {
        if (p2 > 1) {
            this.mPadding = p2;
        }
        return;
    }

    public void setTableDimensions()
    {
        int v0 = 0;
        int v1_1 = this.mChildren.size();
        int v2_6 = 0;
        while (v2_6 < v1_1) {
            v0 += ((android.support.constraint.solver.widgets.ConstraintWidget) this.mChildren.get(v2_6)).getContainerItemSkip();
            v2_6++;
        }
        int v1_2 = (v1_1 + v0);
        if (!this.mVerticalGrowth) {
            if (this.mNumRows == 0) {
                this.setNumRows(1);
            }
            int v2_2 = (v1_2 / this.mNumRows);
            if ((this.mNumRows * v2_2) < v1_2) {
                v2_2++;
            }
            if ((this.mNumCols != v2_2) || (this.mHorizontalGuidelines.size() != (this.mNumRows - 1))) {
                this.mNumCols = v2_2;
                this.setVerticalSlices();
            } else {
                return;
            }
        } else {
            if (this.mNumCols == 0) {
                this.setNumCols(1);
            }
            int v2_5 = (v1_2 / this.mNumCols);
            if ((this.mNumCols * v2_5) < v1_2) {
                v2_5++;
            }
            if ((this.mNumRows != v2_5) || (this.mVerticalGuidelines.size() != (this.mNumCols - 1))) {
                this.mNumRows = v2_5;
                this.setHorizontalSlices();
            } else {
                return;
            }
        }
        this.setChildrenConnections();
        return;
    }

    public void setVerticalGrowth(boolean p1)
    {
        this.mVerticalGrowth = p1;
        return;
    }

    public void updateFromSolver(android.support.constraint.solver.LinearSystem p5)
    {
        super.updateFromSolver(p5);
        if (p5 == this.mSystem) {
            int v0_3 = this.mVerticalGuidelines.size();
            int v1 = 0;
            android.support.constraint.solver.widgets.Guideline v2_3 = 0;
            while (v2_3 < v0_3) {
                ((android.support.constraint.solver.widgets.Guideline) this.mVerticalGuidelines.get(v2_3)).updateFromSolver(p5);
                v2_3++;
            }
            int v0_1 = this.mHorizontalGuidelines.size();
            while (v1 < v0_1) {
                ((android.support.constraint.solver.widgets.Guideline) this.mHorizontalGuidelines.get(v1)).updateFromSolver(p5);
                v1++;
            }
        }
        return;
    }
}
