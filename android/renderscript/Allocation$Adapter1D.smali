.class public Landroid/renderscript/Allocation$Adapter1D;
.super Landroid/renderscript/BaseObj;
.source "Allocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Allocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Adapter1D"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/renderscript/Allocation;


# direct methods
.method constructor <init>(Landroid/renderscript/Allocation;ILandroid/renderscript/RenderScript;)V
    .registers 4
    .parameter
    .parameter "id"
    .parameter "rs"

    .prologue
    .line 157
    iput-object p1, p0, Landroid/renderscript/Allocation$Adapter1D;->this$0:Landroid/renderscript/Allocation;

    .line 158
    invoke-direct {p0, p3}, Landroid/renderscript/BaseObj;-><init>(Landroid/renderscript/RenderScript;)V

    .line 159
    iput p2, p0, Landroid/renderscript/BaseObj;->mID:I

    .line 160
    return-void
.end method


# virtual methods
.method public data([F)V
    .registers 4
    .parameter "d"

    .prologue
    .line 173
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 174
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v0, v1, p1}, Landroid/renderscript/RenderScript;->nAdapter1DData(I[F)V

    .line 175
    return-void
.end method

.method public data([I)V
    .registers 4
    .parameter "d"

    .prologue
    .line 168
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 169
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v0, v1, p1}, Landroid/renderscript/RenderScript;->nAdapter1DData(I[I)V

    .line 170
    return-void
.end method

.method public bridge synthetic destroy()V
    .registers 1

    .prologue
    .line 156
    invoke-super {p0}, Landroid/renderscript/BaseObj;->destroy()V

    return-void
.end method

.method public bridge synthetic getID()I
    .registers 2

    .prologue
    .line 156
    invoke-super {p0}, Landroid/renderscript/BaseObj;->getID()I

    move-result v0

    return v0
.end method

.method public setConstraint(Landroid/renderscript/Dimension;I)V
    .registers 6
    .parameter "dim"
    .parameter "value"

    .prologue
    .line 163
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 164
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    iget v2, p1, Landroid/renderscript/Dimension;->mID:I

    invoke-virtual {v0, v1, v2, p2}, Landroid/renderscript/RenderScript;->nAdapter1DSetConstraint(III)V

    .line 165
    return-void
.end method

.method public bridge synthetic setName(Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/renderscript/BaseObj;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public subData(II[F)V
    .registers 6
    .parameter "off"
    .parameter "count"
    .parameter "d"

    .prologue
    .line 183
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 184
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/renderscript/RenderScript;->nAdapter1DSubData(III[F)V

    .line 185
    return-void
.end method

.method public subData(II[I)V
    .registers 6
    .parameter "off"
    .parameter "count"
    .parameter "d"

    .prologue
    .line 178
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 179
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/renderscript/RenderScript;->nAdapter1DSubData(III[I)V

    .line 180
    return-void
.end method
