.class public Landroid/preference/SeekBarPreference;
.super Landroid/preference/DialogPreference;
.source "SeekBarPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SeekBarPreference"


# instance fields
.field private mMyIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const v0, 0x1090064

    invoke-virtual {p0, v0}, Landroid/preference/SeekBarPreference;->setDialogLayoutResource(I)V

    .line 39
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Landroid/preference/SeekBarPreference;->setPositiveButtonText(I)V

    .line 40
    const/high16 v0, 0x104

    invoke-virtual {p0, v0}, Landroid/preference/SeekBarPreference;->setNegativeButtonText(I)V

    .line 43
    invoke-virtual {p0}, Landroid/preference/SeekBarPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/SeekBarPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/SeekBarPreference;->setDialogIcon(Landroid/graphics/drawable/Drawable;)V

    .line 45
    return-void
.end method

.method protected static getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;
    .registers 2
    .parameter "dialogView"

    .prologue
    .line 60
    const v0, 0x1020237

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/SeekBar;

    return-object p0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 51
    const v1, 0x1020006

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 52
    .local v0, iconView:Landroid/widget/ImageView;
    iget-object v1, p0, Landroid/preference/SeekBarPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_16

    .line 53
    iget-object v1, p0, Landroid/preference/SeekBarPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    :goto_15
    return-void

    .line 55
    :cond_16
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_15
.end method
