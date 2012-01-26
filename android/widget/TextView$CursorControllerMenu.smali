.class Landroid/widget/TextView$CursorControllerMenu;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CursorControllerMenu"
.end annotation


# static fields
.field static final DEBUG_CCM:Z


# instance fields
.field public mBtnClipBoard:Landroid/widget/LinearLayout;

.field public mBtnCopy:Landroid/widget/LinearLayout;

.field public mBtnCut:Landroid/widget/LinearLayout;

.field public mBtnPaste:Landroid/widget/LinearLayout;

.field public mBtnSearch:Landroid/widget/LinearLayout;

.field public mBtnSelect:Landroid/widget/LinearLayout;

.field public mBtnSelectAll:Landroid/widget/LinearLayout;

.field public mBtnShare:Landroid/widget/LinearLayout;

.field public mCntMenuItem:I

.field private mContext:Landroid/content/Context;

.field private mControllerHeight:I

.field public mCurrentCountry:Ljava/lang/String;

.field private mCursorBottomXPosition:I

.field private mCursorBottomYPosition:I

.field public mCursorControllerMenuArrowDownView:Landroid/view/View;

.field public mCursorControllerMenuArrowUpView:Landroid/view/View;

.field public mCursorControllerMenuView:Landroid/view/View;

.field public mCursorControllerParent:Landroid/widget/TextView;

.field private mCursorPosition:Landroid/graphics/RectF;

.field private mCursorTopXPosition:I

.field private mCursorTopYPosition:I

.field private mIMM:Landroid/view/inputmethod/InputMethodManager;

.field private mIsCursorControllerDragging:Z

.field private mLife:Z

.field private mMenuAnimation:Landroid/view/ViewGroup;

.field public mPopupWindow:Landroid/widget/PopupWindow;

.field public mPopupWindowArrowDown:Landroid/widget/PopupWindow;

.field public mPopupWindowArrowUp:Landroid/widget/PopupWindow;

.field private mSelectedText:Ljava/lang/CharSequence;

.field private mSplitCopy:Landroid/widget/ImageView;

.field private mSplitCut:Landroid/widget/ImageView;

.field private mSplitPaste:Landroid/widget/ImageView;

.field private mSplitSearch:Landroid/widget/ImageView;

.field private mSplitSelect:Landroid/widget/ImageView;

.field private mSplitSelectAll:Landroid/widget/ImageView;

.field private mSplitShare:Landroid/widget/ImageView;

.field private mTrackAnim:Landroid/view/animation/Animation;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/TextView;)V
    .registers 10
    .parameter
    .parameter "context"
    .parameter "tv"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x3ea

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9183
    iput-object p1, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9138
    iput v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    .line 9161
    iput-boolean v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mIsCursorControllerDragging:Z

    .line 9163
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    .line 9164
    iput v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    .line 9165
    iput v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    .line 9166
    iput v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopXPosition:I

    .line 9167
    iput v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    .line 9173
    iput-boolean v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mLife:Z

    .line 9184
    iput-object p2, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    .line 9185
    iput-object p3, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    .line 9186
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCurrentCountry:Ljava/lang/String;

    .line 9187
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 9189
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const v1, 0x1090014

    invoke-static {v0, v1, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    .line 9190
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const v1, 0x1090015

    invoke-static {v0, v1, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuArrowDownView:Landroid/view/View;

    .line 9191
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const v1, 0x1090016

    invoke-static {v0, v1, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuArrowUpView:Landroid/view/View;

    .line 9193
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x102017c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelect:Landroid/widget/LinearLayout;

    .line 9194
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x102017e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelectAll:Landroid/widget/LinearLayout;

    .line 9195
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020180

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCopy:Landroid/widget/LinearLayout;

    .line 9196
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020182

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCut:Landroid/widget/LinearLayout;

    .line 9197
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020184

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnPaste:Landroid/widget/LinearLayout;

    .line 9198
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020186

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSearch:Landroid/widget/LinearLayout;

    .line 9199
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020188

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnShare:Landroid/widget/LinearLayout;

    .line 9200
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x102018a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnClipBoard:Landroid/widget/LinearLayout;

    .line 9202
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x102017d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSelect:Landroid/widget/ImageView;

    .line 9203
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x102017f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSelectAll:Landroid/widget/ImageView;

    .line 9204
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020181

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCopy:Landroid/widget/ImageView;

    .line 9205
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020183

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCut:Landroid/widget/ImageView;

    .line 9206
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020185

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitPaste:Landroid/widget/ImageView;

    .line 9207
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020187

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSearch:Landroid/widget/ImageView;

    .line 9208
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020189

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitShare:Landroid/widget/ImageView;

    .line 9221
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 9222
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuArrowDownView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    .line 9223
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuArrowUpView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    .line 9225
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 9226
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 9227
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 9228
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 9230
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 9231
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 9232
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 9233
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 9235
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 9236
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 9237
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 9238
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 9240
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelect:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9241
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9242
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCopy:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9243
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCut:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9244
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnPaste:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9245
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSearch:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9246
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnShare:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9247
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnClipBoard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9261
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x10202b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mMenuAnimation:Landroid/view/ViewGroup;

    .line 9264
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const v1, 0x10a004a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mTrackAnim:Landroid/view/animation/Animation;

    .line 9265
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mTrackAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/widget/TextView$CursorControllerMenu$1;

    invoke-direct {v1, p0, p1}, Landroid/widget/TextView$CursorControllerMenu$1;-><init>(Landroid/widget/TextView$CursorControllerMenu;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 9274
    return-void
.end method


# virtual methods
.method public calcMenuWidthHeight()V
    .registers 6

    .prologue
    const/high16 v4, 0x4160

    const v3, 0x4129999a

    .line 9533
    const/16 v0, 0x47

    .line 9535
    .local v0, tmpWidth:I
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    mul-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x13

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 9536
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    const v2, 0x42bfcccc

    invoke-virtual {p0, v2}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 9538
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v4}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 9539
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v3}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 9541
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v4}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 9542
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v3}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 9543
    return-void
