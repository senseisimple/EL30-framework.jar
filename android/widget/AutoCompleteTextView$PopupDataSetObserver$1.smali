.class Landroid/widget/AutoCompleteTextView$PopupDataSetObserver$1;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;->onChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;


# direct methods
.method constructor <init>(Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;)V
    .registers 2
    .parameter

    .prologue
    .line 1722
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver$1;->this$1:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1724
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver$1;->this$1:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    iget-object v1, v1, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;->this$0:Landroid/widget/AutoCompleteTextView;

    #getter for: Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v1}, Landroid/widget/AutoCompleteTextView;->access$1600(Landroid/widget/AutoCompleteTextView;)Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1725
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_15

    .line 1726
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver$1;->this$1:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    iget-object v1, v1, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    #calls: Landroid/widget/AutoCompleteTextView;->updateDropDownForFilter(I)V
    invoke-static {v1, v2}, Landroid/widget/AutoCompleteTextView;->access$1700(Landroid/widget/AutoCompleteTextView;I)V

    .line 1728
    :cond_15
    return-void
.end method
