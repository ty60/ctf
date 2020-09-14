package android.support.constraint;
public class ConstraintLayout$LayoutParams extends android.view.ViewGroup$MarginLayoutParams {
    public static final int BASELINE = 5;
    public static final int BOTTOM = 4;
    public static final int CHAIN_PACKED = 2;
    public static final int CHAIN_SPREAD = 0;
    public static final int CHAIN_SPREAD_INSIDE = 1;
    public static final int END = 7;
    public static final int HORIZONTAL = 0;
    public static final int LEFT = 1;
    public static final int MATCH_CONSTRAINT = 0;
    public static final int MATCH_CONSTRAINT_PERCENT = 2;
    public static final int MATCH_CONSTRAINT_SPREAD = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    public static final int PARENT_ID = 0;
    public static final int RIGHT = 2;
    public static final int START = 6;
    public static final int TOP = 3;
    public static final int UNSET = 255;
    public static final int VERTICAL = 1;
    public int baselineToBaseline;
    public int bottomToBottom;
    public int bottomToTop;
    public float circleAngle;
    public int circleConstraint;
    public int circleRadius;
    public boolean constrainedHeight;
    public boolean constrainedWidth;
    public String dimensionRatio;
    int dimensionRatioSide;
    float dimensionRatioValue;
    public int editorAbsoluteX;
    public int editorAbsoluteY;
    public int endToEnd;
    public int endToStart;
    public int goneBottomMargin;
    public int goneEndMargin;
    public int goneLeftMargin;
    public int goneRightMargin;
    public int goneStartMargin;
    public int goneTopMargin;
    public int guideBegin;
    public int guideEnd;
    public float guidePercent;
    public boolean helped;
    public float horizontalBias;
    public int horizontalChainStyle;
    boolean horizontalDimensionFixed;
    public float horizontalWeight;
    boolean isGuideline;
    boolean isHelper;
    boolean isInPlaceholder;
    public int leftToLeft;
    public int leftToRight;
    public int matchConstraintDefaultHeight;
    public int matchConstraintDefaultWidth;
    public int matchConstraintMaxHeight;
    public int matchConstraintMaxWidth;
    public int matchConstraintMinHeight;
    public int matchConstraintMinWidth;
    public float matchConstraintPercentHeight;
    public float matchConstraintPercentWidth;
    boolean needsBaseline;
    public int orientation;
    int resolveGoneLeftMargin;
    int resolveGoneRightMargin;
    int resolvedGuideBegin;
    int resolvedGuideEnd;
    float resolvedGuidePercent;
    float resolvedHorizontalBias;
    int resolvedLeftToLeft;
    int resolvedLeftToRight;
    int resolvedRightToLeft;
    int resolvedRightToRight;
    public int rightToLeft;
    public int rightToRight;
    public int startToEnd;
    public int startToStart;
    public int topToBottom;
    public int topToTop;
    public float verticalBias;
    public int verticalChainStyle;
    boolean verticalDimensionFixed;
    public float verticalWeight;
    android.support.constraint.solver.widgets.ConstraintWidget widget;

    public ConstraintLayout$LayoutParams(int p7, int p8)
    {
        super(p7, p8);
        super.guideBegin = -1;
        super.guideEnd = -1;
        super.guidePercent = -1082130432;
        super.leftToLeft = -1;
        super.leftToRight = -1;
        super.rightToLeft = -1;
        super.rightToRight = -1;
        super.topToTop = -1;
        super.topToBottom = -1;
        super.bottomToTop = -1;
        super.bottomToBottom = -1;
        super.baselineToBaseline = -1;
        super.circleConstraint = -1;
        super.circleRadius = 0;
        super.circleAngle = 0;
        super.startToEnd = -1;
        super.startToStart = -1;
        super.endToStart = -1;
        super.endToEnd = -1;
        super.goneLeftMargin = -1;
        super.goneTopMargin = -1;
        super.goneRightMargin = -1;
        super.goneBottomMargin = -1;
        super.goneStartMargin = -1;
        super.goneEndMargin = -1;
        super.horizontalBias = 1056964608;
        super.verticalBias = 1056964608;
        super.dimensionRatio = 0;
        super.dimensionRatioValue = 0;
        super.dimensionRatioSide = 1;
        super.horizontalWeight = -1082130432;
        super.verticalWeight = -1082130432;
        super.horizontalChainStyle = 0;
        super.verticalChainStyle = 0;
        super.matchConstraintDefaultWidth = 0;
        super.matchConstraintDefaultHeight = 0;
        super.matchConstraintMinWidth = 0;
        super.matchConstraintMinHeight = 0;
        super.matchConstraintMaxWidth = 0;
        super.matchConstraintMaxHeight = 0;
        super.matchConstraintPercentWidth = 1065353216;
        super.matchConstraintPercentHeight = 1065353216;
        super.editorAbsoluteX = -1;
        super.editorAbsoluteY = -1;
        super.orientation = -1;
        super.constrainedWidth = 0;
        super.constrainedHeight = 0;
        super.horizontalDimensionFixed = 1;
        super.verticalDimensionFixed = 1;
        super.needsBaseline = 0;
        super.isGuideline = 0;
        super.isHelper = 0;
        super.isInPlaceholder = 0;
        super.resolvedLeftToLeft = -1;
        super.resolvedLeftToRight = -1;
        super.resolvedRightToLeft = -1;
        super.resolvedRightToRight = -1;
        super.resolveGoneLeftMargin = -1;
        super.resolveGoneRightMargin = -1;
        super.resolvedHorizontalBias = 1056964608;
        super.widget = new android.support.constraint.solver.widgets.ConstraintWidget();
        super.helped = 0;
        return;
    }

