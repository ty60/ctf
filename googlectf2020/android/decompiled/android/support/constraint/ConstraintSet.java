package android.support.constraint;
public class ConstraintSet {
    private static final int ALPHA = 43;
    private static final int BARRIER_ALLOWS_GONE_WIDGETS = 74;
    private static final int BARRIER_DIRECTION = 72;
    private static final int BARRIER_TYPE = 1;
    public static final int BASELINE = 5;
    private static final int BASELINE_TO_BASELINE = 1;
    public static final int BOTTOM = 4;
    private static final int BOTTOM_MARGIN = 2;
    private static final int BOTTOM_TO_BOTTOM = 3;
    private static final int BOTTOM_TO_TOP = 4;
    public static final int CHAIN_PACKED = 2;
    public static final int CHAIN_SPREAD = 0;
    public static final int CHAIN_SPREAD_INSIDE = 1;
    private static final int CHAIN_USE_RTL = 71;
    private static final int CIRCLE = 61;
    private static final int CIRCLE_ANGLE = 63;
    private static final int CIRCLE_RADIUS = 62;
    private static final int CONSTRAINT_REFERENCED_IDS = 73;
    private static final boolean DEBUG = False;
    private static final int DIMENSION_RATIO = 5;
    private static final int EDITOR_ABSOLUTE_X = 6;
    private static final int EDITOR_ABSOLUTE_Y = 7;
    private static final int ELEVATION = 44;
    public static final int END = 7;
    private static final int END_MARGIN = 8;
    private static final int END_TO_END = 9;
    private static final int END_TO_START = 10;
    public static final int GONE = 8;
    private static final int GONE_BOTTOM_MARGIN = 11;
    private static final int GONE_END_MARGIN = 12;
    private static final int GONE_LEFT_MARGIN = 13;
    private static final int GONE_RIGHT_MARGIN = 14;
    private static final int GONE_START_MARGIN = 15;
    private static final int GONE_TOP_MARGIN = 16;
    private static final int GUIDE_BEGIN = 17;
    private static final int GUIDE_END = 18;
    private static final int GUIDE_PERCENT = 19;
    private static final int HEIGHT_DEFAULT = 55;
    private static final int HEIGHT_MAX = 57;
    private static final int HEIGHT_MIN = 59;
    private static final int HEIGHT_PERCENT = 70;
    public static final int HORIZONTAL = 0;
    private static final int HORIZONTAL_BIAS = 20;
    public static final int HORIZONTAL_GUIDELINE = 0;
    private static final int HORIZONTAL_STYLE = 41;
    private static final int HORIZONTAL_WEIGHT = 39;
    public static final int INVISIBLE = 4;
    private static final int LAYOUT_HEIGHT = 21;
    private static final int LAYOUT_VISIBILITY = 22;
    private static final int LAYOUT_WIDTH = 23;
    public static final int LEFT = 1;
    private static final int LEFT_MARGIN = 24;
    private static final int LEFT_TO_LEFT = 25;
    private static final int LEFT_TO_RIGHT = 26;
    public static final int MATCH_CONSTRAINT = 0;
    public static final int MATCH_CONSTRAINT_SPREAD = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    private static final int ORIENTATION = 27;
    public static final int PARENT_ID = 0;
    public static final int RIGHT = 2;
    private static final int RIGHT_MARGIN = 28;
    private static final int RIGHT_TO_LEFT = 29;
    private static final int RIGHT_TO_RIGHT = 30;
    private static final int ROTATION = 60;
    private static final int ROTATION_X = 45;
    private static final int ROTATION_Y = 46;
    private static final int SCALE_X = 47;
    private static final int SCALE_Y = 48;
    public static final int START = 6;
    private static final int START_MARGIN = 31;
    private static final int START_TO_END = 32;
    private static final int START_TO_START = 33;
    private static final String TAG = "ConstraintSet";
    public static final int TOP = 3;
    private static final int TOP_MARGIN = 34;
    private static final int TOP_TO_BOTTOM = 35;
    private static final int TOP_TO_TOP = 36;
    private static final int TRANSFORM_PIVOT_X = 49;
    private static final int TRANSFORM_PIVOT_Y = 50;
    private static final int TRANSLATION_X = 51;
    private static final int TRANSLATION_Y = 52;
    private static final int TRANSLATION_Z = 53;
    public static final int UNSET = 255;
    private static final int UNUSED = 75;
    public static final int VERTICAL = 1;
    private static final int VERTICAL_BIAS = 37;
    public static final int VERTICAL_GUIDELINE = 1;
    private static final int VERTICAL_STYLE = 42;
    private static final int VERTICAL_WEIGHT = 40;
    private static final int VIEW_ID = 38;
    private static final int[] VISIBILITY_FLAGS = None;
    public static final int VISIBLE = 0;
    private static final int WIDTH_DEFAULT = 54;
    private static final int WIDTH_MAX = 56;
    private static final int WIDTH_MIN = 58;
    private static final int WIDTH_PERCENT = 69;
    public static final int WRAP_CONTENT = 254;
    private static android.util.SparseIntArray mapToConstant;
    private java.util.HashMap mConstraints;

