.class Landroid/webkit/HtmlComposerView$2;
.super Ljava/lang/Object;
.source "HtmlComposerView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$a:Landroid/widget/SimpleAdapter;


# direct methods
.method constructor <init>(Landroid/webkit/HtmlComposerView;Landroid/widget/SimpleAdapter;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 868
    iput-object p1, p0, Landroid/webkit/HtmlComposerView$2;->this$0:Landroid/webkit/HtmlComposerView;

    iput-object p2, p0, Landroid/webkit/HtmlComposerView$2;->val$a:Landroid/widget/SimpleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 871
    iget-object v2, p0, Landroid/webkit/HtmlComposerView$2;->val$a:Landroid/widget/SimpleAdapter;

    invoke-virtual {v2, p2}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 872
    .local v0, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "text"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 874
    .local v1, smiley:Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/HtmlComposerView$2;->this$0:Landroid/webkit/HtmlComposerView;

    const-string v3, "InsertText"

    invoke-virtual {v2, v3, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 876
    return-void
.end method
