.class public Landroid/webkit/HtmlComposerInputConnection;
.super Ljava/lang/Object;
.source "HtmlComposerInputConnection.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# static fields
.field private static final BACKGROUND_COLOR_BLUE:I = -0xf0001

.field private static final BACKGROUND_COLOR_GREEN:I = -0x993256

.field private static final BACKGROUND_COLOR_PURPLE:I = -0x777701

.field private static final BACKGROUND_COLOR_SKYBLUE:I = -0x604933

.field static final COMPOSING:Ljava/lang/Object; = null

.field static final LOGTAG:Ljava/lang/String; = "HtmlComposerInputConnection"


# instance fields
.field final MAX_SPANS:I

.field private bBeginBatchEdit:Z

.field composingEnd:I

.field composingStart:I

.field curSelEnd:I

.field curSelStart:I

.field currCompText:Ljava/lang/CharSequence;

.field delCount:I

.field isInComposingState:Z

.field private mBGColorSpanEnd:[I

.field private mBGColorSpanStart:[I

.field private mBGColorSpans:[Landroid/text/style/BackgroundColorSpan;

.field private mBackGroundColorSpan:[I

.field private mColorSpans:[Landroid/text/style/ForegroundColorSpan;

.field private mCursorPosition:I

.field private mDefaultComposingSpans:[Ljava/lang/Object;

.field mTargetView:Landroid/webkit/HtmlComposerView;

.field prevCommOff:I

.field prevEndOff:I

.field prevStartOff:I

.field requestedUnderLine:Z

.field setColor:Z

.field setGreenColor:Z

.field setPurpelColor:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    new-instance v0, Landroid/webkit/ComposingText;

    invoke-direct {v0}, Landroid/webkit/ComposingText;-><init>()V

    sput-object v0, Landroid/webkit/HtmlComposerInputConnection;->COMPOSING:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/HtmlComposerView;)V
    .registers 6
    .parameter "targetView"

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v2, p0, Landroid/webkit/HtmlComposerInputConnection;->delCount:I

    .line 41
    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->prevCommOff:I

    .line 42
    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->prevStartOff:I

    .line 43
    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->prevEndOff:I

    .line 44
    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 45
    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 46
    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 47
    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 49
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->currCompText:Ljava/lang/CharSequence;

    .line 51
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerInputConnection;->setColor:Z

    .line 52
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerInputConnection;->setPurpelColor:Z

    .line 53
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerInputConnection;->setGreenColor:Z

    .line 54
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerInputConnection;->requestedUnderLine:Z

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBackGroundColorSpan:[I

    .line 66
    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mCursorPosition:I

    .line 67
    iput v3, p0, Landroid/webkit/HtmlComposerInputConnection;->MAX_SPANS:I

    .line 68
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBGColorSpanStart:[I

    .line 69
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBGColorSpanEnd:[I

    .line 75
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    .line 79
    iput-object p1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 80
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerInputConnection;->isInComposingState:Z

    .line 81
    return-void
.end method

.method private getBGColorCodeFromSpannedText(Ljava/lang/CharSequence;)[I
    .registers 15
    .parameter "str"

    .prologue
    const/4 v10, -0x1

    const-class v12, Landroid/text/style/CharacterStyle;

    const-string v11, "HtmlComposerInputConnection"

    .line 627
    const-string v9, "HtmlComposerInputConnection"

    const-string v9, "getBGColorSpansPosition enter   "

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const/4 v9, 0x2

    new-array v1, v9, [I

    .line 629
    .local v1, BGColor:[I
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object v7, v0

    .line 630
    .local v7, s:Landroid/text/Spanned;
    invoke-interface {v7}, Landroid/text/Spanned;->length()I

    move-result v5

    .line 632
    .local v5, length:I
    const/4 v4, 0x0

    .line 633
    .local v4, k:I
    const/4 v9, 0x0

    aput v10, v1, v9

    .line 634
    const/4 v9, 0x1

    aput v10, v1, v9

    .line 635
    const-string v9, "HtmlComposerInputConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getBGColorSpansPosition Spannable text  length =    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/4 v3, 0x0

    .end local p0
    .local v3, iSpan:I
    :goto_37
    if-ge v3, v5, :cond_50

    .line 638
    const-class v9, Landroid/text/style/CharacterStyle;

    invoke-interface {v7, v3, v5, v12}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    .line 639
    .local v6, next:I
    const-class v9, Landroid/text/style/CharacterStyle;

    invoke-interface {v7, v3, v6, v12}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/CharacterStyle;

    .line 641
    .local v8, style:[Landroid/text/style/CharacterStyle;
    if-nez v8, :cond_51

    .line 643
    const-string v9, "HtmlComposerInputConnection"

    const-string v9, "getBGColorSpansPosition mBGColorSpans NULL    "

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    .end local v6           #next:I
    .end local v8           #style:[Landroid/text/style/CharacterStyle;
    :cond_50
    return-object v1

    .line 646
    .restart local v6       #next:I
    .restart local v8       #style:[Landroid/text/style/CharacterStyle;
    :cond_51
    const-string v9, "HtmlComposerInputConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getBGColorSpansPosition Span index =    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const/4 v2, 0x0

    .local v2, iBGColorSpan:I
    :goto_6a
    array-length v9, v8

    if-ge v2, v9, :cond_a2

    const/16 v9, 0xff

    if-ge v2, v9, :cond_a2

    .line 648
    aget-object v9, v8, v2

    instance-of v9, v9, Landroid/text/style/BackgroundColorSpan;

    if-eqz v9, :cond_9f

    .line 649
    if-nez v2, :cond_9f

    .line 652
    aget-object p0, v8, v2

    check-cast p0, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p0}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v9

    aput v9, v1, v4

    .line 653
    const-string v9, "HtmlComposerInputConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getBGColorSpansPosition - BG COLOR code =     "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v1, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    add-int/lit8 v4, v4, 0x1

    .line 647
    :cond_9f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    .line 636
    :cond_a2
    move v3, v6

    goto :goto_37
.end method

.method private replaceText(Ljava/lang/CharSequence;IZ)V
    .registers 19
    .parameter "text"
    .parameter "newCursorPosition"
    .parameter "composing"

    .prologue
    .line 396
    iget-object v12, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v12, :cond_5

    .line 528
    :goto_4
    return-void

    .line 399
    :cond_5
    const-string v12, "HtmlComposerInputConnection"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "replaceText "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v12, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v12}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v8

    .line 402
    .local v8, selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    iget v12, v8, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    iput v12, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 403
    iget v12, v8, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    iput v12, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 406
    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 407
    .local v3, a:I
    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 409
    .local v4, b:I
    const-string v12, "HtmlComposerInputConnection"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Composing span: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    if-ge v4, v3, :cond_74

    .line 412
    move v11, v3

    .line 413
    .local v11, tmp:I
    move v3, v4

    .line 414
    move v4, v11

    .line 417
    .end local v11           #tmp:I
    :cond_74
    const/4 v12, -0x1

    if-eq v3, v12, :cond_1da

    const/4 v12, -0x1

    if-eq v4, v12, :cond_1da

    .line 418
    const-string v12, "HtmlComposerInputConnection"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Removing Underline of previous selection   "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "   to   "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_9c
    :goto_9c
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-virtual {p0, v12}, Landroid/webkit/HtmlComposerInputConnection;->resetShadeSpan(I)V

    .line 434
    if-eqz p3, :cond_c7

    .line 435
    iget v12, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_be

    iget v12, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_be

    .line 436
    const-string v12, "HtmlComposerInputConnection"

    const-string v13, "Inside if(composingStart == -1 && composingEnd == -1)"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget v12, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iput v12, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 438
    iget v12, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iput v12, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 440
    :cond_be
    iget v12, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v13

    add-int/2addr v12, v13

    iput v12, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 449
    :cond_c7
    const-string v12, "HtmlComposerInputConnection"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " composingStart  composingEnd  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    if-lez p2, :cond_1eb

    .line 456
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v12

    add-int/2addr v12, v3

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    add-int p2, p2, v12

    .line 460
    :goto_f8
    if-gez p2, :cond_fc

    const/16 p2, 0x0

    .line 464
    :cond_fc
    const-string v12, "HtmlComposerInputConnection"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Composing span: before selection"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v12, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v12, v3, v4}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 467
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1ef

    if-eq v3, v4, :cond_1ef

    .line 469
    const-string v12, "HtmlComposerInputConnection"

    const-string v13, " text.toString().equals() && (a != b)"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v12, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v13, ""

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 482
    :goto_140
    if-eqz p3, :cond_21d

    .line 484
    const/4 v9, 0x0

    .line 485
    .local v9, sp:Landroid/text/Spannable;
    if-eqz p1, :cond_175

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_175

    .line 489
    :try_start_151
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object v9, v0

    .line 490
    invoke-static {v9}, Landroid/webkit/HtmlComposerInputConnection;->setComposingSpans(Landroid/text/Spannable;)V

    .line 491
    const/4 v10, 0x0

    .line 492
    .local v10, spstr:Landroid/text/SpannableString;
    move-object v0, v9

    check-cast v0, Landroid/text/SpannableString;

    move-object v10, v0

    .line 494
    invoke-virtual {v10}, Landroid/text/SpannableString;->getSpanData()[I

    move-result-object v7

    .line 495
    .local v7, mSpandata:[I
    invoke-virtual {v10}, Landroid/text/SpannableString;->getSpanCount()I

    move-result v6

    .line 497
    .local v6, mSpanCount:I
    const/4 v12, 0x4

    if-eq v6, v12, :cond_16c

    const/4 v12, 0x5

    if-ne v6, v12, :cond_172

    .line 499
    :cond_16c
    invoke-direct/range {p0 .. p1}, Landroid/webkit/HtmlComposerInputConnection;->getBGColorCodeFromSpannedText(Ljava/lang/CharSequence;)[I

    move-result-object v12

    iput-object v12, p0, Landroid/webkit/HtmlComposerInputConnection;->mBackGroundColorSpan:[I

    .line 501
    :cond_172
    invoke-virtual {p0, v7, v6}, Landroid/webkit/HtmlComposerInputConnection;->ShadeSpan([II)V
    :try_end_175
    .catch Ljava/lang/ClassCastException; {:try_start_151 .. :try_end_175} :catch_201

    .line 519
    .end local v6           #mSpanCount:I
    .end local v7           #mSpandata:[I
    .end local v9           #sp:Landroid/text/Spannable;
    .end local v10           #spstr:Landroid/text/SpannableString;
    :cond_175
    :goto_175
    iget-object v12, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object v0, v12

    move/from16 v1, p2

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 520
    iget-object v12, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v12}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v8

    .line 521
    iget v12, v8, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    iput v12, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 522
    iget v12, v8, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    iput v12, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 524
    const-string v12, "HtmlComposerInputConnection"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "newCursorPosition "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const-string v12, "HtmlComposerInputConnection"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "new selection "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-direct {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 527
    iget-object v12, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v12}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_4

    .line 421
    :cond_1da
    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 422
    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 423
    if-gez v3, :cond_1e1

    const/4 v3, 0x0

    .line 424
    :cond_1e1
    if-gez v4, :cond_1e4

    const/4 v4, 0x0

    .line 425
    :cond_1e4
    if-ge v4, v3, :cond_9c

    .line 426
    move v11, v3

    .line 427
    .restart local v11       #tmp:I
    move v3, v4

    .line 428
    move v4, v11

    goto/16 :goto_9c

    .line 458
    .end local v11           #tmp:I
    :cond_1eb
    add-int p2, p2, v3

    goto/16 :goto_f8

    .line 478
    :cond_1ef
    iget-object v12, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v13, "InsertText"

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object v12, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v12}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_140

    .line 503
    .restart local v9       #sp:Landroid/text/Spannable;
    :catch_201
    move-exception v12

    move-object v5, v12

    .line 505
    .local v5, e:Ljava/lang/ClassCastException;
    const-string v12, "HtmlComposerInputConnection"

    const-string v13, "Text is not spanned data - Prediction is enable in default  IME "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v12, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v13, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iget v14, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {v12, v13, v14}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 507
    iget-object v12, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v13, "Underline"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_175

    .line 514
    .end local v5           #e:Ljava/lang/ClassCastException;
    .end local v9           #sp:Landroid/text/Spannable;
    :cond_21d
    const/4 v12, -0x1

    iput v12, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 515
    const/4 v12, -0x1

    iput v12, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    goto/16 :goto_175
.end method

.method public static setComposingSpans(Landroid/text/Spannable;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 622
    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/webkit/HtmlComposerInputConnection;->setComposingSpans(Landroid/text/Spannable;II)V

    .line 623
    return-void
.end method

.method public static setComposingSpans(Landroid/text/Spannable;II)V
    .registers 11
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v7, 0x121

    .line 666
    const-class v4, Ljava/lang/Object;

    invoke-interface {p0, p1, p2, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 667
    .local v3, sps:[Ljava/lang/Object;
    if-eqz v3, :cond_36

    .line 668
    array-length v4, v3

    const/4 v5, 0x1

    sub-int v1, v4, v5

    .local v1, i:I
    :goto_e
    if-ltz v1, :cond_36

    .line 669
    aget-object v2, v3, v1

    .line 670
    .local v2, o:Ljava/lang/Object;
    sget-object v4, Landroid/webkit/HtmlComposerInputConnection;->COMPOSING:Ljava/lang/Object;

    if-ne v2, v4, :cond_1c

    .line 671
    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 668
    :cond_19
    :goto_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 675
    :cond_1c
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 676
    .local v0, fl:I
    and-int/lit16 v4, v0, 0x133

    if-eq v4, v7, :cond_19

    .line 678
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    and-int/lit8 v6, v0, -0x34

    or-int/lit16 v6, v6, 0x100

    or-int/lit8 v6, v6, 0x21

    invoke-interface {p0, v2, v4, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_19

    .line 686
    .end local v0           #fl:I
    .end local v1           #i:I
    .end local v2           #o:Ljava/lang/Object;
    :cond_36
    sget-object v4, Landroid/webkit/HtmlComposerInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v4, p1, p2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 688
    return-void
.end method

.method private syncInput(Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "text"

    .prologue
    .line 140
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerInputConnection;->isInComposingState:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->getComposingState()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 141
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->delCount:I

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 147
    :goto_17
    return-void

    .line 144
    :cond_18
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    goto :goto_17
.end method

.method private updateInputMethodSelection()V
    .registers 9

    .prologue
    const-string v7, "HtmlComposerInputConnection"

    const-string v6, " "

    .line 111
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 113
    const-string v1, "HtmlComposerInputConnection"

    const-string/jumbo v1, "return without updateInputMethodSelection as  bBeginBatchEdit is TRUE.........."

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_11
    :goto_11
    return-void

    .line 116
    :cond_12
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 117
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_11

    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 118
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iget v5, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 119
    const-string v1, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateInputMethodSelection curSelStart curSelEnd composingStart, composingEnd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method


# virtual methods
.method public ShadeSpan([II)V
    .registers 12
    .parameter "Spandata"
    .parameter "SpanCount"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v8, "Underline"

    const-string v7, "HiliteColor"

    const-string v4, "HtmlComposerInputConnection"

    .line 554
    const-string v0, "HtmlComposerInputConnection"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShadeSpan  - SpanCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    packed-switch p2, :pswitch_data_140

    .line 612
    :pswitch_23
    const-string v0, "HtmlComposerInputConnection"

    const-string v0, "ShadeSpan  -- SpanCount is niether 1 nor 4  "

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :goto_2a
    return-void

    .line 563
    :pswitch_2b
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 564
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v1, "HiliteColor"

    const-string v1, "TRANSPARENT"

    invoke-virtual {v0, v7, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v0, "HtmlComposerInputConnection"

    const-string v0, "ShadeSpan  - Keep Adding  Underline when NO COLOR is present "

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v1, "Underline"

    invoke-virtual {v0, v8, v6}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    .line 575
    :pswitch_4c
    const-string v0, "HtmlComposerInputConnection"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShadeSpan  - Hilite  color ---- SpanCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const-string v0, "HtmlComposerInputConnection"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShadeSpan  - Hilite  color ----composingStart = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "composingEnd ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Spandata[1] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, p1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Spandata[4] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBackGroundColorSpan:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v1, -0x993256

    if-ne v0, v1, :cond_f2

    .line 580
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    aget v3, p1, v5

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 581
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v1, "HiliteColor"

    const-string v1, "LightSeaGreen"

    invoke-virtual {v0, v7, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v1, "Underline"

    invoke-virtual {v0, v8, v6}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_c9
    :goto_c9
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    aget v2, p1, v5

    add-int/2addr v1, v2

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    const/4 v3, 0x4

    aget v3, p1, v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 601
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v1, "HiliteColor"

    const-string v1, "LightCyan"

    invoke-virtual {v0, v7, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v0, "HtmlComposerInputConnection"

    const-string v0, "ShadeSpan  -Adding underline when  span has 2 COLORS "

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v1, "Underline"

    invoke-virtual {v0, v8, v6}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2a

    .line 586
    :cond_f2
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBackGroundColorSpan:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v1, -0x777701

    if-ne v0, v1, :cond_119

    .line 588
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    aget v3, p1, v5

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 589
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v1, "HiliteColor"

    const-string v1, "SlateBlue"

    invoke-virtual {v0, v7, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v1, "Underline"

    invoke-virtual {v0, v8, v6}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c9

    .line 593
    :cond_119
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBackGroundColorSpan:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v1, -0x604933

    if-ne v0, v1, :cond_c9

    .line 595
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    aget v3, p1, v5

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 596
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v1, "HiliteColor"

    const-string v1, "CornflowerBlue"

    invoke-virtual {v0, v7, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v1, "Underline"

    invoke-virtual {v0, v8, v6}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c9

    .line 557
    :pswitch_data_140
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2b
        :pswitch_23
        :pswitch_4c
        :pswitch_4c
    .end packed-switch
.end method

.method public UpdatecomposingCursorPosition(Ljava/lang/CharSequence;)V
    .registers 11
    .parameter "text"

    .prologue
    const/4 v7, -0x1

    const-string v8, "HtmlComposerInputConnection"

    const-string v6, " "

    .line 353
    const/4 v3, -0x1

    .line 354
    .local v3, tmp:I
    const/4 v0, -0x1

    .line 355
    .local v0, endOff:I
    const/4 v2, -0x1

    .line 356
    .local v2, startOff:I
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v1

    .line 357
    .local v1, selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->prevCommOff:I

    .line 358
    iget v0, v1, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    .line 359
    const-string v4, "HtmlComposerInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpdatecomposingCursorPosition off"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    if-le v2, v0, :cond_39

    .line 362
    move v3, v0

    .line 363
    move v0, v2

    .line 364
    move v2, v3

    .line 367
    :cond_39
    if-eq v2, v7, :cond_7b

    if-eq v0, v7, :cond_7b

    if-eqz p1, :cond_7b

    .line 369
    const-string v4, "HtmlComposerInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inside startOff != -1 && endOff != -1 && text != null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4, v2, v0}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 371
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v5, "InsertText"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_7b
    return-void
.end method

.method public beginBatchEdit()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 151
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    .line 152
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginBatchEdit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return v3
.end method

.method public clearMetaKeyStates(I)Z
    .registers 4
    .parameter "arg0"

    .prologue
    .line 157
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "clearMetaKeyStates"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .registers 4
    .parameter "arg0"

    .prologue
    .line 162
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "commitCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .registers 7
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    const/4 v3, 0x0

    .line 167
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commitText "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_29

    move v0, v3

    .line 171
    :goto_28
    return v0

    .line 169
    :cond_29
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerInputConnection;->isInComposingState:Z

    .line 170
    invoke-direct {p0, p1, p2, v3}, Landroid/webkit/HtmlComposerInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    .line 171
    const/4 v0, 0x1

    goto :goto_28
.end method

.method public deleteSurroundingText(II)Z
    .registers 6
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    .line 175
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteSurroundingText left "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rgh "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_28

    const/4 v0, 0x0

    .line 179
    :goto_27
    return v0

    .line 178
    :cond_28
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/HtmlComposerView;->deleteSurroundingText(II)V

    .line 179
    const/4 v0, 0x1

    goto :goto_27
.end method

.method public endBatchEdit()Z
    .registers 4

    .prologue
    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    .line 184
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endBatchEdit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public finishComposingText()Z
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 189
    const-string v1, "HtmlComposerInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishComposingText  composingStart   composingEnd  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    if-ne v1, v5, :cond_33

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    if-ne v1, v5, :cond_33

    move v1, v6

    .line 203
    :goto_32
    return v1

    .line 192
    :cond_33
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v1, :cond_39

    move v1, v4

    goto :goto_32

    .line 193
    :cond_39
    iput-boolean v4, p0, Landroid/webkit/HtmlComposerInputConnection;->isInComposingState:Z

    .line 194
    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    sub-int v0, v1, v2

    .line 196
    .local v0, n:I
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {v1, v2, v3}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 197
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v2, "HiliteColor"

    const-string v3, "TRANSPARENT"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeUnderLine()V

    .line 200
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1, v4}, Landroid/webkit/HtmlComposerView;->setComposingState(Z)V

    .line 201
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    move v1, v6

    .line 203
    goto :goto_32
.end method

.method public getCursorCapsMode(I)I
    .registers 7
    .parameter "reqModes"

    .prologue
    .line 207
    const-string v3, "HtmlComposerInputConnection"

    const-string v4, "getCursorCapsMode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v2

    .line 211
    .local v2, selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    iget v0, v2, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    .line 213
    .local v0, position:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    sget-object v4, Landroid/webkit/WebView$CursorDirection;->BACKWARD:Landroid/webkit/WebView$CursorDirection;

    invoke-virtual {v3, v0, v4}, Landroid/webkit/HtmlComposerView;->getTextAroundCursor(ILandroid/webkit/WebView$CursorDirection;)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, retText:Ljava/lang/String;
    if-nez v1, :cond_1b

    move v3, p1

    .line 217
    :goto_1a
    return v3

    :cond_1b
    invoke-static {v1, v0, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v3

    goto :goto_1a
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .registers 9
    .parameter "request"
    .parameter "flags"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v5, "HtmlComposerInputConnection"

    .line 223
    const-string v2, "HtmlComposerInputConnection"

    const-string v2, "getExtractedText"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v2, :cond_11

    move-object v2, v4

    .line 244
    :goto_10
    return-object v2

    .line 226
    :cond_11
    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 228
    .local v0, outText:Landroid/view/inputmethod/ExtractedText;
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 229
    iget-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-nez v2, :cond_24

    move-object v2, v4

    .line 230
    goto :goto_10

    .line 231
    :cond_24
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 232
    iput v3, v0, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 234
    iput v3, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 235
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v1

    .line 236
    .local v1, selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    iget v2, v1, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 237
    iget v2, v1, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 238
    const-string v2, "HtmlComposerInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExtractedText outText.selectionStart "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " outText.selectionEnd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    .line 244
    goto :goto_10
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .registers 4
    .parameter "flags"

    .prologue
    .line 248
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "getSelectedText"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .registers 7
    .parameter "n"
    .parameter "flags"

    .prologue
    .line 254
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    .line 257
    :goto_5
    return-object v1

    .line 255
    :cond_6
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/WebView$CursorDirection;->FORWARD:Landroid/webkit/WebView$CursorDirection;

    invoke-virtual {v1, p1, v2}, Landroid/webkit/HtmlComposerView;->getTextAroundCursor(ILandroid/webkit/WebView$CursorDirection;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, retText:Ljava/lang/String;
    const-string v1, "HtmlComposerInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTextAfterCursor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " n "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " flags "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    if-nez v0, :cond_3f

    const-string v1, ""

    goto :goto_5

    :cond_3f
    move-object v1, v0

    goto :goto_5
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .registers 11
    .parameter "n"
    .parameter "flags"

    .prologue
    .line 261
    iget-object v5, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v5, :cond_6

    const/4 v5, 0x0

    .line 280
    :goto_5
    return-object v5

    .line 262
    :cond_6
    iget-object v5, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    sget-object v6, Landroid/webkit/WebView$CursorDirection;->BACKWARD:Landroid/webkit/WebView$CursorDirection;

    invoke-virtual {v5, p1, v6}, Landroid/webkit/HtmlComposerView;->getTextAroundCursor(ILandroid/webkit/WebView$CursorDirection;)Ljava/lang/String;

    move-result-object v4

    .line 263
    .local v4, retText:Ljava/lang/String;
    if-eqz v4, :cond_3e

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1e

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3e

    .line 264
    :cond_1e
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 265
    .local v0, arr:[C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_23
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_38

    .line 267
    aget-char v1, v0, v2

    .line 269
    .local v1, chrVal:C
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 273
    const/16 v5, 0x20

    aput-char v5, v0, v2

    .line 265
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 276
    .end local v1           #chrVal:C
    :cond_38
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    .line 277
    .local v3, rText:Ljava/lang/String;
    move-object v4, v3

    .line 279
    .end local v0           #arr:[C
    .end local v2           #i:I
    .end local v3           #rText:Ljava/lang/String;
    :cond_3e
    const-string v5, "HtmlComposerInputConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTextBeforeCursor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " n "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " flags "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    if-nez v4, :cond_6f

    const-string v5, ""

    goto :goto_5

    :cond_6f
    move-object v5, v4

    goto :goto_5
.end method

.method public performContextMenuAction(I)Z
    .registers 5
    .parameter "id"

    .prologue
    .line 284
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performContextMenuAction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v0, 0x1

    return v0
.end method

.method public performEditorAction(I)Z
    .registers 19
    .parameter "editorAction"

    .prologue
    .line 292
    const-string v2, "HtmlComposerInputConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "performEditorAction "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object v2, v0

    if-nez v2, :cond_25

    const/4 v2, 0x0

    .line 309
    :goto_24
    return v2

    .line 295
    :cond_25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 296
    .local v3, eventTime:J
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/16 v8, 0x42

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x16

    move-wide v5, v3

    invoke-direct/range {v2 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 301
    new-instance v5, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v10, 0x1

    const/16 v11, 0x42

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x16

    move-wide v8, v3

    invoke-direct/range {v5 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 309
    const/4 v2, 0x1

    goto :goto_24
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 5
    .parameter "action"
    .parameter "data"

    .prologue
    .line 313
    const-string v0, "HtmlComposerInputConnection"

    const-string/jumbo v1, "performPrivateCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v0, 0x1

    return v0
.end method

.method public removeComposingSpan()V
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 90
    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 91
    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 92
    const-string v0, "HtmlComposerInputConnection"

    const-string/jumbo v1, "removeComposingSpan called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method public removeUnderLine()V
    .registers 4

    .prologue
    const/4 v1, -0x1

    const-string v2, "HtmlComposerInputConnection"

    .line 96
    const-string v0, "HtmlComposerInputConnection"

    const-string/jumbo v0, "removeUnderLine called"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    if-eq v0, v1, :cond_53

    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    if-eq v0, v1, :cond_53

    .line 98
    const-string v0, "HtmlComposerInputConnection"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " removeUnderLine composingStart  composingEnd  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 103
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v1, "Underline"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 107
    :cond_53
    return-void
.end method

.method public reportFullscreenMode(Z)Z
    .registers 3
    .parameter "enabled"

    .prologue
    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public resetShadeSpan(I)V
    .registers 6
    .parameter "len"

    .prologue
    const/4 v2, -0x1

    const-string v3, "HtmlComposerInputConnection"

    .line 533
    const-string v0, "HtmlComposerInputConnection"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetShadeSpan  - Removing highlite color ---- composingStart = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "composingEnd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    if-eq v0, v2, :cond_60

    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    if-eq v0, v2, :cond_60

    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    if-eq v0, v1, :cond_60

    .line 536
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 538
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v1, "HiliteColor"

    const-string v2, "TRANSPARENT"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    if-eq v0, v1, :cond_60

    .line 542
    const-string v0, "HtmlComposerInputConnection"

    const-string/jumbo v0, "resetShadeSpan  - Removing Underline"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v1, "Underline"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_60
    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 8
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 322
    const-string v3, "HtmlComposerInputConnection"

    const-string/jumbo v4, "sendKeyEvent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v3, :cond_f

    const/4 v3, 0x0

    .line 347
    :goto_e
    return v3

    .line 324
    :cond_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 328
    .local v2, keyCode:I
    const/16 v3, 0x43

    if-ne v2, v3, :cond_30

    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->currCompText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_30

    .line 329
    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->currCompText:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, compstr:Ljava/lang/String;
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_30

    .line 333
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeUnderLine()V

    .line 334
    const-string v3, ""

    iput-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->currCompText:Ljava/lang/CharSequence;

    .line 339
    .end local v0           #compstr:Ljava/lang/String;
    :cond_30
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 340
    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 341
    .local v1, h:Landroid/os/Handler;
    if-eqz v1, :cond_44

    .line 342
    const/16 v3, 0x3f3

    invoke-virtual {v1, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_44
    move v3, v5

    .line 347
    goto :goto_e
.end method

.method public setComposingRegion(II)Z
    .registers 6
    .parameter "start"
    .parameter "end"

    .prologue
    .line 691
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setComposingRegion start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const/4 v0, 0x0

    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .registers 8
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const-string v4, "HtmlComposerInputConnection"

    .line 377
    iput-object p1, p0, Landroid/webkit/HtmlComposerInputConnection;->currCompText:Ljava/lang/CharSequence;

    .line 378
    const-string v0, "HtmlComposerInputConnection"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setComposingText "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_2f

    if-nez p1, :cond_31

    :cond_2f
    const/4 v0, 0x0

    .line 390
    :goto_30
    return v0

    .line 380
    :cond_31
    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    if-ne v0, v3, :cond_40

    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    if-ne v0, v3, :cond_40

    .line 381
    const-string v0, "HtmlComposerInputConnection"

    const-string v0, " Underline apply "

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_40
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerInputConnection;->isInComposingState:Z

    .line 387
    invoke-direct {p0, p1, p2, v2}, Landroid/webkit/HtmlComposerInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    .line 389
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v2}, Landroid/webkit/HtmlComposerView;->setComposingState(Z)V

    move v0, v2

    .line 390
    goto :goto_30
.end method

.method public setSelection(II)Z
    .registers 6
    .parameter "start"
    .parameter "end"

    .prologue
    .line 696
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSelection start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_29

    const/4 v0, 0x0

    .line 699
    :goto_28
    return v0

    .line 698
    :cond_29
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 699
    const/4 v0, 0x1

    goto :goto_28
.end method

.method public setTargetNull()V
    .registers 3

    .prologue
    .line 84
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "HtmlComposerInputConnection setTargetNull()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 86
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 87
    return-void
.end method

.method public updateInputMethodSelection(Z)V
    .registers 6
    .parameter "isCandidate"

    .prologue
    const-string v3, "HtmlComposerInputConnection"

    .line 125
    const-string v1, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateInputMethodSelection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v0

    .line 128
    .local v0, selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    iget v1, v0, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 129
    iget v1, v0, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 130
    const-string v1, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateInputMethodSelection curSelStart curSelEnd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    if-nez p1, :cond_58

    .line 132
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeUnderLine()V

    .line 133
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 135
    :cond_58
    invoke-direct {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 137
    return-void
.end method
