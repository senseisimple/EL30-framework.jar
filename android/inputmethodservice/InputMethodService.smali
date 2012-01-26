.class public Landroid/inputmethodservice/InputMethodService;
.super Landroid/inputmethodservice/AbstractInputMethodService;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/InputMethodService$Insets;,
        Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;,
        Landroid/inputmethodservice/InputMethodService$InputMethodImpl;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final IS_VISIBLE_WINDOW:Ljava/lang/String; = "AxT9IME.isVisibleWindow"

.field static final MOVEMENT_DOWN:I = -0x1

.field static final MOVEMENT_UP:I = -0x2

.field private static final REQUEST_AXT9INFO:Ljava/lang/String; = "RequestAxT9Info"

.field private static final RESPONSE_AXT9INFO:Ljava/lang/String; = "ResponseAxT9Info"

.field static final TAG:Ljava/lang/String; = "InputMethodService"


# instance fields
.field final mActionClickListener:Landroid/view/View$OnClickListener;

.field mCandidatesFrame:Landroid/widget/FrameLayout;

.field mCandidatesViewStarted:Z

.field mCandidatesVisibility:I

.field mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field mExtractAccessories:Landroid/view/ViewGroup;

.field mExtractAction:Landroid/widget/Button;

.field mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

.field private mExtractEditTextBackground:Landroid/graphics/drawable/Drawable;

.field mExtractFrame:Landroid/widget/FrameLayout;

.field mExtractView:Landroid/view/View;

.field mExtractViewHidden:Z

.field mExtractedText:Landroid/view/inputmethod/ExtractedText;

.field mExtractedToken:I

.field mFullscreenApplied:Z

.field mFullscreenArea:Landroid/view/ViewGroup;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field mInShowWindow:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mInitialized:Z

.field mInputBinding:Landroid/view/inputmethod/InputBinding;

.field mInputConnection:Landroid/view/inputmethod/InputConnection;

.field mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field mInputFrame:Landroid/widget/FrameLayout;

.field mInputStarted:Z

.field mInputView:Landroid/view/View;

.field mInputViewStarted:Z

.field final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field mIsFullscreen:Z

.field mIsInputViewShown:Z

.field mIsVisibleWindow:Z

.field mLastShowInputRequested:Z

.field private mOrientation:I

.field mRootView:Landroid/view/View;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field mShowInputFlags:I

.field mShowInputForced:Z

.field mShowInputRequested:Z

.field mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

.field mStatusIcon:I

.field mTheme:I

.field mThemeAttrs:Landroid/content/res/TypedArray;

.field final mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

