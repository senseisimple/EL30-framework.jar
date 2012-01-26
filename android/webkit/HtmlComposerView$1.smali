.class Landroid/webkit/HtmlComposerView$1;
.super Ljava/lang/Object;
.source "HtmlComposerView.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/HtmlComposerView;->showSmileyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HtmlComposerView;


# direct methods
.method constructor <init>(Landroid/webkit/HtmlComposerView;)V
    .registers 2
    .parameter

    .prologue
    .line 851
    iput-object p1, p0, Landroid/webkit/HtmlComposerView$1;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 7
    .parameter "view"
    .parameter "data"
    .parameter "textRepresentation"

    .prologue
    .line 853
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_1d

    .line 854
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 855
    .local v0, img:Landroid/graphics/drawable/Drawable;
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 856
    const/4 v1, 0x1

    .line 858
    .end local v0           #img:Landroid/graphics/drawable/Drawable;
    :goto_1c
    return v1

    .restart local p1
    .restart local p2
    :cond_1d
    const/4 v1, 0x0

    goto :goto_1c
.end method
