.class Landroid/text/method/QwertyKeyListener$2;
.super Ljava/lang/Object;
.source "QwertyKeyListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/text/method/QwertyKeyListener;->showSmileyDialog(Landroid/view/View;Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/text/method/QwertyKeyListener;

.field final synthetic val$a:Landroid/widget/SimpleAdapter;


# direct methods
.method constructor <init>(Landroid/text/method/QwertyKeyListener;Landroid/widget/SimpleAdapter;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 625
    iput-object p1, p0, Landroid/text/method/QwertyKeyListener$2;->this$0:Landroid/text/method/QwertyKeyListener;

    iput-object p2, p0, Landroid/text/method/QwertyKeyListener$2;->val$a:Landroid/widget/SimpleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 627
    iget-object v3, p0, Landroid/text/method/QwertyKeyListener$2;->val$a:Landroid/widget/SimpleAdapter;

    invoke-virtual {v3, p2}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 629
    .local v0, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Landroid/text/method/QwertyKeyListener$2;->this$0:Landroid/text/method/QwertyKeyListener;

    #getter for: Landroid/text/method/QwertyKeyListener;->mText:Landroid/text/Editable;
    invoke-static {v3}, Landroid/text/method/QwertyKeyListener;->access$100(Landroid/text/method/QwertyKeyListener;)Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 630
    .local v2, selEnd:I
    const-string/jumbo v3, "text"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 632
    .local v1, result:Ljava/lang/String;
    if-nez v2, :cond_27

    .line 633
    iget-object v3, p0, Landroid/text/method/QwertyKeyListener$2;->this$0:Landroid/text/method/QwertyKeyListener;

    #getter for: Landroid/text/method/QwertyKeyListener;->mText:Landroid/text/Editable;
    invoke-static {v3}, Landroid/text/method/QwertyKeyListener;->access$100(Landroid/text/method/QwertyKeyListener;)Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 637
    :goto_26
    return-void

    .line 635
    :cond_27
    iget-object v3, p0, Landroid/text/method/QwertyKeyListener$2;->this$0:Landroid/text/method/QwertyKeyListener;

    #getter for: Landroid/text/method/QwertyKeyListener;->mText:Landroid/text/Editable;
    invoke-static {v3}, Landroid/text/method/QwertyKeyListener;->access$100(Landroid/text/method/QwertyKeyListener;)Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v2, v2, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_26
.end method