.field final mTmpLocation:[I

.field mToken:Landroid/os/IBinder;

.field mWindow:Landroid/inputmethodservice/SoftInputWindow;

.field mWindowAdded:Z

.field mWindowCreated:Z

.field mWindowVisible:Z

.field mWindowWasVisible:Z

.field private reqReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 230
    invoke-direct {p0}, Landroid/inputmethodservice/AbstractInputMethodService;-><init>()V

    .line 236
    const v0, 0x1030054

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    .line 286
    new-instance v0, Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-direct {v0}, Landroid/inputmethodservice/InputMethodService$Insets;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    .line 287
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpLocation:[I

    .line 290
    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mOrientation:I

    .line 311
    new-instance v0, Landroid/inputmethodservice/InputMethodService$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$1;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 336
    new-instance v0, Landroid/inputmethodservice/InputMethodService$2;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$2;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->reqReceiver:Landroid/content/BroadcastReceiver;

    .line 358
    new-instance v0, Landroid/inputmethodservice/InputMethodService$3;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$3;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 377
    new-instance v0, Landroid/inputmethodservice/InputMethodService$4;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$4;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mActionClickListener:Landroid/view/View$OnClickListener;

    .line 567
    return-void
.end method

.method static synthetic access$000(Landroid/inputmethodservice/InputMethodService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 230
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->handleClose()V

    return-void
.end method

.method static synthetic access$100(Landroid/inputmethodservice/InputMethodService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 230
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getIsVisibleWindow()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/inputmethodservice/InputMethodService;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 230
    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onToggleSoftInput(II)V

    return-void
.end method

.method private getIsVisibleWindow()Z
    .registers 2

    .prologue
    .line 333
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsVisibleWindow:Z

    return v0
.end method

.method private handleBack(Z)Z
    .registers 5
    .parameter "doIt"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1798
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v0, :cond_d

    .line 1801
    if-eqz p1, :cond_b

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    :cond_b
    move v0, v2

    .line 1816
    :goto_c
    return v0

    .line 1803
    :cond_d
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v0, :cond_22

    .line 1804
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v0, :cond_1c

    .line 1807
    if-eqz p1, :cond_1a

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    :cond_1a
    :goto_1a
    move v0, v2

    .line 1814
    goto :goto_c

    .line 1812
    :cond_1c
    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    goto :goto_1a

    :cond_22
    move v0, v1

    .line 1816
    goto :goto_c
.end method

.method private handleClose()V
    .registers 2

    .prologue
    .line 322
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    .line 324
    return-void
.end method

.method private onToggleSoftInput(II)V
    .registers 4
    .parameter "showFlags"
    .parameter "hideFlags"

    .prologue
    .line 1901
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1902
    invoke-virtual {p0, p2}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    .line 1906
    :goto_9
    return-void

    .line 1904
    :cond_a
    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->requestShowSelf(I)V

    goto :goto_9
.end method

.method private requestShowSelf(I)V
    .registers 4
    .parameter "flags"

    .prologue
    .line 1794
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 1795
    return-void
.end method

.method private sendInputViewShownState()V
    .registers 4

    .prologue
    .line 349
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 350
    .local v0, respInt:Landroid/content/Intent;
    const-string v1, "ResponseAxT9Info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    const-string v1, "AxT9IME.isVisibleWindow"

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getIsVisibleWindow()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->sendBroadcast(Landroid/content/Intent;)V

    .line 353
    return-void
.end method

.method private setFlagIsVisibleWindow(Z)V
    .registers 2
    .parameter "isVisibleWindow"

    .prologue
    .line 329
    iput-boolean p1, p0, Landroid/inputmethodservice/InputMethodService;->mIsVisibleWindow:Z

    .line 330
    return-void
.end method


# virtual methods
.method doFinishInput()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1644
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    if-eqz v0, :cond_1c

    .line 1646
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    .line 1651
    :cond_a
    :goto_a
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 1652
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 1653
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v0, :cond_15

    .line 1655
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    .line 1657
    :cond_15
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    .line 1658
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 1659
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1660
    return-void

    .line 1647
    :cond_1c
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    if-eqz v0, :cond_a

    .line 1649
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->onFinishCandidatesView(Z)V

    goto :goto_a
.end method

.method doMovementKey(ILandroid/view/KeyEvent;I)Z
    .registers 12
    .parameter "keyCode"
    .parameter "event"
    .parameter "count"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1931
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 1932
    .local v1, eet:Landroid/inputmethodservice/ExtractEditText;
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v5

    if-eqz v5, :cond_4f

    if-eqz v1, :cond_4f

    .line 1936
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v3

    .line 1937
    .local v3, movement:Landroid/text/method/MovementMethod;
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 1938
    .local v2, layout:Landroid/text/Layout;
    if-eqz v3, :cond_4c

    if-eqz v2, :cond_4c

    .line 1941
    const/4 v5, -0x1

    if-ne p3, v5, :cond_30

    .line 1942
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v3, v1, v5, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 1944
    invoke-virtual {p0, p1, v6}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    move v5, v6

    .line 1984
    .end local v2           #layout:Landroid/text/Layout;
    .end local v3           #movement:Landroid/text/method/MovementMethod;
    :goto_2f
    return v5

    .line 1947
    .restart local v2       #layout:Landroid/text/Layout;
    .restart local v3       #movement:Landroid/text/method/MovementMethod;
    :cond_30
    const/4 v5, -0x2

    if-ne p3, v5, :cond_3f

    .line 1948
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v3, v1, v5, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_4c

    move v5, v6

    .line 1950
    goto :goto_2f

    .line 1953
    :cond_3f
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v3, v1, v5, p2}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 1954
    invoke-virtual {p0, p1, p3}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    .line 1975
    :cond_4c
    :goto_4c
    packed-switch p1, :pswitch_data_84

    .end local v2           #layout:Landroid/text/Layout;
    .end local v3           #movement:Landroid/text/method/MovementMethod;
    :cond_4f
    move v5, v7

    .line 1984
    goto :goto_2f

    .line 1956
    .restart local v2       #layout:Landroid/text/Layout;
    .restart local v3       #movement:Landroid/text/method/MovementMethod;
    :cond_51
    invoke-static {p2, v7}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 1957
    .local v0, down:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v3, v1, v5, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 1959
    invoke-static {p2, v6}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v4

    .line 1960
    .local v4, up:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v3, v1, v5, p1, v4}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 1962
    :goto_6a
    add-int/lit8 p3, p3, -0x1

    if-lez p3, :cond_7d

    .line 1963
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v3, v1, v5, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 1965
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v3, v1, v5, p1, v4}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    goto :goto_6a

    .line 1968
    :cond_7d
    invoke-virtual {p0, p1, p3}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    goto :goto_4c

    .end local v0           #down:Landroid/view/KeyEvent;
    .end local v4           #up:Landroid/view/KeyEvent;
    :pswitch_81
    move v5, v6

    .line 1980
    goto :goto_2f

    .line 1975
    nop

    :pswitch_data_84
    .packed-switch 0x13
        :pswitch_81
        :pswitch_81
        :pswitch_81
        :pswitch_81
    .end packed-switch
.end method

.method doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 6
    .parameter "ic"
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    const/4 v1, 0x1

    .line 1663
    if-nez p3, :cond_6

    .line 1664
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->doFinishInput()V

    .line 1666
    :cond_6
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    .line 1667
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 1668
    iput-object p2, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 1669
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 1671
    invoke-virtual {p0, p2, p3}, Landroid/inputmethodservice/InputMethodService;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1672
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v0, :cond_24

    .line 1673
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v0, :cond_25

    .line 1675
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 1676
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v0, p3}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1677
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    .line 1684
    :cond_24
    :goto_24
    return-void

    .line 1678
    :cond_25
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v0, :cond_24

    .line 1680
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 1681
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v0, p3}, Landroid/inputmethodservice/InputMethodService;->onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V

    goto :goto_24
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .parameter "fd"
    .parameter "fout"
    .parameter "args"

    .prologue
    .line 2369
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 2370
    .local v0, p:Landroid/util/Printer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input method service state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWindowCreated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWindowAdded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWindowVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWindowWasVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mInShowWindow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Configuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInputBinding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStartedInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInputStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mInputViewStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCandidatesViewStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2385
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_29c

    .line 2386
    const-string v1, "  mInputEditorInfo:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2387
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const-string v2, "    "

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 2392
    :goto_133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mShowInputRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLastShowInputRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mShowInputForced="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputForced:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mShowInputFlags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCandidatesVisibility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFullscreenApplied="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsFullscreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mExtractViewHidden="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2401
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v1, :cond_2a3

    .line 2402
    const-string v1, "  mExtractedText:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget-object v2, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chars"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    selectionStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selectionEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->flags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2411
    :goto_224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExtractedToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIsInputViewShown="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mStatusIcon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2414
    const-string v1, "Last computed insets:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  contentTopInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " visibleTopInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " touchableInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2418
    return-void

    .line 2389
    :cond_29c
    const-string v1, "  mInputEditorInfo: null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_133

    .line 2409
    :cond_2a3
    const-string v1, "  mExtractedText: null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_224
.end method

.method public getCandidatesHiddenVisibility()I
    .registers 2

    .prologue
    .line 1165
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x4

    goto :goto_8
.end method

.method public getCurrentInputBinding()Landroid/view/inputmethod/InputBinding;
    .registers 2

    .prologue
    .line 848
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    return-object v0
.end method

.method public getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
    .registers 3

    .prologue
    .line 856
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 857
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_6

    move-object v1, v0

    .line 860
    :goto_5
    return-object v1

    :cond_6
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    goto :goto_5
.end method

.method public getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .registers 2

    .prologue
    .line 868
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-object v0
.end method

.method public getCurrentInputStarted()Z
    .registers 2

    .prologue
    .line 864
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .prologue
    .line 815
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getMaxWidth()I
    .registers 3

    .prologue
    .line 839
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 840
    .local v0, wm:Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    return v1
.end method

.method public getTextForImeAction(I)Ljava/lang/CharSequence;
    .registers 3
    .parameter "imeOptions"

    .prologue
    .line 2154
    and-int/lit16 v0, p1, 0xff

    packed-switch v0, :pswitch_data_38

    .line 2168
    const v0, 0x1040493

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_c
    return-object v0

    .line 2156
    :pswitch_d
    const/4 v0, 0x0

    goto :goto_c

    .line 2158
    :pswitch_f
    const v0, 0x104048d

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    .line 2160
    :pswitch_17
    const v0, 0x104048e

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    .line 2162
    :pswitch_1f
    const v0, 0x104048f

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    .line 2164
    :pswitch_27
    const v0, 0x1040491

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    .line 2166
    :pswitch_2f
    const v0, 0x1040492

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    .line 2154
    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_d
        :pswitch_f
        :pswitch_17
        :pswitch_1f
        :pswitch_27
        :pswitch_2f
    .end packed-switch
.end method

.method public getWindow()Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 819
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    return-object v0
.end method

.method public hideStatusIcon()V
    .registers 3

    .prologue
    .line 1174
    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    .line 1175
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideStatusIcon(Landroid/os/IBinder;)V

    .line 1176
    return-void
.end method