    public ConstraintLayout$LayoutParams(android.content.Context p20, android.util.AttributeSet p21)
    {
        android.support.constraint.ConstraintLayout$LayoutParams v19_1 = super(p20, p21);
        float v2_12 = -1;
        super.guideBegin = -1;
        super.guideEnd = -1;
        super.guidePercent = -1082130432;
        super.leftToLeft = -1;
        super.leftToRight = -1;
        super.rightToLeft = -1;
        super.rightToRight = -1;
        super.topToTop = -1;
        super.topToBottom = -1;
        super.bottomToTop = -1;
        super.bottomToBottom = -1;
        super.baselineToBaseline = -1;
        super.circleConstraint = -1;
        float v4_3 = 0;
        super.circleRadius = 0;
        int v5_0 = 0;
        super.circleAngle = 0;
        super.startToEnd = -1;
        super.startToStart = -1;
        super.endToStart = -1;
        super.endToEnd = -1;
        super.goneLeftMargin = -1;
        super.goneTopMargin = -1;
        super.goneRightMargin = -1;
        super.goneBottomMargin = -1;
        super.goneStartMargin = -1;
        super.goneEndMargin = -1;
        super.horizontalBias = 1056964608;
        super.verticalBias = 1056964608;
        super.dimensionRatio = 0;
        super.dimensionRatioValue = 0;
        float v7_7 = 1;
        super.dimensionRatioSide = 1;
        super.horizontalWeight = -1082130432;
        super.verticalWeight = -1082130432;
        super.horizontalChainStyle = 0;
        super.verticalChainStyle = 0;
        super.matchConstraintDefaultWidth = 0;
        super.matchConstraintDefaultHeight = 0;
        super.matchConstraintMinWidth = 0;
        super.matchConstraintMinHeight = 0;
        super.matchConstraintMaxWidth = 0;
        super.matchConstraintMaxHeight = 0;
        super.matchConstraintPercentWidth = 1065353216;
        super.matchConstraintPercentHeight = 1065353216;
        super.editorAbsoluteX = -1;
        super.editorAbsoluteY = -1;
        super.orientation = -1;
        super.constrainedWidth = 0;
        super.constrainedHeight = 0;
        super.horizontalDimensionFixed = 1;
        super.verticalDimensionFixed = 1;
        super.needsBaseline = 0;
        super.isGuideline = 0;
        super.isHelper = 0;
        super.isInPlaceholder = 0;
        super.resolvedLeftToLeft = -1;
        super.resolvedLeftToRight = -1;
        super.resolvedRightToLeft = -1;
        super.resolvedRightToRight = -1;
        super.resolveGoneLeftMargin = -1;
        super.resolveGoneRightMargin = -1;
        super.resolvedHorizontalBias = 1056964608;
        super.widget = new android.support.constraint.solver.widgets.ConstraintWidget();
        super.helped = 0;
        android.content.res.TypedArray v3_5 = p20.obtainStyledAttributes(p21, android.support.constraint.R$styleable.ConstraintLayout_Layout);
        int v9 = v3_5.getIndexCount();
        int v10 = 0;
        while (v10 < v9) {
            int v13_11;
            float v2_30;
            float v7_6;
            int v5_2;
            int v11 = v3_5.getIndex(v10);
            switch (android.support.constraint.ConstraintLayout$LayoutParams$Table.map.get(v11)) {
                case 0:
                    v13_11 = v5_0;
                    v5_2 = v7_7;
                    v7_6 = v2_12;
                    v2_30 = v4_3;
                    break;
                case 1:
                    v13_11 = v5_0;
                    v5_2 = v7_7;
                    v7_6 = v2_12;
                    v2_30 = v4_3;
                    super.orientation = v3_5.getInt(v11, super.orientation);
                    break;
                case 2:
                    v2_30 = v4_3;
                    v13_11 = v5_0;
                    v5_2 = v7_7;
                    super.circleConstraint = v3_5.getResourceId(v11, super.circleConstraint);
                    v7_6 = -1;
                    if (super.circleConstraint != -1) {
                    } else {
                        super.circleConstraint = v3_5.getInt(v11, -1);
                    }
                    break;
                case 3:
                    v2_30 = v4_3;
                    v13_11 = v5_0;
                    v5_2 = v7_7;
                    super.circleRadius = v3_5.getDimensionPixelSize(v11, super.circleRadius);
                    v7_6 = -1;
                    break;
                case 4:
                    v2_30 = v4_3;
                    v5_2 = v7_7;
                    super.circleAngle = (v3_5.getFloat(v11, super.circleAngle) % 1135869952);
                    v13_11 = 0;
                    if (super.circleAngle >= 0) {
                    } else {
                        super.circleAngle = ((1135869952 - super.circleAngle) % 1135869952);
                    }
                    break;
                case 5:
                    v2_30 = v4_3;
                    v5_2 = v7_7;
                    super.guideBegin = v3_5.getDimensionPixelOffset(v11, super.guideBegin);
                    v7_6 = -1;
                    v13_11 = 0;
                    break;
                case 6:
                    v2_30 = v4_3;
                    v5_2 = v7_7;
                    super.guideEnd = v3_5.getDimensionPixelOffset(v11, super.guideEnd);
                    break;
                case 7:
                    v2_30 = v4_3;
                    v5_2 = v7_7;
                    super.guidePercent = v3_5.getFloat(v11, super.guidePercent);
                    break;
                case 8:
                    v5_2 = v7_7;
                    v7_6 = v2_12;
                    v2_30 = v4_3;
                    super.leftToLeft = v3_5.getResourceId(v11, super.leftToLeft);
                    if (super.leftToLeft != v7_6) {
                    } else {
                        super.leftToLeft = v3_5.getInt(v11, v7_6);
                    }
                    break;
                case 9:
                    v5_2 = v7_7;
                    v7_6 = v2_12;
                    v2_30 = v4_3;
                    super.leftToRight = v3_5.getResourceId(v11, super.leftToRight);
                    if (super.leftToRight != v7_6) {
                    } else {
                        super.leftToRight = v3_5.getInt(v11, v7_6);
                    }
                    break;
                case 10:
                    v5_2 = v7_7;
                    v7_6 = v2_12;
                    v2_30 = v4_3;
                    super.rightToLeft = v3_5.getResourceId(v11, super.rightToLeft);
                    if (super.rightToLeft != v7_6) {
                    } else {
                        super.rightToLeft = v3_5.getInt(v11, v7_6);
                    }
                    break;
                case 11:
                    v5_2 = v7_7;
                    v7_6 = v2_12;
                    v2_30 = v4_3;
                    super.rightToRight = v3_5.getResourceId(v11, super.rightToRight);
                    if (super.rightToRight != v7_6) {
                    } else {
                        super.rightToRight = v3_5.getInt(v11, v7_6);
                    }
                    break;
                case 12:
                    v5_2 = v7_7;
                    v7_6 = v2_12;
                    v2_30 = v4_3;
                    super.topToTop = v3_5.getResourceId(v11, super.topToTop);
                    if (super.topToTop != v7_6) {
                    } else {
                        super.topToTop = v3_5.getInt(v11, v7_6);
                    }
                    break;
                case 13:
                    v5_2 = v7_7;
                    v7_6 = v2_12;
                    v2_30 = v4_3;
                    super.topToBottom = v3_5.getResourceId(v11, super.topToBottom);
                    if (super.topToBottom != v7_6) {
                    } else {
                        super.topToBottom = v3_5.getInt(v11, v7_6);
                    }
                    break;
                case 14:
                    v5_2 = v7_7;
                    v7_6 = v2_12;
                    v2_30 = v4_3;
                    super.bottomToTop = v3_5.getResourceId(v11, super.bottomToTop);
                    if (super.bottomToTop != v7_6) {
                    } else {
                        super.bottomToTop = v3_5.getInt(v11, v7_6);
                    }
                    break;
                case 15:
                    v5_2 = v7_7;
                    v7_6 = v2_12;
                    v2_30 = v4_3;
                    super.bottomToBottom = v3_5.getResourceId(v11, super.bottomToBottom);
                    if (super.bottomToBottom != v7_6) {
                    } else {
                        super.bottomToBottom = v3_5.getInt(v11, v7_6);
                    }
                    break;
                case 16:
                    v5_2 = v7_7;
                    v7_6 = v2_12;
                    v2_30 = v4_3;
                    super.baselineToBaseline = v3_5.getResourceId(v11, super.baselineToBaseline);
                    if (super.baselineToBaseline != v7_6) {
                    } else {
                        super.baselineToBaseline = v3_5.getInt(v11, v7_6);
                    }
                    break;
                case 17:
                    v5_2 = v7_7;
                    v7_6 = v2_12;
                    v2_30 = v4_3;
                    super.startToEnd = v3_5.getResourceId(v11, super.startToEnd);
                    if (super.startToEnd != v7_6) {
                    } else {
                        super.startToEnd = v3_5.getInt(v11, v7_6);
                    }
                    break;
                case 18:
                    v5_2 = v7_7;
                    v7_6 = v2_12;
                    v2_30 = v4_3;
                    super.startToStart = v3_5.getResourceId(v11, super.startToStart);
                    if (super.startToStart != v7_6) {
                    } else {
                        super.startToStart = v3_5.getInt(v11, v7_6);
                    }
                    break;
                case 19:
                    v5_2 = v7_7;
                    v7_6 = v2_12;
                    v2_30 = v4_3;
                    super.endToStart = v3_5.getResourceId(v11, super.endToStart);
                    if (super.endToStart != v7_6) {
                    } else {
                        super.endToStart = v3_5.getInt(v11, v7_6);
                    }
                    break;
                case 20:
                    v2_30 = v4_3;
                    v5_2 = v7_7;
                    super.endToEnd = v3_5.getResourceId(v11, super.endToEnd);
                    v7_6 = -1;
                    if (super.endToEnd != -1) {
                    } else {
                        super.endToEnd = v3_5.getInt(v11, -1);
                    }
                    break;
                case 21:
                    v2_30 = v4_3;
                    v5_2 = v7_7;
                    super.goneLeftMargin = v3_5.getDimensionPixelSize(v11, super.goneLeftMargin);
                    break;
                case 22:
                    v2_30 = v4_3;
                    v5_2 = v7_7;
                    super.goneTopMargin = v3_5.getDimensionPixelSize(v11, super.goneTopMargin);
                    break;
                case 23:
                    v2_30 = v4_3;
                    v5_2 = v7_7;
                    super.goneRightMargin = v3_5.getDimensionPixelSize(v11, super.goneRightMargin);
                    break;
                case 24:
                    v2_30 = v4_3;
                    v5_2 = v7_7;
                    super.goneBottomMargin = v3_5.getDimensionPixelSize(v11, super.goneBottomMargin);
                    break;
                case 25:
                    v2_30 = v4_3;
                    v5_2 = v7_7;
                    super.goneStartMargin = v3_5.getDimensionPixelSize(v11, super.goneStartMargin);
                    break;
                case 26:
                    v2_30 = v4_3;
                    v5_2 = v7_7;
                    super.goneEndMargin = v3_5.getDimensionPixelSize(v11, super.goneEndMargin);
                    break;
                case 27:
                    v2_30 = v4_3;
                    v5_2 = v7_7;
                    super.constrainedWidth = v3_5.getBoolean(v11, super.constrainedWidth);
                    break;
                case 28:
                    v2_30 = v4_3;
                    v5_2 = v7_7;
                    super.constrainedHeight = v3_5.getBoolean(v11, super.constrainedHeight);
                    break;
                case 29:
                    v2_30 = v4_3;
                    v5_2 = v7_7;
                    super.horizontalBias = v3_5.getFloat(v11, super.horizontalBias);
                    break;
                case 30:
                    v2_30 = v4_3;
                    v5_2 = v7_7;
                    super.verticalBias = v3_5.getFloat(v11, super.verticalBias);
                    break;
                case 31:
                    v2_30 = 0;
                    super.matchConstraintDefaultWidth = v3_5.getInt(v11, 0);
                    v5_2 = 1;
                    if (super.matchConstraintDefaultWidth != 1) {
                    } else {
                        android.util.Log.e("ConstraintLayout", "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                    }
                    break;
                case 32:
                    super.matchConstraintDefaultHeight = v3_5.getInt(v11, 0);
                    if (super.matchConstraintDefaultHeight != 1) {
                        v5_2 = 1;
                        v2_30 = 0;
                    } else {
                        android.util.Log.e("ConstraintLayout", "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                        v2_30 = 0;
                        v5_2 = 1;
                    }
                    break;
                case 33:
                    try {
                        super.matchConstraintMinWidth = v3_5.getDimensionPixelSize(v11, super.matchConstraintMinWidth);
                    } catch (NumberFormatException v0_3) {
                        if (v3_5.getInt(v11, super.matchConstraintMinWidth) != -2) {
                        } else {
                            super.matchConstraintMinWidth = -2;
                        }
                    }
                    break;
                case 34:
                    try {
                        super.matchConstraintMaxWidth = v3_5.getDimensionPixelSize(v11, super.matchConstraintMaxWidth);
                    } catch (NumberFormatException v0_2) {
                        if (v3_5.getInt(v11, super.matchConstraintMaxWidth) != -2) {
                        } else {
                            super.matchConstraintMaxWidth = -2;
                        }
                    }
                    break;
                case 35:
                    super.matchConstraintPercentWidth = Math.max(0, v3_5.getFloat(v11, super.matchConstraintPercentWidth));
                    break;
                case 36:
                    try {
                        super.matchConstraintMinHeight = v3_5.getDimensionPixelSize(v11, super.matchConstraintMinHeight);
                    } catch (NumberFormatException v0_1) {
                        if (v3_5.getInt(v11, super.matchConstraintMinHeight) != -2) {
                        } else {
                            super.matchConstraintMinHeight = -2;
                        }
                    }
                    break;
                case 37:
                    try {
                        super.matchConstraintMaxHeight = v3_5.getDimensionPixelSize(v11, super.matchConstraintMaxHeight);
                    } catch (NumberFormatException v0_0) {
                        if (v3_5.getInt(v11, super.matchConstraintMaxHeight) != -2) {
                        } else {
                            super.matchConstraintMaxHeight = -2;
                        }
                    }
                    break;
                case 38:
                    super.matchConstraintPercentHeight = Math.max(0, v3_5.getFloat(v11, super.matchConstraintPercentHeight));
                    break;
                case 39:
                    break;
                case 40:
                    break;
                case 41:
                    break;
                case 42:
                    break;
                case 43:
                default:
                    v13_11 = v5_0;
                    v5_2 = v7_7;
                    v7_6 = v2_12;
                    v2_30 = v4_3;
                    break;
                case 44:
                    super.dimensionRatio = v3_5.getString(v11);
                    super.dimensionRatioValue = 2143289344;
                    super.dimensionRatioSide = v2_12;
                    if (super.dimensionRatio == null) {
                    } else {
                        int v14_2;
                        int v13_10 = super.dimensionRatio.length();
                        int v14_1 = super.dimensionRatio.indexOf(44);
                        if ((v14_1 <= 0) || (v14_1 >= (v13_10 - 1))) {
                            v14_2 = 0;
                        } else {
                            String v15_3 = super.dimensionRatio.substring(v4_3, v14_1);
                            if (!v15_3.equalsIgnoreCase("W")) {
                                if (v15_3.equalsIgnoreCase("H")) {
                                    super.dimensionRatioSide = v7_7;
                                }
                            } else {
                                super.dimensionRatioSide = v4_3;
                            }
                            v14_2 = (v14_1 + 1);
                        }
                        float v2_5 = super.dimensionRatio.indexOf(58);
                        if ((v2_5 < 0) || (v2_5 >= (v13_10 - 1))) {
                            float v2_7 = super.dimensionRatio.substring(v14_2);
                            if (v2_7.length() <= 0) {
                            } else {
                                try {
                                    super.dimensionRatioValue = Float.parseFloat(v2_7);
                                } catch (NumberFormatException v0) {
                                }
                            }
                        } else {
                            String v15_7 = super.dimensionRatio.substring(v14_2, v2_5);
                            float v4_4 = super.dimensionRatio.substring((v2_5 + 1));
                            if ((v15_7.length() <= 0) || (v4_4.length() <= 0)) {
                            } else {
                                try {
                                    float v7_3 = Float.parseFloat(v15_7);
                                    float v16 = Float.parseFloat(v4_4);
                                } catch (NumberFormatException v0) {
                                }
                                if ((v7_3 <= v5_0) || (v16 <= v5_0)) {
                                } else {
                                    if (super.dimensionRatioSide != 1) {
                                        super.dimensionRatioValue = Math.abs((v7_3 / v16));
                                    } else {
                                        super.dimensionRatioValue = Math.abs((v16 / v7_3));
                                    }
                                }
                            }
                        }
                    }
                    break;
                case 45:
                    super.horizontalWeight = v3_5.getFloat(v11, super.horizontalWeight);
                    break;
                case 46:
                    super.verticalWeight = v3_5.getFloat(v11, super.verticalWeight);
                    break;
                case 47:
                    super.horizontalChainStyle = v3_5.getInt(v11, v4_3);
                    break;
                case 48:
                    super.verticalChainStyle = v3_5.getInt(v11, v4_3);
                    break;
                case 49:
                    super.editorAbsoluteX = v3_5.getDimensionPixelOffset(v11, super.editorAbsoluteX);
                    break;
                case 50:
                    super.editorAbsoluteY = v3_5.getDimensionPixelOffset(v11, super.editorAbsoluteY);
                    break;
            }
            v10++;
            v4_3 = v2_30;
            v2_12 = v7_6;
            v7_7 = v5_2;
            v5_0 = v13_11;
        }
        v3_5.recycle();
        v19_1.validate();
        return;
    }

    public ConstraintLayout$LayoutParams(android.support.constraint.ConstraintLayout$LayoutParams p7)
    {
        super(p7);
        super.guideBegin = -1;
        super.guideEnd = -1;
        super.guidePercent = -1082130432;
        super.leftToLeft = -1;
        super.leftToRight = -1;
        super.rightToLeft = -1;
        super.rightToRight = -1;
        super.topToTop = -1;
        super.topToBottom = -1;
        super.bottomToTop = -1;
        super.bottomToBottom = -1;
        super.baselineToBaseline = -1;
        super.circleConstraint = -1;
        super.circleRadius = 0;
        super.circleAngle = 0;
        super.startToEnd = -1;
        super.startToStart = -1;
        super.endToStart = -1;
        super.endToEnd = -1;
        super.goneLeftMargin = -1;
        super.goneTopMargin = -1;
        super.goneRightMargin = -1;
        super.goneBottomMargin = -1;
        super.goneStartMargin = -1;
        super.goneEndMargin = -1;
        super.horizontalBias = 1056964608;
        super.verticalBias = 1056964608;
        super.dimensionRatio = 0;
        super.dimensionRatioValue = 0;
        super.dimensionRatioSide = 1;
        super.horizontalWeight = -1082130432;
        super.verticalWeight = -1082130432;
        super.horizontalChainStyle = 0;
        super.verticalChainStyle = 0;
        super.matchConstraintDefaultWidth = 0;
        super.matchConstraintDefaultHeight = 0;
        super.matchConstraintMinWidth = 0;
        super.matchConstraintMinHeight = 0;
        super.matchConstraintMaxWidth = 0;
        super.matchConstraintMaxHeight = 0;
        super.matchConstraintPercentWidth = 1065353216;
        super.matchConstraintPercentHeight = 1065353216;
        super.editorAbsoluteX = -1;
        super.editorAbsoluteY = -1;
        super.orientation = -1;
        super.constrainedWidth = 0;
        super.constrainedHeight = 0;
        super.horizontalDimensionFixed = 1;
        super.verticalDimensionFixed = 1;
        super.needsBaseline = 0;
        super.isGuideline = 0;
        super.isHelper = 0;
        super.isInPlaceholder = 0;
        super.resolvedLeftToLeft = -1;
        super.resolvedLeftToRight = -1;
        super.resolvedRightToLeft = -1;
        super.resolvedRightToRight = -1;
        super.resolveGoneLeftMargin = -1;
        super.resolveGoneRightMargin = -1;
        super.resolvedHorizontalBias = 1056964608;
        super.widget = new android.support.constraint.solver.widgets.ConstraintWidget();
        super.helped = 0;
        super.guideBegin = p7.guideBegin;
        super.guideEnd = p7.guideEnd;
        super.guidePercent = p7.guidePercent;
        super.leftToLeft = p7.leftToLeft;
        super.leftToRight = p7.leftToRight;
        super.rightToLeft = p7.rightToLeft;
        super.rightToRight = p7.rightToRight;
        super.topToTop = p7.topToTop;
        super.topToBottom = p7.topToBottom;
        super.bottomToTop = p7.bottomToTop;
        super.bottomToBottom = p7.bottomToBottom;
        super.baselineToBaseline = p7.baselineToBaseline;
        super.circleConstraint = p7.circleConstraint;
        super.circleRadius = p7.circleRadius;
        super.circleAngle = p7.circleAngle;
        super.startToEnd = p7.startToEnd;
        super.startToStart = p7.startToStart;
        super.endToStart = p7.endToStart;
        super.endToEnd = p7.endToEnd;
        super.goneLeftMargin = p7.goneLeftMargin;
        super.goneTopMargin = p7.goneTopMargin;
        super.goneRightMargin = p7.goneRightMargin;
        super.goneBottomMargin = p7.goneBottomMargin;
        super.goneStartMargin = p7.goneStartMargin;
        super.goneEndMargin = p7.goneEndMargin;
        super.horizontalBias = p7.horizontalBias;
        super.verticalBias = p7.verticalBias;
        super.dimensionRatio = p7.dimensionRatio;
        super.dimensionRatioValue = p7.dimensionRatioValue;
        super.dimensionRatioSide = p7.dimensionRatioSide;
        super.horizontalWeight = p7.horizontalWeight;
        super.verticalWeight = p7.verticalWeight;
        super.horizontalChainStyle = p7.horizontalChainStyle;
        super.verticalChainStyle = p7.verticalChainStyle;
        super.constrainedWidth = p7.constrainedWidth;
        super.constrainedHeight = p7.constrainedHeight;
        super.matchConstraintDefaultWidth = p7.matchConstraintDefaultWidth;
        super.matchConstraintDefaultHeight = p7.matchConstraintDefaultHeight;
        super.matchConstraintMinWidth = p7.matchConstraintMinWidth;
        super.matchConstraintMaxWidth = p7.matchConstraintMaxWidth;
        super.matchConstraintMinHeight = p7.matchConstraintMinHeight;
        super.matchConstraintMaxHeight = p7.matchConstraintMaxHeight;
        super.matchConstraintPercentWidth = p7.matchConstraintPercentWidth;
        super.matchConstraintPercentHeight = p7.matchConstraintPercentHeight;
        super.editorAbsoluteX = p7.editorAbsoluteX;
        super.editorAbsoluteY = p7.editorAbsoluteY;
        super.orientation = p7.orientation;
        super.horizontalDimensionFixed = p7.horizontalDimensionFixed;
        super.verticalDimensionFixed = p7.verticalDimensionFixed;
        super.needsBaseline = p7.needsBaseline;
        super.isGuideline = p7.isGuideline;
        super.resolvedLeftToLeft = p7.resolvedLeftToLeft;
        super.resolvedLeftToRight = p7.resolvedLeftToRight;
        super.resolvedRightToLeft = p7.resolvedRightToLeft;
        super.resolvedRightToRight = p7.resolvedRightToRight;
        super.resolveGoneLeftMargin = p7.resolveGoneLeftMargin;
        super.resolveGoneRightMargin = p7.resolveGoneRightMargin;
        super.resolvedHorizontalBias = p7.resolvedHorizontalBias;
        super.widget = p7.widget;
        return;
    }

    public ConstraintLayout$LayoutParams(android.view.ViewGroup$LayoutParams p7)
    {
        super(p7);
        super.guideBegin = -1;
        super.guideEnd = -1;
        super.guidePercent = -1082130432;
        super.leftToLeft = -1;
        super.leftToRight = -1;
        super.rightToLeft = -1;
        super.rightToRight = -1;
        super.topToTop = -1;
        super.topToBottom = -1;
        super.bottomToTop = -1;
        super.bottomToBottom = -1;
        super.baselineToBaseline = -1;
        super.circleConstraint = -1;
        super.circleRadius = 0;
        super.circleAngle = 0;
        super.startToEnd = -1;
        super.startToStart = -1;
        super.endToStart = -1;
        super.endToEnd = -1;
        super.goneLeftMargin = -1;
        super.goneTopMargin = -1;
        super.goneRightMargin = -1;
        super.goneBottomMargin = -1;
        super.goneStartMargin = -1;
        super.goneEndMargin = -1;
        super.horizontalBias = 1056964608;
        super.verticalBias = 1056964608;
        super.dimensionRatio = 0;
        super.dimensionRatioValue = 0;
        super.dimensionRatioSide = 1;
        super.horizontalWeight = -1082130432;
        super.verticalWeight = -1082130432;
        super.horizontalChainStyle = 0;
        super.verticalChainStyle = 0;
        super.matchConstraintDefaultWidth = 0;
        super.matchConstraintDefaultHeight = 0;
        super.matchConstraintMinWidth = 0;
        super.matchConstraintMinHeight = 0;
        super.matchConstraintMaxWidth = 0;
        super.matchConstraintMaxHeight = 0;
        super.matchConstraintPercentWidth = 1065353216;
        super.matchConstraintPercentHeight = 1065353216;
        super.editorAbsoluteX = -1;
        super.editorAbsoluteY = -1;
        super.orientation = -1;
        super.constrainedWidth = 0;
        super.constrainedHeight = 0;
        super.horizontalDimensionFixed = 1;
        super.verticalDimensionFixed = 1;
        super.needsBaseline = 0;
        super.isGuideline = 0;
        super.isHelper = 0;
        super.isInPlaceholder = 0;
        super.resolvedLeftToLeft = -1;
        super.resolvedLeftToRight = -1;
        super.resolvedRightToLeft = -1;
        super.resolvedRightToRight = -1;
        super.resolveGoneLeftMargin = -1;
        super.resolveGoneRightMargin = -1;
        super.resolvedHorizontalBias = 1056964608;
        super.widget = new android.support.constraint.solver.widgets.ConstraintWidget();
        super.helped = 0;
        return;
    }

    public void reset()
    {
        if (this.widget != null) {
            this.widget.reset();
        }
        return;
    }

    public void resolveLayoutDirection(int p9)
    {
        int v3_7;
        int v0 = this.leftMargin;
        int v1 = this.rightMargin;
        super.resolveLayoutDirection(p9);
        this.resolvedRightToLeft = -1;
        this.resolvedRightToRight = -1;
        this.resolvedLeftToLeft = -1;
        this.resolvedLeftToRight = -1;
        this.resolveGoneLeftMargin = -1;
        this.resolveGoneRightMargin = -1;
        this.resolveGoneLeftMargin = this.goneLeftMargin;
        this.resolveGoneRightMargin = this.goneRightMargin;
        this.resolvedHorizontalBias = this.horizontalBias;
        this.resolvedGuideBegin = this.guideBegin;
        this.resolvedGuideEnd = this.guideEnd;
        this.resolvedGuidePercent = this.guidePercent;
        if (1 != this.getLayoutDirection()) {
            v3_7 = 0;
        } else {
            v3_7 = 1;
        }
        if (v3_7 == 0) {
            if (this.startToEnd != -1) {
                this.resolvedLeftToRight = this.startToEnd;
            }
            if (this.startToStart != -1) {
                this.resolvedLeftToLeft = this.startToStart;
            }
            if (this.endToStart != -1) {
                this.resolvedRightToLeft = this.endToStart;
            }
            if (this.endToEnd != -1) {
                this.resolvedRightToRight = this.endToEnd;
            }
            if (this.goneStartMargin != -1) {
                this.resolveGoneLeftMargin = this.goneStartMargin;
            }
            if (this.goneEndMargin != -1) {
                this.resolveGoneRightMargin = this.goneEndMargin;
            }
        } else {
            int v5 = 0;
            if (this.startToEnd == -1) {
                if (this.startToStart != -1) {
                    this.resolvedRightToRight = this.startToStart;
                    v5 = 1;
                }
            } else {
                this.resolvedRightToLeft = this.startToEnd;
                v5 = 1;
            }
            if (this.endToStart != -1) {
                this.resolvedLeftToRight = this.endToStart;
                v5 = 1;
            }
            if (this.endToEnd != -1) {
                this.resolvedLeftToLeft = this.endToEnd;
                v5 = 1;
            }
            if (this.goneStartMargin != -1) {
                this.resolveGoneRightMargin = this.goneStartMargin;
            }
            if (this.goneEndMargin != -1) {
                this.resolveGoneLeftMargin = this.goneEndMargin;
            }
            if (v5 != 0) {
                this.resolvedHorizontalBias = (1065353216 - this.horizontalBias);
            }
            if ((this.isGuideline) && (this.orientation == 1)) {
                if (this.guidePercent == -1082130432) {
                    if (this.guideBegin == -1) {
                        if (this.guideEnd != -1) {
                            this.resolvedGuideBegin = this.guideEnd;
                            this.resolvedGuideEnd = -1;
                            this.resolvedGuidePercent = -1082130432;
                        }
                    } else {
                        this.resolvedGuideEnd = this.guideBegin;
                        this.resolvedGuideBegin = -1;
                        this.resolvedGuidePercent = -1082130432;
                    }
                } else {
                    this.resolvedGuidePercent = (1065353216 - this.guidePercent);
                    this.resolvedGuideBegin = -1;
                    this.resolvedGuideEnd = -1;
                }
            }
        }
        if ((this.endToStart == -1) && ((this.endToEnd == -1) && ((this.startToStart == -1) && (this.startToEnd == -1)))) {
            if (this.rightToLeft == -1) {
                if (this.rightToRight != -1) {
                    this.resolvedRightToRight = this.rightToRight;
                    if ((this.rightMargin <= 0) && (v1 > 0)) {
                        this.rightMargin = v1;
                    }
                }
            } else {
                this.resolvedRightToLeft = this.rightToLeft;
                if ((this.rightMargin <= 0) && (v1 > 0)) {
                    this.rightMargin = v1;
                }
            }
            if (this.leftToLeft == -1) {
                if (this.leftToRight != -1) {
                    this.resolvedLeftToRight = this.leftToRight;
                    if ((this.leftMargin <= 0) && (v0 > 0)) {
                        this.leftMargin = v0;
                    }
                }
            } else {
                this.resolvedLeftToLeft = this.leftToLeft;
                if ((this.leftMargin <= 0) && (v0 > 0)) {
                    this.leftMargin = v0;
                }
            }
        }
        return;
    }

    public void validate()
    {
        this.isGuideline = 0;
        this.horizontalDimensionFixed = 1;
        this.verticalDimensionFixed = 1;
        if ((this.width == -2) && (this.constrainedWidth)) {
            this.horizontalDimensionFixed = 0;
            this.matchConstraintDefaultWidth = 1;
        }
        if ((this.height == -2) && (this.constrainedHeight)) {
            this.verticalDimensionFixed = 0;
            this.matchConstraintDefaultHeight = 1;
        }
        if ((this.width == 0) || (this.width == -1)) {
            this.horizontalDimensionFixed = 0;
            if ((this.width == 0) && (this.matchConstraintDefaultWidth == 1)) {
                this.width = -2;
                this.constrainedWidth = 1;
            }
        }
        if ((this.height == 0) || (this.height == -1)) {
            this.verticalDimensionFixed = 0;
            if ((this.height == 0) && (this.matchConstraintDefaultHeight == 1)) {
                this.height = -2;
                this.constrainedHeight = 1;
            }
        }
        if ((this.guidePercent != -1082130432) || ((this.guideBegin != -1) || (this.guideEnd != -1))) {
            this.isGuideline = 1;
            this.horizontalDimensionFixed = 1;
            this.verticalDimensionFixed = 1;
            if (!(this.widget instanceof android.support.constraint.solver.widgets.Guideline)) {
                this.widget = new android.support.constraint.solver.widgets.Guideline();
            }
            ((android.support.constraint.solver.widgets.Guideline) this.widget).setOrientation(this.orientation);
        }
        return;
    }
}
