.class Landroid/app/SearchDialog$2;
.super Ljava/lang/Object;
.source "SearchDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SearchDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/SearchDialog;


# direct methods
.method constructor <init>(Landroid/app/SearchDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 693
    iput-object p1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5
    .parameter "s"

    .prologue
    .line 720
    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;
    invoke-static {v1}, Landroid/app/SearchDialog;->access$000(Landroid/app/SearchDialog;)Landroid/app/SearchableInfo;

    move-result-object v1

    if-nez v1, :cond_9

    .line 735
    :cond_8
    :goto_8
    return-void

    .line 723
    :cond_9
    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;
    invoke-static {v1}, Landroid/app/SearchDialog;->access$000(Landroid/app/SearchDialog;)Landroid/app/SearchableInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->autoUrlDetect()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;
    invoke-static {v1}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/SearchDialog$SearchAutoComplete;->isPerformingCompletion()Z

    move-result v1

    if-nez v1, :cond_8

    .line 726
    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;
    invoke-static {v1}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/SearchDialog$SearchAutoComplete;->getImeOptions()I

    move-result v1

    and-int/lit16 v1, v1, -0x100

    or-int/lit8 v0, v1, 0x2

    .line 728
    .local v0, options:I
    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchAutoCompleteImeOptions:I
    invoke-static {v1}, Landroid/app/SearchDialog;->access$900(Landroid/app/SearchDialog;)I

    move-result v1

    if-eq v0, v1, :cond_8

    .line 729
    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #setter for: Landroid/app/SearchDialog;->mSearchAutoCompleteImeOptions:I
    invoke-static {v1, v0}, Landroid/app/SearchDialog;->access$902(Landroid/app/SearchDialog;I)I

    .line 730
    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;
    invoke-static {v1}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/SearchDialog$SearchAutoComplete;->setImeOptions(I)V

    .line 732
    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;
    invoke-static {v1}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v1

    iget-object v2, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;
    invoke-static {v2}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/SearchDialog$SearchAutoComplete;->getInputType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/SearchDialog$SearchAutoComplete;->setInputType(I)V

    goto :goto_8
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 695
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 702
    iget-object v0, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;
    invoke-static {v0}, Landroid/app/SearchDialog;->access$000(Landroid/app/SearchDialog;)Landroid/app/SearchableInfo;

    move-result-object v0

    if-nez v0, :cond_9

    .line 717
    :goto_8
    return-void

    .line 705
    :cond_9
    iget-object v0, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;
    invoke-static {v0}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/SearchDialog$SearchAutoComplete;->isPerformingCompletion()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 707
    iget-object v0, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    if-nez p1, :cond_66

    const-string v1, ""

    :goto_1b
    #setter for: Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/app/SearchDialog;->access$202(Landroid/app/SearchDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 709
    :cond_1e
    iget-object v0, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #calls: Landroid/app/SearchDialog;->updateWidgetState()V
    invoke-static {v0}, Landroid/app/SearchDialog;->access$300(Landroid/app/SearchDialog;)V

    .line 713
    iget-object v0, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;
    invoke-static {v1}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v1

    #calls: Landroid/app/SearchDialog$SearchAutoComplete;->isEmpty()Z
    invoke-static {v1}, Landroid/app/SearchDialog$SearchAutoComplete;->access$400(Landroid/app/SearchDialog$SearchAutoComplete;)Z

    move-result v1

    if-nez v1, :cond_61

    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #calls: Landroid/app/SearchDialog;->isBrowserSearch()Z
    invoke-static {v1}, Landroid/app/SearchDialog;->access$500(Landroid/app/SearchDialog;)Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mInitialQuery:Ljava/lang/String;
    invoke-static {v1}, Landroid/app/SearchDialog;->access$600(Landroid/app/SearchDialog;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;
    invoke-static {v2}, Landroid/app/SearchDialog;->access$200(Landroid/app/SearchDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_61

    :cond_4b
    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;
    invoke-static {v1}, Landroid/app/SearchDialog;->access$700(Landroid/app/SearchDialog;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_6b

    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #getter for: Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;
    invoke-static {v1}, Landroid/app/SearchDialog;->access$700(Landroid/app/SearchDialog;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.search.CONTEXT_IS_VOICE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6b

    :cond_61
    const/4 v1, 0x1

    :goto_62
    #calls: Landroid/app/SearchDialog;->updateVoiceButton(Z)V
    invoke-static {v0, v1}, Landroid/app/SearchDialog;->access$800(Landroid/app/SearchDialog;Z)V

    goto :goto_8

    .line 707
    :cond_66
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    .line 713
    :cond_6b
    const/4 v1, 0x0

    goto :goto_62
.end method