.method public hideWindow()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1520
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    if-eqz v5, :cond_48

    .line 1522
    invoke-virtual {p0, v7}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    .line 1527
    :cond_8
    :goto_8
    iput-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 1528
    iput-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 1529
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v5, :cond_26

    .line 1531
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v5}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/view/Window;->closePanel(I)V

    .line 1533
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v5}, Landroid/inputmethodservice/SoftInputWindow;->hide()V

    .line 1534
    iput-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    .line 1535
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowHidden()V

    .line 1536
    iput-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    .line 1542
    :cond_26
    invoke-direct {p0, v7}, Landroid/inputmethodservice/InputMethodService;->setFlagIsVisibleWindow(Z)V

    .line 1543
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->sendInputViewShownState()V

    .line 1550
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateFullscreenMode()V

    .line 1556
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 1557
    .local v4, originalIc:Landroid/view/inputmethod/InputConnection;
    const/4 v1, 0x0

    .line 1558
    .local v1, icBaseInputConnection:Landroid/view/inputmethod/BaseInputConnection;
    const/4 v2, 0x0

    .line 1559
    .local v2, icInputConnectionWrapper:Landroid/view/inputmethod/InputConnectionWrapper;
    const/4 v3, 0x0

    .line 1561
    .local v3, icInternalInputConnectionWrapper:Lcom/android/internal/view/InputConnectionWrapper;
    instance-of v5, v4, Landroid/view/inputmethod/BaseInputConnection;

    if-eqz v5, :cond_50

    .line 1562
    move-object v0, v4

    check-cast v0, Landroid/view/inputmethod/BaseInputConnection;

    move-object v1, v0

    .line 1571
    :cond_3e
    :goto_3e
    if-eqz v1, :cond_62

    .line 1572
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getIsVisibleWindow()Z

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/inputmethod/BaseInputConnection;->reportIsSoftInputMethodShowing(Z)Z

    .line 1580
    :cond_47
    :goto_47
    return-void

    .line 1523
    .end local v1           #icBaseInputConnection:Landroid/view/inputmethod/BaseInputConnection;
    .end local v2           #icInputConnectionWrapper:Landroid/view/inputmethod/InputConnectionWrapper;
    .end local v3           #icInternalInputConnectionWrapper:Lcom/android/internal/view/InputConnectionWrapper;
    .end local v4           #originalIc:Landroid/view/inputmethod/InputConnection;
    :cond_48
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    if-eqz v5, :cond_8

    .line 1525
    invoke-virtual {p0, v7}, Landroid/inputmethodservice/InputMethodService;->onFinishCandidatesView(Z)V

    goto :goto_8

    .line 1563
    .restart local v1       #icBaseInputConnection:Landroid/view/inputmethod/BaseInputConnection;
    .restart local v2       #icInputConnectionWrapper:Landroid/view/inputmethod/InputConnectionWrapper;
    .restart local v3       #icInternalInputConnectionWrapper:Lcom/android/internal/view/InputConnectionWrapper;
    .restart local v4       #originalIc:Landroid/view/inputmethod/InputConnection;
    :cond_50
    instance-of v5, v4, Landroid/view/inputmethod/InputConnectionWrapper;

    if-eqz v5, :cond_59

    .line 1564
    move-object v0, v4

    check-cast v0, Landroid/view/inputmethod/InputConnectionWrapper;

    move-object v2, v0

    goto :goto_3e

    .line 1565
    :cond_59
    instance-of v5, v4, Lcom/android/internal/view/InputConnectionWrapper;

    if-eqz v5, :cond_3e

    .line 1566
    move-object v0, v4

    check-cast v0, Lcom/android/internal/view/InputConnectionWrapper;

    move-object v3, v0

    goto :goto_3e

    .line 1573
    :cond_62
    if-eqz v2, :cond_6c

    .line 1574
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getIsVisibleWindow()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/inputmethod/InputConnectionWrapper;->reportIsSoftInputMethodShowing(Z)Z

    goto :goto_47

    .line 1575
    :cond_6c
    if-eqz v3, :cond_47

    .line 1576
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getIsVisibleWindow()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/internal/view/InputConnectionWrapper;->reportIsSoftInputMethodShowing(Z)Z

    goto :goto_47
.end method

