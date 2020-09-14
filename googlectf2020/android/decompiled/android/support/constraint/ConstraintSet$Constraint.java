package android.support.constraint;
 class ConstraintSet$Constraint {
    static final int UNSET = 255;
    public float alpha;
    public boolean applyElevation;
    public int baselineToBaseline;
    public int bottomMargin;
    public int bottomToBottom;
    public int bottomToTop;
    public float circleAngle;
    public int circleConstraint;
    public int circleRadius;
    public boolean constrainedHeight;
    public boolean constrainedWidth;
    public String dimensionRatio;
    public int editorAbsoluteX;
    public int editorAbsoluteY;
    public float elevation;
    public int endMargin;
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
    public int heightDefault;
    public int heightMax;
    public int heightMin;
    public float heightPercent;
    public float horizontalBias;
    public int horizontalChainStyle;
    public float horizontalWeight;
    public int leftMargin;
    public int leftToLeft;
    public int leftToRight;
    public boolean mBarrierAllowsGoneWidgets;
    public int mBarrierDirection;
    public int mHeight;
    public int mHelperType;
    boolean mIsGuideline;
    public String mReferenceIdString;
    public int[] mReferenceIds;
    int mViewId;
    public int mWidth;
    public int orientation;
    public int rightMargin;
    public int rightToLeft;
    public int rightToRight;
    public float rotation;
    public float rotationX;
    public float rotationY;
    public float scaleX;
    public float scaleY;
    public int startMargin;
    public int startToEnd;
    public int startToStart;
    public int topMargin;
    public int topToBottom;
    public int topToTop;
    public float transformPivotX;
    public float transformPivotY;
    public float translationX;
    public float translationY;
    public float translationZ;
    public float verticalBias;
    public int verticalChainStyle;
    public float verticalWeight;
    public int visibility;
    public int widthDefault;
    public int widthMax;
    public int widthMin;
    public float widthPercent;

    private ConstraintSet$Constraint()
    {
        this.mIsGuideline = 0;
        this.guideBegin = -1;
        this.guideEnd = -1;
        this.guidePercent = -1082130432;
        this.leftToLeft = -1;
        this.leftToRight = -1;
        this.rightToLeft = -1;
        this.rightToRight = -1;
        this.topToTop = -1;
        this.topToBottom = -1;
        this.bottomToTop = -1;
        this.bottomToBottom = -1;
        this.baselineToBaseline = -1;
        this.startToEnd = -1;
        this.startToStart = -1;
        this.endToStart = -1;
        this.endToEnd = -1;
        this.horizontalBias = 1056964608;
        this.verticalBias = 1056964608;
        this.dimensionRatio = 0;
        this.circleConstraint = -1;
        this.circleRadius = 0;
        this.circleAngle = 0;
        this.editorAbsoluteX = -1;
        this.editorAbsoluteY = -1;
        this.orientation = -1;
        this.leftMargin = -1;
        this.rightMargin = -1;
        this.topMargin = -1;
        this.bottomMargin = -1;
        this.endMargin = -1;
        this.startMargin = -1;
        this.visibility = 0;
        this.goneLeftMargin = -1;
        this.goneTopMargin = -1;
        this.goneRightMargin = -1;
        this.goneBottomMargin = -1;
        this.goneEndMargin = -1;
        this.goneStartMargin = -1;
        this.verticalWeight = 0;
        this.horizontalWeight = 0;
        this.horizontalChainStyle = 0;
        this.verticalChainStyle = 0;
        this.alpha = 1065353216;
        this.applyElevation = 0;
        this.elevation = 0;
        this.rotation = 0;
        this.rotationX = 0;
        this.rotationY = 0;
        this.scaleX = 1065353216;
        this.scaleY = 1065353216;
        this.transformPivotX = 2143289344;
        this.transformPivotY = 2143289344;
        this.translationX = 0;
        this.translationY = 0;
        this.translationZ = 0;
        this.constrainedWidth = 0;
        this.constrainedHeight = 0;
        this.widthDefault = 0;
        this.heightDefault = 0;
        this.widthMax = -1;
        this.heightMax = -1;
        this.widthMin = -1;
        this.heightMin = -1;
        this.widthPercent = 1065353216;
        this.heightPercent = 1065353216;
        this.mBarrierAllowsGoneWidgets = 0;
        this.mBarrierDirection = -1;
        this.mHelperType = -1;
        return;
    }

    synthetic ConstraintSet$Constraint(android.support.constraint.ConstraintSet$1 p1)
    {
        return;
    }

    static synthetic void access$100(android.support.constraint.ConstraintSet$Constraint p0, int p1, android.support.constraint.ConstraintLayout$LayoutParams p2)
    {
        p0.fillFrom(p1, p2);
        return;
    }

    static synthetic void access$200(android.support.constraint.ConstraintSet$Constraint p0, android.support.constraint.ConstraintHelper p1, int p2, android.support.constraint.Constraints$LayoutParams p3)
    {
        p0.fillFromConstraints(p1, p2, p3);
        return;
    }

    static synthetic void access$300(android.support.constraint.ConstraintSet$Constraint p0, int p1, android.support.constraint.Constraints$LayoutParams p2)
    {
        p0.fillFromConstraints(p1, p2);
        return;
    }

    private void fillFrom(int p3, android.support.constraint.ConstraintLayout$LayoutParams p4)
    {
        this.mViewId = p3;
        this.leftToLeft = p4.leftToLeft;
        this.leftToRight = p4.leftToRight;
        this.rightToLeft = p4.rightToLeft;
        this.rightToRight = p4.rightToRight;
        this.topToTop = p4.topToTop;
        this.topToBottom = p4.topToBottom;
        this.bottomToTop = p4.bottomToTop;
        this.bottomToBottom = p4.bottomToBottom;
        this.baselineToBaseline = p4.baselineToBaseline;
        this.startToEnd = p4.startToEnd;
        this.startToStart = p4.startToStart;
        this.endToStart = p4.endToStart;
        this.endToEnd = p4.endToEnd;
        this.horizontalBias = p4.horizontalBias;
        this.verticalBias = p4.verticalBias;
        this.dimensionRatio = p4.dimensionRatio;
        this.circleConstraint = p4.circleConstraint;
        this.circleRadius = p4.circleRadius;
        this.circleAngle = p4.circleAngle;
        this.editorAbsoluteX = p4.editorAbsoluteX;
        this.editorAbsoluteY = p4.editorAbsoluteY;
        this.orientation = p4.orientation;
        this.guidePercent = p4.guidePercent;
        this.guideBegin = p4.guideBegin;
        this.guideEnd = p4.guideEnd;
        this.mWidth = p4.width;
        this.mHeight = p4.height;
        this.leftMargin = p4.leftMargin;
        this.rightMargin = p4.rightMargin;
        this.topMargin = p4.topMargin;
        this.bottomMargin = p4.bottomMargin;
        this.verticalWeight = p4.verticalWeight;
        this.horizontalWeight = p4.horizontalWeight;
        this.verticalChainStyle = p4.verticalChainStyle;
        this.horizontalChainStyle = p4.horizontalChainStyle;
        this.constrainedWidth = p4.constrainedWidth;
        this.constrainedHeight = p4.constrainedHeight;
        this.widthDefault = p4.matchConstraintDefaultWidth;
        this.heightDefault = p4.matchConstraintDefaultHeight;
        this.constrainedWidth = p4.constrainedWidth;
        this.widthMax = p4.matchConstraintMaxWidth;
        this.heightMax = p4.matchConstraintMaxHeight;
        this.widthMin = p4.matchConstraintMinWidth;
        this.heightMin = p4.matchConstraintMinHeight;
        this.widthPercent = p4.matchConstraintPercentWidth;
        this.heightPercent = p4.matchConstraintPercentHeight;
        if (android.os.Build$VERSION.SDK_INT >= 17) {
            this.endMargin = p4.getMarginEnd();
            this.startMargin = p4.getMarginStart();
        }
        return;
    }

    private void fillFromConstraints(int p2, android.support.constraint.Constraints$LayoutParams p3)
    {
        this.fillFrom(p2, p3);
        this.alpha = p3.alpha;
        this.rotation = p3.rotation;
        this.rotationX = p3.rotationX;
        this.rotationY = p3.rotationY;
        this.scaleX = p3.scaleX;
        this.scaleY = p3.scaleY;
        this.transformPivotX = p3.transformPivotX;
        this.transformPivotY = p3.transformPivotY;
        this.translationX = p3.translationX;
        this.translationY = p3.translationY;
        this.translationZ = p3.translationZ;
        this.elevation = p3.elevation;
        this.applyElevation = p3.applyElevation;
        return;
    }

    private void fillFromConstraints(android.support.constraint.ConstraintHelper p3, int p4, android.support.constraint.Constraints$LayoutParams p5)
    {
        this.fillFromConstraints(p4, p5);
        if ((p3 instanceof android.support.constraint.Barrier)) {
            this.mHelperType = 1;
            this.mBarrierDirection = ((android.support.constraint.Barrier) p3).getType();
            this.mReferenceIds = ((android.support.constraint.Barrier) p3).getReferencedIds();
        }
        return;
    }

    public void applyTo(android.support.constraint.ConstraintLayout$LayoutParams p3)
    {
        p3.leftToLeft = this.leftToLeft;
        p3.leftToRight = this.leftToRight;
        p3.rightToLeft = this.rightToLeft;
        p3.rightToRight = this.rightToRight;
        p3.topToTop = this.topToTop;
        p3.topToBottom = this.topToBottom;
        p3.bottomToTop = this.bottomToTop;
        p3.bottomToBottom = this.bottomToBottom;
        p3.baselineToBaseline = this.baselineToBaseline;
        p3.startToEnd = this.startToEnd;
        p3.startToStart = this.startToStart;
        p3.endToStart = this.endToStart;
        p3.endToEnd = this.endToEnd;
        p3.leftMargin = this.leftMargin;
        p3.rightMargin = this.rightMargin;
        p3.topMargin = this.topMargin;
        p3.bottomMargin = this.bottomMargin;
        p3.goneStartMargin = this.goneStartMargin;
        p3.goneEndMargin = this.goneEndMargin;
        p3.horizontalBias = this.horizontalBias;
        p3.verticalBias = this.verticalBias;
        p3.circleConstraint = this.circleConstraint;
        p3.circleRadius = this.circleRadius;
        p3.circleAngle = this.circleAngle;
        p3.dimensionRatio = this.dimensionRatio;
        p3.editorAbsoluteX = this.editorAbsoluteX;
        p3.editorAbsoluteY = this.editorAbsoluteY;
        p3.verticalWeight = this.verticalWeight;
        p3.horizontalWeight = this.horizontalWeight;
        p3.verticalChainStyle = this.verticalChainStyle;
        p3.horizontalChainStyle = this.horizontalChainStyle;
        p3.constrainedWidth = this.constrainedWidth;
        p3.constrainedHeight = this.constrainedHeight;
        p3.matchConstraintDefaultWidth = this.widthDefault;
        p3.matchConstraintDefaultHeight = this.heightDefault;
        p3.matchConstraintMaxWidth = this.widthMax;
        p3.matchConstraintMaxHeight = this.heightMax;
        p3.matchConstraintMinWidth = this.widthMin;
        p3.matchConstraintMinHeight = this.heightMin;
        p3.matchConstraintPercentWidth = this.widthPercent;
        p3.matchConstraintPercentHeight = this.heightPercent;
        p3.orientation = this.orientation;
        p3.guidePercent = this.guidePercent;
        p3.guideBegin = this.guideBegin;
        p3.guideEnd = this.guideEnd;
        p3.width = this.mWidth;
        p3.height = this.mHeight;
        if (android.os.Build$VERSION.SDK_INT >= 17) {
            p3.setMarginStart(this.startMargin);
            p3.setMarginEnd(this.endMargin);
        }
        p3.validate();
        return;
    }

    public android.support.constraint.ConstraintSet$Constraint clone()
    {
        android.support.constraint.ConstraintSet$Constraint v0_1 = new android.support.constraint.ConstraintSet$Constraint();
        v0_1.mIsGuideline = this.mIsGuideline;
        v0_1.mWidth = this.mWidth;
        v0_1.mHeight = this.mHeight;
        v0_1.guideBegin = this.guideBegin;
        v0_1.guideEnd = this.guideEnd;
        v0_1.guidePercent = this.guidePercent;
        v0_1.leftToLeft = this.leftToLeft;
        v0_1.leftToRight = this.leftToRight;
        v0_1.rightToLeft = this.rightToLeft;
        v0_1.rightToRight = this.rightToRight;
        v0_1.topToTop = this.topToTop;
        v0_1.topToBottom = this.topToBottom;
        v0_1.bottomToTop = this.bottomToTop;
        v0_1.bottomToBottom = this.bottomToBottom;
        v0_1.baselineToBaseline = this.baselineToBaseline;
        v0_1.startToEnd = this.startToEnd;
        v0_1.startToStart = this.startToStart;
        v0_1.endToStart = this.endToStart;
        v0_1.endToEnd = this.endToEnd;
        v0_1.horizontalBias = this.horizontalBias;
        v0_1.verticalBias = this.verticalBias;
        v0_1.dimensionRatio = this.dimensionRatio;
        v0_1.editorAbsoluteX = this.editorAbsoluteX;
        v0_1.editorAbsoluteY = this.editorAbsoluteY;
        v0_1.horizontalBias = this.horizontalBias;
        v0_1.horizontalBias = this.horizontalBias;
        v0_1.horizontalBias = this.horizontalBias;
        v0_1.horizontalBias = this.horizontalBias;
        v0_1.horizontalBias = this.horizontalBias;
        v0_1.orientation = this.orientation;
        v0_1.leftMargin = this.leftMargin;
        v0_1.rightMargin = this.rightMargin;
        v0_1.topMargin = this.topMargin;
        v0_1.bottomMargin = this.bottomMargin;
        v0_1.endMargin = this.endMargin;
        v0_1.startMargin = this.startMargin;
        v0_1.visibility = this.visibility;
        v0_1.goneLeftMargin = this.goneLeftMargin;
        v0_1.goneTopMargin = this.goneTopMargin;
        v0_1.goneRightMargin = this.goneRightMargin;
        v0_1.goneBottomMargin = this.goneBottomMargin;
        v0_1.goneEndMargin = this.goneEndMargin;
        v0_1.goneStartMargin = this.goneStartMargin;
        v0_1.verticalWeight = this.verticalWeight;
        v0_1.horizontalWeight = this.horizontalWeight;
        v0_1.horizontalChainStyle = this.horizontalChainStyle;
        v0_1.verticalChainStyle = this.verticalChainStyle;
        v0_1.alpha = this.alpha;
        v0_1.applyElevation = this.applyElevation;
        v0_1.elevation = this.elevation;
        v0_1.rotation = this.rotation;
        v0_1.rotationX = this.rotationX;
        v0_1.rotationY = this.rotationY;
        v0_1.scaleX = this.scaleX;
        v0_1.scaleY = this.scaleY;
        v0_1.transformPivotX = this.transformPivotX;
        v0_1.transformPivotY = this.transformPivotY;
        v0_1.translationX = this.translationX;
        v0_1.translationY = this.translationY;
        v0_1.translationZ = this.translationZ;
        v0_1.constrainedWidth = this.constrainedWidth;
        v0_1.constrainedHeight = this.constrainedHeight;
        v0_1.widthDefault = this.widthDefault;
        v0_1.heightDefault = this.heightDefault;
        v0_1.widthMax = this.widthMax;
        v0_1.heightMax = this.heightMax;
        v0_1.widthMin = this.widthMin;
        v0_1.heightMin = this.heightMin;
        v0_1.widthPercent = this.widthPercent;
        v0_1.heightPercent = this.heightPercent;
        v0_1.mBarrierDirection = this.mBarrierDirection;
        v0_1.mHelperType = this.mHelperType;
        if (this.mReferenceIds != null) {
            v0_1.mReferenceIds = java.util.Arrays.copyOf(this.mReferenceIds, this.mReferenceIds.length);
        }
        v0_1.circleConstraint = this.circleConstraint;
        v0_1.circleRadius = this.circleRadius;
        v0_1.circleAngle = this.circleAngle;
        v0_1.mBarrierAllowsGoneWidgets = this.mBarrierAllowsGoneWidgets;
        return v0_1;
    }

    public bridge synthetic Object clone()
    {
        return this.clone();
    }
}
