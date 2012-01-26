.class public Lcom/android/internal/widget/EditableInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "EditableInputConnection.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "EditableInputConnection"


# instance fields
.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 3
    .parameter "textview"

    .prologue
    .line 36
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 37
    iput-object p1, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    .line 38
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .registers 5
    .parameter "states"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/internal/widget/EditableInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 60
    .local v0, content:Landroid/text/Editable;
    if-nez v0, :cond_8

    const/4 v2, 0x0

    .line 70
    :goto_7
    return v2

    .line 61
    :cond_8
    iget-object v2, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    .line 62
    .local v1, kl:Landroid/text/method/KeyListener;
    if-eqz v1, :cond_15

    .line 64
    :try_start_10
    iget-object v2, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-interface {v1, v2, v0, p1}, Landroid/text/method/KeyListener;->clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    :try_end_15
    .catch Ljava/lang/AbstractMethodError; {:try_start_10 .. :try_end_15} :catch_17

    .line 70
    :cond_15
    :goto_15
    const/4 v2, 0x1

    goto :goto_7

    .line 65
    :catch_17
    move-exception v2

    goto :goto_15
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .registers 3
    .parameter "text"

    .prologue
    .line 77
    if-nez p1, :cond_4

    .line 78
    const/4 v0, 0x0

    .line 85
    :goto_3
    return v0

    .line 82
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 83
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    .line 84
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 85
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .registers 8
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    const/4 v4, 0x0

    .line 122
    iget-object v3, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    if-nez v3, :cond_a

    .line 123
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v3

    .line 134
    :goto_9
    return v3

    .line 126
    :cond_a
    iget-object v3, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getError()Ljava/lang/CharSequence;

    move-result-object v1

    .line 127
    .local v1, errorBefore:Ljava/lang/CharSequence;
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v2

    .line 128
    .local v2, success:Z
    iget-object v3, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    .line 130
    .local v0, errorAfter:Ljava/lang/CharSequence;
    if-eqz v0, :cond_23

    if-ne v1, v0, :cond_23

    .line 131
    iget-object v3, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v4}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :cond_23
    move v3, v2

    .line 134
    goto :goto_9
.end method

.method public endBatchEdit()Z
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public getEditable()Landroid/text/Editable;
    .registers 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    .line 42
    .local v0, tv:Landroid/widget/TextView;
    if-eqz v0, :cond_9

    .line 43
    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 45
    :goto_8
    return-object v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .registers 5
    .parameter "request"
    .parameter "flags"

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1c

    .line 104
    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 105
    .local v0, et:Landroid/view/inputmethod/ExtractedText;
    iget-object v1, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 106
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1a

    .line 107
    iget-object v1, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V

    :cond_1a
    move-object v1, v0

    .line 112
    .end local v0           #et:Landroid/view/inputmethod/ExtractedText;
    :goto_1b
    return-object v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public performContextMenuAction(I)Z
    .registers 3
    .parameter "id"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 97
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 98
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public performEditorAction(I)Z
    .registers 3
    .parameter "actionCode"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onEditorAction(I)V

    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4
    .parameter "action"
    .parameter "data"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 117
    const/4 v0, 0x1

    return v0
.end method