.method initViews()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 680
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    .line 681
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    .line 682
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    .line 683
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputForced:Z

    .line 685
    sget-object v0, Landroid/R$styleable;->InputMethodService:[I

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    .line 686
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x109002f

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    .line 688
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/SoftInputWindow;->setContentView(Landroid/view/View;)V

    .line 689
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 690
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fancy_ime_animations"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_49

    .line 692
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1030076

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 695
    :cond_49
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v1, 0x10201d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    .line 696
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    .line 697
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v1, 0x102001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    .line 698
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    .line 699
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 700
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    .line 701
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    .line 702
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    .line 704
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v1, 0x102001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    .line 705
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v1, 0x102001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    .line 706
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    .line 707
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    .line 709
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 710
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCandidatesHiddenVisibility()I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    .line 711
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 712
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 713
    return-void
.end method

.method initialize()V
    .registers 2

    .prologue
    .line 673
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    if-nez v0, :cond_a

    .line 674
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    .line 675
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onInitializeInterface()V

    .line 677
    :cond_a
    return-void
.end method

.method public isExtractViewShown()Z
    .registers 2

    .prologue
    .line 1014
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isFullscreenMode()Z
    .registers 2

    .prologue
    .line 953
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    return v0
.end method

.method public isInputViewShown()Z
    .registers 2

    .prologue
    .line 1111
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isShowInputRequested()Z
    .registers 2

    .prologue
    .line 1102
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    return v0
.end method

.method public onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .parameter "action"
    .parameter "data"

    .prologue
    .line 1894
    return-void
.end method

.method public onBindInput()V
    .registers 1

    .prologue
    .line 1605
    return-void
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .registers 6
    .parameter "outInsets"

    .prologue
    const/4 v3, 0x1

    .line 1054
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpLocation:[I

    .line 1055
    .local v1, loc:[I
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3d

    .line 1056
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 1061
    :goto_10
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 1063
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1064
    .local v0, decor:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 1068
    .end local v0           #decor:Landroid/view/View;
    :goto_28
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_35

    .line 1069
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 1071
    :cond_35
    aget v2, v1, v3

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    .line 1072
    const/4 v2, 0x2

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    .line 1073
    return-void

    .line 1058
    :cond_3d
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1059
    .restart local v0       #decor:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    aput v2, v1, v3

    goto :goto_10

    .line 1066
    .end local v0           #decor:Landroid/view/View;
    :cond_50
    aget v2, v1, v3

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    goto :goto_28
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 10
    .parameter "newConfig"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 755
    invoke-super {p0, p1}, Landroid/inputmethodservice/AbstractInputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 757
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    .line 758
    .local v3, visible:Z
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    .line 759
    .local v1, showFlags:I
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    .line 760
    .local v2, showingInput:Z
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 761
    .local v0, completions:[Landroid/view/inputmethod/CompletionInfo;
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initViews()V

    .line 762
    iput-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 763
    iput-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 764
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v4, :cond_23

    .line 765
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v7}, Landroid/inputmethodservice/InputMethodService;->doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 768
    :cond_23
    if-eqz v3, :cond_37

    .line 769
    if-eqz v2, :cond_50

    .line 771
    invoke-virtual {p0, v1, v7}, Landroid/inputmethodservice/InputMethodService;->onShowInputRequested(IZ)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 772
    invoke-virtual {p0, v7}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    .line 773
    if-eqz v0, :cond_37

    .line 774
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 775
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 791
    :cond_37
    :goto_37
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    iget v5, p0, Landroid/inputmethodservice/InputMethodService;->mOrientation:I

    if-eq v4, v5, :cond_47

    .line 792
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v4}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/view/Window;->closePanel(I)V

    .line 794
    :cond_47
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Landroid/inputmethodservice/InputMethodService;->mOrientation:I

    .line 796
    return-void

    .line 778
    :cond_4c
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    goto :goto_37

    .line 780
    :cond_50
    iget v4, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v4, :cond_58

    .line 783
    invoke-virtual {p0, v6}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    goto :goto_37

    .line 786
    :cond_58
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    goto :goto_37
.end method

.method public onConfigureWindow(Landroid/view/Window;ZZ)V
    .registers 7
    .parameter "win"
    .parameter "isFullscreen"
    .parameter "isCandidatesOnly"

    .prologue
    const/4 v2, -0x1

    .line 940
    if-eqz p2, :cond_d

    .line 941
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 945
    :goto_c
    return-void

    .line 943
    :cond_d
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setLayout(II)V

    goto :goto_c
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 636
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    invoke-super {p0, v0}, Landroid/inputmethodservice/AbstractInputMethodService;->setTheme(I)V

    .line 637
    invoke-super {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->onCreate()V

    .line 638
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 639
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    .line 641
    new-instance v0, Landroid/inputmethodservice/SoftInputWindow;

    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    iget-object v2, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v0, p0, v1, v2}, Landroid/inputmethodservice/SoftInputWindow;-><init>(Landroid/content/Context;ILandroid/view/KeyEvent$DispatcherState;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    .line 642
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initViews()V

    .line 643
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 647
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->reqReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "RequestAxT9Info"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/inputmethodservice/InputMethodService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 653
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/inputmethodservice/InputMethodService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 658
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mOrientation:I

    .line 661
    return-void
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1262
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateExtractTextView()Landroid/view/View;
    .registers 4

    .prologue
    .line 1247
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090030

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateInputMethodInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;
    .registers 2

    .prologue
    .line 803
    new-instance v0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    return-object v0
.end method

.method public onCreateInputMethodSessionInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;
    .registers 2

    .prologue
    .line 811
    new-instance v0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1277
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 716
    invoke-super {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->onDestroy()V

    .line 717
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 719
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    if-eqz v0, :cond_17

    .line 720
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->dismiss()V

    .line 725
    :cond_17
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->reqReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 732
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 736
    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .registers 2
    .parameter "completions"

    .prologue
    .line 1715
    return-void
.end method

.method public onEvaluateFullscreenMode()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 965
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 966
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_10

    move v1, v3

    .line 984
    :goto_f
    return v1

    .line 973
    :cond_10
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x1000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1f

    move v1, v3

    .line 975
    goto :goto_f

    .line 980
    :cond_1f
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, -0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2e

    move v1, v3

    .line 982
    goto :goto_f

    .line 984
    :cond_2e
    const/4 v1, 0x1

    goto :goto_f
.end method

.method public onEvaluateInputViewShown()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1123
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1124
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v3, :cond_12

    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_14

    :cond_12
    move v1, v3

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public onExtractTextContextMenuItem(I)Z
    .registers 4
    .parameter "id"

    .prologue
    .line 2135
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2136
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_9

    .line 2137
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 2139
    :cond_9
    const/4 v1, 0x1

    return v1
.end method

.method public onExtractedCursorMovement(II)V
    .registers 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 2118
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_6

    if-nez p2, :cond_7

    .line 2124
    :cond_6
    :goto_6
    return-void

    .line 2121
    :cond_7
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->hasVerticalScrollBar()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    goto :goto_6
.end method

.method public onExtractedSelectionChanged(II)V
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2085
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2086
    .local v0, conn:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_9

    .line 2087
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 2089
    :cond_9
    return-void
.end method

.method public onExtractedTextClicked()V
    .registers 2

    .prologue
    .line 2099
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_5

    .line 2105
    :cond_4
    :goto_4
    return-void

    .line 2102
    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->hasVerticalScrollBar()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    goto :goto_4
.end method

.method public onExtractingInputChanged(Landroid/view/inputmethod/EditorInfo;)V
    .registers 3
    .parameter "ei"

    .prologue
    .line 2244
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v0, :cond_8

    .line 2245
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    .line 2247
    :cond_8
    return-void
.end method

.method public onFinishCandidatesView(Z)V
    .registers 3
    .parameter "finishingInput"

    .prologue
    .line 1352
    if-nez p1, :cond_b

    .line 1353
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1354
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_b

    .line 1355
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1358
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_b
    return-void
.end method

.method public onFinishInput()V
    .registers 2

    .prologue
    .line 1699
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1700
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_9

    .line 1701
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1703
    :cond_9
    return-void
.end method

.method public onFinishInputView(Z)V
    .registers 3
    .parameter "finishingInput"

    .prologue
    .line 1308
    if-nez p1, :cond_b

    .line 1309
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1310
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_b

    .line 1311
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1314
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_b
    return-void
.end method

.method public onInitializeInterface()V
    .registers 1

    .prologue
    .line 670
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 1833
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_15

    .line 1834
    invoke-direct {p0, v2}, Landroid/inputmethodservice/InputMethodService;->handleBack(Z)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1835
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1836
    const/4 v0, 0x1

    .line 1840
    :goto_12
    return v0

    :cond_13
    move v0, v2

    .line 1838
    goto :goto_12

    .line 1840
    :cond_15
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result v0

    goto :goto_12
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1849
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    .line 1865
    invoke-virtual {p0, p1, p3, p2}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1881
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_19

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1883
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/inputmethodservice/InputMethodService;->handleBack(Z)Z

    move-result v0

    .line 1886
    :goto_18
    return v0

    :cond_19
    const/4 v0, -0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result v0

    goto :goto_18
.end method

.method public onShowInputRequested(IZ)Z
    .registers 7
    .parameter "flags"
    .parameter "configChange"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1376
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v1

    if-nez v1, :cond_a

    move v1, v3

    .line 1403
    :goto_9
    return v1

    .line 1379
    :cond_a
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_2a

    .line 1380
    if-nez p2, :cond_18

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_18

    move v1, v3

    .line 1386
    goto :goto_9

    .line 1388
    :cond_18
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1389
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v2, :cond_2a

    .line 1395
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v2, :cond_2a

    move v1, v3

    .line 1396
    goto :goto_9

    .line 1400
    .end local v0           #config:Landroid/content/res/Configuration;
    :cond_2a
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_30

    .line 1401
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputForced:Z

    :cond_30
    move v1, v2

    .line 1403
    goto :goto_9
.end method

.method public onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 3
    .parameter "info"
    .parameter "restarting"

    .prologue
    .line 1336
    return-void
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 6
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    .line 1633
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1634
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_19

    if-eqz p2, :cond_19

    .line 1636
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v1}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/view/Window;->closePanel(I)V

    .line 1641
    :cond_19
    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 3
    .parameter "info"
    .parameter "restarting"

    .prologue
    .line 1292
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 1890
    const/4 v0, 0x0

    return v0
.end method

.method public onUnbindInput()V
    .registers 1

    .prologue
    .line 1614
    return-void
.end method

.method public onUpdateCursor(Landroid/graphics/Rect;)V
    .registers 2
    .parameter "newCursor"

    .prologue
    .line 1769
    return-void
.end method

.method public onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .registers 4
    .parameter "token"
    .parameter "text"

    .prologue
    .line 1724
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    if-eq v0, p1, :cond_5

    .line 1733
    :cond_4
    :goto_4
    return-void

    .line 1727
    :cond_5
    if-eqz p2, :cond_4

    .line 1728
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_4

    .line 1729
    iput-object p2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 1730
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0, p2}, Landroid/inputmethodservice/ExtractEditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V

    goto :goto_4
.end method

.method public onUpdateExtractingViews(Landroid/view/inputmethod/EditorInfo;)V
    .registers 7
    .parameter "ei"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2208
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v1

    if-nez v1, :cond_9

    .line 2235
    :cond_8
    :goto_8
    return-void

    .line 2212
    :cond_9
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    if-eqz v1, :cond_8

    .line 2215
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    if-nez v1, :cond_22

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v1, v1, 0xff

    if-eq v1, v4, :cond_41

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x2000

    and-int/2addr v1, v2

    if-nez v1, :cond_41

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v1, :cond_41

    :cond_22
    move v0, v4

    .line 2219
    .local v0, hasAction:Z
    :goto_23
    if-eqz v0, :cond_4f

    .line 2220
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2221
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    if-eqz v1, :cond_8

    .line 2222
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_43

    .line 2223
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2227
    :goto_39
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mActionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8

    .end local v0           #hasAction:Z
    :cond_41
    move v0, v3

    .line 2215
    goto :goto_23

    .line 2225
    .restart local v0       #hasAction:Z
    :cond_43
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->getTextForImeAction(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_39

    .line 2230
    :cond_4f
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2231
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    if-eqz v1, :cond_8

    .line 2232
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8
.end method

.method public onUpdateExtractingVisibility(Landroid/view/inputmethod/EditorInfo;)V
    .registers 4
    .parameter "ei"

    .prologue
    .line 2182
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v0, :cond_b

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x1000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    .line 2185
    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setExtractViewShown(Z)V

    .line 2190
    :goto_f
    return-void

    .line 2189
    :cond_10
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setExtractViewShown(Z)V

    goto :goto_f
.end method

.method public onUpdateSelection(IIIIII)V
    .registers 11
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newSelStart"
    .parameter "newSelEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    .line 1747
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 1748
    .local v0, eet:Landroid/inputmethodservice/ExtractEditText;
    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v3, :cond_2b

    .line 1749
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v3, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 1750
    .local v2, off:I
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->startInternalChanges()V

    .line 1751
    sub-int/2addr p3, v2

    .line 1752
    sub-int/2addr p4, v2

    .line 1753
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v1

    .line 1754
    .local v1, len:I
    if-gez p3, :cond_2c

    const/4 p3, 0x0

    .line 1756
    :cond_22
    :goto_22
    if-gez p4, :cond_30

    const/4 p4, 0x0

    .line 1758
    :cond_25
    :goto_25
    invoke-virtual {v0, p3, p4}, Landroid/inputmethodservice/ExtractEditText;->setSelection(II)V

    .line 1759
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    .line 1761
    .end local v1           #len:I
    .end local v2           #off:I
    :cond_2b
    return-void

    .line 1755
    .restart local v1       #len:I
    .restart local v2       #off:I
    :cond_2c
    if-le p3, v1, :cond_22

    move p3, v1

    goto :goto_22

    .line 1757
    :cond_30
    if-le p4, v1, :cond_25

    move p4, v1

    goto :goto_25
.end method

.method public onWindowHidden()V
    .registers 1

    .prologue
    .line 1595
    return-void
.end method

.method public onWindowShown()V
    .registers 1

    .prologue
    .line 1588
    return-void
.end method

.method reportExtractedMovement(II)V
    .registers 5
    .parameter "keyCode"
    .parameter "count"

    .prologue
    .line 1912
    const/4 v0, 0x0

    .local v0, dx:I
    const/4 v1, 0x0

    .line 1913
    .local v1, dy:I
    packed-switch p1, :pswitch_data_12

    .line 1927
    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/inputmethodservice/InputMethodService;->onExtractedCursorMovement(II)V

    .line 1928
    return-void

    .line 1915
    :pswitch_9
    neg-int v0, p2

    .line 1916
    goto :goto_5

    .line 1918
    :pswitch_b
    move v0, p2

    .line 1919
    goto :goto_5

    .line 1921
    :pswitch_d
    neg-int v1, p2

    .line 1922
    goto :goto_5

    .line 1924
    :pswitch_f
    move v1, p2

    goto :goto_5

    .line 1913
    nop

    :pswitch_data_12
    .packed-switch 0x13
        :pswitch_d
        :pswitch_f
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method public requestHideSelf(I)V
    .registers 4
    .parameter "flags"

    .prologue
    .line 1780
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 1781
    return-void
.end method

.method public sendDefaultEditorAction(Z)Z
    .registers 7
    .parameter "fromEnterKey"

    .prologue
    const/4 v4, 0x1

    .line 2028
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 2029
    .local v0, ei:Landroid/view/inputmethod/EditorInfo;
    if-eqz v0, :cond_25

    if-eqz p1, :cond_10

    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x4000

    and-int/2addr v2, v3

    if-nez v2, :cond_25

    :cond_10
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    if-eq v2, v4, :cond_25

    .line 2037
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 2038
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_23

    .line 2039
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    :cond_23
    move v2, v4

    .line 2044
    .end local v1           #ic:Landroid/view/inputmethod/InputConnection;
    :goto_24
    return v2

    :cond_25
    const/4 v2, 0x0

    goto :goto_24
.end method

.method public sendDownUpKeyEvents(I)V
    .registers 18
    .parameter "keyEventCode"

    .prologue
    .line 2000
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v15

    .line 2001
    .local v15, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v15, :cond_7

    .line 2009
    :goto_6
    return-void

    .line 2002
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2003
    .local v1, eventTime:J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-wide v3, v1

    move/from16 v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v15, v0}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2006
    new-instance v3, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x6

    move-wide v6, v1

    move/from16 v9, p1

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v15, v3}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_6
.end method

.method public sendKeyChar(C)V
    .registers 6
    .parameter "charCode"

    .prologue
    const/16 v3, 0x30

    const/4 v2, 0x1

    .line 2058
    packed-switch p1, :pswitch_data_2e

    .line 2066
    if-lt p1, v3, :cond_20

    const/16 v1, 0x39

    if-gt p1, v1, :cond_20

    .line 2067
    sub-int v1, p1, v3

    add-int/lit8 v1, v1, 0x7

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    .line 2076
    :cond_13
    :goto_13
    return-void

    .line 2060
    :pswitch_14
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->sendDefaultEditorAction(Z)Z

    move-result v1

    if-nez v1, :cond_13

    .line 2061
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    goto :goto_13

    .line 2069
    :cond_20
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2070
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_13

    .line 2071
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_13

    .line 2058
    :pswitch_data_2e
    .packed-switch 0xa
        :pswitch_14
    .end packed-switch
.end method

.method public setCandidatesView(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 1220
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1221
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1224
    return-void
.end method

.method public setCandidatesViewShown(Z)V
    .registers 3
    .parameter "shown"

    .prologue
    .line 1133
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->updateCandidatesVisibility(Z)V

    .line 1134
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eq v0, p1, :cond_11

    .line 1138
    if-eqz p1, :cond_12

    .line 1139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    .line 1144
    :cond_11
    :goto_11
    return-void

    .line 1141
    :cond_12
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    goto :goto_11
.end method

.method public setExtractView(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1190
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1191
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1194
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    .line 1195
    if-eqz p1, :cond_44

    .line 1196
    const v0, 0x1020025

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/ExtractEditText;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 1198
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0, p0}, Landroid/inputmethodservice/ExtractEditText;->setIME(Landroid/inputmethodservice/InputMethodService;)V

    .line 1199
    const v0, 0x10201d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    .line 1201
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    if-eqz v0, :cond_3f

    .line 1202
    const v0, 0x10201d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    .line 1205
    :cond_3f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    .line 1211
    :goto_43
    return-void

    .line 1207
    :cond_44
    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 1208
    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    .line 1209
    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    goto :goto_43
.end method

.method public setExtractViewShown(Z)V
    .registers 3
    .parameter "shown"

    .prologue
    .line 997
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    if-ne v0, p1, :cond_c

    .line 998
    if-nez p1, :cond_d

    const/4 v0, 0x1

    :goto_7
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    .line 999
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateExtractFrameVisibility()V

    .line 1001
    :cond_c
    return-void

    .line 998
    :cond_d
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setInputView(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 1233
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1234
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1237
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    .line 1238
    return-void
.end method

.method public setTheme(I)V
    .registers 4
    .parameter "theme"

    .prologue
    .line 629
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_c

    .line 630
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 632
    :cond_c
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    .line 633
    return-void
.end method

.method public showStatusIcon(I)V
    .registers 5
    .parameter "iconResId"

    .prologue
    .line 1169
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    .line 1170
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/inputmethod/InputMethodManager;->showStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 1171
    return-void
.end method

.method public showWindow(Z)V
    .registers 10
    .parameter "showInput"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1414
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    if-eqz v5, :cond_e

    .line 1415
    const-string v5, "InputMethodService"

    const-string v6, "Re-entrance in to showWindow"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    :cond_d
    :goto_d
    return-void

    .line 1420
    :cond_e
    :try_start_e
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    .line 1421
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    .line 1422
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->showWindowInner(Z)V
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_3b

    .line 1424
    iput-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    .line 1425
    iput-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    .line 1431
    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->setFlagIsVisibleWindow(Z)V

    .line 1433
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->sendInputViewShownState()V

    .line 1439
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 1440
    .local v4, originalIc:Landroid/view/inputmethod/InputConnection;
    const/4 v1, 0x0

    .line 1441
    .local v1, icBaseInputConnection:Landroid/view/inputmethod/BaseInputConnection;
    const/4 v2, 0x0

    .line 1442
    .local v2, icInputConnectionWrapper:Landroid/view/inputmethod/InputConnectionWrapper;
    const/4 v3, 0x0

    .line 1444
    .local v3, icInternalInputConnectionWrapper:Lcom/android/internal/view/InputConnectionWrapper;
    instance-of v5, v4, Landroid/view/inputmethod/BaseInputConnection;

    if-eqz v5, :cond_41

    .line 1445
    move-object v0, v4

    check-cast v0, Landroid/view/inputmethod/BaseInputConnection;

    move-object v1, v0

    .line 1454
    :cond_31
    :goto_31
    if-eqz v1, :cond_53

    .line 1455
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getIsVisibleWindow()Z

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/inputmethod/BaseInputConnection;->reportIsSoftInputMethodShowing(Z)Z

    goto :goto_d

    .line 1424
    .end local v1           #icBaseInputConnection:Landroid/view/inputmethod/BaseInputConnection;
    .end local v2           #icInputConnectionWrapper:Landroid/view/inputmethod/InputConnectionWrapper;
    .end local v3           #icInternalInputConnectionWrapper:Lcom/android/internal/view/InputConnectionWrapper;
    .end local v4           #originalIc:Landroid/view/inputmethod/InputConnection;
    :catchall_3b
    move-exception v5

    iput-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    .line 1425
    iput-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    .line 1424
    throw v5

    .line 1446
    .restart local v1       #icBaseInputConnection:Landroid/view/inputmethod/BaseInputConnection;
    .restart local v2       #icInputConnectionWrapper:Landroid/view/inputmethod/InputConnectionWrapper;
    .restart local v3       #icInternalInputConnectionWrapper:Lcom/android/internal/view/InputConnectionWrapper;
    .restart local v4       #originalIc:Landroid/view/inputmethod/InputConnection;
    :cond_41
    instance-of v5, v4, Landroid/view/inputmethod/InputConnectionWrapper;

    if-eqz v5, :cond_4a

    .line 1447
    move-object v0, v4

    check-cast v0, Landroid/view/inputmethod/InputConnectionWrapper;

    move-object v2, v0

    goto :goto_31

    .line 1448
    :cond_4a
    instance-of v5, v4, Lcom/android/internal/view/InputConnectionWrapper;

    if-eqz v5, :cond_31

    .line 1449
    move-object v0, v4

    check-cast v0, Lcom/android/internal/view/InputConnectionWrapper;

    move-object v3, v0

    goto :goto_31

    .line 1456
    :cond_53
    if-eqz v2, :cond_5d

    .line 1457
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getIsVisibleWindow()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/inputmethod/InputConnectionWrapper;->reportIsSoftInputMethodShowing(Z)Z

    goto :goto_d

    .line 1458
    :cond_5d
    if-eqz v3, :cond_d

    .line 1459
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getIsVisibleWindow()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/internal/view/InputConnectionWrapper;->reportIsSoftInputMethodShowing(Z)Z

    goto :goto_d
.end method

.method showWindowInner(Z)V
    .registers 8
    .parameter "showInput"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1466
    const/4 v0, 0x0

    .line 1467
    .local v0, doShowInput:Z
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    .line 1468
    .local v2, wasVisible:Z
    iput-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    .line 1469
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-nez v3, :cond_54

    .line 1470
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v3, :cond_14

    .line 1471
    if-eqz p1, :cond_14

    .line 1472
    const/4 v0, 0x1

    .line 1473
    iput-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    .line 1481
    :cond_14
    :goto_14
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 1482
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateFullscreenMode()V

    .line 1483
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateInputViewShown()V

    .line 1485
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    if-eqz v3, :cond_25

    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    if-nez v3, :cond_35

    .line 1486
    :cond_25
    iput-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    .line 1487
    iput-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    .line 1488
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 1490
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateCandidatesView()Landroid/view/View;

    move-result-object v1

    .line 1492
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_35

    .line 1493
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setCandidatesView(Landroid/view/View;)V

    .line 1496
    .end local v1           #v:Landroid/view/View;
    :cond_35
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v3, :cond_56

    .line 1497
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    if-nez v3, :cond_44

    .line 1499
    iput-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 1500
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v3, v5}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1508
    :cond_44
    :goto_44
    if-eqz v0, :cond_49

    .line 1509
    invoke-virtual {p0, v5}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    .line 1512
    :cond_49
    if-nez v2, :cond_53

    .line 1514
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowShown()V

    .line 1515
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v3}, Landroid/inputmethodservice/SoftInputWindow;->show()V

    .line 1517
    :cond_53
    return-void

    .line 1477
    :cond_54
    const/4 p1, 0x1

    goto :goto_14

    .line 1502
    :cond_56
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    if-nez v3, :cond_44

    .line 1504
    iput-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 1505
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v3, v5}, Landroid/inputmethodservice/InputMethodService;->onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V

    goto :goto_44