.end method

.method public convertDipToPixel(F)I
    .registers 7
    .parameter "dip"

    .prologue
    .line 9447
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 9448
    .local v0, density:F
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1a

    .line 9449
    mul-float v1, p1, v0

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0

    add-double/2addr v1, v3

    double-to-int v1, v1

    int-to-float p1, v1

    .line 9452
    :cond_1a
    float-to-int v1, p1

    return v1
.end method

.method public getCursorControllerHeight()I
    .registers 2

    .prologue
    .line 9808
    iget v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mControllerHeight:I

    return v0
.end method

.method public getLife()Z
    .registers 2

    .prologue
    .line 9820
    iget-boolean v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mLife:Z

    return v0
.end method

.method public hideCursorControllerMenu()V
    .registers 2

    .prologue
    .line 9792
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 9793
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 9795
    :cond_11
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 9796
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 9798
    :cond_22
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_33

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 9799
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 9801
    :cond_33
    return-void
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 9812
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 9813
    const/4 v0, 0x1

    .line 9815
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method isThereAnyTextInClipboard()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 9520
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    if-eqz v1, :cond_29

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    if-ltz v1, :cond_29

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-ltz v1, :cond_29

    .line 9521
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 9522
    .local v0, clip:Landroid/text/ClipboardManager;
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 9523
    const/4 v1, 0x1

    .line 9528
    .end local v0           #clip:Landroid/text/ClipboardManager;
    :goto_26
    return v1

    .restart local v0       #clip:Landroid/text/ClipboardManager;
    :cond_27
    move v1, v3

    .line 9525
    goto :goto_26

    .end local v0           #clip:Landroid/text/ClipboardManager;
    :cond_29
    move v1, v3

    .line 9528
    goto :goto_26
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "v"

    .prologue
    const v7, 0x1020029

    .line 9362
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelect:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_f

    .line 9364
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    const v6, 0x1020028

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 9367
    :cond_f
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelectAll:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_1b

    .line 9369
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    const v6, 0x102001f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 9372
    :cond_1b
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCopy:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_2a

    .line 9374
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    const v6, 0x1020021

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 9375
    invoke-virtual {p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 9378
    :cond_2a
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCut:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_39

    .line 9380
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    const v6, 0x1020020

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 9381
    invoke-virtual {p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 9384
    :cond_39
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnPaste:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_48

    .line 9386
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    const v6, 0x1020022

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 9387
    invoke-virtual {p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 9390
    :cond_48
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSearch:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_7c

    .line 9392
    invoke-virtual {p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 9394
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 9395
    .local v3, selStart:I
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 9396
    .local v2, selEnd:I
    if-le v3, v2, :cond_60

    .line 9398
    move v4, v3

    .line 9399
    .local v4, tmp:I
    move v3, v2

    .line 9400
    move v2, v4

    .line 9402
    .end local v4           #tmp:I
    :cond_60
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mSelectedText:Ljava/lang/CharSequence;

    .line 9404
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 9406
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Landroid/widget/TextView$CursorControllerMenu;->mSelectedText:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/inputmethod/InputMethodManager;->showCursorControllerSearchDialog(Ljava/lang/String;)V

    .line 9409
    .end local v2           #selEnd:I
    .end local v3           #selStart:I
    :cond_7c
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnShare:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_d9

    .line 9411
    invoke-virtual {p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 9413
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 9414
    .restart local v3       #selStart:I
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 9415
    .restart local v2       #selEnd:I
    if-le v3, v2, :cond_94

    .line 9417
    move v4, v3

    .line 9418
    .restart local v4       #tmp:I
    move v3, v2

    .line 9419
    move v2, v4

    .line 9421
    .end local v4           #tmp:I
    :cond_94
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mSelectedText:Ljava/lang/CharSequence;

    .line 9423
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 9425
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9426
    .local v1, intentShareText:Landroid/content/Intent;
    const-string v5, "android.intent.extra.TEXT"

    iget-object v6, p0, Landroid/widget/TextView$CursorControllerMenu;->mSelectedText:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9427
    const-string/jumbo v5, "text/plain"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 9429
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const v6, 0x10404eb

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 9431
    .local v0, intentChooser:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x1000

    or-int/2addr v5, v6

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 9433
    :try_start_d4
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_d9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d4 .. :try_end_d9} :catch_e9

    .line 9439
    .end local v0           #intentChooser:Landroid/content/Intent;
    .end local v1           #intentShareText:Landroid/content/Intent;
    .end local v2           #selEnd:I
    .end local v3           #selStart:I
    :cond_d9
    :goto_d9
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnClipBoard:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_e8

    .line 9441
    invoke-virtual {p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 9442
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    const v6, 0x102018b

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 9444
    :cond_e8
    return-void

    .line 9434
    .restart local v0       #intentChooser:Landroid/content/Intent;
    .restart local v1       #intentShareText:Landroid/content/Intent;
    .restart local v2       #selEnd:I
    .restart local v3       #selStart:I
    :catch_e9
    move-exception v5

    goto :goto_d9
.end method

.method public setCursorControllerHeight(I)V
    .registers 2
    .parameter "height"

    .prologue
    .line 9804
    iput p1, p0, Landroid/widget/TextView$CursorControllerMenu;->mControllerHeight:I

    .line 9805
    return-void
.end method

.method public setLife(Z)V
    .registers 2
    .parameter "life"

    .prologue
    .line 9824
    iput-boolean p1, p0, Landroid/widget/TextView$CursorControllerMenu;->mLife:Z

    .line 9825
    return-void
.end method

.method public showCursorControllerMenu()V
    .registers 25

    .prologue
    .line 9548
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->updateButtonVisibility()V

    .line 9549
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->calcMenuWidthHeight()V

    .line 9551
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    move/from16 v21, v0

    if-nez v21, :cond_12

    .line 9552
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 9669
    :goto_11
    return-void

    .line 9556
    :cond_12
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 9559
    .local v7, cursorPath:Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v16

    .line 9560
    .local v16, selStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v15

    .line 9562
    .local v15, selEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v21

    move v1, v15

    move-object v2, v7

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 9565
    move/from16 v0, v16

    move v1, v15

    if-eq v0, v1, :cond_85

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->IsEndHandleVisible()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_85

    .line 9567
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v21

    move/from16 v1, v16

    move-object v2, v7

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 9570
    :cond_85
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object v0, v7

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 9571
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 9572
    .local v18, tmpLocOnWin:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 9573
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    add-float v6, v21, v22

    .line 9575
    .local v6, bottomCenter:F
    const/16 v21, 0x0

    aget v21, v18, v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v21, v21, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getScrollX()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    .line 9576
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v21, v0

    const/16 v22, 0x1

    aget v22, v18, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getScrollY()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    .line 9578
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopXPosition:I

    .line 9579
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    const/16 v22, 0x1

    aget v22, v18, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getScrollY()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    .line 9581
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v20

    .line 9582
    .local v20, widthArrowX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v9

    .line 9583
    .local v9, heightArrowY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    move/from16 v21, v0

    div-int/lit8 v22, v20, 0x2

    sub-int v21, v21, v22

    const/16 v22, 0x1

    sub-int v10, v21, v22

    .line 9584
    .local v10, posArrowX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    move/from16 v21, v0

    sub-int v21, v21, v9

    add-int/lit8 v11, v21, 0x0

    .line 9586
    .local v11, posArrowY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    move/from16 v21, v0

    mul-int/lit8 v22, v20, 0x3

    sub-int v12, v21, v22

    .line 9587
    .local v12, posX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    move/from16 v21, v0

    sub-int v21, v21, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v22

    sub-int v21, v21, v22

    add-int/lit8 v13, v21, 0x2

    .line 9588
    .local v13, posY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v19

    .line 9589
    .local v19, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v8

    .line 9591
    .local v8, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move v14, v0

    .line 9594
    .local v14, screenWidth:I
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 9595
    .local v17, tmpLocOnScr:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 9596
    const/16 v21, 0x0

    aget v21, v17, v21

    const/16 v22, 0x0

    aget v22, v18, v22

    sub-int v5, v21, v22

    .line 9599
    .local v5, activityPadding:I
    if-nez v5, :cond_304

    .line 9601
    if-gtz v12, :cond_2de

    .line 9602
    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    mul-int/lit8 v12, v21, -0x1

    .line 9623
    :cond_243
    :goto_243
    const/16 v21, 0x28

    move v0, v13

    move/from16 v1, v21

    if-gt v0, v1, :cond_374

    .line 9625
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->getCursorControllerHeight()I

    move-result v22

    add-int v21, v21, v22

    add-int v21, v21, v9

    const/16 v22, 0x14

    sub-int v13, v21, v22

    .line 9627
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    if-eqz v21, :cond_279

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_279

    .line 9628
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->dismiss()V

    .line 9631
    :cond_279
    const/high16 v21, 0x4040

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    sub-int v13, v13, v21

    .line 9633
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_33e

    .line 9634
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v12

    move v2, v13

    move/from16 v3, v19

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 9640
    :goto_2a1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->getCursorControllerHeight()I

    move-result v22

    add-int v21, v21, v22

    const/16 v22, 0x14

    sub-int v11, v21, v22

    .line 9641
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_359

    .line 9642
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v10

    move v2, v11

    move/from16 v3, v20

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 9667
    :goto_2cd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mMenuAnimation:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mTrackAnim:Landroid/view/animation/Animation;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_11

    .line 9603
    :cond_2de
    add-int v21, v12, v19

    move/from16 v0, v21

    move v1, v14

    if-le v0, v1, :cond_243

    .line 9604
    const/16 v21, 0x20

    sub-int v21, v19, v21

    move v0, v14

    move/from16 v1, v21

    if-ge v0, v1, :cond_2fc

    .line 9605
    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    mul-int/lit8 v12, v21, -0x1

    goto/16 :goto_243

    .line 9607
    :cond_2fc
    const/16 v21, 0x20

    sub-int v21, v19, v21

    sub-int v12, v14, v21

    goto/16 :goto_243

    .line 9612
    :cond_304
    add-int v21, v12, v19

    add-int v21, v21, v5

    move/from16 v0, v21

    move v1, v14

    if-gt v0, v1, :cond_31b

    .line 9613
    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    mul-int/lit8 v12, v21, -0x1

    goto/16 :goto_243

    .line 9615
    :cond_31b
    const/16 v21, 0x20

    sub-int v21, v19, v21

    move v0, v14

    move/from16 v1, v21

    if-ge v0, v1, :cond_334

    .line 9616
    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    mul-int/lit8 v21, v21, -0x1

    sub-int v12, v21, v5

    goto/16 :goto_243

    .line 9618
    :cond_334
    const/16 v21, 0x20

    sub-int v21, v19, v21

    sub-int v21, v14, v21

    sub-int v12, v21, v5

    goto/16 :goto_243

    .line 9636
    :cond_33e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move v3, v12

    move v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2a1

    .line 9644
    :cond_359
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2cd

    .line 9647
    :cond_374
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    if-eqz v21, :cond_391

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_391

    .line 9648
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->dismiss()V

    .line 9651
    :cond_391
    const/high16 v21, 0x4188

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    add-int v13, v13, v21

    .line 9653
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_3d7

    .line 9654
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v12

    move v2, v13

    move/from16 v3, v19

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 9659
    :goto_3b9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_3f1

    .line 9660
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v10

    move v2, v11

    move/from16 v3, v20

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_2cd

    .line 9656
    :cond_3d7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move v3, v12

    move v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_3b9

    .line 9662
    :cond_3f1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2cd
.end method

.method public updateButtonVisibility()V
    .registers 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 9456
    iput v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    .line 9458
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelect:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9459
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9460
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCopy:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9461
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCut:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9462
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnPaste:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9463
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSearch:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9464
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnShare:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9465
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnClipBoard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9467
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSelect:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9468
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSelectAll:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9469
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCopy:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9470
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCut:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9471
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitPaste:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9472
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSearch:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9473
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9475
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canSelectText()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$3200(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_8e

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getIsInTextSelectionMode()Z

    move-result v0

    if-nez v0, :cond_8e

    .line 9476
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelect:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9477
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSelect:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9478
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9479
    iget v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    .line 9481
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canPaste()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$3300(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 9482
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSelectAll:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9483
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnPaste:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9484
    iget v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    .line 9517
    :cond_8d
    :goto_8d
    return-void

    .line 9488
    :cond_8e
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->isTextEditable()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_da

    .line 9489
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canCopy()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$3400(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 9490
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCopy:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9491
    iget v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    .line 9494
    :cond_a9
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canCut()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 9495
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCopy:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9496
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCut:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9497
    iget v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    .line 9500
    :cond_c1
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canPaste()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$3300(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 9501
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCut:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9502
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnPaste:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9503
    iget v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    goto :goto_8d

    .line 9505
    :cond_da
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mEnableSelection:Z
    invoke-static {v0}, Landroid/widget/TextView;->access$2900(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 9506
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mInputType:I
    invoke-static {v1}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)I

    move-result v1

    #calls: Landroid/widget/TextView;->isPasswordInputType(I)Z
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$600(Landroid/widget/TextView;I)Z

    move-result v0

    if-nez v0, :cond_8d

    .line 9507
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCopy:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9508
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCopy:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9509
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSearch:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9510
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSearch:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9511
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnShare:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9512
    iget v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    goto/16 :goto_8d
.end method

.method public updateCursorControllerMenu()V
    .registers 25

    .prologue
    .line 9674
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 9677
    .local v7, cursorPath:Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v16

    .line 9678
    .local v16, selStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v15

    .line 9680
    .local v15, selEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v21

    move v1, v15

    move-object v2, v7

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 9683
    move/from16 v0, v16

    move v1, v15

    if-eq v0, v1, :cond_73

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->IsEndHandleVisible()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_73

    .line 9685
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v21

    move/from16 v1, v16

    move-object v2, v7

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 9688
    :cond_73
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object v0, v7

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 9689
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 9690
    .local v18, tmpLocOnWin:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 9691
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    add-float v6, v21, v22

    .line 9693
    .local v6, bottomCenter:F
    const/16 v21, 0x0

    aget v21, v18, v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v21, v21, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getScrollX()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    .line 9694
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v21, v0

    const/16 v22, 0x1

    aget v22, v18, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getScrollY()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    .line 9696
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopXPosition:I

    .line 9697
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    const/16 v22, 0x1

    aget v22, v18, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getScrollY()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    .line 9699
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v20

    .line 9700
    .local v20, widthArrowX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v9

    .line 9701
    .local v9, heightArrowY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    move/from16 v21, v0

    div-int/lit8 v22, v20, 0x2

    sub-int v21, v21, v22

    const/16 v22, 0x1

    sub-int v10, v21, v22

    .line 9702
    .local v10, posArrowX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    move/from16 v21, v0

    sub-int v21, v21, v9

    add-int/lit8 v11, v21, 0x0

    .line 9704
    .local v11, posArrowY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    move/from16 v21, v0

    mul-int/lit8 v22, v20, 0x3

    sub-int v12, v21, v22

    .line 9705
    .local v12, posX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    move/from16 v21, v0

    sub-int v21, v21, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v22

    sub-int v21, v21, v22

    add-int/lit8 v13, v21, 0x2

    .line 9706
    .local v13, posY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v19

    .line 9707
    .local v19, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v8

    .line 9709
    .local v8, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move v14, v0

    .line 9712
    .local v14, screenWidth:I
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 9713
    .local v17, tmpLocOnScr:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 9714
    const/16 v21, 0x0

    aget v21, v17, v21

    const/16 v22, 0x0

    aget v22, v18, v22

    sub-int v5, v21, v22

    .line 9717
    .local v5, activityPadding:I
    if-nez v5, :cond_2e2

    .line 9719
    if-gtz v12, :cond_2bc

    .line 9720
    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    mul-int/lit8 v12, v21, -0x1

    .line 9741
    :cond_231
    :goto_231
    const/16 v21, 0x28

    move v0, v13

    move/from16 v1, v21

    if-gt v0, v1, :cond_352

    .line 9743
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->getCursorControllerHeight()I

    move-result v22

    add-int v21, v21, v22

    add-int v21, v21, v9

    const/16 v22, 0x14

    sub-int v13, v21, v22

    .line 9745
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    if-eqz v21, :cond_267

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_267

    .line 9746
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->dismiss()V

    .line 9749
    :cond_267
    const/high16 v21, 0x4040

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    sub-int v13, v13, v21

    .line 9751
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_31c

    .line 9752
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v12

    move v2, v13

    move/from16 v3, v19

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 9758
    :goto_28f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->getCursorControllerHeight()I

    move-result v22

    add-int v21, v21, v22

    const/16 v22, 0x14

    sub-int v11, v21, v22

    .line 9759
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_337

    .line 9760
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v10

    move v2, v11

    move/from16 v3, v20

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 9783
    :goto_2bb
    return-void

    .line 9721
    :cond_2bc
    add-int v21, v12, v19

    move/from16 v0, v21

    move v1, v14

    if-le v0, v1, :cond_231

    .line 9722
    const/16 v21, 0x20

    sub-int v21, v19, v21

    move v0, v14

    move/from16 v1, v21

    if-ge v0, v1, :cond_2da

    .line 9723
    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    mul-int/lit8 v12, v21, -0x1

    goto/16 :goto_231

    .line 9725
    :cond_2da
    const/16 v21, 0x20

    sub-int v21, v19, v21

    sub-int v12, v14, v21

    goto/16 :goto_231

    .line 9730
    :cond_2e2
    add-int v21, v12, v19

    add-int v21, v21, v5

    move/from16 v0, v21

    move v1, v14

    if-gt v0, v1, :cond_2f9

    .line 9731
    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    mul-int/lit8 v12, v21, -0x1

    goto/16 :goto_231

    .line 9733
    :cond_2f9
    const/16 v21, 0x20

    sub-int v21, v19, v21

    move v0, v14

    move/from16 v1, v21

    if-ge v0, v1, :cond_312

    .line 9734
    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    mul-int/lit8 v21, v21, -0x1

    sub-int v12, v21, v5

    goto/16 :goto_231

    .line 9736
    :cond_312
    const/16 v21, 0x20

    sub-int v21, v19, v21

    sub-int v21, v14, v21

    sub-int v12, v21, v5

    goto/16 :goto_231

    .line 9754
    :cond_31c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move v3, v12

    move v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_28f

    .line 9762
    :cond_337
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2bb

    .line 9765
    :cond_352
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    if-eqz v21, :cond_36f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_36f

    .line 9766
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->dismiss()V

    .line 9769
    :cond_36f
    const/high16 v21, 0x4188

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    add-int v13, v13, v21

    .line 9771
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_3b5

    .line 9772
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v12

    move v2, v13

    move/from16 v3, v19

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 9777
    :goto_397
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_3cf

    .line 9778
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v10

    move v2, v11

    move/from16 v3, v20

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_2bb

    .line 9774
    :cond_3b5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move v3, v12

    move v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_397

    .line 9780
    :cond_3cf
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2bb
.end method