    static ConstraintSet()
    {
        int v1_0 = new int[3];
        v1_0 = {0, 4, 8};
        android.support.constraint.ConstraintSet.VISIBILITY_FLAGS = v1_0;
        android.support.constraint.ConstraintSet.mapToConstant = new android.util.SparseIntArray();
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintLeft_toLeftOf, 25);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintLeft_toRightOf, 26);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintRight_toLeftOf, 29);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintRight_toRightOf, 30);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintTop_toTopOf, 36);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintTop_toBottomOf, 35);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintBottom_toTopOf, 4);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintBottom_toBottomOf, 3);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintBaseline_toBaselineOf, 1);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_editor_absoluteX, 6);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_editor_absoluteY, 7);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintGuide_begin, 17);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintGuide_end, 18);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintGuide_percent, 19);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_android_orientation, 27);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintStart_toEndOf, 32);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintStart_toStartOf, 33);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintEnd_toStartOf, 10);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintEnd_toEndOf, 9);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_goneMarginLeft, 13);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_goneMarginTop, 16);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_goneMarginRight, 14);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_goneMarginBottom, 11);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_goneMarginStart, 15);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_goneMarginEnd, 12);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintVertical_weight, 40);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintHorizontal_weight, 39);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintHorizontal_chainStyle, 41);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintVertical_chainStyle, 42);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintHorizontal_bias, 20);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintVertical_bias, 37);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintDimensionRatio, 5);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintLeft_creator, 75);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintTop_creator, 75);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintRight_creator, 75);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintBottom_creator, 75);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintBaseline_creator, 75);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_android_layout_marginLeft, 24);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_android_layout_marginRight, 28);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_android_layout_marginStart, 31);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_android_layout_marginEnd, 8);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_android_layout_marginTop, 34);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_android_layout_marginBottom, 2);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_android_layout_width, 23);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_android_layout_height, 21);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_android_visibility, 22);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_android_alpha, 43);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_android_elevation, 44);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_android_rotationX, 45);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_android_rotationY, 46);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_android_rotation, 60);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_android_scaleX, 47);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_android_scaleY, 48);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_android_transformPivotX, 49);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_android_transformPivotY, 50);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_android_translationX, 51);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_android_translationY, 52);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_android_translationZ, 53);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintWidth_default, 54);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintHeight_default, 55);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintWidth_max, 56);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintHeight_max, 57);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintWidth_min, 58);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintHeight_min, 59);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintCircle, 61);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintCircleRadius, 62);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintCircleAngle, 63);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_android_id, 38);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintWidth_percent, 69);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_layout_constraintHeight_percent, 70);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_chainUseRtl, 71);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_barrierDirection, 72);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_constraint_referenced_ids, 73);
        android.support.constraint.ConstraintSet.mapToConstant.append(android.support.constraint.R$styleable.ConstraintSet_barrierAllowsGoneWidgets, 74);
        return;
    }

    public ConstraintSet()
    {
        this.mConstraints = new java.util.HashMap();
        return;
    }

    private int[] convertReferenceString(android.view.View p12, String p13)
    {
        String[] v0_1 = p13.split(",");
        android.content.Context v1 = p12.getContext();
        int[] v2_0 = new int[v0_1.length];
        int v5 = 0;
        int v3_0 = 0;
        while (v3_0 < v0_1.length) {
            String v6_2 = v0_1[v3_0].trim();
            try {
                int v7 = android.support.constraint.R$id.getField(v6_2).getInt(0);
            } catch (android.support.constraint.ConstraintLayout v8) {
            }
            if (v7 == 0) {
                v7 = v1.getResources().getIdentifier(v6_2, "id", v1.getPackageName());
            }
            if ((v7 == 0) && ((p12.isInEditMode()) && ((p12.getParent() instanceof android.support.constraint.ConstraintLayout)))) {
                Object v9_2 = ((android.support.constraint.ConstraintLayout) p12.getParent()).getDesignInformation(0, v6_2);
                if ((v9_2 != null) && ((v9_2 instanceof Integer))) {
                    v7 = ((Integer) v9_2).intValue();
                }
            }
            android.support.constraint.ConstraintLayout v8_7 = (v5 + 1);
            v2_0[v5] = v7;
            v3_0++;
            v5 = v8_7;
        }
        if (v5 != v0_1.length) {
            v2_0 = java.util.Arrays.copyOf(v2_0, v5);
        }
        return v2_0;
    }

    private void createHorizontalChain(int p14, int p15, int p16, int p17, int[] p18, float[] p19, int p20, int p21, int p22)
    {
        int[] v7 = p18;
        if (p18.length >= 2) {
            if ((p19 == null) || (p19.length == p18.length)) {
                if (p19 != null) {
                    this.get(p18[0]).horizontalWeight = p19[0];
                }
                this.get(p18[0]).horizontalChainStyle = p20;
                this.connect(p18[0], p21, p14, p15, -1);
                int v0_3 = 1;
                while(true) {
                    int v11 = v0_3;
                    if (v11 >= p18.length) {
                        break;
                    }
                    this.connect(p18[v11], p21, p18[(v11 - 1)], p22, -1);
                    this.connect(v7[(v11 - 1)], p22, v7[v11], p21, -1);
                    if (p19 != null) {
                        this.get(p18[v11]).horizontalWeight = p19[v11];
                    }
                    v0_3 = (v11 + 1);
                }
                this.connect(p18[(p18.length - 1)], p22, p16, p17, -1);
                return;
            } else {
                throw new IllegalArgumentException("must have 2 or more widgets in a chain");
            }
        } else {
            throw new IllegalArgumentException("must have 2 or more widgets in a chain");
        }
    }

    private android.support.constraint.ConstraintSet$Constraint fillFromAttributeList(android.content.Context p3, android.util.AttributeSet p4)
    {
        android.support.constraint.ConstraintSet$Constraint v0_1 = new android.support.constraint.ConstraintSet$Constraint(0);
        android.content.res.TypedArray v1_2 = p3.obtainStyledAttributes(p4, android.support.constraint.R$styleable.ConstraintSet);
        this.populateConstraint(v0_1, v1_2);
        v1_2.recycle();
        return v0_1;
    }

    private android.support.constraint.ConstraintSet$Constraint get(int p5)
    {
        if (!this.mConstraints.containsKey(Integer.valueOf(p5))) {
            this.mConstraints.put(Integer.valueOf(p5), new android.support.constraint.ConstraintSet$Constraint(0));
        }
        return ((android.support.constraint.ConstraintSet$Constraint) this.mConstraints.get(Integer.valueOf(p5)));
    }

    private static int lookupID(android.content.res.TypedArray p2, int p3, int p4)
    {
        int v0 = p2.getResourceId(p3, p4);
        if (v0 == -1) {
            v0 = p2.getInt(p3, -1);
        }
        return v0;
    }

    private void populateConstraint(android.support.constraint.ConstraintSet$Constraint p7, android.content.res.TypedArray p8)
    {
        int v0 = p8.getIndexCount();
        int v1 = 0;
        while (v1 < v0) {
            int v2 = p8.getIndex(v1);
            String v3_122 = android.support.constraint.ConstraintSet.mapToConstant.get(v2);
            switch (v3_122) {
                case 1:
                    p7.baselineToBaseline = android.support.constraint.ConstraintSet.lookupID(p8, v2, p7.baselineToBaseline);
                    break;
                case 2:
                    p7.bottomMargin = p8.getDimensionPixelSize(v2, p7.bottomMargin);
                    break;
                case 3:
                    p7.bottomToBottom = android.support.constraint.ConstraintSet.lookupID(p8, v2, p7.bottomToBottom);
                    break;
                case 4:
                    p7.bottomToTop = android.support.constraint.ConstraintSet.lookupID(p8, v2, p7.bottomToTop);
                    break;
                case 5:
                    p7.dimensionRatio = p8.getString(v2);
                    break;
                case 6:
                    p7.editorAbsoluteX = p8.getDimensionPixelOffset(v2, p7.editorAbsoluteX);
                    break;
                case 7:
                    p7.editorAbsoluteY = p8.getDimensionPixelOffset(v2, p7.editorAbsoluteY);
                    break;
                case 8:
                    p7.endMargin = p8.getDimensionPixelSize(v2, p7.endMargin);
                    break;
                case 9:
                    p7.endToEnd = android.support.constraint.ConstraintSet.lookupID(p8, v2, p7.endToEnd);
                    break;
                case 10:
                    p7.endToStart = android.support.constraint.ConstraintSet.lookupID(p8, v2, p7.endToStart);
                    break;
                case 11:
                    p7.goneBottomMargin = p8.getDimensionPixelSize(v2, p7.goneBottomMargin);
                    break;
                case 12:
                    p7.goneEndMargin = p8.getDimensionPixelSize(v2, p7.goneEndMargin);
                    break;
                case 13:
                    p7.goneLeftMargin = p8.getDimensionPixelSize(v2, p7.goneLeftMargin);
                    break;
                case 14:
                    p7.goneRightMargin = p8.getDimensionPixelSize(v2, p7.goneRightMargin);
                    break;
                case 15:
                    p7.goneStartMargin = p8.getDimensionPixelSize(v2, p7.goneStartMargin);
                    break;
                case 16:
                    p7.goneTopMargin = p8.getDimensionPixelSize(v2, p7.goneTopMargin);
                    break;
                case 17:
                    p7.guideBegin = p8.getDimensionPixelOffset(v2, p7.guideBegin);
                    break;
                case 18:
                    p7.guideEnd = p8.getDimensionPixelOffset(v2, p7.guideEnd);
                    break;
                case 19:
                    p7.guidePercent = p8.getFloat(v2, p7.guidePercent);
                    break;
                case 20:
                    p7.horizontalBias = p8.getFloat(v2, p7.horizontalBias);
                    break;
                case 21:
                    p7.mHeight = p8.getLayoutDimension(v2, p7.mHeight);
                    break;
                case 22:
                    p7.visibility = p8.getInt(v2, p7.visibility);
                    p7.visibility = android.support.constraint.ConstraintSet.VISIBILITY_FLAGS[p7.visibility];
                    break;
                case 23:
                    p7.mWidth = p8.getLayoutDimension(v2, p7.mWidth);
                    break;
                case 24:
                    p7.leftMargin = p8.getDimensionPixelSize(v2, p7.leftMargin);
                    break;
                case 25:
                    p7.leftToLeft = android.support.constraint.ConstraintSet.lookupID(p8, v2, p7.leftToLeft);
                    break;
                case 26:
                    p7.leftToRight = android.support.constraint.ConstraintSet.lookupID(p8, v2, p7.leftToRight);
                    break;
                case 27:
                    p7.orientation = p8.getInt(v2, p7.orientation);
                    break;
                case 28:
                    p7.rightMargin = p8.getDimensionPixelSize(v2, p7.rightMargin);
                    break;
                case 29:
                    p7.rightToLeft = android.support.constraint.ConstraintSet.lookupID(p8, v2, p7.rightToLeft);
                    break;
                case 30:
                    p7.rightToRight = android.support.constraint.ConstraintSet.lookupID(p8, v2, p7.rightToRight);
                    break;
                case 31:
                    p7.startMargin = p8.getDimensionPixelSize(v2, p7.startMargin);
                    break;
                case 32:
                    p7.startToEnd = android.support.constraint.ConstraintSet.lookupID(p8, v2, p7.startToEnd);
                    break;
                case 33:
                    p7.startToStart = android.support.constraint.ConstraintSet.lookupID(p8, v2, p7.startToStart);
                    break;
                case 34:
                    p7.topMargin = p8.getDimensionPixelSize(v2, p7.topMargin);
                    break;
                case 35:
                    p7.topToBottom = android.support.constraint.ConstraintSet.lookupID(p8, v2, p7.topToBottom);
                    break;
                case 36:
                    p7.topToTop = android.support.constraint.ConstraintSet.lookupID(p8, v2, p7.topToTop);
                    break;
                case 37:
                    p7.verticalBias = p8.getFloat(v2, p7.verticalBias);
                    break;
                case 38:
                    p7.mViewId = p8.getResourceId(v2, p7.mViewId);
                    break;
                case 39:
                    p7.horizontalWeight = p8.getFloat(v2, p7.horizontalWeight);
                    break;
                case 40:
                    p7.verticalWeight = p8.getFloat(v2, p7.verticalWeight);
                    break;
                case 41:
                    p7.horizontalChainStyle = p8.getInt(v2, p7.horizontalChainStyle);
                    break;
                case 42:
                    p7.verticalChainStyle = p8.getInt(v2, p7.verticalChainStyle);
                    break;
                case 43:
                    p7.alpha = p8.getFloat(v2, p7.alpha);
                    break;
                case 44:
                    p7.applyElevation = 1;
                    p7.elevation = p8.getDimension(v2, p7.elevation);
                    break;
                case 45:
                    p7.rotationX = p8.getFloat(v2, p7.rotationX);
                    break;
                case 46:
                    p7.rotationY = p8.getFloat(v2, p7.rotationY);
                    break;
                case 47:
                    p7.scaleX = p8.getFloat(v2, p7.scaleX);
                    break;
                case 48:
                    p7.scaleY = p8.getFloat(v2, p7.scaleY);
                    break;
                case 49:
                    p7.transformPivotX = p8.getFloat(v2, p7.transformPivotX);
                    break;
                case 50:
                    p7.transformPivotY = p8.getFloat(v2, p7.transformPivotY);
                    break;
                case 51:
                    p7.translationX = p8.getDimension(v2, p7.translationX);
                    break;
                case 52:
                    p7.translationY = p8.getDimension(v2, p7.translationY);
                    break;
                case 53:
                    p7.translationZ = p8.getDimension(v2, p7.translationZ);
                    break;
                default:
                    switch (v3_122) {
                        case 60:
                            p7.rotation = p8.getFloat(v2, p7.rotation);
                            break;
                        case 61:
                            p7.circleConstraint = android.support.constraint.ConstraintSet.lookupID(p8, v2, p7.circleConstraint);
                            break;
                        case 62:
                            p7.circleRadius = p8.getDimensionPixelSize(v2, p7.circleRadius);
                            break;
                        case 63:
                            p7.circleAngle = p8.getFloat(v2, p7.circleAngle);
                            break;
                        default:
                            switch (v3_122) {
                                case 69:
                                    p7.widthPercent = p8.getFloat(v2, 1065353216);
                                    break;
                                case 70:
                                    p7.heightPercent = p8.getFloat(v2, 1065353216);
                                    break;
                                case 71:
                                    android.util.Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                                    break;
                                case 72:
                                    p7.mBarrierDirection = p8.getInt(v2, p7.mBarrierDirection);
                                    break;
                                case 73:
                                    p7.mReferenceIdString = p8.getString(v2);
                                    break;
                                case 74:
                                    p7.mBarrierAllowsGoneWidgets = p8.getBoolean(v2, p7.mBarrierAllowsGoneWidgets);
                                    break;
                                case 75:
                                    String v4_3 = new StringBuilder();
                                    v4_3.append("unused attribute 0x");
                                    v4_3.append(Integer.toHexString(v2));
                                    v4_3.append("   ");
                                    v4_3.append(android.support.constraint.ConstraintSet.mapToConstant.get(v2));
                                    android.util.Log.w("ConstraintSet", v4_3.toString());
                                    break;
                                default:
                                    String v4_7 = new StringBuilder();
                                    v4_7.append("Unknown attribute 0x");
                                    v4_7.append(Integer.toHexString(v2));
                                    v4_7.append("   ");
                                    v4_7.append(android.support.constraint.ConstraintSet.mapToConstant.get(v2));
                                    android.util.Log.w("ConstraintSet", v4_7.toString());
                            }
                    }
            }
            v1++;
        }
        return;
    }

    private String sideToString(int p2)
    {
        switch (p2) {
            case 1:
                return "left";
            case 2:
                return "right";
            case 3:
                return "top";
            case 4:
                return "bottom";
            case 5:
                return "baseline";
            case 6:
                return "start";
            case 7:
                return "end";
            default:
                return "undefined";
        }
    }

    public void addToHorizontalChain(int p9, int p10, int p11)
    {
        int v4_2;
        if (p10 != 0) {
            v4_2 = 2;
        } else {
            v4_2 = 1;
        }
        int v4_0;
        this.connect(p9, 1, p10, v4_2, 0);
        if (p11 != 0) {
            v4_0 = 1;
        } else {
            v4_0 = 2;
        }
        this.connect(p9, 2, p11, v4_0, 0);
        if (p10 != 0) {
            this.connect(p10, 2, p9, 1, 0);
        }
        if (p11 != 0) {
            this.connect(p11, 1, p9, 2, 0);
        }
        return;
    }

    public void addToHorizontalChainRTL(int p9, int p10, int p11)
    {
        int v4_2;
        if (p10 != 0) {
            v4_2 = 7;
        } else {
            v4_2 = 6;
        }
        int v4_0;
        this.connect(p9, 6, p10, v4_2, 0);
        if (p11 != 0) {
            v4_0 = 6;
        } else {
            v4_0 = 7;
        }
        this.connect(p9, 7, p11, v4_0, 0);
        if (p10 != 0) {
            this.connect(p10, 7, p9, 6, 0);
        }
        if (p11 != 0) {
            this.connect(p11, 6, p9, 7, 0);
        }
        return;
    }

    public void addToVerticalChain(int p16, int p17, int p18)
    {
        int v4_1;
        if (p17 != 0) {
            v4_1 = 4;
        } else {
            v4_1 = 3;
        }
        int v12;
        this.connect(p16, 3, p17, v4_1, 0);
        if (p18 != 0) {
            v12 = 3;
        } else {
            v12 = 4;
        }
        this.connect(p16, 4, p18, v12, 0);
        if (p17 != 0) {
            this.connect(p17, 4, p16, 3, 0);
        }
        if (p17 != 0) {
            this.connect(p18, 3, p16, 4, 0);
        }
        return;
    }

    public void applyTo(android.support.constraint.ConstraintLayout p2)
    {
        this.applyToInternal(p2);
        p2.setConstraintSet(0);
        return;
    }

    void applyToInternal(android.support.constraint.ConstraintLayout p10)
    {
        int v0 = p10.getChildCount();
        java.util.HashSet v1_1 = new java.util.HashSet(this.mConstraints.keySet());
        int v2_1 = 0;
        while (v2_1 < v0) {
            Integer v5_3 = p10.getChildAt(v2_1);
            android.support.constraint.ConstraintSet$Constraint v6_3 = v5_3.getId();
            if (v6_3 != -1) {
                if (this.mConstraints.containsKey(Integer.valueOf(v6_3))) {
                    v1_1.remove(Integer.valueOf(v6_3));
                    android.support.constraint.Guideline v7_12 = ((android.support.constraint.ConstraintSet$Constraint) this.mConstraints.get(Integer.valueOf(v6_3)));
                    if ((v5_3 instanceof android.support.constraint.Barrier)) {
                        v7_12.mHelperType = 1;
                    }
                    if ((v7_12.mHelperType != -1) && (v7_12.mHelperType == 1)) {
                        android.support.constraint.Barrier v3_7 = ((android.support.constraint.Barrier) v5_3);
                        v3_7.setId(v6_3);
                        v3_7.setType(v7_12.mBarrierDirection);
                        v3_7.setAllowsGoneWidget(v7_12.mBarrierAllowsGoneWidgets);
                        if (v7_12.mReferenceIds == null) {
                            if (v7_12.mReferenceIdString != null) {
                                v7_12.mReferenceIds = this.convertReferenceString(v3_7, v7_12.mReferenceIdString);
                                v3_7.setReferencedIds(v7_12.mReferenceIds);
                            }
                        } else {
                            v3_7.setReferencedIds(v7_12.mReferenceIds);
                        }
                    }
                    android.support.constraint.Barrier v3_1 = ((android.support.constraint.ConstraintLayout$LayoutParams) v5_3.getLayoutParams());
                    v7_12.applyTo(v3_1);
                    v5_3.setLayoutParams(v3_1);
                    v5_3.setVisibility(v7_12.visibility);
                    if (android.os.Build$VERSION.SDK_INT >= 17) {
                        v5_3.setAlpha(v7_12.alpha);
                        v5_3.setRotation(v7_12.rotation);
                        v5_3.setRotationX(v7_12.rotationX);
                        v5_3.setRotationY(v7_12.rotationY);
                        v5_3.setScaleX(v7_12.scaleX);
                        v5_3.setScaleY(v7_12.scaleY);
                        if (!Float.isNaN(v7_12.transformPivotX)) {
                            v5_3.setPivotX(v7_12.transformPivotX);
                        }
                        if (!Float.isNaN(v7_12.transformPivotY)) {
                            v5_3.setPivotY(v7_12.transformPivotY);
                        }
                        v5_3.setTranslationX(v7_12.translationX);
                        v5_3.setTranslationY(v7_12.translationY);
                        if (android.os.Build$VERSION.SDK_INT >= 21) {
                            v5_3.setTranslationZ(v7_12.translationZ);
                            if (v7_12.applyElevation) {
                                v5_3.setElevation(v7_12.elevation);
                            }
                        }
                    }
                }
                v2_1++;
            } else {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
        }
        int v2_0 = v1_1.iterator();
        while (v2_0.hasNext()) {
            Integer v5_2 = ((Integer) v2_0.next());
            android.support.constraint.ConstraintSet$Constraint v6_2 = ((android.support.constraint.ConstraintSet$Constraint) this.mConstraints.get(v5_2));
            if ((v6_2.mHelperType != -1) && (v6_2.mHelperType == 1)) {
                android.support.constraint.Guideline v7_3 = new android.support.constraint.Barrier(p10.getContext());
                v7_3.setId(v5_2.intValue());
                if (v6_2.mReferenceIds == null) {
                    if (v6_2.mReferenceIdString != null) {
                        v6_2.mReferenceIds = this.convertReferenceString(v7_3, v6_2.mReferenceIdString);
                        v7_3.setReferencedIds(v6_2.mReferenceIds);
                    }
                } else {
                    v7_3.setReferencedIds(v6_2.mReferenceIds);
                }
                v7_3.setType(v6_2.mBarrierDirection);
                int v8_11 = p10.generateDefaultLayoutParams();
                v7_3.validateParams();
                v6_2.applyTo(v8_11);
                p10.addView(v7_3, v8_11);
            }
            if (v6_2.mIsGuideline) {
                android.support.constraint.Guideline v7_6 = new android.support.constraint.Guideline(p10.getContext());
                v7_6.setId(v5_2.intValue());
                int v8_14 = p10.generateDefaultLayoutParams();
                v6_2.applyTo(v8_14);
                p10.addView(v7_6, v8_14);
            }
        }
        return;
    }

    public void center(int p11, int p12, int p13, int p14, int p15, int p16, int p17, float p18)
    {
        if (p14 >= 0) {
            if (p17 >= 0) {
                if ((p18 > 0) && (p18 <= 1065353216)) {
                    if ((p13 != 1) && (p13 != 2)) {
                        if ((p13 != 6) && (p13 != 7)) {
                            this.connect(p11, 3, p12, p13, p14);
                            this.connect(p11, 4, p15, p16, p17);
                            ((android.support.constraint.ConstraintSet$Constraint) this.mConstraints.get(Integer.valueOf(p11))).verticalBias = p18;
                        } else {
                            this.connect(p11, 6, p12, p13, p14);
                            this.connect(p11, 7, p15, p16, p17);
                            ((android.support.constraint.ConstraintSet$Constraint) this.mConstraints.get(Integer.valueOf(p11))).horizontalBias = p18;
                        }
                    } else {
                        this.connect(p11, 1, p12, p13, p14);
                        this.connect(p11, 2, p15, p16, p17);
                        ((android.support.constraint.ConstraintSet$Constraint) this.mConstraints.get(Integer.valueOf(p11))).horizontalBias = p18;
                    }
                    return;
                } else {
                    throw new IllegalArgumentException("bias must be between 0 and 1 inclusive");
                }
            } else {
                throw new IllegalArgumentException("margin must be > 0");
            }
        } else {
            throw new IllegalArgumentException("margin must be > 0");
        }
    }

    public void centerHorizontally(int p11, int p12)
    {
        if (p12 != 0) {
            this.center(p11, p12, 2, 0, p12, 1, 0, 1056964608);
        } else {
            this.center(p11, 0, 1, 0, 0, 2, 0, 1056964608);
        }
        return;
    }

    public void centerHorizontally(int p10, int p11, int p12, int p13, int p14, int p15, int p16, float p17)
    {
        this.connect(p10, 1, p11, p12, p13);
        this.connect(p10, 2, p14, p15, p16);
        ((android.support.constraint.ConstraintSet$Constraint) this.mConstraints.get(Integer.valueOf(p10))).horizontalBias = p17;
        return;
    }

    public void centerHorizontallyRtl(int p11, int p12)
    {
        if (p12 != 0) {
            this.center(p11, p12, 7, 0, p12, 6, 0, 1056964608);
        } else {
            this.center(p11, 0, 6, 0, 0, 7, 0, 1056964608);
        }
        return;
    }

    public void centerHorizontallyRtl(int p10, int p11, int p12, int p13, int p14, int p15, int p16, float p17)
    {
        this.connect(p10, 6, p11, p12, p13);
        this.connect(p10, 7, p14, p15, p16);
        ((android.support.constraint.ConstraintSet$Constraint) this.mConstraints.get(Integer.valueOf(p10))).horizontalBias = p17;
        return;
    }

    public void centerVertically(int p11, int p12)
    {
        if (p12 != 0) {
            this.center(p11, p12, 4, 0, p12, 3, 0, 1056964608);
        } else {
            this.center(p11, 0, 3, 0, 0, 4, 0, 1056964608);
        }
        return;
    }

    public void centerVertically(int p10, int p11, int p12, int p13, int p14, int p15, int p16, float p17)
    {
        this.connect(p10, 3, p11, p12, p13);
        this.connect(p10, 4, p14, p15, p16);
        ((android.support.constraint.ConstraintSet$Constraint) this.mConstraints.get(Integer.valueOf(p10))).verticalBias = p17;
        return;
    }

    public void clear(int p3)
    {
        this.mConstraints.remove(Integer.valueOf(p3));
        return;
    }

    public void clear(int p4, int p5)
    {
        if (this.mConstraints.containsKey(Integer.valueOf(p4))) {
            android.support.constraint.ConstraintSet$Constraint v0_2 = ((android.support.constraint.ConstraintSet$Constraint) this.mConstraints.get(Integer.valueOf(p4)));
            switch (p5) {
                case 1:
                    v0_2.leftToRight = -1;
                    v0_2.leftToLeft = -1;
                    v0_2.leftMargin = -1;
                    v0_2.goneLeftMargin = -1;
                    break;
                case 2:
                    v0_2.rightToRight = -1;
                    v0_2.rightToLeft = -1;
                    v0_2.rightMargin = -1;
                    v0_2.goneRightMargin = -1;
                    break;
                case 3:
                    v0_2.topToBottom = -1;
                    v0_2.topToTop = -1;
                    v0_2.topMargin = -1;
                    v0_2.goneTopMargin = -1;
                    break;
                case 4:
                    v0_2.bottomToTop = -1;
                    v0_2.bottomToBottom = -1;
                    v0_2.bottomMargin = -1;
                    v0_2.goneBottomMargin = -1;
                    break;
                case 5:
                    v0_2.baselineToBaseline = -1;
                    break;
                case 6:
                    v0_2.startToEnd = -1;
                    v0_2.startToStart = -1;
                    v0_2.startMargin = -1;
                    v0_2.goneStartMargin = -1;
                    break;
                case 7:
                    v0_2.endToStart = -1;
                    v0_2.endToEnd = -1;
                    v0_2.endMargin = -1;
                    v0_2.goneEndMargin = -1;
                    break;
                default:
                    throw new IllegalArgumentException("unknown constraint");
            }
        }
        return;
    }

    public void clone(android.content.Context p3, int p4)
    {
        this.clone(((android.support.constraint.ConstraintLayout) android.view.LayoutInflater.from(p3).inflate(p4, 0)));
        return;
    }

    public void clone(android.support.constraint.ConstraintLayout p13)
    {
        int v0 = p13.getChildCount();
        this.mConstraints.clear();
        int v1_0 = 0;
        while (v1_0 < v0) {
            android.view.View v2 = p13.getChildAt(v1_0);
            android.support.constraint.ConstraintLayout$LayoutParams v3_1 = ((android.support.constraint.ConstraintLayout$LayoutParams) v2.getLayoutParams());
            int v4 = v2.getId();
            if (v4 != -1) {
                if (!this.mConstraints.containsKey(Integer.valueOf(v4))) {
                    this.mConstraints.put(Integer.valueOf(v4), new android.support.constraint.ConstraintSet$Constraint(0));
                }
                android.support.constraint.ConstraintSet$Constraint v5_8 = ((android.support.constraint.ConstraintSet$Constraint) this.mConstraints.get(Integer.valueOf(v4)));
                android.support.constraint.ConstraintSet$Constraint.access$100(v5_8, v4, v3_1);
                v5_8.visibility = v2.getVisibility();
                if (android.os.Build$VERSION.SDK_INT >= 17) {
                    v5_8.alpha = v2.getAlpha();
                    v5_8.rotation = v2.getRotation();
                    v5_8.rotationX = v2.getRotationX();
                    v5_8.rotationY = v2.getRotationY();
                    v5_8.scaleX = v2.getScaleX();
                    v5_8.scaleY = v2.getScaleY();
                    android.support.constraint.Barrier v6_12 = v2.getPivotX();
                    int v7_4 = v2.getPivotY();
                    if ((((double) v6_12) != 0) || (((double) v7_4) != 0)) {
                        v5_8.transformPivotX = v6_12;
                        v5_8.transformPivotY = v7_4;
                    }
                    v5_8.translationX = v2.getTranslationX();
                    v5_8.translationY = v2.getTranslationY();
                    if (android.os.Build$VERSION.SDK_INT >= 21) {
                        v5_8.translationZ = v2.getTranslationZ();
                        if (v5_8.applyElevation) {
                            v5_8.elevation = v2.getElevation();
                        }
                    }
                }
                if ((v2 instanceof android.support.constraint.Barrier)) {
                    android.support.constraint.Barrier v6_15 = ((android.support.constraint.Barrier) v2);
                    v5_8.mBarrierAllowsGoneWidgets = v6_15.allowsGoneWidget();
                    v5_8.mReferenceIds = v6_15.getReferencedIds();
                    v5_8.mBarrierDirection = v6_15.getType();
                }
                v1_0++;
            } else {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
        }
        return;
    }

    public void clone(android.support.constraint.ConstraintSet p5)
    {
        this.mConstraints.clear();
        java.util.Iterator v0_3 = p5.mConstraints.keySet().iterator();
        while (v0_3.hasNext()) {
            Integer v1_1 = ((Integer) v0_3.next());
            this.mConstraints.put(v1_1, ((android.support.constraint.ConstraintSet$Constraint) p5.mConstraints.get(v1_1)).clone());
        }
        return;
    }

    public void clone(android.support.constraint.Constraints p10)
    {
        int v0 = p10.getChildCount();
        this.mConstraints.clear();
        int v1_1 = 0;
        while (v1_1 < v0) {
            android.view.View v2 = p10.getChildAt(v1_1);
            android.support.constraint.Constraints$LayoutParams v3_1 = ((android.support.constraint.Constraints$LayoutParams) v2.getLayoutParams());
            int v4 = v2.getId();
            if (v4 != -1) {
                if (!this.mConstraints.containsKey(Integer.valueOf(v4))) {
                    this.mConstraints.put(Integer.valueOf(v4), new android.support.constraint.ConstraintSet$Constraint(0));
                }
                android.support.constraint.ConstraintSet$Constraint v5_6 = ((android.support.constraint.ConstraintSet$Constraint) this.mConstraints.get(Integer.valueOf(v4)));
                if ((v2 instanceof android.support.constraint.ConstraintHelper)) {
                    android.support.constraint.ConstraintSet$Constraint.access$200(v5_6, ((android.support.constraint.ConstraintHelper) v2), v4, v3_1);
                }
                android.support.constraint.ConstraintSet$Constraint.access$300(v5_6, v4, v3_1);
                v1_1++;
            } else {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
        }
        return;
    }

    public void connect(int p9, int p10, int p11, int p12)
    {
        if (!this.mConstraints.containsKey(Integer.valueOf(p9))) {
            this.mConstraints.put(Integer.valueOf(p9), new android.support.constraint.ConstraintSet$Constraint(0));
        }
        android.support.constraint.ConstraintSet$Constraint v0_3 = ((android.support.constraint.ConstraintSet$Constraint) this.mConstraints.get(Integer.valueOf(p9)));
        switch (p10) {
            case 1:
                if (p12 != 1) {
                    if (p12 != 2) {
                        String v2_9 = new StringBuilder();
                        v2_9.append("left to ");
                        v2_9.append(this.sideToString(p12));
                        v2_9.append(" undefined");
                        throw new IllegalArgumentException(v2_9.toString());
                    } else {
                        v0_3.leftToRight = p11;
                        v0_3.leftToLeft = -1;
                    }
                } else {
                    v0_3.leftToLeft = p11;
                    v0_3.leftToRight = -1;
                }
                break;
            case 2:
                if (p12 != 1) {
                    if (p12 != 2) {
                        String v2_6 = new StringBuilder();
                        v2_6.append("right to ");
                        v2_6.append(this.sideToString(p12));
                        v2_6.append(" undefined");
                        throw new IllegalArgumentException(v2_6.toString());
                    } else {
                        v0_3.rightToRight = p11;
                        v0_3.rightToLeft = -1;
                    }
                } else {
                    v0_3.rightToLeft = p11;
                    v0_3.rightToRight = -1;
                }
                break;
            case 3:
                if (p12 != 3) {
                    if (p12 != 4) {
                        String v2_3 = new StringBuilder();
                        v2_3.append("right to ");
                        v2_3.append(this.sideToString(p12));
                        v2_3.append(" undefined");
                        throw new IllegalArgumentException(v2_3.toString());
                    } else {
                        v0_3.topToBottom = p11;
                        v0_3.topToTop = -1;
                        v0_3.baselineToBaseline = -1;
                    }
                } else {
                    v0_3.topToTop = p11;
                    v0_3.topToBottom = -1;
                    v0_3.baselineToBaseline = -1;
                }
                break;
            case 4:
                if (p12 != 4) {
                    if (p12 != 3) {
                        String v2_26 = new StringBuilder();
                        v2_26.append("right to ");
                        v2_26.append(this.sideToString(p12));
                        v2_26.append(" undefined");
                        throw new IllegalArgumentException(v2_26.toString());
                    } else {
                        v0_3.bottomToTop = p11;
                        v0_3.bottomToBottom = -1;
                        v0_3.baselineToBaseline = -1;
                    }
                } else {
                    v0_3.bottomToBottom = p11;
                    v0_3.bottomToTop = -1;
                    v0_3.baselineToBaseline = -1;
                }
                break;
            case 5:
                if (p12 != 5) {
                    String v2_22 = new StringBuilder();
                    v2_22.append("right to ");
                    v2_22.append(this.sideToString(p12));
                    v2_22.append(" undefined");
                    throw new IllegalArgumentException(v2_22.toString());
                } else {
                    v0_3.baselineToBaseline = p11;
                    v0_3.bottomToBottom = -1;
                    v0_3.bottomToTop = -1;
                    v0_3.topToTop = -1;
                    v0_3.topToBottom = -1;
                }
                break;
            case 6:
                if (p12 != 6) {
                    if (p12 != 7) {
                        String v2_19 = new StringBuilder();
                        v2_19.append("right to ");
                        v2_19.append(this.sideToString(p12));
                        v2_19.append(" undefined");
                        throw new IllegalArgumentException(v2_19.toString());
                    } else {
                        v0_3.startToEnd = p11;
                        v0_3.startToStart = -1;
                    }
                } else {
                    v0_3.startToStart = p11;
                    v0_3.startToEnd = -1;
                }
                break;
            case 7:
                if (p12 != 7) {
                    if (p12 != 6) {
                        String v2_16 = new StringBuilder();
                        v2_16.append("right to ");
                        v2_16.append(this.sideToString(p12));
                        v2_16.append(" undefined");
                        throw new IllegalArgumentException(v2_16.toString());
                    } else {
                        v0_3.endToStart = p11;
                        v0_3.endToEnd = -1;
                    }
                } else {
                    v0_3.endToEnd = p11;
                    v0_3.endToStart = -1;
                }
                break;
            default:
                String v2_12 = new StringBuilder();
                v2_12.append(this.sideToString(p10));
                v2_12.append(" to ");
                v2_12.append(this.sideToString(p12));
                v2_12.append(" unknown");
                throw new IllegalArgumentException(v2_12.toString());
        }
        return;
    }

    public void connect(int p9, int p10, int p11, int p12, int p13)
    {
        if (!this.mConstraints.containsKey(Integer.valueOf(p9))) {
            this.mConstraints.put(Integer.valueOf(p9), new android.support.constraint.ConstraintSet$Constraint(0));
        }
        android.support.constraint.ConstraintSet$Constraint v0_3 = ((android.support.constraint.ConstraintSet$Constraint) this.mConstraints.get(Integer.valueOf(p9)));
        switch (p10) {
            case 1:
                if (p12 != 1) {
                    if (p12 != 2) {
                        String v2_9 = new StringBuilder();
                        v2_9.append("Left to ");
                        v2_9.append(this.sideToString(p12));
                        v2_9.append(" undefined");
                        throw new IllegalArgumentException(v2_9.toString());
                    } else {
                        v0_3.leftToRight = p11;
                        v0_3.leftToLeft = -1;
                    }
                } else {
                    v0_3.leftToLeft = p11;
                    v0_3.leftToRight = -1;
                }
                v0_3.leftMargin = p13;
                break;
            case 2:
                if (p12 != 1) {
                    if (p12 != 2) {
                        String v2_6 = new StringBuilder();
                        v2_6.append("right to ");
                        v2_6.append(this.sideToString(p12));
                        v2_6.append(" undefined");
                        throw new IllegalArgumentException(v2_6.toString());
                    } else {
                        v0_3.rightToRight = p11;
                        v0_3.rightToLeft = -1;
                    }
                } else {
                    v0_3.rightToLeft = p11;
                    v0_3.rightToRight = -1;
                }
                v0_3.rightMargin = p13;
                break;
            case 3:
                if (p12 != 3) {
                    if (p12 != 4) {
                        String v2_3 = new StringBuilder();
                        v2_3.append("right to ");
                        v2_3.append(this.sideToString(p12));
                        v2_3.append(" undefined");
                        throw new IllegalArgumentException(v2_3.toString());
                    } else {
                        v0_3.topToBottom = p11;
                        v0_3.topToTop = -1;
                        v0_3.baselineToBaseline = -1;
                    }
                } else {
                    v0_3.topToTop = p11;
                    v0_3.topToBottom = -1;
                    v0_3.baselineToBaseline = -1;
                }
                v0_3.topMargin = p13;
                break;
            case 4:
                if (p12 != 4) {
                    if (p12 != 3) {
                        String v2_26 = new StringBuilder();
                        v2_26.append("right to ");
                        v2_26.append(this.sideToString(p12));
                        v2_26.append(" undefined");
                        throw new IllegalArgumentException(v2_26.toString());
                    } else {
                        v0_3.bottomToTop = p11;
                        v0_3.bottomToBottom = -1;
                        v0_3.baselineToBaseline = -1;
                    }
                } else {
                    v0_3.bottomToBottom = p11;
                    v0_3.bottomToTop = -1;
                    v0_3.baselineToBaseline = -1;
                }
                v0_3.bottomMargin = p13;
                break;
            case 5:
                if (p12 != 5) {
                    String v2_22 = new StringBuilder();
                    v2_22.append("right to ");
                    v2_22.append(this.sideToString(p12));
                    v2_22.append(" undefined");
                    throw new IllegalArgumentException(v2_22.toString());
                } else {
                    v0_3.baselineToBaseline = p11;
                    v0_3.bottomToBottom = -1;
                    v0_3.bottomToTop = -1;
                    v0_3.topToTop = -1;
                    v0_3.topToBottom = -1;
                }
                break;
            case 6:
                if (p12 != 6) {
                    if (p12 != 7) {
                        String v2_19 = new StringBuilder();
                        v2_19.append("right to ");
                        v2_19.append(this.sideToString(p12));
                        v2_19.append(" undefined");
                        throw new IllegalArgumentException(v2_19.toString());
                    } else {
                        v0_3.startToEnd = p11;
                        v0_3.startToStart = -1;
                    }
                } else {
                    v0_3.startToStart = p11;
                    v0_3.startToEnd = -1;
                }
                v0_3.startMargin = p13;
                break;
            case 7:
                if (p12 != 7) {
                    if (p12 != 6) {
                        String v2_16 = new StringBuilder();
                        v2_16.append("right to ");
                        v2_16.append(this.sideToString(p12));
                        v2_16.append(" undefined");
                        throw new IllegalArgumentException(v2_16.toString());
                    } else {
                        v0_3.endToStart = p11;
                        v0_3.endToEnd = -1;
                    }
                } else {
                    v0_3.endToEnd = p11;
                    v0_3.endToStart = -1;
                }
                v0_3.endMargin = p13;
                break;
            default:
                String v2_12 = new StringBuilder();
                v2_12.append(this.sideToString(p10));
                v2_12.append(" to ");
                v2_12.append(this.sideToString(p12));
                v2_12.append(" unknown");
                throw new IllegalArgumentException(v2_12.toString());
        }
        return;
    }

    public void constrainCircle(int p2, int p3, int p4, float p5)
    {
        android.support.constraint.ConstraintSet$Constraint v0 = this.get(p2);
        v0.circleConstraint = p3;
        v0.circleRadius = p4;
        v0.circleAngle = p5;
        return;
    }

    public void constrainDefaultHeight(int p2, int p3)
    {
        this.get(p2).heightDefault = p3;
        return;
    }

    public void constrainDefaultWidth(int p2, int p3)
    {
        this.get(p2).widthDefault = p3;
        return;
    }

    public void constrainHeight(int p2, int p3)
    {
        this.get(p2).mHeight = p3;
        return;
    }

    public void constrainMaxHeight(int p2, int p3)
    {
        this.get(p2).heightMax = p3;
        return;
    }

    public void constrainMaxWidth(int p2, int p3)
    {
        this.get(p2).widthMax = p3;
        return;
    }

    public void constrainMinHeight(int p2, int p3)
    {
        this.get(p2).heightMin = p3;
        return;
    }

    public void constrainMinWidth(int p2, int p3)
    {
        this.get(p2).widthMin = p3;
        return;
    }

    public void constrainPercentHeight(int p2, float p3)
    {
        this.get(p2).heightPercent = p3;
        return;
    }

    public void constrainPercentWidth(int p2, float p3)
    {
        this.get(p2).widthPercent = p3;
        return;
    }

    public void constrainWidth(int p2, int p3)
    {
        this.get(p2).mWidth = p3;
        return;
    }

    public void create(int p3, int p4)
    {
        android.support.constraint.ConstraintSet$Constraint v0 = this.get(p3);
        v0.mIsGuideline = 1;
        v0.orientation = p4;
        return;
    }

    public varargs void createBarrier(int p3, int p4, int[] p5)
    {
        android.support.constraint.ConstraintSet$Constraint v0 = this.get(p3);
        v0.mHelperType = 1;
        v0.mBarrierDirection = p4;
        v0.mIsGuideline = 0;
        v0.mReferenceIds = p5;
        return;
    }

    public void createHorizontalChain(int p11, int p12, int p13, int p14, int[] p15, float[] p16, int p17)
    {
        this.createHorizontalChain(p11, p12, p13, p14, p15, p16, p17, 1, 2);
        return;
    }

    public void createHorizontalChainRtl(int p11, int p12, int p13, int p14, int[] p15, float[] p16, int p17)
    {
        this.createHorizontalChain(p11, p12, p13, p14, p15, p16, p17, 6, 7);
        return;
    }

    public void createVerticalChain(int p14, int p15, int p16, int p17, int[] p18, float[] p19, int p20)
    {
        int[] v7 = p18;
        if (p18.length >= 2) {
            if ((p19 == null) || (p19.length == p18.length)) {
                if (p19 != null) {
                    this.get(p18[0]).verticalWeight = p19[0];
                }
                this.get(p18[0]).verticalChainStyle = p20;
                this.connect(p18[0], 3, p14, p15, 0);
                int v0_3 = 1;
                while(true) {
                    int v11 = v0_3;
                    if (v11 >= p18.length) {
                        break;
                    }
                    this.connect(p18[v11], 3, p18[(v11 - 1)], 4, 0);
                    this.connect(v7[(v11 - 1)], 4, v7[v11], 3, 0);
                    if (p19 != null) {
                        this.get(p18[v11]).verticalWeight = p19[v11];
                    }
                    v0_3 = (v11 + 1);
                }
                this.connect(p18[(p18.length - 1)], 4, p16, p17, 0);
                return;
            } else {
                throw new IllegalArgumentException("must have 2 or more widgets in a chain");
            }
        } else {
            throw new IllegalArgumentException("must have 2 or more widgets in a chain");
        }
    }

    public boolean getApplyElevation(int p2)
    {
        return this.get(p2).applyElevation;
    }

    public android.support.constraint.ConstraintSet$Constraint getParameters(int p2)
    {
        return this.get(p2);
    }

    public void load(android.content.Context p9, int p10)
    {
        android.content.res.XmlResourceParser v1 = p9.getResources().getXml(p10);
        int v3 = 0;
        try {
            int v4_2 = v1.getEventType();
        } catch (int v4_1) {
            v4_1.printStackTrace();
            return;
        } catch (int v4_0) {
            v4_0.printStackTrace();
            return;
        }
        while (v4_2 != 1) {
            if (v4_2 == 0) {
                v1.getName();
            } else {
                switch (v4_2) {
                    case 2:
                        v3 = v1.getName();
                        android.support.constraint.ConstraintSet$Constraint v6_2 = this.fillFromAttributeList(p9, android.util.Xml.asAttributeSet(v1));
                        if (v3.equalsIgnoreCase("Guideline")) {
                            v6_2.mIsGuideline = 1;
                        }
                        this.mConstraints.put(Integer.valueOf(v6_2.mViewId), v6_2);
                    case 3:
                        break;
                    default:
                }
            }
            v4_2 = v1.next();
        }
    }

    public void removeFromHorizontalChain(int p12)
    {
        if (this.mConstraints.containsKey(Integer.valueOf(p12))) {
            android.support.constraint.ConstraintSet$Constraint v6_1 = ((android.support.constraint.ConstraintSet$Constraint) this.mConstraints.get(Integer.valueOf(p12)));
            int v7 = v6_1.leftToRight;
            int v8 = v6_1.rightToLeft;
            if ((v7 == -1) && (v8 == -1)) {
                int v9 = v6_1.startToEnd;
                int v10 = v6_1.endToStart;
                if ((v9 != -1) || (v10 != -1)) {
                    if ((v9 == -1) || (v10 == -1)) {
                        if ((v7 != -1) || (v10 != -1)) {
                            if (v6_1.rightToRight == -1) {
                                if (v6_1.leftToLeft != -1) {
                                    this.connect(v10, 6, v6_1.leftToLeft, 6, 0);
                                }
                            } else {
                                this.connect(v7, 7, v6_1.rightToRight, 7, 0);
                            }
                        }
                    } else {
                        this.connect(v9, 7, v10, 6, 0);
                        this.connect(v10, 6, v7, 7, 0);
                    }
                }
                this.clear(p12, 6);
                this.clear(p12, 7);
            } else {
                if ((v7 == -1) || (v8 == -1)) {
                    if ((v7 != -1) || (v8 != -1)) {
                        if (v6_1.rightToRight == -1) {
                            if (v6_1.leftToLeft != -1) {
                                this.connect(v8, 1, v6_1.leftToLeft, 1, 0);
                            }
                        } else {
                            this.connect(v7, 2, v6_1.rightToRight, 2, 0);
                        }
                    }
                } else {
                    this.connect(v7, 2, v8, 1, 0);
                    this.connect(v8, 1, v7, 2, 0);
                }
                this.clear(p12, 1);
                this.clear(p12, 2);
            }
        }
        return;
    }

    public void removeFromVerticalChain(int p10)
    {
        if (this.mConstraints.containsKey(Integer.valueOf(p10))) {
            int v0_2 = ((android.support.constraint.ConstraintSet$Constraint) this.mConstraints.get(Integer.valueOf(p10)));
            int v7 = v0_2.topToBottom;
            int v8 = v0_2.bottomToTop;
            if ((v7 != -1) || (v8 != -1)) {
                if ((v7 == -1) || (v8 == -1)) {
                    if ((v7 != -1) || (v8 != -1)) {
                        if (v0_2.bottomToBottom == -1) {
                            if (v0_2.topToTop != -1) {
                                this.connect(v8, 3, v0_2.topToTop, 3, 0);
                            }
                        } else {
                            this.connect(v7, 4, v0_2.bottomToBottom, 4, 0);
                        }
                    }
                } else {
                    this.connect(v7, 4, v8, 3, 0);
                    this.connect(v8, 3, v7, 4, 0);
                }
            }
        }
        this.clear(p10, 3);
        this.clear(p10, 4);
        return;
    }

    public void setAlpha(int p2, float p3)
    {
        this.get(p2).alpha = p3;
        return;
    }

    public void setApplyElevation(int p2, boolean p3)
    {
        this.get(p2).applyElevation = p3;
        return;
    }

    public void setBarrierType(int p1, int p2)
    {
        return;
    }

    public void setDimensionRatio(int p2, String p3)
    {
        this.get(p2).dimensionRatio = p3;
        return;
    }

    public void setElevation(int p3, float p4)
    {
        this.get(p3).elevation = p4;
        this.get(p3).applyElevation = 1;
        return;
    }

    public void setGoneMargin(int p4, int p5, int p6)
    {
        android.support.constraint.ConstraintSet$Constraint v0 = this.get(p4);
        switch (p5) {
            case 1:
                v0.goneLeftMargin = p6;
                break;
            case 2:
                v0.goneRightMargin = p6;
                break;
            case 3:
                v0.goneTopMargin = p6;
                break;
            case 4:
                v0.goneBottomMargin = p6;
                break;
            case 5:
                throw new IllegalArgumentException("baseline does not support margins");
                break;
            case 6:
                v0.goneStartMargin = p6;
                break;
            case 7:
                v0.goneEndMargin = p6;
                break;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
        return;
    }

    public void setGuidelineBegin(int p3, int p4)
    {
        this.get(p3).guideBegin = p4;
        this.get(p3).guideEnd = -1;
        this.get(p3).guidePercent = -1082130432;
        return;
    }

    public void setGuidelineEnd(int p3, int p4)
    {
        this.get(p3).guideEnd = p4;
        this.get(p3).guideBegin = -1;
        this.get(p3).guidePercent = -1082130432;
        return;
    }

    public void setGuidelinePercent(int p3, float p4)
    {
        this.get(p3).guidePercent = p4;
        this.get(p3).guideEnd = -1;
        this.get(p3).guideBegin = -1;
        return;
    }

    public void setHorizontalBias(int p2, float p3)
    {
        this.get(p2).horizontalBias = p3;
        return;
    }

    public void setHorizontalChainStyle(int p2, int p3)
    {
        this.get(p2).horizontalChainStyle = p3;
        return;
    }

    public void setHorizontalWeight(int p2, float p3)
    {
        this.get(p2).horizontalWeight = p3;
        return;
    }

    public void setMargin(int p4, int p5, int p6)
    {
        android.support.constraint.ConstraintSet$Constraint v0 = this.get(p4);
        switch (p5) {
            case 1:
                v0.leftMargin = p6;
                break;
            case 2:
                v0.rightMargin = p6;
                break;
            case 3:
                v0.topMargin = p6;
                break;
            case 4:
                v0.bottomMargin = p6;
                break;
            case 5:
                throw new IllegalArgumentException("baseline does not support margins");
                break;
            case 6:
                v0.startMargin = p6;
                break;
            case 7:
                v0.endMargin = p6;
                break;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
        return;
    }

    public void setRotation(int p2, float p3)
    {
        this.get(p2).rotation = p3;
        return;
    }

    public void setRotationX(int p2, float p3)
    {
        this.get(p2).rotationX = p3;
        return;
    }

    public void setRotationY(int p2, float p3)
    {
        this.get(p2).rotationY = p3;
        return;
    }

    public void setScaleX(int p2, float p3)
    {
        this.get(p2).scaleX = p3;
        return;
    }

    public void setScaleY(int p2, float p3)
    {
        this.get(p2).scaleY = p3;
        return;
    }

    public void setTransformPivot(int p2, float p3, float p4)
    {
        android.support.constraint.ConstraintSet$Constraint v0 = this.get(p2);
        v0.transformPivotY = p4;
        v0.transformPivotX = p3;
        return;
    }

    public void setTransformPivotX(int p2, float p3)
    {
        this.get(p2).transformPivotX = p3;
        return;
    }

    public void setTransformPivotY(int p2, float p3)
    {
        this.get(p2).transformPivotY = p3;
        return;
    }

    public void setTranslation(int p2, float p3, float p4)
    {
        android.support.constraint.ConstraintSet$Constraint v0 = this.get(p2);
        v0.translationX = p3;
        v0.translationY = p4;
        return;
    }

    public void setTranslationX(int p2, float p3)
    {
        this.get(p2).translationX = p3;
        return;
    }

    public void setTranslationY(int p2, float p3)
    {
        this.get(p2).translationY = p3;
        return;
    }

    public void setTranslationZ(int p2, float p3)
    {
        this.get(p2).translationZ = p3;
        return;
    }

    public void setVerticalBias(int p2, float p3)
    {
        this.get(p2).verticalBias = p3;
        return;
    }

    public void setVerticalChainStyle(int p2, int p3)
    {
        this.get(p2).verticalChainStyle = p3;
        return;
    }

    public void setVerticalWeight(int p2, float p3)
    {
        this.get(p2).verticalWeight = p3;
        return;
    }

    public void setVisibility(int p2, int p3)
    {
        this.get(p2).visibility = p3;
        return;
    }
}
