.class public Landroid/inputmethodservice/ExtractEditText;
.super Landroid/widget/EditText;
.source "ExtractEditText.java"


# instance fields
.field private mIME:Landroid/inputmethodservice/InputMethodService;

.field private mSettingExtractedText:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method


# virtual methods
.method public finishInternalChanges()V
    .registers 3

    .prologue
    .line 64
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    .line 65
    return-void
.end method

.method public hasFocus()Z
    .registers 2

    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public hasVerticalScrollBar()Z
    .registers 3

    .prologue
    .line 136
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->computeVerticalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->computeVerticalScrollExtent()I

    move-result v1

    if-le v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hasWindowFocus()Z
    .registers 2

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isFocused()Z
    .registers 2

    .prologue
    .line 152
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isInputMethodTarget()Z
    .registers 2

    .prologue
    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method protected onSelectionChanged(II)V
    .registers 4
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    .line 84
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_11

    if-ltz p1, :cond_11

    if-ltz p2, :cond_11

    .line 85
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onExtractedSelectionChanged(II)V

    .line 87
    :cond_11
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .registers 5
    .parameter "id"

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 107
    .local v0, result:Z
    iget-object v2, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v2, :cond_1d

    const v2, 0x1020028

    if-eq p1, v2, :cond_1d

    const v2, 0x102001f

    if-eq p1, v2, :cond_1d

    .line 108
    iget-object v2, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2, p1}, Landroid/inputmethodservice/InputMethodService;->onExtractTextContextMenuItem(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 109
    const/4 v0, 0x1

    .line 111
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/ExtractEditText;->setIsExtractEditTextSelecting(I)V

    move v1, v0

    .line 120
    .end local v0           #result:Z
    .local v1, result:I
    :goto_1c
    return v1

    .line 116
    .end local v1           #result:I
    .restart local v0       #result:Z
    :cond_1d
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v0

    .line 119
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/ExtractEditText;->setIsExtractEditTextSelecting(I)V

    move v1, v0

    .line 120
    .restart local v1       #result:I
    goto :goto_1c
.end method

.method public performClick()Z
    .registers 2

    .prologue
    .line 94
    invoke-super {p0}, Landroid/widget/EditText;->performClick()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_11

    .line 95
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->onExtractedTextClicked()V

    .line 96
    const/4 v0, 0x1

    .line 98
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .registers 5
    .parameter "text"

    .prologue
    const/4 v2, 0x1

    .line 73
    :try_start_1
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    .line 74
    invoke-super {p0, p1}, Landroid/widget/EditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_10

    .line 76
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    sub-int/2addr v0, v2

    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    .line 78
    return-void

    .line 76
    :catchall_10
    move-exception v0

    iget v1, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    throw v0
.end method

.method setIME(Landroid/inputmethodservice/InputMethodService;)V
    .registers 2
    .parameter "ime"

    .prologue
    .line 46
    iput-object p1, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    .line 47
    return-void
.end method

.method setIsExtractEditTextSelecting(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 165
    sparse-switch p1, :sswitch_data_a

    .line 176
    :goto_3
    return-void

    .line 170
    :sswitch_4
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/ExtractEditText;->setEditTextMode(I)V

    goto :goto_3

    .line 165
    :sswitch_data_a
    .sparse-switch
        0x1020020 -> :sswitch_4
        0x1020021 -> :sswitch_4
        0x1020022 -> :sswitch_4
        0x1020029 -> :sswitch_4
    .end sparse-switch
.end method

.method public startInternalChanges()V
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    .line 56
    return-void
.end method