.end method

.method startExtractingText(Z)V
    .registers 16
    .parameter "inputChanged"

    .prologue
    const/4 v10, 0x0

    const/4 v13, 0x2

    const/4 v12, 0x1

    const-string v9, ""

    .line 2252
    iget-object v9, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditTextBackground:Landroid/graphics/drawable/Drawable;

    if-nez v9, :cond_15

    iget-object v9, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-eqz v9, :cond_15

    .line 2253
    iget-object v9, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v9}, Landroid/inputmethodservice/ExtractEditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditTextBackground:Landroid/graphics/drawable/Drawable;

    .line 2258
    :cond_15
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 2259
    .local v1, eet:Landroid/inputmethodservice/ExtractEditText;
    if-eqz v1, :cond_131

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputStarted()Z

    move-result v9

    if-eqz v9, :cond_131

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v9

    if-eqz v9, :cond_131

    .line 2261
    iget v9, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    .line 2262
    new-instance v5, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v5}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 2263
    .local v5, req:Landroid/view/inputmethod/ExtractedTextRequest;
    iget v9, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    iput v9, v5, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    .line 2264
    iput v12, v5, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    .line 2265
    const/16 v9, 0xa

    iput v9, v5, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    .line 2266
    const/16 v9, 0x2710

    iput v9, v5, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    .line 2267
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 2268
    .local v3, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v3, :cond_132

    move-object v9, v10

    :goto_45
    iput-object v9, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 2270
    iget-object v9, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v9, :cond_4d

    if-nez v3, :cond_71

    .line 2271
    :cond_4d
    const-string v9, "InputMethodService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected null in startExtractingText : mExtractedText = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", input connection = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    :cond_71
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    .line 2277
    .local v2, ei:Landroid/view/inputmethod/EditorInfo;
    :try_start_75
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->startInternalChanges()V

    .line 2278
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractingVisibility(Landroid/view/inputmethod/EditorInfo;)V

    .line 2279
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractingViews(Landroid/view/inputmethod/EditorInfo;)V

    .line 2280
    iget v4, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 2281
    .local v4, inputType:I
    and-int/lit8 v9, v4, 0xf

    if-ne v9, v12, :cond_8c

    .line 2283
    const/high16 v9, 0x4

    and-int/2addr v9, v4

    if-eqz v9, :cond_8c

    .line 2284
    const/high16 v9, 0x2

    or-int/2addr v4, v9

    .line 2287
    :cond_8c
    invoke-virtual {v1, v4}, Landroid/inputmethodservice/ExtractEditText;->setInputType(I)V

    .line 2288
    iget-object v9, v2, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v9}, Landroid/inputmethodservice/ExtractEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2290
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/inputmethodservice/ExtractEditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2296
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/inputmethodservice/ExtractEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 2298
    and-int/lit16 v9, v4, 0x80

    if-eqz v9, :cond_c3

    .line 2299
    and-int/lit16 v8, v4, 0xf0

    .line 2300
    .local v8, tmpInputType:I
    const/16 v9, 0xb0

    if-eq v8, v9, :cond_c3

    const/16 v9, 0xc0

    if-eq v8, v9, :cond_c3

    const/16 v9, 0x90

    if-eq v8, v9, :cond_c3

    const/16 v9, 0xa0

    if-eq v8, v9, :cond_c3

    .line 2304
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/inputmethodservice/ExtractEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 2323
    .end local v8           #tmpInputType:I
    :cond_c3
    iget-object v9, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditTextBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_cc

    .line 2324
    iget-object v9, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditTextBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9}, Landroid/inputmethodservice/ExtractEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2327
    :cond_cc
    iget-object v9, v2, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    if-eqz v9, :cond_11c

    .line 2328
    iget-object v9, v2, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2330
    .local v7, tmpImeOptions:[Ljava/lang/String;
    array-length v9, v7

    if-ne v9, v13, :cond_11c

    const/4 v9, 0x0

    aget-object v9, v7, v9

    const-string v10, "AppName=Memo"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11c

    .line 2331
    const/4 v9, 0x1

    aget-object v9, v7, v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2333
    .local v6, tmpColor:[Ljava/lang/String;
    array-length v9, v6

    if-ne v9, v13, :cond_11c

    const/4 v9, 0x0

    aget-object v9, v6, v9

    const-string v10, "Color"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11c

    .line 2334
    const/4 v9, 0x1

    const/4 v10, 0x1

    aget-object v10, v6, v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "0x"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9
    :try_end_10f
    .catchall {:try_start_75 .. :try_end_10f} :catchall_142

    .line 2336
    const/4 v9, 0x1

    :try_start_110
    aget-object v9, v6, v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v9

    long-to-int v0, v9

    .line 2337
    .local v0, color:I
    invoke-virtual {v1, v0}, Landroid/inputmethodservice/ExtractEditText;->setBackgroundColor(I)V
    :try_end_11c
    .catchall {:try_start_110 .. :try_end_11c} :catchall_142
    .catch Ljava/lang/NumberFormatException; {:try_start_110 .. :try_end_11c} :catch_147

    .line 2347
    .end local v0           #color:I
    .end local v6           #tmpColor:[Ljava/lang/String;
    .end local v7           #tmpImeOptions:[Ljava/lang/String;
    :cond_11c
    :goto_11c
    :try_start_11c
    iget-object v9, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v9, :cond_138

    .line 2348
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/inputmethodservice/ExtractEditText;->setEnabled(Z)V

    .line 2349
    iget-object v9, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v1, v9}, Landroid/inputmethodservice/ExtractEditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    :try_end_129
    .catchall {:try_start_11c .. :try_end_129} :catchall_142

    .line 2355
    :goto_129
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    .line 2358
    if-eqz p1, :cond_131

    .line 2359
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->onExtractingInputChanged(Landroid/view/inputmethod/EditorInfo;)V

    .line 2362
    .end local v2           #ei:Landroid/view/inputmethod/EditorInfo;
    .end local v3           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v4           #inputType:I
    .end local v5           #req:Landroid/view/inputmethod/ExtractedTextRequest;
    :cond_131
    return-void

    .line 2268
    .restart local v3       #ic:Landroid/view/inputmethod/InputConnection;
    .restart local v5       #req:Landroid/view/inputmethod/ExtractedTextRequest;
    :cond_132
    invoke-interface {v3, v5, v12}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v9

    goto/16 :goto_45

    .line 2351
    .restart local v2       #ei:Landroid/view/inputmethod/EditorInfo;
    .restart local v4       #inputType:I
    :cond_138
    const/4 v9, 0x0

    :try_start_139
    invoke-virtual {v1, v9}, Landroid/inputmethodservice/ExtractEditText;->setEnabled(Z)V

    .line 2352
    const-string v9, ""

    invoke-virtual {v1, v9}, Landroid/inputmethodservice/ExtractEditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_141
    .catchall {:try_start_139 .. :try_end_141} :catchall_142

    goto :goto_129

    .line 2355
    .end local v4           #inputType:I
    :catchall_142
    move-exception v9

    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    throw v9

    .line 2338
    .restart local v4       #inputType:I
    .restart local v6       #tmpColor:[Ljava/lang/String;
    .restart local v7       #tmpImeOptions:[Ljava/lang/String;
    :catch_147
    move-exception v9

    goto :goto_11c
.end method

.method public switchInputMethod(Ljava/lang/String;)V
    .registers 4
    .parameter "id"

    .prologue
    .line 1186
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 1187
    return-void
.end method

.method updateCandidatesVisibility(Z)V
    .registers 4
    .parameter "shown"

    .prologue
    .line 1147
    if-eqz p1, :cond_10

    const/4 v1, 0x0

    move v0, v1

    .line 1148
    .local v0, vis:I
    :goto_4
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-eq v1, v0, :cond_f

    .line 1149
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1150
    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    .line 1152
    :cond_f
    return-void

    .line 1147
    .end local v0           #vis:I
    :cond_10
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCandidatesHiddenVisibility()I

    move-result v1

    move v0, v1

    goto :goto_4
.end method

.method updateExtractFrameVisibility()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1019
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1020
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    if-eqz v2, :cond_41

    const/4 v2, 0x4

    move v1, v2

    .line 1021
    .local v1, vis:I
    :goto_e
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1026
    :goto_13
    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v2, :cond_4c

    move v2, v5

    :goto_18
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->updateCandidatesVisibility(Z)V

    .line 1027
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    if-eqz v2, :cond_3b

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eq v2, v1, :cond_3b

    .line 1028
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    if-nez v1, :cond_4e

    move v3, v5

    :goto_2c
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 1032
    .local v0, animRes:I
    if-eqz v0, :cond_3b

    .line 1033
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1037
    .end local v0           #animRes:I
    :cond_3b
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1038
    return-void

    .end local v1           #vis:I
    :cond_41
    move v1, v4

    .line 1020
    goto :goto_e

    .line 1023
    :cond_43
    const/4 v1, 0x0

    .line 1024
    .restart local v1       #vis:I
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_13

    :cond_4c
    move v2, v4

    .line 1026
    goto :goto_18

    .line 1028
    :cond_4e
    const/4 v3, 0x2

    goto :goto_2c
.end method

.method public updateFullscreenMode()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 880
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v5, :cond_7f

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v5

    if-eqz v5, :cond_7f

    move v2, v8

    .line 881
    .local v2, isFullscreen:Z
    :goto_d
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    iget-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eq v5, v6, :cond_81

    move v0, v8

    .line 882
    .local v0, changed:Z
    :goto_14
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    if-ne v5, v2, :cond_1c

    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    if-nez v5, :cond_6a

    .line 883
    :cond_1c
    const/4 v0, 0x1

    .line 884
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    .line 885
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 886
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_28

    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    .line 887
    :cond_28
    iput-boolean v8, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    .line 888
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 889
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 891
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v2, :cond_83

    .line 892
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 894
    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 895
    const/high16 v5, 0x3f80

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 901
    :goto_48
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6, v3}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 903
    if-eqz v2, :cond_67

    .line 904
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    if-nez v5, :cond_64

    .line 905
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateExtractTextView()Landroid/view/View;

    move-result-object v4

    .line 906
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_64

    .line 907
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/InputMethodService;->setExtractView(Landroid/view/View;)V

    .line 910
    .end local v4           #v:Landroid/view/View;
    :cond_64
    invoke-virtual {p0, v7}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    .line 912
    :cond_67
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateExtractFrameVisibility()V

    .line 915
    .end local v1           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_6a
    if-eqz v0, :cond_7e

    .line 916
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v5}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v5

    iget-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-nez v6, :cond_90

    move v6, v8

    :goto_77
    invoke-virtual {p0, v5, v2, v6}, Landroid/inputmethodservice/InputMethodService;->onConfigureWindow(Landroid/view/Window;ZZ)V

    .line 918
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    .line 920
    :cond_7e
    return-void

    .end local v0           #changed:Z
    .end local v2           #isFullscreen:Z
    :cond_7f
    move v2, v7

    .line 880
    goto :goto_d

    .restart local v2       #isFullscreen:Z
    :cond_81
    move v0, v7

    .line 881
    goto :goto_14

    .line 897
    .restart local v0       #changed:Z
    .restart local v1       #ic:Landroid/view/inputmethod/InputConnection;
    .restart local v3       #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_83
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 898
    const/4 v5, -0x2

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 899
    const/4 v5, 0x0

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_48

    .end local v1           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_90
    move v6, v7

    .line 916
    goto :goto_77
.end method

.method public updateInputViewShown()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1084
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v2, :cond_2f

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v2, 0x1

    move v0, v2

    .line 1085
    .local v0, isShown:Z
    :goto_d
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    if-eq v2, v0, :cond_2e

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v2, :cond_2e

    .line 1086
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    .line 1087
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_31

    :goto_1b
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1088
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    if-nez v2, :cond_2e

    .line 1089
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 1090
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateInputView()Landroid/view/View;

    move-result-object v1

    .line 1091
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_2e

    .line 1092
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setInputView(Landroid/view/View;)V

    .line 1096
    .end local v1           #v:Landroid/view/View;
    :cond_2e
    return-void

    .end local v0           #isShown:Z
    :cond_2f
    move v0, v3

    .line 1084
    goto :goto_d

    .line 1087
    .restart local v0       #isShown:Z
    :cond_31
    const/16 v3, 0x8

    goto :goto_1b
.end method
