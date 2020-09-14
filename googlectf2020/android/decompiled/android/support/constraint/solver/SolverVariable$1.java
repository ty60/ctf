package android.support.constraint.solver;
synthetic class SolverVariable$1 {
    static final synthetic int[] $SwitchMap$android$support$constraint$solver$SolverVariable$Type;

    static SolverVariable$1()
    {
        NoSuchFieldError v0_5 = new int[android.support.constraint.solver.SolverVariable$Type.values().length];
        android.support.constraint.solver.SolverVariable$1.$SwitchMap$android$support$constraint$solver$SolverVariable$Type = v0_5;
        try {
            android.support.constraint.solver.SolverVariable$Type.UNRESTRICTED.ordinal()[int v1_9] = 1;
            try {
                android.support.constraint.solver.SolverVariable$Type.CONSTANT.ordinal()[int v1_1] = 2;
                try {
                    android.support.constraint.solver.SolverVariable$Type.SLACK.ordinal()[int v1_3] = 3;
                    try {
                        android.support.constraint.solver.SolverVariable$Type.ERROR.ordinal()[int v1_5] = 4;
                        try {
                            android.support.constraint.solver.SolverVariable$Type.UNKNOWN.ordinal()[int v1_7] = 5;
                        } catch (NoSuchFieldError v0) {
                        }
                        return;
                    } catch (NoSuchFieldError v0) {
                    }
                } catch (NoSuchFieldError v0) {
                }
            } catch (NoSuchFieldError v0) {
            }
        } catch (NoSuchFieldError v0) {
        }
    }
}
