.class Landroid/widget/AutoCompleteTextView$DropDownListView;
.super Landroid/widget/ListView;
.source "AutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownListView"
.end annotation


# instance fields
.field private mListSelectionHidden:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 1592
    const/4 v0, 0x0

    const v1, 0x101006d

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1593
    return-void
.end method

.method static synthetic access$602(Landroid/widget/AutoCompleteTextView$DropDownListView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1555
    iput-boolean p1, p0, Landroid/widget/AutoCompleteTextView$DropDownListView;->mListSelectionHidden:Z

    return p1
.end method


# virtual methods
.method public hasFocus()Z
    .registers 2

    .prologue
    .line 1646
    const/4 v0, 0x1

    return v0
.end method

.method public hasWindowFocus()Z
    .registers 2

    .prologue
    .line 1626
    const/4 v0, 0x1

    return v0
.end method

.method public isFocused()Z
    .registers 2

    .prologue
    .line 1636
    const/4 v0, 0x1

    return v0
.end method

.method public isInTouchMode()Z
    .registers 2

    .prologue
    .line 1616
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView$DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_a

    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method obtainView(I[Z)Landroid/view/View;
    .registers 7
    .parameter "position"
    .parameter "isScrap"

    .prologue
    .line 1604
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1606
    .local v1, view:Landroid/view/View;
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_10

    .line 1607
    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 1610
    :cond_10
    return-object v1
.end method

.method protected onCreateDrawableState(I)[I
    .registers 3
    .parameter "extraSpace"

    .prologue
    .line 1650
    invoke-super {p0, p1}, Landroid/widget/ListView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1662
    .local v0, res:[I
    return-object v0
.end method
