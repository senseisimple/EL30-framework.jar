.class Landroid/webkit/HtmlComposerView$3;
.super Landroid/text/method/CharacterPickerDialog;
.source "HtmlComposerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/HtmlComposerView;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HtmlComposerView;

.field final synthetic val$set:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/webkit/HtmlComposerView;Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 14
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter

    .prologue
    .line 1173
    iput-object p1, p0, Landroid/webkit/HtmlComposerView$3;->this$0:Landroid/webkit/HtmlComposerView;

    iput-object p7, p0, Landroid/webkit/HtmlComposerView$3;->val$set:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/text/method/CharacterPickerDialog;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 1180
    const v1, 0x10201a9

    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView$3;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-ne p1, v1, :cond_f

    .line 1181
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView$3;->dismiss()V

    .line 1187
    .end local p1
    :cond_e
    :goto_e
    return-void

    .line 1182
    .restart local p1
    :cond_f
    instance-of v1, p1, Landroid/widget/Button;

    if-eqz v1, :cond_e

    .line 1183
    check-cast p1, Landroid/widget/Button;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1184
    .local v0, result:Ljava/lang/String;
    iget-object v1, p0, Landroid/webkit/HtmlComposerView$3;->this$0:Landroid/webkit/HtmlComposerView;

    const-string v2, "InsertText"

    invoke-virtual {v1, v2, v0}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView$3;->dismiss()V

    goto :goto_e
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1175
    iget-object v1, p0, Landroid/webkit/HtmlComposerView$3;->val$set:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 1176
    .local v0, result:Ljava/lang/String;
    iget-object v1, p0, Landroid/webkit/HtmlComposerView$3;->this$0:Landroid/webkit/HtmlComposerView;

    const-string v2, "InsertText"

    invoke-virtual {v1, v2, v0}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView$3;->dismiss()V

    .line 1178
    return-void
.end method
