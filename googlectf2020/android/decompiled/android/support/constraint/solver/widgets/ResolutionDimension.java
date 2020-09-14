package android.support.constraint.solver.widgets;
public class ResolutionDimension extends android.support.constraint.solver.widgets.ResolutionNode {
    float value;

    public ResolutionDimension()
    {
        this.value = 0;
        return;
    }

    public void remove()
    {
        this.state = 2;
        return;
    }

    public void reset()
    {
        super.reset();
        this.value = 0;
        return;
    }

    public void resolve(int p3)
    {
        if ((this.state == 0) || (this.value != ((float) p3))) {
            this.value = ((float) p3);
            if (this.state == 1) {
                this.invalidate();
            }
            this.didResolve();
        }
        return;
    }
}
