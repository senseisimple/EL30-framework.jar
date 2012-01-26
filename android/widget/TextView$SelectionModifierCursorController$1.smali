.class Landroid/widget/TextView$SelectionModifierCursorController$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView$SelectionModifierCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$SelectionModifierCursorController;


# direct methods
.method constructor <init>(Landroid/widget/TextView$SelectionModifierCursorController;)V
    .registers 2
    .parameter

    .prologue
    .line 8521
    iput-object p1, p0, Landroid/widget/TextView$SelectionModifierCursorController$1;->this$1:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 8523
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController$1;->this$1:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionModifierCursorController;->hide()V

    .line 8524
    return-void
.end method
