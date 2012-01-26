.class public Lcom/android/internal/view/InputConnectionWrapper;
.super Ljava/lang/Object;
.source "InputConnectionWrapper.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    }
.end annotation


# static fields
.field private static final MAX_WAIT_TIME_MILLIS:I = 0x7d0


# instance fields
.field private final mIInputContext:Lcom/android/internal/view/IInputContext;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/IInputContext;)V
    .registers 2
    .parameter "inputContext"

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    .line 182
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .registers 3

    .prologue
    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1}, Lcom/android/internal/view/IInputContext;->beginBatchEdit()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 349
    const/4 v1, 0x1

    .line 351
    :goto_6
    return v1

    .line 350
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 351
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public clearMetaKeyStates(I)Z
    .registers 4
    .parameter "states"

    .prologue
    .line 375
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->clearMetaKeyStates(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 376
    const/4 v1, 0x1

    .line 378
    :goto_6
    return v1

    .line 377
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 378
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .registers 4
    .parameter "text"

    .prologue
    .line 285
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 286
    const/4 v1, 0x1

    .line 288
    :goto_6
    return v1

    .line 287
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 288
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .registers 5
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 276
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->commitText(Ljava/lang/CharSequence;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 277
    const/4 v1, 0x1

    .line 279
    :goto_6
    return v1

    .line 278
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 279
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public deleteSurroundingText(II)Z
    .registers 5
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->deleteSurroundingText(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 385
    const/4 v1, 0x1

    .line 387
    :goto_6
    return v1

    .line 386
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 387
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public endBatchEdit()Z
    .registers 3

    .prologue
    .line 357
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1}, Lcom/android/internal/view/IInputContext;->endBatchEdit()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 358
    const/4 v1, 0x1

    .line 360
    :goto_6
    return v1

    .line 359
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 360
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public finishComposingText()Z
    .registers 3

    .prologue
    .line 339
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1}, Lcom/android/internal/view/IInputContext;->finishComposingText()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 340
    const/4 v1, 0x1

    .line 342
    :goto_6
    return v1

    .line 341
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 342
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getCursorCapsMode(I)I
    .registers 7
    .parameter "reqModes"

    .prologue
    .line 239
    const/4 v2, 0x0

    .line 241
    .local v2, value:I
    :try_start_1
    #calls: Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->getInstance()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$000()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    move-result-object v0

    .line 242
    .local v0, callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    iget v4, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-interface {v3, p1, v4, v0}, Lcom/android/internal/view/IInputContext;->getCursorCapsMode(IILcom/android/internal/view/IInputContextCallback;)V

    .line 243
    monitor-enter v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_1f

    .line 244
    :try_start_d
    invoke-virtual {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    .line 245
    iget-boolean v3, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    if-eqz v3, :cond_16

    .line 246
    iget v2, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mCursorCapsMode:I

    .line 248
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_1c

    .line 249
    :try_start_17
    #calls: Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->dispose()V
    invoke-static {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$100(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1f

    move v3, v2

    .line 253
    .end local v0           #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :goto_1b
    return v3

    .line 248
    .restart local v0       #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catchall_1c
    move-exception v3

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v3
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1f} :catch_1f

    .line 250
    .end local v0           #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catch_1f
    move-exception v3

    move-object v1, v3

    .line 251
    .local v1, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_1b
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .registers 8
    .parameter "request"
    .parameter "flags"

    .prologue
    .line 257
    const/4 v2, 0x0

    .line 259
    .local v2, value:Landroid/view/inputmethod/ExtractedText;
    :try_start_1
    #calls: Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->getInstance()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$000()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    move-result-object v0

    .line 260
    .local v0, callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    iget v4, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-interface {v3, p1, p2, v4, v0}, Lcom/android/internal/view/IInputContext;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;IILcom/android/internal/view/IInputContextCallback;)V

    .line 261
    monitor-enter v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_1f

    .line 262
    :try_start_d
    invoke-virtual {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    .line 263
    iget-boolean v3, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    if-eqz v3, :cond_16

    .line 264
    iget-object v2, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 266
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_1c

    .line 267
    :try_start_17
    #calls: Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->dispose()V
    invoke-static {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$100(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1f

    move-object v3, v2

    .line 271
    .end local v0           #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :goto_1b
    return-object v3

    .line 266
    .restart local v0       #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catchall_1c
    move-exception v3

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v3
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1f} :catch_1f

    .line 268
    .end local v0           #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catch_1f
    move-exception v3

    move-object v1, v3

    .line 269
    .local v1, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_1b
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .registers 7
    .parameter "flags"

    .prologue
    .line 221
    const/4 v2, 0x0

    .line 223
    .local v2, value:Ljava/lang/CharSequence;
    :try_start_1
    #calls: Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->getInstance()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$000()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    move-result-object v0

    .line 224
    .local v0, callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    iget v4, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-interface {v3, p1, v4, v0}, Lcom/android/internal/view/IInputContext;->getSelectedText(IILcom/android/internal/view/IInputContextCallback;)V

    .line 225
    monitor-enter v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_1f

    .line 226
    :try_start_d
    invoke-virtual {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    .line 227
    iget-boolean v3, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    if-eqz v3, :cond_16

    .line 228
    iget-object v2, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSelectedText:Ljava/lang/CharSequence;

    .line 230
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_1c

    .line 231
    :try_start_17
    #calls: Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->dispose()V
    invoke-static {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$100(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1f

    move-object v3, v2

    .line 235
    .end local v0           #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :goto_1b
    return-object v3

    .line 230
    .restart local v0       #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catchall_1c
    move-exception v3

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v3
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1f} :catch_1f

    .line 232
    .end local v0           #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catch_1f
    move-exception v3

    move-object v1, v3

    .line 233
    .local v1, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_1b
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .registers 8
    .parameter "length"
    .parameter "flags"

    .prologue
    .line 185
    const/4 v2, 0x0

    .line 187
    .local v2, value:Ljava/lang/CharSequence;
    :try_start_1
    #calls: Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->getInstance()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$000()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    move-result-object v0

    .line 188
    .local v0, callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    iget v4, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-interface {v3, p1, p2, v4, v0}, Lcom/android/internal/view/IInputContext;->getTextAfterCursor(IIILcom/android/internal/view/IInputContextCallback;)V

    .line 189
    monitor-enter v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_1f

    .line 190
    :try_start_d
    invoke-virtual {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    .line 191
    iget-boolean v3, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    if-eqz v3, :cond_16

    .line 192
    iget-object v2, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mTextAfterCursor:Ljava/lang/CharSequence;

    .line 194
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_1c

    .line 195
    :try_start_17
    #calls: Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->dispose()V
    invoke-static {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$100(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1f

    move-object v3, v2

    .line 199
    .end local v0           #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :goto_1b
    return-object v3

    .line 194
    .restart local v0       #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catchall_1c
    move-exception v3

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v3
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1f} :catch_1f

    .line 196
    .end local v0           #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catch_1f
    move-exception v3

    move-object v1, v3

    .line 197
    .local v1, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_1b
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .registers 8
    .parameter "length"
    .parameter "flags"

    .prologue
    .line 203
    const/4 v2, 0x0

    .line 205
    .local v2, value:Ljava/lang/CharSequence;
    :try_start_1
    #calls: Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->getInstance()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$000()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    move-result-object v0

    .line 206
    .local v0, callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    iget v4, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-interface {v3, p1, p2, v4, v0}, Lcom/android/internal/view/IInputContext;->getTextBeforeCursor(IIILcom/android/internal/view/IInputContextCallback;)V

    .line 207
    monitor-enter v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_1f

    .line 208
    :try_start_d
    invoke-virtual {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    .line 209
    iget-boolean v3, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    if-eqz v3, :cond_16

    .line 210
    iget-object v2, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mTextBeforeCursor:Ljava/lang/CharSequence;

    .line 212
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_1c

    .line 213
    :try_start_17
    #calls: Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->dispose()V
    invoke-static {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$100(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1f

    move-object v3, v2

    .line 217
    .end local v0           #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :goto_1b
    return-object v3

    .line 212
    .restart local v0       #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catchall_1c
    move-exception v3

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v3
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1f} :catch_1f

    .line 214
    .end local v0           #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catch_1f
    move-exception v3

    move-object v1, v3

    .line 215
    .local v1, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_1b
.end method

.method public performContextMenuAction(I)Z
    .registers 4
    .parameter "id"

    .prologue
    .line 312
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->performContextMenuAction(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 313
    const/4 v1, 0x1

    .line 315
    :goto_6
    return v1

    .line 314
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 315
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public performEditorAction(I)Z
    .registers 4
    .parameter "actionCode"

    .prologue
    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->performEditorAction(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 304
    const/4 v1, 0x1

    .line 306
    :goto_6
    return v1

    .line 305
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 306
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 5
    .parameter "action"
    .parameter "data"

    .prologue
    .line 402
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 403
    const/4 v1, 0x1

    .line 405
    :goto_6
    return v1

    .line 404
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 405
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public reportFullscreenMode(Z)Z
    .registers 4
    .parameter "enabled"

    .prologue
    .line 393
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->reportFullscreenMode(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 394
    const/4 v1, 0x1

    .line 396
    :goto_6
    return v1

    .line 395
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 396
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public reportIsSoftInputMethodShowing(Z)Z
    .registers 4
    .parameter "enabled"

    .prologue
    .line 413
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->reportIsSoftInputMethodShowing(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 414
    const/4 v1, 0x1

    .line 416
    :goto_6
    return v1

    .line 415
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 416
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 366
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->sendKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 367
    const/4 v1, 0x1

    .line 369
    :goto_6
    return v1

    .line 368
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 369
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setComposingRegion(II)Z
    .registers 5
    .parameter "start"
    .parameter "end"

    .prologue
    .line 321
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->setComposingRegion(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 322
    const/4 v1, 0x1

    .line 324
    :goto_6
    return v1

    .line 323
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 324
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .registers 5
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->setComposingText(Ljava/lang/CharSequence;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 331
    const/4 v1, 0x1

    .line 333
    :goto_6
    return v1

    .line 332
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 333
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setSelection(II)Z
    .registers 5
    .parameter "start"
    .parameter "end"

    .prologue
    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->setSelection(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 295
    const/4 v1, 0x1

    .line 297
    :goto_6
    return v1

    .line 296
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 297
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method
