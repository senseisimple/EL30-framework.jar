.class public Landroid/widget/TextView;
.super Landroid/view/View;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextView$2;,
        Landroid/widget/TextView$CursorControllerMenu;,
        Landroid/widget/TextView$SelectionModifierCursorController;,
        Landroid/widget/TextView$InsertionPointCursorController;,
        Landroid/widget/TextView$HandleView;,
        Landroid/widget/TextView$CursorController;,
        Landroid/widget/TextView$MenuHandler;,
        Landroid/widget/TextView$BufferType;,
        Landroid/widget/TextView$Blink;,
        Landroid/widget/TextView$CommitSelectionReceiver;,
        Landroid/widget/TextView$ChangeWatcher;,
        Landroid/widget/TextView$Marquee;,
        Landroid/widget/TextView$ErrorPopup;,
        Landroid/widget/TextView$CharWrapper;,
        Landroid/widget/TextView$SavedState;,
        Landroid/widget/TextView$OnEditorActionListener;,
        Landroid/widget/TextView$InputMethodState;,
        Landroid/widget/TextView$InputContentType;,
        Landroid/widget/TextView$Drawables;
    }
.end annotation


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final BLINK:I = 0x1f4

.field static final DEBUG_EXTRACT:Z = false

.field private static final DECIMAL:I = 0x4

.field private static final EMPTY_SPANNED:Landroid/text/Spanned; = null

.field private static final EMS:I = 0x1

.field static final END_HANDLE_VISIBLE:I = 0x1

.field static final ERROR:I = 0x270f

.field static final EXTRACT_NOTHING:I = -0x2

.field static final EXTRACT_UNKNOWN:I = -0x1

.field public static final HIDE_CURSOR_CONTROLLERS:I = 0x16

.field private static final ID_ADD_TO_DICTIONARY:I = 0x102002a

.field private static final ID_CLIP_BOARD:I = 0x102018b

.field private static final ID_COPY:I = 0x1020021

.field private static final ID_COPY_URL:I = 0x1020023

.field private static final ID_CUT:I = 0x1020020

.field private static final ID_PASTE:I = 0x1020022

.field private static final ID_SELECT_ALL:I = 0x102001f

.field private static final ID_START_SELECTING_TEXT:I = 0x1020028

.field private static final ID_SWITCH_INPUT_METHOD:I = 0x1020024

.field static final INSERT_HANDLE_ONLY:I = 0x3

.field private static final LINES:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "TextView"

.field private static final MONOSPACE:I = 0x3

.field private static final NO_FILTERS:[Landroid/text/InputFilter; = null

.field private static final PIXELS:I = 0x2

.field private static final PREDRAW_DONE:I = 0x2

.field private static final PREDRAW_NOT_REGISTERED:I = 0x0

.field private static final PREDRAW_PENDING:I = 0x1

.field private static PRIORITY:I = 0x0

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final SIGNED:I = 0x2

.field static final START_HANDLE_VISIBLE:I = 0x2

.field public static final STOP_TEXT_SELECTION_MODE:I = 0xb

.field private static final UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics; = null

.field private static final VERY_WIDE:I = 0x4000

.field private static mContextMenu:Landroid/view/ContextMenu;

.field private static sCursorControllerTempRect:Landroid/graphics/Rect;

.field private static final sTempRect:Landroid/graphics/RectF;


# instance fields
.field private mAutoLinkMask:I

.field private mBlink:Landroid/widget/TextView$Blink;

.field private mBoring:Landroid/text/BoringLayout$Metrics;

.field private mBufferType:Landroid/widget/TextView$BufferType;

.field private mByPassInputType:Z

.field private mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

.field private mCharWrapper:Landroid/widget/TextView$CharWrapper;

.field private mContextMenuTitleId:I

.field private mContextMenuTriggeredByKey:Z

.field private mCreatedWithASelection:Z

.field private mCurHintTextColor:I

.field private mCurTextColor:I

.field public mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

.field private mCursorVisible:Z

.field private mDPadCenterIsDown:Z

.field private mDesiredHeightAtMeasure:I

.field private mDispatchTemporaryDetach:Z

.field private mDrawables:Landroid/widget/TextView$Drawables;

.field private mEatTouchRelease:Z

.field private mEditableFactory:Landroid/text/Editable$Factory;

.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mEnableSelection:Z

.field private mEnterKeyIsDown:Z

.field private mError:Ljava/lang/CharSequence;

.field private mErrorWasChanged:Z

.field private mFilters:[Landroid/text/InputFilter;

.field private mFreezesText:Z

.field private mFrozenWithFocus:Z

.field private mGravity:I

.field private mHighlightColor:I

.field private final mHighlightPaint:Landroid/graphics/Paint;

.field private mHighlightPath:Landroid/graphics/Path;

.field private mHighlightPathBogus:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mHintBoring:Landroid/text/BoringLayout$Metrics;

.field private mHintLayout:Landroid/text/Layout;

.field private mHintTextColor:Landroid/content/res/ColorStateList;

.field private mHorizontallyScrolling:Z

.field private mInBatchEditControllers:Z

.field private mIncludePad:Z

.field private mInput:Landroid/text/method/KeyListener;

.field mInputContentType:Landroid/widget/TextView$InputContentType;

.field mInputMethodState:Landroid/widget/TextView$InputMethodState;

.field private mInputType:I

.field private mInsertionControllerEnabled:Z

.field private mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

.field private mIsCursorControllerOn:Z

.field private mIsIMEChangable:Z

.field private mIsInTextSelectionMode:Z

.field private mLastScroll:J

.field private mLayout:Landroid/text/Layout;

.field private mLinkTextColor:Landroid/content/res/ColorStateList;

.field private mLinksClickable:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

.field public mLockCursorControllerMenu:Z

.field private mMarquee:Landroid/widget/TextView$Marquee;

.field private mMarqueeRepeatLimit:I

.field private mMaxMode:I

.field private mMaxWidth:I

.field private mMaxWidthMode:I

.field private mMaximum:I

.field private mMinMode:I

.field private mMinWidth:I

.field private mMinWidthMode:I

.field private mMinimum:I

.field private mMovement:Landroid/text/method/MovementMethod;

.field private mNoContextMenuOnUp:Z

.field private mOrientation:I

.field private mPopup:Landroid/widget/TextView$ErrorPopup;

.field private mPreDrawState:I

.field private mRestartMarquee:Z

.field private mSavedHintLayout:Landroid/text/BoringLayout;

.field private mSavedLayout:Landroid/text/BoringLayout;

.field private mScrolled:Z

.field private mScroller:Landroid/widget/Scroller;

.field private mSelectAllOnFocus:Z

.field mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field private mSelectionControllerEnabled:Z

.field private mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

.field private mSelectionMoved:Z

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mShowCursor:J

.field private mShowErrorAfterAttach:Z

.field private mSingleLine:Z

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannableFactory:Landroid/text/Spannable$Factory;

.field final mTempCoords:[I

.field mTempRect:Landroid/graphics/Rect;

.field private mTemporaryDetach:Z

.field private mText:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private final mTextPaint:Landroid/text/TextPaint;

.field mTextSelectHandleLeftRes:I

.field mTextSelectHandleRes:I

.field mTextSelectHandleRightRes:I

.field private mTouchFocusSelected:Z

.field private mTransformation:Landroid/text/method/TransformationMethod;

.field private mTransformed:Ljava/lang/CharSequence;

.field private mUserSetTextScaleX:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 214
    const/16 v1, 0x64

    sput v1, Landroid/widget/TextView;->PRIORITY:I

    .line 344
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 345
    .local v0, p:Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 347
    const-string v1, "H"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 5296
    new-instance v1, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v1}, Landroid/text/BoringLayout$Metrics;-><init>()V

    sput-object v1, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 8996
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sput-object v1, Landroid/widget/TextView;->sCursorControllerTempRect:Landroid/graphics/Rect;

    .line 9030
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    sput-object v1, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    .line 9046
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/text/InputFilter;

    sput-object v1, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    .line 9048
    new-instance v1, Landroid/text/SpannedString;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    sput-object v1, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    .line 9905
    const/4 v1, 0x0

    sput-object v1, Landroid/widget/TextView;->mContextMenu:Landroid/view/ContextMenu;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 371
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 372
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 376
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 377
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 58
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 383
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 216
    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [I

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTempCoords:[I

    .line 229
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mEatTouchRelease:Z

    .line 230
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mScrolled:Z

    .line 232
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    .line 233
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    .line 240
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mPreDrawState:I

    .line 242
    const/16 v51, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 261
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsIMEChangable:Z

    .line 291
    const/16 v51, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    .line 293
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 294
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mTouchFocusSelected:Z

    .line 299
    const/16 v51, 0x3

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    .line 335
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mCreatedWithASelection:Z

    .line 337
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mNoContextMenuOnUp:Z

    .line 8957
    sget-object v51, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 8959
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    .line 8969
    const/16 v51, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 8975
    const v51, -0x33b8a6db

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mHighlightColor:I

    .line 8980
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mCursorVisible:Z

    .line 8988
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    .line 8991
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mDPadCenterIsDown:Z

    .line 8992
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mEnterKeyIsDown:Z

    .line 8993
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mContextMenuTriggeredByKey:Z

    .line 8998
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    .line 9000
    const/16 v51, 0x33

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mGravity:I

    .line 9004
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    .line 9006
    const/high16 v51, 0x3f80

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    .line 9007
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    .line 9013
    const v51, 0x7fffffff

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaximum:I

    .line 9014
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxMode:I

    .line 9015
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinimum:I

    .line 9016
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinMode:I

    .line 9018
    const v51, 0x7fffffff

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxWidth:I

    .line 9019
    const/16 v51, 0x2

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 9020
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinWidth:I

    .line 9021
    const/16 v51, 0x2

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinWidthMode:I

    .line 9024
    const/16 v51, -0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 9025
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIncludePad:Z

    .line 9029
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 9039
    const/16 v51, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    .line 9047
    sget-object v51, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    .line 9056
    const/16 v51, -0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mContextMenuTitleId:I

    .line 9076
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsCursorControllerOn:Z

    .line 9084
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLockCursorControllerMenu:Z

    .line 9830
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mOrientation:I

    .line 9852
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mByPassInputType:Z

    .line 9860
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mEnableSelection:Z

    .line 384
    const-string v51, ""

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 386
    new-instance v51, Landroid/text/TextPaint;

    const/16 v52, 0x1

    invoke-direct/range {v51 .. v52}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v51, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v52

    move-object/from16 v0, v52

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v52, v0

    move/from16 v0, v52

    move-object/from16 v1, v51

    iput v0, v1, Landroid/text/TextPaint;->density:F

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v51, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v52

    move-object/from16 v0, v52

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v52, v0

    invoke-virtual/range {v51 .. v52}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 395
    new-instance v51, Landroid/graphics/Paint;

    const/16 v52, 0x1

    invoke-direct/range {v51 .. v52}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v51, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v52

    move-object/from16 v0, v52

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v52, v0

    invoke-virtual/range {v51 .. v52}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 399
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 400
    const/16 v51, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    .line 402
    sget-object v51, Lcom/android/internal/R$styleable;->TextView:[I

    const/16 v52, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move/from16 v3, p3

    move/from16 v4, v52

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 406
    .local v5, a:Landroid/content/res/TypedArray;
    const/16 v46, 0x0

    .line 407
    .local v46, textColorHighlight:I
    const/16 v45, 0x0

    .line 408
    .local v45, textColor:Landroid/content/res/ColorStateList;
    const/16 v47, 0x0

    .line 409
    .local v47, textColorHint:Landroid/content/res/ColorStateList;
    const/16 v48, 0x0

    .line 410
    .local v48, textColorLink:Landroid/content/res/ColorStateList;
    const/16 v49, 0xf

    .line 411
    .local v49, textSize:I
    const/16 v50, -0x1

    .line 412
    .local v50, typefaceIndex:I
    const/16 v43, -0x1

    .line 420
    .local v43, styleIndex:I
    const/4 v7, 0x0

    .line 421
    .local v7, appearance:Landroid/content/res/TypedArray;
    const/16 v51, 0x1

    const/16 v52, -0x1

    move-object v0, v5

    move/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 422
    .local v6, ap:I
    const/16 v51, -0x1

    move v0, v6

    move/from16 v1, v51

    if-eq v0, v1, :cond_244

    .line 423
    sget-object v51, Lcom/android/internal/R$styleable;->TextAppearance:[I

    move-object/from16 v0, p1

    move v1, v6

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 427
    :cond_244
    if-eqz v7, :cond_299

    .line 428
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v35

    .line 429
    .local v35, n:I
    const/16 v30, 0x0

    .local v30, i:I
    :goto_24c
    move/from16 v0, v30

    move/from16 v1, v35

    if-ge v0, v1, :cond_296

    .line 430
    move-object v0, v7

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    .line 432
    .local v8, attr:I
    packed-switch v8, :pswitch_data_a52

    .line 429
    :goto_25c
    add-int/lit8 v30, v30, 0x1

    goto :goto_24c

    .line 434
    :pswitch_25f
    move-object v0, v7

    move v1, v8

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v46

    .line 435
    goto :goto_25c

    .line 438
    :pswitch_268
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v45

    .line 439
    goto :goto_25c

    .line 442
    :pswitch_26d
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v47

    .line 443
    goto :goto_25c

    .line 446
    :pswitch_272
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v48

    .line 447
    goto :goto_25c

    .line 450
    :pswitch_277
    move-object v0, v7

    move v1, v8

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v49

    .line 451
    goto :goto_25c

    .line 454
    :pswitch_280
    const/16 v51, -0x1

    move-object v0, v7

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v50

    .line 455
    goto :goto_25c

    .line 458
    :pswitch_28b
    const/16 v51, -0x1

    move-object v0, v7

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v43

    goto :goto_25c

    .line 463
    .end local v8           #attr:I
    :cond_296
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 466
    .end local v30           #i:I
    .end local v35           #n:I
    :cond_299
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v25

    .line 467
    .local v25, editable:Z
    const/16 v31, 0x0

    .line 468
    .local v31, inputMethod:Ljava/lang/CharSequence;
    const/16 v36, 0x0

    .line 469
    .local v36, numeric:I
    const/16 v16, 0x0

    .line 470
    .local v16, digits:Ljava/lang/CharSequence;
    const/16 v38, 0x0

    .line 471
    .local v38, phone:Z
    const/4 v10, 0x0

    .line 472
    .local v10, autotext:Z
    const/4 v9, -0x1

    .line 473
    .local v9, autocap:I
    const/4 v12, 0x0

    .line 474
    .local v12, buffertype:I
    const/16 v40, 0x0

    .line 475
    .local v40, selectallonfocus:Z
    const/16 v18, 0x0

    .local v18, drawableLeft:Landroid/graphics/drawable/Drawable;
    const/16 v21, 0x0

    .local v21, drawableTop:Landroid/graphics/drawable/Drawable;
    const/16 v20, 0x0

    .line 476
    .local v20, drawableRight:Landroid/graphics/drawable/Drawable;
    const/16 v17, 0x0

    .line 477
    .local v17, drawableBottom:Landroid/graphics/drawable/Drawable;
    const/16 v19, 0x0

    .line 478
    .local v19, drawablePadding:I
    const/16 v26, -0x1

    .line 479
    .local v26, ellipsize:I
    const/16 v42, 0x0

    .line 480
    .local v42, singleLine:Z
    const/16 v34, -0x1

    .line 481
    .local v34, maxlength:I
    const-string v44, ""

    .line 482
    .local v44, text:Ljava/lang/CharSequence;
    const/16 v29, 0x0

    .line 483
    .local v29, hint:Ljava/lang/CharSequence;
    const/16 v41, 0x0

    .line 484
    .local v41, shadowcolor:I
    const/16 v22, 0x0

    .local v22, dx:F
    const/16 v23, 0x0

    .local v23, dy:F
    const/16 v39, 0x0

    .line 485
    .local v39, r:F
    const/16 v37, 0x0

    .line 486
    .local v37, password:Z
    const/16 v32, 0x0

    .line 488
    .local v32, inputType:I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v35

    .line 489
    .restart local v35       #n:I
    const/16 v30, 0x0

    .restart local v30       #i:I
    :goto_2d0
    move/from16 v0, v30

    move/from16 v1, v35

    if-ge v0, v1, :cond_6e7

    .line 490
    move-object v0, v5

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    .line 492
    .restart local v8       #attr:I
    packed-switch v8, :pswitch_data_a64

    .line 489
    :cond_2e0
    :goto_2e0
    :pswitch_2e0
    add-int/lit8 v30, v30, 0x1

    goto :goto_2d0

    .line 494
    :pswitch_2e3
    move-object v0, v5

    move v1, v8

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    .line 495
    goto :goto_2e0

    .line 498
    :pswitch_2ec
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v31

    .line 499
    goto :goto_2e0

    .line 502
    :pswitch_2f1
    move-object v0, v5

    move v1, v8

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v36

    .line 503
    goto :goto_2e0

    .line 506
    :pswitch_2fa
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 507
    goto :goto_2e0

    .line 510
    :pswitch_2ff
    move-object v0, v5

    move v1, v8

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    .line 511
    goto :goto_2e0

    .line 514
    :pswitch_308
    invoke-virtual {v5, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 515
    goto :goto_2e0

    .line 518
    :pswitch_30d
    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 519
    goto :goto_2e0

    .line 522
    :pswitch_312
    invoke-virtual {v5, v8, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 523
    goto :goto_2e0

    .line 526
    :pswitch_317
    move-object v0, v5

    move v1, v8

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v40

    .line 527
    goto :goto_2e0

    .line 530
    :pswitch_320
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mAutoLinkMask:I

    goto :goto_2e0

    .line 534
    :pswitch_331
    const/16 v51, 0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    goto :goto_2e0

    .line 538
    :pswitch_342
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 539
    goto :goto_2e0

    .line 542
    :pswitch_347
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    .line 543
    goto :goto_2e0

    .line 546
    :pswitch_34c
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 547
    goto :goto_2e0

    .line 550
    :pswitch_351
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 551
    goto :goto_2e0

    .line 554
    :pswitch_356
    move-object v0, v5

    move v1, v8

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    .line 555
    goto :goto_2e0

    .line 558
    :pswitch_35f
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_2e0

    .line 562
    :pswitch_372
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto/16 :goto_2e0

    .line 566
    :pswitch_385
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    goto/16 :goto_2e0

    .line 570
    :pswitch_398
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_2e0

    .line 574
    :pswitch_3ab
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinLines(I)V

    goto/16 :goto_2e0

    .line 578
    :pswitch_3be
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    goto/16 :goto_2e0

    .line 582
    :pswitch_3d1
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    goto/16 :goto_2e0

    .line 586
    :pswitch_3e4
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_2e0

    .line 590
    :pswitch_3f7
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEms(I)V

    goto/16 :goto_2e0

    .line 594
    :pswitch_40a
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_2e0

    .line 598
    :pswitch_41d
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinEms(I)V

    goto/16 :goto_2e0

    .line 602
    :pswitch_430
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    goto/16 :goto_2e0

    .line 606
    :pswitch_443
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_2e0

    .line 610
    :pswitch_456
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v29

    .line 611
    goto/16 :goto_2e0

    .line 614
    :pswitch_45c
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v44

    .line 615
    goto/16 :goto_2e0

    .line 618
    :pswitch_462
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    if-eqz v51, :cond_2e0

    .line 619
    const/16 v51, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    goto/16 :goto_2e0

    .line 624
    :pswitch_479
    move-object v0, v5

    move v1, v8

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v42

    .line 625
    goto/16 :goto_2e0

    .line 628
    :pswitch_483
    move-object v0, v5

    move v1, v8

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v26

    .line 629
    goto/16 :goto_2e0

    .line 632
    :pswitch_48d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    move/from16 v51, v0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    goto/16 :goto_2e0

    .line 636
    :pswitch_4a4
    const/16 v51, 0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    if-nez v51, :cond_2e0

    .line 637
    const/16 v51, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    goto/16 :goto_2e0

    .line 642
    :pswitch_4bb
    const/16 v51, 0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    if-nez v51, :cond_2e0

    .line 643
    const/16 v51, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto/16 :goto_2e0

    .line 648
    :pswitch_4d2
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v34

    .line 649
    goto/16 :goto_2e0

    .line 652
    :pswitch_4de
    const/high16 v51, 0x3f80

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto/16 :goto_2e0

    .line 656
    :pswitch_4f1
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mFreezesText:Z

    goto/16 :goto_2e0

    .line 660
    :pswitch_503
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v41

    .line 661
    goto/16 :goto_2e0

    .line 664
    :pswitch_50f
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v22

    .line 665
    goto/16 :goto_2e0

    .line 668
    :pswitch_51b
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v23

    .line 669
    goto/16 :goto_2e0

    .line 672
    :pswitch_527
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v39

    .line 673
    goto/16 :goto_2e0

    .line 676
    :pswitch_533
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v51

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_2e0

    .line 680
    :pswitch_548
    move-object v0, v5

    move v1, v8

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v46

    .line 681
    goto/16 :goto_2e0

    .line 684
    :pswitch_552
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v45

    .line 685
    goto/16 :goto_2e0

    .line 688
    :pswitch_558
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v47

    .line 689
    goto/16 :goto_2e0

    .line 692
    :pswitch_55e
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v48

    .line 693
    goto/16 :goto_2e0

    .line 696
    :pswitch_564
    move-object v0, v5

    move v1, v8

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v49

    .line 697
    goto/16 :goto_2e0

    .line 700
    :pswitch_56e
    move-object v0, v5

    move v1, v8

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v50

    .line 701
    goto/16 :goto_2e0

    .line 704
    :pswitch_578
    move-object v0, v5

    move v1, v8

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v43

    .line 705
    goto/16 :goto_2e0

    .line 708
    :pswitch_582
    move-object v0, v5

    move v1, v8

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v37

    .line 709
    goto/16 :goto_2e0

    .line 712
    :pswitch_58c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v51, v0

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v51, v0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v51

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    goto/16 :goto_2e0

    .line 716
    :pswitch_5ac
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v51, v0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    goto/16 :goto_2e0

    .line 720
    :pswitch_5c2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v51, v0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v32

    .line 721
    goto/16 :goto_2e0

    .line 724
    :pswitch_5d2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v51, v0

    if-nez v51, :cond_5e9

    .line 725
    new-instance v51, Landroid/widget/TextView$InputContentType;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 727
    :cond_5e9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeOptions:I

    move/from16 v52, v0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v52

    move/from16 v0, v52

    move-object/from16 v1, v51

    iput v0, v1, Landroid/widget/TextView$InputContentType;->imeOptions:I

    goto/16 :goto_2e0

    .line 732
    :pswitch_60b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v51, v0

    if-nez v51, :cond_622

    .line 733
    new-instance v51, Landroid/widget/TextView$InputContentType;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 735
    :cond_622
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v51, v0

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v51

    iput-object v0, v1, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    goto/16 :goto_2e0

    .line 739
    :pswitch_634
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v51, v0

    if-nez v51, :cond_64b

    .line 740
    new-instance v51, Landroid/widget/TextView$InputContentType;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 742
    :cond_64b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeActionId:I

    move/from16 v52, v0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v52

    move/from16 v0, v52

    move-object/from16 v1, v51

    iput v0, v1, Landroid/widget/TextView$InputContentType;->imeActionId:I

    goto/16 :goto_2e0

    .line 747
    :pswitch_66d
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto/16 :goto_2e0

    .line 752
    :pswitch_67a
    const/16 v51, 0x0

    :try_start_67c
    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputExtras(I)V
    :try_end_68b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_67c .. :try_end_68b} :catch_68d
    .catch Ljava/io/IOException; {:try_start_67c .. :try_end_68b} :catch_69f

    goto/16 :goto_2e0

    .line 753
    :catch_68d
    move-exception v51

    move-object/from16 v24, v51

    .line 754
    .local v24, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v51, "TextView"

    const-string v52, "Failure reading input extras"

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2e0

    .line 755
    .end local v24           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_69f
    move-exception v51

    move-object/from16 v24, v51

    .line 756
    .local v24, e:Ljava/io/IOException;
    const-string v51, "TextView"

    const-string v52, "Failure reading input extras"

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2e0

    .line 761
    .end local v24           #e:Ljava/io/IOException;
    :pswitch_6b1
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    goto/16 :goto_2e0

    .line 765
    :pswitch_6c3
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    goto/16 :goto_2e0

    .line 769
    :pswitch_6d5
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRes:I

    goto/16 :goto_2e0

    .line 773
    .end local v8           #attr:I
    :cond_6e7
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 775
    sget-object v11, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    .line 777
    .local v11, bufferType:Landroid/widget/TextView$BufferType;
    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xfff

    move/from16 v51, v0

    const/16 v52, 0x81

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_6fc

    .line 779
    const/16 v37, 0x1

    .line 782
    :cond_6fc
    if-eqz v31, :cond_887

    .line 786
    :try_start_6fe
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v51 .. v51}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_705
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6fe .. :try_end_705} :catch_847

    move-result-object v13

    .line 792
    .local v13, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_706
    invoke-virtual {v13}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #a:Landroid/content/res/TypedArray;
    check-cast v5, Landroid/text/method/KeyListener;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;
    :try_end_711
    .catch Ljava/lang/InstantiationException; {:try_start_706 .. :try_end_711} :catch_854
    .catch Ljava/lang/IllegalAccessException; {:try_start_706 .. :try_end_711} :catch_861

    .line 799
    if-eqz v32, :cond_86e

    move/from16 v51, v32

    :goto_715
    :try_start_715
    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I
    :try_end_71b
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_715 .. :try_end_71b} :catch_87a

    .line 885
    .end local v13           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_71b
    :goto_71b
    if-eqz v37, :cond_745

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v51, v0

    and-int/lit8 v51, v51, 0xf

    const/16 v52, 0x1

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_745

    .line 887
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v51, v0

    move/from16 v0, v51

    and-int/lit16 v0, v0, -0xff1

    move/from16 v51, v0

    move/from16 v0, v51

    or-int/lit16 v0, v0, 0x80

    move/from16 v51, v0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    .line 891
    :cond_745
    if-eqz v40, :cond_758

    .line 892
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    .line 894
    sget-object v51, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object v0, v11

    move-object/from16 v1, v51

    if-ne v0, v1, :cond_758

    .line 895
    sget-object v11, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 898
    :cond_758
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    move-object/from16 v3, v20

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 900
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 902
    if-eqz v42, :cond_77d

    .line 903
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->setSingleLine()V

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object/from16 v51, v0

    if-nez v51, :cond_77d

    if-gez v26, :cond_77d

    .line 906
    const/16 v26, 0x3

    .line 910
    :cond_77d
    packed-switch v26, :pswitch_data_aea

    .line 926
    :goto_780
    if-eqz v45, :cond_9d7

    move-object/from16 v51, v45

    :goto_784
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 927
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 928
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 929
    if-eqz v46, :cond_7a2

    .line 930
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 932
    :cond_7a2
    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v51, v0

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-direct {v0, v1}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 934
    if-eqz v37, :cond_9df

    .line 935
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 936
    const/16 v50, 0x1

    .line 944
    :cond_7bd
    :goto_7bd
    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, v43

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    .line 946
    if-eqz v41, :cond_7d5

    .line 947
    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v41

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 950
    :cond_7d5
    if-ltz v34, :cond_9f7

    .line 951
    const/16 v51, 0x1

    move/from16 v0, v51

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    new-instance v53, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, v53

    move/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v53, v51, v52

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 956
    :goto_7f3
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 957
    if-eqz v29, :cond_804

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 964
    :cond_804
    sget-object v51, Lcom/android/internal/R$styleable;->View:[I

    const/16 v52, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move/from16 v3, p3

    move/from16 v4, v52

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 968
    .restart local v5       #a:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v51, v0

    if-nez v51, :cond_826

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object/from16 v51, v0

    if-eqz v51, :cond_a02

    :cond_826
    const/16 v51, 0x1

    move/from16 v28, v51

    .line 969
    .local v28, focusable:Z
    :goto_82a
    move/from16 v15, v28

    .line 970
    .local v15, clickable:Z
    move/from16 v33, v28

    .line 972
    .local v33, longClickable:Z
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v35

    .line 973
    const/16 v30, 0x0

    :goto_834
    move/from16 v0, v30

    move/from16 v1, v35

    if-ge v0, v1, :cond_a22

    .line 974
    move-object v0, v5

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    .line 976
    .restart local v8       #attr:I
    sparse-switch v8, :sswitch_data_af6

    .line 973
    :goto_844
    add-int/lit8 v30, v30, 0x1

    goto :goto_834

    .line 787
    .end local v8           #attr:I
    .end local v15           #clickable:Z
    .end local v28           #focusable:Z
    .end local v33           #longClickable:Z
    :catch_847
    move-exception v51

    move-object/from16 v27, v51

    .line 788
    .local v27, ex:Ljava/lang/ClassNotFoundException;
    new-instance v51, Ljava/lang/RuntimeException;

    move-object/from16 v0, v51

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v51

    .line 793
    .end local v5           #a:Landroid/content/res/TypedArray;
    .end local v27           #ex:Ljava/lang/ClassNotFoundException;
    .restart local v13       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_854
    move-exception v51

    move-object/from16 v27, v51

    .line 794
    .local v27, ex:Ljava/lang/InstantiationException;
    new-instance v51, Ljava/lang/RuntimeException;

    move-object/from16 v0, v51

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v51

    .line 795
    .end local v27           #ex:Ljava/lang/InstantiationException;
    :catch_861
    move-exception v51

    move-object/from16 v27, v51

    .line 796
    .local v27, ex:Ljava/lang/IllegalAccessException;
    new-instance v51, Ljava/lang/RuntimeException;

    move-object/from16 v0, v51

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v51

    .line 799
    .end local v27           #ex:Ljava/lang/IllegalAccessException;
    :cond_86e
    :try_start_86e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object/from16 v51, v0

    invoke-interface/range {v51 .. v51}, Landroid/text/method/KeyListener;->getInputType()I
    :try_end_877
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_86e .. :try_end_877} :catch_87a

    move-result v51

    goto/16 :goto_715

    .line 802
    :catch_87a
    move-exception v51

    move-object/from16 v24, v51

    .line 803
    .local v24, e:Ljava/lang/IncompatibleClassChangeError;
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_71b

    .line 805
    .end local v13           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v24           #e:Ljava/lang/IncompatibleClassChangeError;
    .restart local v5       #a:Landroid/content/res/TypedArray;
    :cond_887
    if-eqz v16, :cond_8a6

    .line 806
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v51 .. v51}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 810
    if-eqz v32, :cond_8a3

    move/from16 v51, v32

    :goto_89b
    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_71b

    :cond_8a3
    const/16 v51, 0x1

    goto :goto_89b

    .line 812
    :cond_8a6
    if-eqz v32, :cond_8cc

    .line 813
    const/16 v51, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v51

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setInputType(IZ)V

    .line 814
    const v51, 0x2000f

    and-int v51, v51, v32

    const v52, 0x20001

    move/from16 v0, v51

    move/from16 v1, v52

    if-eq v0, v1, :cond_8c7

    const/16 v51, 0x1

    move/from16 v42, v51

    :goto_8c5
    goto/16 :goto_71b

    :cond_8c7
    const/16 v51, 0x0

    move/from16 v42, v51

    goto :goto_8c5

    .line 818
    :cond_8cc
    if-eqz v38, :cond_8e2

    .line 819
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 820
    const/16 v32, 0x3

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_71b

    .line 821
    :cond_8e2
    if-eqz v36, :cond_91e

    .line 822
    and-int/lit8 v51, v36, 0x2

    if-eqz v51, :cond_918

    const/16 v51, 0x1

    :goto_8ea
    and-int/lit8 v52, v36, 0x4

    if-eqz v52, :cond_91b

    const/16 v52, 0x1

    :goto_8f0
    invoke-static/range {v51 .. v52}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 824
    const/16 v32, 0x2

    .line 825
    and-int/lit8 v51, v36, 0x2

    if-eqz v51, :cond_906

    .line 826
    move/from16 v0, v32

    or-int/lit16 v0, v0, 0x1000

    move/from16 v32, v0

    .line 828
    :cond_906
    and-int/lit8 v51, v36, 0x4

    if-eqz v51, :cond_910

    .line 829
    move/from16 v0, v32

    or-int/lit16 v0, v0, 0x2000

    move/from16 v32, v0

    .line 831
    :cond_910
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_71b

    .line 822
    :cond_918
    const/16 v51, 0x0

    goto :goto_8ea

    :cond_91b
    const/16 v52, 0x0

    goto :goto_8f0

    .line 832
    :cond_91e
    if-nez v10, :cond_927

    const/16 v51, -0x1

    move v0, v9

    move/from16 v1, v51

    if-eq v0, v1, :cond_961

    .line 835
    :cond_927
    const/16 v32, 0x1

    .line 836
    if-nez v42, :cond_92f

    .line 837
    const/high16 v51, 0x2

    or-int v32, v32, v51

    .line 840
    :cond_92f
    packed-switch v9, :pswitch_data_b04

    .line 857
    sget-object v14, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .line 861
    .local v14, cap:Landroid/text/method/TextKeyListener$Capitalize;
    :goto_934
    invoke-static {v10, v14}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 862
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_71b

    .line 842
    .end local v14           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_946
    sget-object v14, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .line 843
    .restart local v14       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v32

    or-int/lit16 v0, v0, 0x4000

    move/from16 v32, v0

    .line 844
    goto :goto_934

    .line 847
    .end local v14           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_94f
    sget-object v14, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 848
    .restart local v14       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v32

    or-int/lit16 v0, v0, 0x2000

    move/from16 v32, v0

    .line 849
    goto :goto_934

    .line 852
    .end local v14           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_958
    sget-object v14, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 853
    .restart local v14       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v32

    or-int/lit16 v0, v0, 0x1000

    move/from16 v32, v0

    .line 854
    goto :goto_934

    .line 863
    .end local v14           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_961
    if-eqz v25, :cond_989

    .line 864
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 865
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    .line 866
    if-nez v42, :cond_71b

    .line 867
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v51, v0

    const/high16 v52, 0x2

    or-int v51, v51, v52

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_71b

    .line 870
    :cond_989
    const/16 v51, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 872
    packed-switch v12, :pswitch_data_b0e

    goto/16 :goto_71b

    .line 874
    :pswitch_996
    sget-object v11, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    .line 875
    goto/16 :goto_71b

    .line 877
    :pswitch_99a
    sget-object v11, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 878
    goto/16 :goto_71b

    .line 880
    :pswitch_99e
    sget-object v11, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    goto/16 :goto_71b

    .line 912
    .end local v5           #a:Landroid/content/res/TypedArray;
    :pswitch_9a2
    sget-object v51, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_780

    .line 915
    :pswitch_9ad
    sget-object v51, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_780

    .line 918
    :pswitch_9b8
    sget-object v51, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_780

    .line 921
    :pswitch_9c3
    const/16 v51, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 922
    sget-object v51, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_780

    .line 926
    :cond_9d7
    const/high16 v51, -0x100

    invoke-static/range {v51 .. v51}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v51

    goto/16 :goto_784

    .line 937
    :cond_9df
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v51, v0

    move/from16 v0, v51

    and-int/lit16 v0, v0, 0xfff

    move/from16 v51, v0

    const/16 v52, 0x81

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_7bd

    .line 941
    const/16 v50, 0x1

    goto/16 :goto_7bd

    .line 953
    :cond_9f7
    sget-object v51, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_7f3

    .line 968
    .restart local v5       #a:Landroid/content/res/TypedArray;
    :cond_a02
    const/16 v51, 0x0

    move/from16 v28, v51

    goto/16 :goto_82a

    .line 978
    .restart local v8       #attr:I
    .restart local v15       #clickable:Z
    .restart local v28       #focusable:Z
    .restart local v33       #longClickable:Z
    :sswitch_a08
    move-object v0, v5

    move v1, v8

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v28

    .line 979
    goto/16 :goto_844

    .line 982
    :sswitch_a12
    invoke-virtual {v5, v8, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 983
    goto/16 :goto_844

    .line 986
    :sswitch_a18
    move-object v0, v5

    move v1, v8

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v33

    goto/16 :goto_844

    .line 990
    .end local v8           #attr:I
    :cond_a22
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 992
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 993
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 994
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 996
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 999
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v51

    move-object/from16 v0, v51

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v51, v0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mOrientation:I

    .line 1001
    return-void

    .line 432
    nop

    :pswitch_data_a52
    .packed-switch 0x0
        :pswitch_277
        :pswitch_280
        :pswitch_28b
        :pswitch_268
        :pswitch_25f
        :pswitch_26d
        :pswitch_272
    .end packed-switch

    .line 492
    :pswitch_data_a64
    .packed-switch 0x0
        :pswitch_533
        :pswitch_2e0
        :pswitch_564
        :pswitch_56e
        :pswitch_578
        :pswitch_552
        :pswitch_548
        :pswitch_558
        :pswitch_55e
        :pswitch_483
        :pswitch_443
        :pswitch_320
        :pswitch_331
        :pswitch_3e4
        :pswitch_372
        :pswitch_430
        :pswitch_3be
        :pswitch_312
        :pswitch_45c
        :pswitch_456
        :pswitch_4de
        :pswitch_4bb
        :pswitch_35f
        :pswitch_385
        :pswitch_398
        :pswitch_3ab
        :pswitch_3d1
        :pswitch_3f7
        :pswitch_40a
        :pswitch_41d
        :pswitch_462
        :pswitch_582
        :pswitch_479
        :pswitch_317
        :pswitch_4a4
        :pswitch_4d2
        :pswitch_503
        :pswitch_50f
        :pswitch_51b
        :pswitch_527
        :pswitch_2f1
        :pswitch_2fa
        :pswitch_2ff
        :pswitch_2ec
        :pswitch_30d
        :pswitch_308
        :pswitch_2e3
        :pswitch_4f1
        :pswitch_347
        :pswitch_351
        :pswitch_342
        :pswitch_34c
        :pswitch_356
        :pswitch_58c
        :pswitch_5ac
        :pswitch_48d
        :pswitch_5c2
        :pswitch_66d
        :pswitch_67a
        :pswitch_5d2
        :pswitch_60b
        :pswitch_634
        :pswitch_6b1
        :pswitch_6c3
        :pswitch_6d5
    .end packed-switch

    .line 910
    :pswitch_data_aea
    .packed-switch 0x1
        :pswitch_9a2
        :pswitch_9ad
        :pswitch_9b8
        :pswitch_9c3
    .end packed-switch

    .line 976
    :sswitch_data_af6
    .sparse-switch
        0x12 -> :sswitch_a08
        0x1d -> :sswitch_a12
        0x1e -> :sswitch_a18
    .end sparse-switch

    .line 840
    :pswitch_data_b04
    .packed-switch 0x1
        :pswitch_946
        :pswitch_94f
        :pswitch_958
    .end packed-switch

    .line 872
    :pswitch_data_b0e
    .packed-switch 0x0
        :pswitch_996
        :pswitch_99a
        :pswitch_99e
    .end packed-switch
.end method

.method static synthetic access$1000(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 210
    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 210
    iget-boolean v0, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/TextView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 210
    invoke-direct {p0}, Landroid/widget/TextView;->startTextSelectionMode()V

    return-void
.end method

.method static synthetic access$1300(Landroid/widget/TextView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 210
    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursorPath()V

    return-void
.end method

.method static synthetic access$1500(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 210
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 210
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 210
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 210
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 210
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 210
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/widget/TextView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 210
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    return-void
.end method

.method static synthetic access$2200()Landroid/graphics/Rect;
    .registers 1

    .prologue
    .line 210
    sget-object v0, Landroid/widget/TextView;->sCursorControllerTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 210
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 210
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/TextView;Landroid/graphics/Rect;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 210
    invoke-direct {p0, p1}, Landroid/widget/TextView;->convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 210
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsCursorControllerOn:Z

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 210
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    return v0
.end method

.method static synthetic access$2702(Landroid/widget/TextView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 210
    iput-boolean p1, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    return p1
.end method

.method static synthetic access$2800(Landroid/widget/TextView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 210
    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    return-void
.end method

.method static synthetic access$2900(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 210
    iget-boolean v0, p0, Landroid/widget/TextView;->mEnableSelection:Z

    return v0
.end method

.method static synthetic access$300(Landroid/widget/TextView;)Landroid/text/Layout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 210
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 210
    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 210
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 210
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 210
    invoke-direct {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 210
    invoke-direct {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/TextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 210
    invoke-direct {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 210
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/TextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 210
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/TextView;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 210
    invoke-direct {p0, p1}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 210
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 210
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "x0"

    .prologue
    .line 210
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private applySingleLine(ZZ)V
    .registers 4
    .parameter "singleLine"
    .parameter "applyTransformation"

    .prologue
    const/4 v0, 0x1

    .line 6040
    iput-boolean p1, p0, Landroid/widget/TextView;->mSingleLine:Z

    .line 6041
    if-eqz p1, :cond_15

    .line 6042
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 6043
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 6044
    if-eqz p2, :cond_14

    .line 6045
    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 6055
    :cond_14
    :goto_14
    return-void

    .line 6049
    :cond_15
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 6050
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 6051
    if-eqz p2, :cond_14

    .line 6052
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_14
.end method

.method private assumeLayout()V
    .registers 8

    .prologue
    .line 5033
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v1, v0, v3

    .line 5035
    .local v1, width:I
    const/4 v0, 0x1

    if-ge v1, v0, :cond_14

    .line 5036
    const/4 v1, 0x0

    .line 5039
    :cond_14
    move v2, v1

    .line 5041
    .local v2, physicalWidth:I
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v0, :cond_1b

    .line 5042
    const/16 v1, 0x4000

    .line 5045
    :cond_1b
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    const/4 v6, 0x0

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 5047
    return-void
.end method

.method private bringTextIntoView()Z
    .registers 15

    .prologue
    const/16 v13, 0x50

    const/4 v12, 0x1

    .line 5623
    const/4 v5, 0x0

    .line 5624
    .local v5, line:I
    iget v10, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v10, v10, 0x70

    if-ne v10, v13, :cond_12

    .line 5625
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10}, Landroid/text/Layout;->getLineCount()I

    move-result v10

    sub-int v5, v10, v12

    .line 5628
    :cond_12
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 5629
    .local v0, a:Landroid/text/Layout$Alignment;
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 5630
    .local v1, dir:I
    iget v10, p0, Landroid/view/View;->mRight:I

    iget v11, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v11

    sub-int v2, v10, v11

    .line 5631
    .local v2, hspace:I
    iget v10, p0, Landroid/view/View;->mBottom:I

    iget v11, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v11

    sub-int v9, v10, v11

    .line 5632
    .local v9, vspace:I
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 5636
    .local v3, ht:I
    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v10, :cond_81

    .line 5642
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->floor(F)F

    move-result v10

    float-to-int v4, v10

    .line 5643
    .local v4, left:I
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->ceil(F)F

    move-result v10

    float-to-int v6, v10

    .line 5645
    .local v6, right:I
    sub-int v10, v6, v4

    if-ge v10, v2, :cond_7a

    .line 5646
    add-int v10, v6, v4

    div-int/lit8 v10, v10, 0x2

    div-int/lit8 v11, v2, 0x2

    sub-int v7, v10, v11

    .line 5678
    .end local v4           #left:I
    .end local v6           #right:I
    .local v7, scrollx:I
    :goto_6a
    if-ge v3, v9, :cond_bd

    .line 5679
    const/4 v8, 0x0

    .line 5688
    .local v8, scrolly:I
    :goto_6d
    iget v10, p0, Landroid/view/View;->mScrollX:I

    if-ne v7, v10, :cond_75

    iget v10, p0, Landroid/view/View;->mScrollY:I

    if-eq v8, v10, :cond_c8

    .line 5689
    :cond_75
    invoke-virtual {p0, v7, v8}, Landroid/widget/TextView;->scrollTo(II)V

    move v10, v12

    .line 5692
    :goto_79
    return v10

    .line 5648
    .end local v7           #scrollx:I
    .end local v8           #scrolly:I
    .restart local v4       #left:I
    .restart local v6       #right:I
    :cond_7a
    if-gez v1, :cond_7f

    .line 5649
    sub-int v7, v6, v2

    .restart local v7       #scrollx:I
    goto :goto_6a

    .line 5651
    .end local v7           #scrollx:I
    :cond_7f
    move v7, v4

    .restart local v7       #scrollx:I
    goto :goto_6a

    .line 5654
    .end local v4           #left:I
    .end local v6           #right:I
    .end local v7           #scrollx:I
    :cond_81
    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v10, :cond_a1

    .line 5659
    if-gez v1, :cond_95

    .line 5660
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->ceil(F)F

    move-result v10

    float-to-int v6, v10

    .line 5661
    .restart local v6       #right:I
    sub-int v7, v6, v2

    .line 5662
    .restart local v7       #scrollx:I
    goto :goto_6a

    .line 5663
    .end local v6           #right:I
    .end local v7           #scrollx:I
    :cond_95
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->floor(F)F

    move-result v10

    float-to-int v7, v10

    .restart local v7       #scrollx:I
    goto :goto_6a

    .line 5670
    .end local v7           #scrollx:I
    :cond_a1
    if-gez v1, :cond_af

    .line 5671
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->floor(F)F

    move-result v10

    float-to-int v7, v10

    .restart local v7       #scrollx:I
    goto :goto_6a

    .line 5673
    .end local v7           #scrollx:I
    :cond_af
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->ceil(F)F

    move-result v10

    float-to-int v6, v10

    .line 5674
    .restart local v6       #right:I
    sub-int v7, v6, v2

    .restart local v7       #scrollx:I
    goto :goto_6a

    .line 5681
    .end local v6           #right:I
    :cond_bd
    iget v10, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v10, v10, 0x70

    if-ne v10, v13, :cond_c6

    .line 5682
    sub-int v8, v3, v9

    .restart local v8       #scrolly:I
    goto :goto_6d

    .line 5684
    .end local v8           #scrolly:I
    :cond_c6
    const/4 v8, 0x0

    .restart local v8       #scrolly:I
    goto :goto_6d

    .line 5692
    :cond_c8
    const/4 v10, 0x0

    goto :goto_79
.end method

.method private canCopy()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 7353
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 7361
    :goto_8
    return v0

    .line 7357
    :cond_9
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_19

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 7358
    const/4 v0, 0x1

    goto :goto_8

    :cond_19
    move v0, v1

    .line 7361
    goto :goto_8
.end method

.method private canCut()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 7339
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 7349
    :goto_8
    return v0

    .line 7343
    :cond_9
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_23

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 7344
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_23

    .line 7345
    const/4 v0, 0x1

    goto :goto_8

    :cond_23
    move v0, v1

    .line 7349
    goto :goto_8
.end method

.method private canMarquee()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 6138
    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int v0, v1, v2

    .line 6139
    .local v0, width:I
    if-lez v0, :cond_20

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_20

    const/4 v1, 0x1

    :goto_1f
    return v1

    :cond_20
    move v1, v3

    goto :goto_1f
.end method

.method private canPaste()Z
    .registers 3

    .prologue
    .line 7365
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_2a

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    if-ltz v0, :cond_2a

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/text/ClipboardManager;

    invoke-virtual {p0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method private canSelectText()Z
    .registers 2

    .prologue
    .line 7324
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private checkForRelayout()V
    .registers 10

    .prologue
    const/4 v6, 0x0

    const/4 v8, -0x2

    .line 5569
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v8, :cond_14

    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    iget v3, p0, Landroid/widget/TextView;->mMinWidthMode:I

    if-ne v0, v3, :cond_94

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    iget v3, p0, Landroid/widget/TextView;->mMinWidth:I

    if-ne v0, v3, :cond_94

    :cond_14
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_94

    :cond_1c
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_94

    .line 5575
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v7

    .line 5576
    .local v7, oldht:I
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    .line 5577
    .local v1, want:I
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_6d

    move v2, v6

    .line 5584
    .local v2, hintWant:I
    :goto_3e
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v0, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 5588
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, v3, :cond_8d

    .line 5590
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v8, :cond_75

    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_75

    .line 5592
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 5617
    .end local v1           #want:I
    .end local v2           #hintWant:I
    .end local v7           #oldht:I
    :goto_6c
    return-void

    .line 5577
    .restart local v1       #want:I
    .restart local v7       #oldht:I
    :cond_6d
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    move v2, v0

    goto :goto_3e

    .line 5598
    .restart local v2       #hintWant:I
    :cond_75
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_8d

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_89

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_8d

    .line 5600
    :cond_89
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_6c

    .line 5607
    :cond_8d
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 5608
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_6c

    .line 5613
    .end local v1           #want:I
    .end local v2           #hintWant:I
    .end local v7           #oldht:I
    :cond_94
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 5614
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 5615
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_6c
.end method

.method private checkForResize()V
    .registers 5

    .prologue
    const/4 v3, -0x2

    .line 5528
    const/4 v1, 0x0

    .line 5530
    .local v1, sizeChanged:Z
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_21

    .line 5532
    iget-object v2, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v3, :cond_10

    .line 5533
    const/4 v1, 0x1

    .line 5534
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 5538
    :cond_10
    iget-object v2, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v3, :cond_27

    .line 5539
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    .line 5541
    .local v0, desiredHeight:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    if-eq v0, v2, :cond_21

    .line 5542
    const/4 v1, 0x1

    .line 5555
    .end local v0           #desiredHeight:I
    :cond_21
    :goto_21
    if-eqz v1, :cond_26

    .line 5556
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 5559
    :cond_26
    return-void

    .line 5544
    :cond_27
    iget-object v2, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_21

    .line 5545
    iget v2, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-ltz v2, :cond_21

    .line 5546
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    .line 5548
    .restart local v0       #desiredHeight:I
    iget v2, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-eq v0, v2, :cond_21

    .line 5549
    const/4 v1, 0x1

    goto :goto_21
.end method

.method private chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .registers 16
    .parameter "pop"
    .parameter "text"
    .parameter "tv"

    .prologue
    .line 3525
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int v11, v1, v2

    .line 3526
    .local v11, wid:I
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int v8, v1, v2

    .line 3532
    .local v8, ht:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    sub-int v3, v1, v11

    .line 3533
    .local v3, cap:I
    if-gez v3, :cond_1e

    .line 3534
    const/16 v3, 0xc8

    .line 3537
    :cond_1e
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 3539
    .local v0, l:Landroid/text/Layout;
    const/4 v10, 0x0

    .line 3540
    .local v10, max:F
    const/4 v9, 0x0

    .local v9, i:I
    :goto_30
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-ge v9, v1, :cond_41

    .line 3541
    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 3540
    add-int/lit8 v9, v9, 0x1

    goto :goto_30

    .line 3547
    :cond_41
    float-to-double v1, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v1, v11

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3548
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 3549
    return-void
.end method

.method private compressText(F)Z
    .registers 9
    .parameter "width"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 5241
    cmpl-float v2, p1, v4

    if-lez v2, :cond_4b

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_4b

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    if-ne v2, v6, :cond_4b

    iget-boolean v2, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-nez v2, :cond_4b

    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4b

    .line 5243
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    .line 5244
    .local v1, textWidth:F
    add-float v2, v1, v3

    sub-float/2addr v2, p1

    div-float v0, v2, p1

    .line 5245
    .local v0, overflow:F
    cmpl-float v2, v0, v4

    if-lez v2, :cond_4b

    const v2, 0x3d8f5c29

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_4b

    .line 5246
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    sub-float/2addr v3, v0

    const v4, 0x3ba3d70a

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 5247
    new-instance v2, Landroid/widget/TextView$1;

    invoke-direct {v2, p0}, Landroid/widget/TextView$1;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    move v2, v6

    .line 5256
    .end local v0           #overflow:F
    .end local v1           #textWidth:F
    :goto_4a
    return v2

    :cond_4b
    move v2, v5

    goto :goto_4a
.end method

.method private convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V
    .registers 5
    .parameter "r"

    .prologue
    .line 5937
    invoke-direct {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v0

    .line 5938
    .local v0, horizontalOffset:I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 5939
    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 5941
    invoke-direct {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v1

    .line 5942
    .local v1, verticalOffset:I
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 5943
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 5944
    return-void
.end method

.method private static desired(Landroid/text/Layout;)I
    .registers 8
    .parameter "layout"

    .prologue
    const/4 v6, 0x1

    .line 5260
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 5261
    .local v2, n:I
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 5262
    .local v3, text:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 5267
    .local v1, max:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    sub-int v4, v2, v6

    if-ge v0, v4, :cond_21

    .line 5268
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    sub-int/2addr v4, v6

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1e

    .line 5269
    const/4 v4, -0x1

    .line 5276
    :goto_1d
    return v4

    .line 5267
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 5272
    :cond_21
    const/4 v0, 0x0

    :goto_22
    if-ge v0, v2, :cond_2f

    .line 5273
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 5272
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 5276
    :cond_2f
    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v4

    float-to-int v4, v4

    goto :goto_1d
.end method

.method private doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I
    .registers 12
    .parameter "keyCode"
    .parameter "event"
    .parameter "otherEvent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 4440
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_c

    move v2, v5

    .line 4561
    :goto_b
    return v2

    .line 4444
    :cond_c
    sparse-switch p1, :sswitch_data_e0

    .line 4494
    :cond_f
    iget-object v2, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v2, :cond_af

    .line 4501
    iput-boolean v5, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    .line 4503
    const/4 v0, 0x1

    .line 4504
    .local v0, doDown:Z
    if-eqz p3, :cond_8a

    .line 4506
    :try_start_18
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 4507
    iget-object v3, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v3, p0, v2, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    move-result v1

    .line 4509
    .local v1, handled:Z
    iget-object v2, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v2, :cond_32

    iget-boolean v2, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    if-nez v2, :cond_32

    .line 4510
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    :try_end_32
    .catchall {:try_start_18 .. :try_end_32} :catchall_81
    .catch Ljava/lang/AbstractMethodError; {:try_start_18 .. :try_end_32} :catch_86

    .line 4512
    :cond_32
    const/4 v0, 0x0

    .line 4513
    if-eqz v1, :cond_87

    .line 4520
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    move v2, v4

    .line 4514
    goto :goto_b

    .line 4446
    .end local v0           #doDown:Z
    .end local v1           #handled:Z
    :sswitch_3a
    iput-boolean v6, p0, Landroid/widget/TextView;->mEnterKeyIsDown:Z

    .line 4449
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_f

    .line 4455
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v2, :cond_5e

    .line 4459
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_5e

    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v2, p0, v5, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 4462
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-boolean v6, v2, Landroid/widget/TextView$InputContentType;->enterDown:Z

    move v2, v4

    .line 4464
    goto :goto_b

    .line 4471
    :cond_5e
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_6c

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_6c
    move v2, v4

    .line 4473
    goto :goto_b

    .line 4479
    :sswitch_6e
    iput-boolean v6, p0, Landroid/widget/TextView;->mDPadCenterIsDown:Z

    .line 4480
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v5

    .line 4481
    goto :goto_b

    .line 4487
    :sswitch_78
    iget-boolean v2, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    if-eqz v2, :cond_f

    .line 4488
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    move v2, v4

    .line 4489
    goto :goto_b

    .line 4520
    .restart local v0       #doDown:Z
    :catchall_81
    move-exception v2

    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    throw v2

    .line 4516
    :catch_86
    move-exception v2

    .line 4520
    :cond_87
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 4524
    :cond_8a
    if-eqz v0, :cond_af

    .line 4525
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 4526
    iget-object v3, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v3, p0, v2, p1, p2}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 4527
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 4528
    iget-object v2, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v2, :cond_a9

    iget-boolean v2, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    if-nez v2, :cond_a9

    .line 4529
    invoke-virtual {p0, v7, v7}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :cond_a9
    move v2, v6

    .line 4531
    goto/16 :goto_b

    .line 4533
    :cond_ac
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 4540
    .end local v0           #doDown:Z
    :cond_af
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v2, :cond_dc

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_dc

    .line 4541
    const/4 v0, 0x1

    .line 4542
    .restart local v0       #doDown:Z
    if-eqz p3, :cond_cb

    .line 4544
    :try_start_ba
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v3, p0, v2, p3}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    :try_end_c3
    .catch Ljava/lang/AbstractMethodError; {:try_start_ba .. :try_end_c3} :catch_ca

    move-result v1

    .line 4546
    .restart local v1       #handled:Z
    const/4 v0, 0x0

    .line 4547
    if-eqz v1, :cond_cb

    move v2, v4

    .line 4548
    goto/16 :goto_b

    .line 4550
    .end local v1           #handled:Z
    :catch_ca
    move-exception v2

    .line 4555
    :cond_cb
    if-eqz v0, :cond_dc

    .line 4556
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v3, p0, v2, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 4557
    const/4 v2, 0x2

    goto/16 :goto_b

    .end local v0           #doDown:Z
    :cond_dc
    move v2, v5

    .line 4561
    goto/16 :goto_b

    .line 4444
    nop

    :sswitch_data_e0
    .sparse-switch
        0x4 -> :sswitch_78
        0x17 -> :sswitch_6e
        0x42 -> :sswitch_3a
    .end sparse-switch
.end method

.method private static extractRangeEndFromLong(J)I
    .registers 4
    .parameter "range"

    .prologue
    .line 7472
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method private static extractRangeStartFromLong(J)I
    .registers 4
    .parameter "range"

    .prologue
    .line 7468
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private fixFocusableAndClickableSettings()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1213
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-nez v0, :cond_e

    iget-boolean v0, p0, Landroid/widget/TextView;->mEnableSelection:Z

    if-eqz v0, :cond_18

    .line 1214
    :cond_e
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1215
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1216
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 1222
    :goto_17
    return-void

    .line 1218
    :cond_18
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1219
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1220
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    goto :goto_17
.end method

.method private getBottomVerticalOffset(Z)I
    .registers 9
    .parameter "forceNormal"

    .prologue
    .line 3651
    const/4 v4, 0x0

    .line 3652
    .local v4, voffset:I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 3654
    .local v1, gravity:I
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 3655
    .local v2, l:Landroid/text/Layout;
    if-nez p1, :cond_17

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_17

    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v5, :cond_17

    .line 3656
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 3659
    :cond_17
    const/16 v5, 0x50

    if-eq v1, v5, :cond_3a

    .line 3662
    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-ne v2, v5, :cond_3b

    .line 3663
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 3669
    .local v0, boxht:I
    :goto_2e
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 3671
    .local v3, textht:I
    if-ge v3, v0, :cond_3a

    .line 3672
    const/16 v5, 0x30

    if-ne v1, v5, :cond_4b

    .line 3673
    sub-int v4, v0, v3

    .line 3678
    .end local v0           #boxht:I
    .end local v3           #textht:I
    :cond_3a
    :goto_3a
    return v4

    .line 3666
    :cond_3b
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .restart local v0       #boxht:I
    goto :goto_2e

    .line 3675
    .restart local v3       #textht:I
    :cond_4b
    sub-int v5, v0, v3

    shr-int/lit8 v4, v5, 0x1

    goto :goto_3a
.end method

.method private getDesiredHeight()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 5464
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-direct {p0, v0, v3}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iget-object v2, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_17

    move v2, v3

    :goto_e
    invoke-direct {p0, v1, v2}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_17
    const/4 v2, 0x0

    goto :goto_e
.end method

.method private getDesiredHeight(Landroid/text/Layout;Z)I
    .registers 10
    .parameter "layout"
    .parameter "cap"

    .prologue
    const/4 v6, 0x1

    .line 5470
    if-nez p1, :cond_5

    .line 5471
    const/4 v4, 0x0

    .line 5520
    :goto_4
    return v4

    .line 5474
    :cond_5
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 5475
    .local v2, linecount:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    add-int v3, v4, v5

    .line 5476
    .local v3, pad:I
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 5478
    .local v0, desired:I
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 5479
    .local v1, dr:Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_27

    .line 5480
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5481
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5484
    :cond_27
    add-int/2addr v0, v3

    .line 5486
    iget v4, p0, Landroid/widget/TextView;->mMaxMode:I

    if-ne v4, v6, :cond_6a

    .line 5491
    if-eqz p2, :cond_4f

    .line 5492
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    if-le v2, v4, :cond_4f

    .line 5493
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    invoke-virtual {p1}, Landroid/text/Layout;->getBottomPadding()I

    move-result v5

    add-int v0, v4, v5

    .line 5496
    if-eqz v1, :cond_4c

    .line 5497
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5498
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5501
    :cond_4c
    add-int/2addr v0, v3

    .line 5502
    iget v2, p0, Landroid/widget/TextView;->mMaximum:I

    .line 5509
    :cond_4f
    :goto_4f
    iget v4, p0, Landroid/widget/TextView;->mMinMode:I

    if-ne v4, v6, :cond_71

    .line 5510
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    if-ge v2, v4, :cond_60

    .line 5511
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/TextView;->mMinimum:I

    sub-int/2addr v5, v2

    mul-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 5518
    :cond_60
    :goto_60
    invoke-virtual {p0}, Landroid/widget/TextView;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v4, v0

    .line 5520
    goto :goto_4

    .line 5506
    :cond_6a
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_4f

    .line 5514
    :cond_71
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_60
.end method

.method private getErrorX()I
    .registers 6

    .prologue
    .line 3481
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 3483
    .local v1, scale:F
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 3484
    .local v0, dr:Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v3}, Landroid/widget/TextView$ErrorPopup;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    if-eqz v0, :cond_2c

    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    :goto_20
    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    const/high16 v3, 0x41c8

    mul-float/2addr v3, v1

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    return v2

    :cond_2c
    const/4 v3, 0x0

    goto :goto_20
.end method

.method private getErrorY()I
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 3498
    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    sub-int v2, v3, v4

    .line 3501
    .local v2, vspace:I
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 3502
    .local v0, dr:Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    if-eqz v0, :cond_2e

    iget v4, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    :goto_1b
    sub-int v4, v2, v4

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 3510
    .local v1, icontop:I
    if-eqz v0, :cond_30

    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    :goto_25
    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    return v3

    .end local v1           #icontop:I
    :cond_2e
    move v4, v5

    .line 3502
    goto :goto_1b

    .restart local v1       #icontop:I
    :cond_30
    move v3, v5

    .line 3510
    goto :goto_25
.end method

.method private getInterestingRect(Landroid/graphics/Rect;I)V
    .registers 5
    .parameter "r"
    .parameter "line"

    .prologue
    .line 5927
    invoke-direct {p0, p1}, Landroid/widget/TextView;->convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V

    .line 5932
    if-nez p2, :cond_e

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 5933
    :cond_e
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_21

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 5934
    :cond_21
    return-void
.end method

.method private getLastTapPosition()I
    .registers 5

    .prologue
    .line 6794
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v1, :cond_4c

    .line 6795
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    check-cast v1, Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v0

    .line 6797
    .local v0, lastTapPosition:I
    if-ltz v0, :cond_4c

    .line 6799
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_4a

    .line 6800
    const-string v1, "TextView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid tap focus position ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6802
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :cond_4a
    move v1, v0

    .line 6808
    .end local v0           #lastTapPosition:I
    :goto_4b
    return v1

    :cond_4c
    const/4 v1, -0x1

    goto :goto_4b
.end method

.method private getOffsetForHorizontal(II)I
    .registers 5
    .parameter "line"
    .parameter "x"

    .prologue
    .line 8839
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    .line 8841
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 8842
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 8843
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    add-int/2addr p2, v0

    .line 8844
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    return v0
.end method

.method public static getTextColor(Landroid/content/Context;Landroid/content/res/TypedArray;I)I
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "def"

    .prologue
    .line 7279
    invoke-static {p0, p1}, Landroid/widget/TextView;->getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 7281
    .local v0, colors:Landroid/content/res/ColorStateList;
    if-nez v0, :cond_8

    move v1, p2

    .line 7284
    :goto_7
    return v1

    :cond_8
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    goto :goto_7
.end method

.method public static getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, -0x1

    .line 7251
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 7254
    .local v2, colors:Landroid/content/res/ColorStateList;
    if-nez v2, :cond_1d

    .line 7255
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 7257
    .local v0, ap:I
    if-eq v0, v4, :cond_1d

    .line 7259
    sget-object v3, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 7261
    .local v1, appearance:Landroid/content/res/TypedArray;
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 7263
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 7267
    .end local v0           #ap:I
    .end local v1           #appearance:Landroid/content/res/TypedArray;
    :cond_1d
    return-object v2
.end method

.method private getVerticalOffset(Z)I
    .registers 9
    .parameter "forceNormal"

    .prologue
    .line 3620
    const/4 v4, 0x0

    .line 3621
    .local v4, voffset:I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 3623
    .local v1, gravity:I
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 3624
    .local v2, l:Landroid/text/Layout;
    if-nez p1, :cond_17

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_17

    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v5, :cond_17

    .line 3625
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 3628
    :cond_17
    const/16 v5, 0x30

    if-eq v1, v5, :cond_3a

    .line 3631
    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-ne v2, v5, :cond_3b

    .line 3632
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 3638
    .local v0, boxht:I
    :goto_2e
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 3640
    .local v3, textht:I
    if-ge v3, v0, :cond_3a

    .line 3641
    const/16 v5, 0x50

    if-ne v1, v5, :cond_4b

    .line 3642
    sub-int v4, v0, v3

    .line 3647
    .end local v0           #boxht:I
    .end local v3           #textht:I
    :cond_3a
    :goto_3a
    return v4

    .line 3635
    :cond_3b
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .restart local v0       #boxht:I
    goto :goto_2e

    .line 3644
    .restart local v3       #textht:I
    :cond_4b
    sub-int v5, v0, v3

    shr-int/lit8 v4, v5, 0x1

    goto :goto_3a
.end method

.method private getWordForDictionary()Ljava/lang/String;
    .registers 8

    .prologue
    .line 7537
    iget-boolean v5, p0, Landroid/widget/TextView;->mContextMenuTriggeredByKey:Z

    if-eqz v5, :cond_26

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    move v1, v5

    .line 7538
    .local v1, seedPosition:I
    :goto_9
    invoke-direct {p0, v1}, Landroid/widget/TextView;->getWordLimitsAt(I)J

    move-result-wide v3

    .line 7539
    .local v3, wordLimits:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_2c

    .line 7540
    invoke-static {v3, v4}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result v2

    .line 7541
    .local v2, start:I
    invoke-static {v3, v4}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result v0

    .line 7542
    .local v0, end:I
    iget-object v5, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v5, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7544
    .end local v0           #end:I
    .end local v2           #start:I
    :goto_25
    return-object v5

    .line 7537
    .end local v1           #seedPosition:I
    .end local v3           #wordLimits:J
    :cond_26
    invoke-direct {p0}, Landroid/widget/TextView;->getLastTapPosition()I

    move-result v5

    move v1, v5

    goto :goto_9

    .line 7544
    .restart local v1       #seedPosition:I
    .restart local v3       #wordLimits:J
    :cond_2c
    const/4 v5, 0x0

    goto :goto_25
.end method

.method private getWordLimitsAt(I)J
    .registers 13
    .parameter "offset"

    .prologue
    .line 7386
    iget v9, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v4, v9, 0xf

    .line 7387
    .local v4, klass:I
    const/4 v9, 0x2

    if-eq v4, v9, :cond_d

    const/4 v9, 0x3

    if-eq v4, v9, :cond_d

    const/4 v9, 0x4

    if-ne v4, v9, :cond_10

    .line 7390
    :cond_d
    const-wide/16 v9, -0x1

    .line 7460
    :goto_f
    return-wide v9

    .line 7393
    :cond_10
    iget v9, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v8, v9, 0xff0

    .line 7394
    .local v8, variation:I
    const/16 v9, 0x10

    if-eq v8, v9, :cond_28

    const/16 v9, 0x80

    if-eq v8, v9, :cond_28

    const/16 v9, 0x90

    if-eq v8, v9, :cond_28

    const/16 v9, 0x20

    if-eq v8, v9, :cond_28

    const/16 v9, 0xb0

    if-ne v8, v9, :cond_2b

    .line 7399
    :cond_28
    const-wide/16 v9, -0x1

    goto :goto_f

    .line 7402
    :cond_2b
    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 7403
    .local v5, len:I
    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 7405
    .local v1, end:I
    if-gez v1, :cond_3a

    .line 7406
    const-wide/16 v9, -0x1

    goto :goto_f

    .line 7409
    :cond_3a
    move v6, v1

    .line 7411
    .local v6, start:I
    :goto_3b
    if-lez v6, :cond_5e

    .line 7412
    iget-object v9, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    const/4 v10, 0x1

    sub-int v10, v6, v10

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 7413
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v7

    .line 7415
    .local v7, type:I
    const/16 v9, 0x27

    if-eq v0, v9, :cond_83

    const/4 v9, 0x1

    if-eq v7, v9, :cond_83

    const/4 v9, 0x2

    if-eq v7, v9, :cond_83

    const/4 v9, 0x3

    if-eq v7, v9, :cond_83

    const/4 v9, 0x4

    if-eq v7, v9, :cond_83

    const/16 v9, 0x9

    if-eq v7, v9, :cond_83

    .line 7425
    .end local v0           #c:C
    .end local v7           #type:I
    :cond_5e
    :goto_5e
    if-ge v1, v5, :cond_7e

    .line 7426
    iget-object v9, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v9, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 7427
    .restart local v0       #c:C
    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v7

    .line 7429
    .restart local v7       #type:I
    const/16 v9, 0x27

    if-eq v0, v9, :cond_86

    const/4 v9, 0x1

    if-eq v7, v9, :cond_86

    const/4 v9, 0x2

    if-eq v7, v9, :cond_86

    const/4 v9, 0x3

    if-eq v7, v9, :cond_86

    const/4 v9, 0x4

    if-eq v7, v9, :cond_86

    const/16 v9, 0x9

    if-eq v7, v9, :cond_86

    .line 7439
    .end local v0           #c:C
    .end local v7           #type:I
    :cond_7e
    if-ne v6, v1, :cond_89

    .line 7440
    const-wide/16 v9, -0x1

    goto :goto_f

    .line 7411
    .restart local v0       #c:C
    .restart local v7       #type:I
    :cond_83
    add-int/lit8 v6, v6, -0x1

    goto :goto_3b

    .line 7425
    :cond_86
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    .line 7443
    .end local v0           #c:C
    .end local v7           #type:I
    :cond_89
    sub-int v9, v1, v6

    const/16 v10, 0x30

    if-le v9, v10, :cond_93

    .line 7444
    const-wide/16 v9, -0x1

    goto/16 :goto_f

    .line 7447
    :cond_93
    const/4 v2, 0x0

    .line 7448
    .local v2, hasLetter:Z
    move v3, v6

    .local v3, i:I
    :goto_95
    if-ge v3, v1, :cond_a4

    .line 7449
    iget-object v9, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v9, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isLetter(C)Z

    move-result v9

    if-eqz v9, :cond_aa

    .line 7450
    const/4 v2, 0x1

    .line 7455
    :cond_a4
    if-nez v2, :cond_ad

    .line 7456
    const-wide/16 v9, -0x1

    goto/16 :goto_f

    .line 7448
    :cond_aa
    add-int/lit8 v3, v3, 0x1

    goto :goto_95

    .line 7460
    :cond_ad
    invoke-static {v6, v1}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v9

    goto/16 :goto_f
.end method

.method private hasPasswordTransformationMethod()Z
    .registers 2

    .prologue
    .line 3046
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    return v0
.end method

.method private hideControllers()V
    .registers 1

    .prologue
    .line 8834
    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    .line 8835
    invoke-direct {p0}, Landroid/widget/TextView;->hideSelectionModifierCursorController()V

    .line 8836
    return-void
.end method

.method private hideError()V
    .registers 2

    .prologue
    .line 3515
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-eqz v0, :cond_11

    .line 3516
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/TextView$ErrorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3517
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/TextView$ErrorPopup;->dismiss()V

    .line 3521
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    .line 3522
    return-void
.end method

.method private hideInsertionPointCursorController()V
    .registers 2

    .prologue
    .line 8816
    iget-object v0, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v0, :cond_9

    .line 8817
    iget-object v0, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v0}, Landroid/widget/TextView$CursorController;->hide()V

    .line 8819
    :cond_9
    return-void
.end method

.method private hideSelectionModifierCursorController()V
    .registers 2

    .prologue
    .line 8822
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v0, :cond_1b

    .line 8823
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v0}, Landroid/widget/TextView$CursorController;->hide()V

    .line 8825
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Landroid/widget/TextView;->mEnableSelection:Z

    if-eqz v0, :cond_1b

    .line 8826
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 8827
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    .line 8831
    :cond_1b
    return-void
.end method

.method private invalidateCursor()V
    .registers 2

    .prologue
    .line 3717
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 3719
    .local v0, where:I
    invoke-direct {p0, v0, v0, v0}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 3720
    return-void
.end method

.method private invalidateCursor(III)V
    .registers 16
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    const/4 v10, 0x1

    .line 3723
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v8, :cond_9

    .line 3724
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3760
    :cond_8
    :goto_8
    return-void

    .line 3726
    :cond_9
    if-gez p1, :cond_f

    if-gez p2, :cond_f

    if-ltz p3, :cond_8

    .line 3727
    :cond_f
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v8, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3728
    .local v1, first:I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8, p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3730
    .local v2, last:I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 3731
    .local v4, line:I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 3739
    .local v6, top:I
    if-lez v4, :cond_36

    .line 3740
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    sub-int v9, v4, v10

    invoke-virtual {v8, v9}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v8

    sub-int/2addr v6, v8

    .line 3745
    :cond_36
    if-ne v1, v2, :cond_6e

    .line 3746
    move v5, v4

    .line 3750
    .local v5, line2:I
    :goto_39
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v8, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 3751
    .local v0, bottom:I
    invoke-direct {p0, v10}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v7

    .line 3753
    .local v7, voffset:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v8

    iget v9, p0, Landroid/view/View;->mScrollX:I

    add-int v3, v8, v9

    .line 3754
    .local v3, left:I
    add-int v8, v6, v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    add-int v10, v0, v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0, v3, v8, v9, v10}, Landroid/widget/TextView;->invalidate(IIII)V

    goto :goto_8

    .line 3748
    .end local v0           #bottom:I
    .end local v3           #left:I
    .end local v5           #line2:I
    .end local v7           #voffset:I
    :cond_6e
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    .restart local v5       #line2:I
    goto :goto_39
.end method

.method private invalidateCursorPath()V
    .registers 10

    .prologue
    .line 3682
    iget-boolean v3, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v3, :cond_8

    .line 3683
    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursor()V

    .line 3714
    :goto_7
    return-void

    .line 3685
    :cond_8
    sget-object v3, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    monitor-enter v3

    .line 3696
    :try_start_b
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v4

    invoke-static {v4}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    .line 3697
    .local v1, thick:F
    const/high16 v4, 0x3f80

    cmpg-float v4, v1, v4

    if-gez v4, :cond_1d

    .line 3698
    const/high16 v1, 0x3f80

    .line 3701
    :cond_1d
    const/high16 v4, 0x4000

    div-float/2addr v1, v4

    .line 3703
    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    sget-object v5, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 3705
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    .line 3706
    .local v0, left:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v5

    add-int v2, v4, v5

    .line 3708
    .local v2, top:I
    int-to-float v4, v0

    sget-object v5, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    sub-float/2addr v4, v1

    invoke-static {v4}, Landroid/util/FloatMath;->floor(F)F

    move-result v4

    float-to-int v4, v4

    int-to-float v5, v2

    sget-object v6, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v6

    sub-float/2addr v5, v1

    invoke-static {v5}, Landroid/util/FloatMath;->floor(F)F

    move-result v5

    float-to-int v5, v5

    int-to-float v6, v0

    sget-object v7, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    add-float/2addr v6, v1

    invoke-static {v6}, Landroid/util/FloatMath;->ceil(F)F

    move-result v6

    float-to-int v6, v6

    int-to-float v7, v2

    sget-object v8, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v8

    add-float/2addr v7, v1

    invoke-static {v7}, Landroid/util/FloatMath;->ceil(F)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/widget/TextView;->invalidate(IIII)V

    .line 3712
    monitor-exit v3

    goto :goto_7

    .end local v0           #left:I
    .end local v1           #thick:F
    .end local v2           #top:I
    :catchall_6c
    move-exception v4

    monitor-exit v3
    :try_end_6e
    .catchall {:try_start_b .. :try_end_6e} :catchall_6c

    throw v4
.end method

.method private isPasswordInputType(I)Z
    .registers 4
    .parameter "inputType"

    .prologue
    .line 3050
    and-int/lit16 v0, p1, 0xfff

    .line 3052
    .local v0, variation:I
    const/16 v1, 0x81

    if-ne v0, v1, :cond_8

    const/4 v1, 0x1

    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_7
.end method

.method private isTextEditable()Z
    .registers 2

    .prologue
    .line 7081
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private isVisiblePasswordInputType(I)Z
    .registers 4
    .parameter "inputType"

    .prologue
    .line 3058
    and-int/lit16 v0, p1, 0xfff

    .line 3060
    .local v0, variation:I
    const/16 v1, 0x91

    if-ne v0, v1, :cond_8

    const/4 v1, 0x1

    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_7
.end method

.method private makeBlink()V
    .registers 7

    .prologue
    .line 6628
    iget-boolean v0, p0, Landroid/widget/TextView;->mCursorVisible:Z

    if-nez v0, :cond_10

    .line 6629
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v0, :cond_f

    .line 6630
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6641
    :cond_f
    :goto_f
    return-void

    .line 6636
    :cond_10
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-nez v0, :cond_1b

    .line 6637
    new-instance v0, Landroid/widget/TextView$Blink;

    invoke-direct {v0, p0}, Landroid/widget/TextView$Blink;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    .line 6639
    :cond_1b
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6640
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-wide v2, p0, Landroid/widget/TextView;->mShowCursor:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView$Blink;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_f
.end method

.method private nullLayouts()V
    .registers 2

    .prologue
    .line 5018
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_10

    .line 5019
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    .line 5021
    :cond_10
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_20

    .line 5022
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    .line 5025
    :cond_20
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iput-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 5026
    return-void
.end method

.method private onTapUpEvent(II)V
    .registers 10
    .parameter "prevStart"
    .parameter "prevEnd"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 6892
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 6893
    .local v2, start:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 6895
    .local v0, end:I
    if-ne v2, v0, :cond_44

    .line 6896
    iget-boolean v4, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    if-eqz v4, :cond_45

    if-nez p1, :cond_45

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne p2, v4, :cond_45

    move v3, v6

    .line 6898
    .local v3, tapInsideSelectAllOnFocus:Z
    :goto_1b
    if-lt v2, p1, :cond_49

    if-ge v2, p2, :cond_49

    if-nez v3, :cond_49

    .line 6905
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 6906
    iget-boolean v4, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    if-eqz v4, :cond_47

    iget-boolean v4, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    if-eqz v4, :cond_47

    move v1, v6

    .line 6907
    .local v1, selectAllGotFocus:Z
    :goto_2d
    invoke-virtual {p0}, Landroid/widget/TextView;->hasInsertionController()Z

    move-result v4

    if-eqz v4, :cond_44

    if-nez v1, :cond_44

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ltz v4, :cond_44

    .line 6908
    invoke-virtual {p0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$CursorController;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/TextView$CursorController;->show()V

    .line 6922
    .end local v1           #selectAllGotFocus:Z
    .end local v3           #tapInsideSelectAllOnFocus:Z
    :cond_44
    :goto_44
    return-void

    :cond_45
    move v3, v5

    .line 6896
    goto :goto_1b

    .restart local v3       #tapInsideSelectAllOnFocus:Z
    :cond_47
    move v1, v5

    .line 6906
    goto :goto_2d

    .line 6913
    :cond_49
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 6916
    iget-boolean v4, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    if-eqz v4, :cond_6d

    iget-boolean v4, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    if-eqz v4, :cond_6d

    move v1, v6

    .line 6917
    .restart local v1       #selectAllGotFocus:Z
    :goto_55
    invoke-virtual {p0}, Landroid/widget/TextView;->hasInsertionController()Z

    move-result v4

    if-eqz v4, :cond_44

    if-nez v1, :cond_44

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ltz v4, :cond_44

    .line 6918
    invoke-virtual {p0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$CursorController;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/TextView$CursorController;->show()V

    goto :goto_44

    .end local v1           #selectAllGotFocus:Z
    :cond_6d
    move v1, v5

    .line 6916
    goto :goto_55
.end method

.method private static packRangeInLong(II)J
    .registers 6
    .parameter "start"
    .parameter "end"

    .prologue
    .line 7464
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private prepareCursorControllers()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7052
    const/4 v3, 0x0

    .line 7054
    .local v3, windowSupportsHandles:Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 7055
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_21

    .line 7056
    move-object v0, v1

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    move-object v2, v0

    .line 7057
    .local v2, windowParams:Landroid/view/WindowManager$LayoutParams;
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3e8

    if-lt v4, v5, :cond_20

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7cf

    if-le v4, v5, :cond_4d

    :cond_20
    move v3, v7

    .line 7062
    .end local v2           #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_21
    :goto_21
    if-eqz v3, :cond_4f

    iget-boolean v4, p0, Landroid/widget/TextView;->mCursorVisible:Z

    if-eqz v4, :cond_4f

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_4f

    move v4, v7

    :goto_2c
    iput-boolean v4, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    .line 7063
    if-eqz v3, :cond_51

    invoke-direct {p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v4

    if-eqz v4, :cond_51

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_51

    move v4, v7

    :goto_3b
    iput-boolean v4, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    .line 7066
    iget-boolean v4, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    if-nez v4, :cond_43

    .line 7067
    iput-object v8, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    .line 7070
    :cond_43
    iget-boolean v4, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    if-nez v4, :cond_4c

    .line 7072
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 7073
    iput-object v8, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    .line 7075
    :cond_4c
    return-void

    .restart local v2       #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_4d
    move v3, v6

    .line 7057
    goto :goto_21

    .end local v2           #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_4f
    move v4, v6

    .line 7062
    goto :goto_2c

    :cond_51
    move v4, v6

    .line 7063
    goto :goto_3b
.end method

.method private prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J
    .registers 12
    .parameter "min"
    .parameter "max"
    .parameter "paste"

    .prologue
    const/4 v5, 0x1

    const-string v7, " "

    const-string v6, ""

    .line 7882
    const/4 v2, 0x0

    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 7883
    if-lez p1, :cond_3b

    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    sub-int v3, p1, v5

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 7885
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7886
    .local v1, originalLength:I
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    sub-int v3, p1, v5

    const-string v4, ""

    invoke-interface {v2, v3, p1, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 7889
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int v0, v2, v1

    .line 7890
    .local v0, delta:I
    add-int/2addr p1, v0

    .line 7891
    add-int/2addr p2, v0

    .line 7905
    .end local v0           #delta:I
    .end local v1           #originalLength:I
    :cond_3b
    :goto_3b
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 7906
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge p2, v2, :cond_69

    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v2, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 7908
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Editable;

    add-int/lit8 v2, p2, 0x1

    const-string v3, ""

    invoke-interface {p0, p2, v2, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 7916
    :cond_69
    :goto_69
    invoke-static {p1, p2}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2

    .line 7894
    .restart local p0
    :cond_6e
    if-lez p1, :cond_3b

    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    sub-int v3, p1, v5

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 7896
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7897
    .restart local v1       #originalLength:I
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    const-string v3, " "

    invoke-interface {v2, p1, p1, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 7899
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int v0, v2, v1

    .line 7900
    .restart local v0       #delta:I
    add-int/2addr p1, v0

    .line 7901
    add-int/2addr p2, v0

    goto :goto_3b

    .line 7911
    .end local v0           #delta:I
    .end local v1           #originalLength:I
    :cond_98
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge p2, v2, :cond_69

    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v2, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-nez v2, :cond_69

    .line 7913
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Editable;

    const-string v2, " "

    invoke-interface {p0, p2, p2, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_69
.end method

.method private registerForPreDraw()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 3763
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3764
    .local v0, observer:Landroid/view/ViewTreeObserver;
    if-nez v0, :cond_8

    .line 3776
    :cond_7
    :goto_7
    return-void

    .line 3768
    :cond_8
    iget v1, p0, Landroid/widget/TextView;->mPreDrawState:I

    if-nez v1, :cond_12

    .line 3769
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3770
    iput v3, p0, Landroid/widget/TextView;->mPreDrawState:I

    goto :goto_7

    .line 3771
    :cond_12
    iget v1, p0, Landroid/widget/TextView;->mPreDrawState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 3772
    iput v3, p0, Landroid/widget/TextView;->mPreDrawState:I

    goto :goto_7
.end method

.method static removeParcelableSpans(Landroid/text/Spannable;II)V
    .registers 6
    .parameter "spannable"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 4838
    const-class v2, Landroid/text/ParcelableSpan;

    invoke-interface {p0, p1, p2, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 4839
    .local v1, spans:[Ljava/lang/Object;
    array-length v0, v1

    .line 4840
    .local v0, i:I
    :goto_7
    if-lez v0, :cond_11

    .line 4841
    add-int/lit8 v0, v0, -0x1

    .line 4842
    aget-object v2, v1, v0

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_7

    .line 4844
    :cond_11
    return-void
.end method

.method private restartMarqueeIfNeeded()V
    .registers 3

    .prologue
    .line 3569
    iget-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_10

    .line 3570
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    .line 3571
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 3573
    :cond_10
    return-void
.end method

.method private selectCurrentWord()V
    .registers 15

    .prologue
    const-wide/16 v12, 0x0

    const v11, 0xdbbb

    const v10, 0xdbb8

    const/4 v9, 0x1

    .line 7478
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 7534
    .end local p0
    :goto_f
    return-void

    .line 7484
    .restart local p0
    :cond_10
    iget-boolean v7, p0, Landroid/widget/TextView;->mContextMenuTriggeredByKey:Z

    if-eqz v7, :cond_80

    .line 7485
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 7486
    .local v1, minOffset:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 7509
    .local v0, maxOffset:I
    :goto_1c
    invoke-direct {p0, v1}, Landroid/widget/TextView;->getWordLimitsAt(I)J

    move-result-wide v5

    .line 7510
    .local v5, wordLimits:J
    cmp-long v7, v5, v12

    if-ltz v7, :cond_a9

    .line 7511
    invoke-static {v5, v6}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result v4

    .line 7516
    .local v4, selectionStart:I
    :goto_28
    invoke-direct {p0, v0}, Landroid/widget/TextView;->getWordLimitsAt(I)J

    move-result-wide v5

    .line 7517
    cmp-long v7, v5, v12

    if-ltz v7, :cond_b3

    .line 7518
    invoke-static {v5, v6}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result v2

    .line 7522
    .local v2, selectionEnd:I
    :goto_34
    const-string v7, "SPH-D700"

    const-string v8, "SC-02B"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_78

    .line 7523
    add-int/lit8 v7, v4, 0x1

    iget-object v8, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v7, v8, :cond_5e

    .line 7524
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v8, v4, 0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-lt v7, v10, :cond_5e

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v8, v4, 0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-gt v7, v11, :cond_5e

    .line 7525
    add-int/lit8 v4, v4, 0x1

    .line 7527
    :cond_5e
    sub-int v7, v2, v9

    if-lez v7, :cond_78

    .line 7528
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sub-int v8, v2, v9

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-lt v7, v10, :cond_78

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sub-int v8, v2, v9

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-gt v7, v11, :cond_78

    .line 7529
    add-int/lit8 v2, v2, -0x1

    .line 7532
    :cond_78
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Spannable;

    invoke-static {p0, v4, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_f

    .line 7489
    .end local v0           #maxOffset:I
    .end local v1           #minOffset:I
    .end local v2           #selectionEnd:I
    .end local v4           #selectionStart:I
    .end local v5           #wordLimits:J
    .restart local p0
    :cond_80
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$CursorController;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView$SelectionModifierCursorController;

    .line 7493
    .local v3, selectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;
    if-nez v3, :cond_91

    .line 7494
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 7495
    .restart local v1       #minOffset:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .restart local v0       #maxOffset:I
    goto :goto_1c

    .line 7498
    .end local v0           #maxOffset:I
    .end local v1           #minOffset:I
    :cond_91
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView$SelectionModifierCursorController;->setMinTouchOffset(I)V

    .line 7499
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView$SelectionModifierCursorController;->setMaxTouchOffset(I)V

    .line 7501
    invoke-virtual {v3}, Landroid/widget/TextView$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 7502
    .restart local v1       #minOffset:I
    invoke-virtual {v3}, Landroid/widget/TextView$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v0

    .restart local v0       #maxOffset:I
    goto/16 :goto_1c

    .line 7513
    .end local v3           #selectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;
    .restart local v5       #wordLimits:J
    :cond_a9
    const/4 v7, 0x5

    sub-int v7, v1, v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .restart local v4       #selectionStart:I
    goto/16 :goto_28

    .line 7520
    :cond_b3
    add-int/lit8 v7, v0, 0x5

    iget-object v8, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .restart local v2       #selectionEnd:I
    goto/16 :goto_34
.end method

.method private sendBeforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 6376
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_19

    .line 6377
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 6378
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6379
    .local v0, count:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_19

    .line 6380
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/TextWatcher;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 6379
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 6383
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_19
    return-void
.end method

.method private setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V
    .registers 6
    .parameter "e"
    .parameter "filters"

    .prologue
    const/4 v2, 0x0

    .line 3598
    iget-object v1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    instance-of v1, v1, Landroid/text/InputFilter;

    if-eqz v1, :cond_1b

    .line 3599
    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 3601
    .local v0, nf:[Landroid/text/InputFilter;
    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3602
    array-length v1, p2

    iget-object p0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .end local p0
    check-cast p0, Landroid/text/InputFilter;

    aput-object p0, v0, v1

    .line 3604
    invoke-interface {p1, v0}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 3608
    .end local v0           #nf:[Landroid/text/InputFilter;
    :goto_1a
    return-void

    .line 3606
    .restart local p0
    :cond_1b
    invoke-interface {p1, p2}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_1a
.end method

.method private setInputType(IZ)V
    .registers 11
    .parameter "type"
    .parameter "direct"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3077
    and-int/lit8 v2, p1, 0xf

    .line 3079
    .local v2, cls:I
    if-ne v2, v6, :cond_32

    .line 3080
    const v4, 0x8000

    and-int/2addr v4, p1

    if-eqz v4, :cond_1f

    move v0, v6

    .line 3082
    .local v0, autotext:Z
    :goto_d
    and-int/lit16 v4, p1, 0x1000

    if-eqz v4, :cond_21

    .line 3083
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 3091
    .local v1, cap:Landroid/text/method/TextKeyListener$Capitalize;
    :goto_13
    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v3

    .line 3113
    .end local v0           #autotext:Z
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    .local v3, input:Landroid/text/method/KeyListener;
    :goto_17
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 3114
    if-eqz p2, :cond_6c

    iput-object v3, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 3118
    :goto_1e
    return-void

    .end local v3           #input:Landroid/text/method/KeyListener;
    :cond_1f
    move v0, v7

    .line 3080
    goto :goto_d

    .line 3084
    .restart local v0       #autotext:Z
    :cond_21
    and-int/lit16 v4, p1, 0x2000

    if-eqz v4, :cond_28

    .line 3085
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_13

    .line 3086
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_28
    and-int/lit16 v4, p1, 0x4000

    if-eqz v4, :cond_2f

    .line 3087
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_13

    .line 3089
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_2f
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_13

    .line 3092
    .end local v0           #autotext:Z
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_32
    const/4 v4, 0x2

    if-ne v2, v4, :cond_48

    .line 3093
    and-int/lit16 v4, p1, 0x1000

    if-eqz v4, :cond_44

    move v4, v6

    :goto_3a
    and-int/lit16 v5, p1, 0x2000

    if-eqz v5, :cond_46

    move v5, v6

    :goto_3f
    invoke-static {v4, v5}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_17

    .end local v3           #input:Landroid/text/method/KeyListener;
    :cond_44
    move v4, v7

    goto :goto_3a

    :cond_46
    move v5, v7

    goto :goto_3f

    .line 3096
    :cond_48
    const/4 v4, 0x4

    if-ne v2, v4, :cond_5f

    .line 3097
    and-int/lit16 v4, p1, 0xff0

    sparse-switch v4, :sswitch_data_70

    .line 3105
    invoke-static {}, Landroid/text/method/DateTimeKeyListener;->getInstance()Landroid/text/method/DateTimeKeyListener;

    move-result-object v3

    .line 3106
    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_17

    .line 3099
    .end local v3           #input:Landroid/text/method/KeyListener;
    :sswitch_55
    invoke-static {}, Landroid/text/method/DateKeyListener;->getInstance()Landroid/text/method/DateKeyListener;

    move-result-object v3

    .line 3100
    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_17

    .line 3102
    .end local v3           #input:Landroid/text/method/KeyListener;
    :sswitch_5a
    invoke-static {}, Landroid/text/method/TimeKeyListener;->getInstance()Landroid/text/method/TimeKeyListener;

    move-result-object v3

    .line 3103
    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_17

    .line 3108
    .end local v3           #input:Landroid/text/method/KeyListener;
    :cond_5f
    const/4 v4, 0x3

    if-ne v2, v4, :cond_67

    .line 3109
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v3

    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_17

    .line 3111
    .end local v3           #input:Landroid/text/method/KeyListener;
    :cond_67
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_17

    .line 3116
    :cond_6c
    invoke-direct {p0, v3}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    goto :goto_1e

    .line 3097
    :sswitch_data_70
    .sparse-switch
        0x10 -> :sswitch_55
        0x20 -> :sswitch_5a
    .end sparse-switch
.end method

.method private setKeyListenerOnly(Landroid/text/method/KeyListener;)V
    .registers 4
    .parameter "input"

    .prologue
    .line 1173
    iput-object p1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 1174
    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_11

    .line 1175
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1177
    :cond_11
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 1178
    return-void
.end method

.method private setRawTextSize(F)V
    .registers 3
    .parameter "size"

    .prologue
    .line 1744
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1c

    .line 1745
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1747
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1c

    .line 1748
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 1749
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 1750
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1753
    :cond_1c
    return-void
.end method

.method private setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V
    .registers 28
    .parameter "text"
    .parameter "type"
    .parameter "notifyBefore"
    .parameter "oldlen"

    .prologue
    .line 2660
    if-nez p1, :cond_4

    .line 2661
    const-string p1, ""

    .line 2665
    :cond_4
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/TextView;

    move v5, v0

    if-eqz v5, :cond_17

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_17

    .line 2666
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->hideControllers()V

    .line 2667
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->hideCursorControllerMenu()V

    .line 2671
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    move v5, v0

    if-nez v5, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    const/high16 v6, 0x3f80

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 2673
    :cond_28
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move v5, v0

    if-eqz v5, :cond_4b

    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object v5, v0

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-interface {v5, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_4b

    .line 2675
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 2676
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2679
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    move-object v5, v0

    array-length v15, v5

    .line 2680
    .local v15, n:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_52
    if-ge v13, v15, :cond_71

    .line 2681
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    move-object v5, v0

    aget-object v5, v5, v13

    const/4 v7, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    sget-object v9, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p1

    invoke-interface/range {v5 .. v11}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v17

    .line 2683
    .local v17, out:Ljava/lang/CharSequence;
    if-eqz v17, :cond_6e

    .line 2684
    move-object/from16 p1, v17

    .line 2680
    :cond_6e
    add-int/lit8 v13, v13, 0x1

    goto :goto_52

    .line 2688
    .end local v17           #out:Ljava/lang/CharSequence;
    :cond_71
    if-eqz p3, :cond_97

    .line 2689
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v5, v0

    if-eqz v5, :cond_17f

    .line 2690
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v5, v0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result p4

    .line 2691
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move/from16 v3, p4

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 2697
    :cond_97
    :goto_97
    const/16 v16, 0x0

    .line 2699
    .local v16, needEditableForNotification:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_ad

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_ad

    .line 2700
    const/16 v16, 0x1

    .line 2703
    :cond_ad
    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    move-object v1, v5

    if-eq v0, v1, :cond_bd

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object v5, v0

    if-nez v5, :cond_bd

    if-eqz v16, :cond_192

    .line 2705
    :cond_bd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v20

    .line 2706
    .local v20, t:Landroid/text/Editable;
    move-object/from16 p1, v20

    .line 2707
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 2708
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v14

    .line 2709
    .local v14, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v14, :cond_e4

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 2716
    .end local v14           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v20           #t:Landroid/text/Editable;
    :cond_e4
    :goto_e4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    move v5, v0

    if-eqz v5, :cond_131

    .line 2719
    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    move-object v1, v5

    if-eq v0, v1, :cond_f9

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spannable;

    move v5, v0

    if-eqz v5, :cond_1bb

    .line 2720
    :cond_f9
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object/from16 v18, v0

    .line 2725
    .local v18, s2:Landroid/text/Spannable;
    :goto_ff
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    move v5, v0

    move-object/from16 v0, v18

    move v1, v5

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v5

    if-eqz v5, :cond_131

    .line 2726
    move-object/from16 p1, v18

    .line 2727
    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    move-object v1, v5

    if-ne v0, v1, :cond_1c9

    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 p2, v5

    .line 2734
    :goto_11a
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 2736
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mLinksClickable:Z

    move v5, v0

    if-eqz v5, :cond_131

    .line 2737
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2742
    .end local v18           #s2:Landroid/text/Spannable;
    :cond_131
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 2743
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 2745
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object v5, v0

    if-nez v5, :cond_1cf

    .line 2746
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    .line 2750
    :goto_14a
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v21

    .line 2752
    .local v21, textLength:I
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spannable;

    move v5, v0

    if-eqz v5, :cond_262

    .line 2753
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object/from16 v19, v0

    .line 2757
    .local v19, sp:Landroid/text/Spannable;
    const/4 v5, 0x0

    invoke-interface/range {v19 .. v19}, Landroid/text/Spannable;->length()I

    move-result v6

    const-class v7, Landroid/widget/TextView$ChangeWatcher;

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Landroid/widget/TextView$ChangeWatcher;

    .line 2758
    .local v22, watchers:[Landroid/widget/TextView$ChangeWatcher;
    move-object/from16 v0, v22

    array-length v0, v0

    move v12, v0

    .line 2759
    .local v12, count:I
    const/4 v13, 0x0

    :goto_172
    if-ge v13, v12, :cond_1e4

    .line 2760
    aget-object v5, v22, v13

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2759
    add-int/lit8 v13, v13, 0x1

    goto :goto_172

    .line 2693
    .end local v12           #count:I
    .end local v16           #needEditableForNotification:Z
    .end local v19           #sp:Landroid/text/Spannable;
    .end local v21           #textLength:I
    .end local v22           #watchers:[Landroid/widget/TextView$ChangeWatcher;
    :cond_17f
    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto/16 :goto_97

    .line 2710
    .restart local v16       #needEditableForNotification:Z
    :cond_192
    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    move-object v1, v5

    if-eq v0, v1, :cond_1a0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object v5, v0

    if-eqz v5, :cond_1ae

    .line 2711
    :cond_1a0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p1

    goto/16 :goto_e4

    .line 2712
    :cond_1ae
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/TextView$CharWrapper;

    move v5, v0

    if-nez v5, :cond_e4

    .line 2713
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto/16 :goto_e4

    .line 2722
    :cond_1bb
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v18

    .restart local v18       #s2:Landroid/text/Spannable;
    goto/16 :goto_ff

    .line 2727
    :cond_1c9
    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 p2, v5

    goto/16 :goto_11a

    .line 2748
    .end local v18           #s2:Landroid/text/Spannable;
    :cond_1cf
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-interface {v0, v1, v2}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    goto/16 :goto_14a

    .line 2762
    .restart local v12       #count:I
    .restart local v19       #sp:Landroid/text/Spannable;
    .restart local v21       #textLength:I
    .restart local v22       #watchers:[Landroid/widget/TextView$ChangeWatcher;
    :cond_1e4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    move-object v5, v0

    if-nez v5, :cond_1fa

    .line 2763
    new-instance v5, Landroid/widget/TextView$ChangeWatcher;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    .line 2765
    :cond_1fa
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    move-object v5, v0

    const/4 v6, 0x0

    sget v7, Landroid/widget/TextView;->PRIORITY:I

    shl-int/lit8 v7, v7, 0x10

    or-int/lit8 v7, v7, 0x12

    move-object/from16 v0, v19

    move-object v1, v5

    move v2, v6

    move/from16 v3, v21

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2768
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object v5, v0

    if-eqz v5, :cond_229

    .line 2769
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x12

    move-object/from16 v0, v19

    move-object v1, v5

    move v2, v6

    move/from16 v3, v21

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2772
    :cond_229
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object v5, v0

    if-eqz v5, :cond_242

    .line 2773
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x12

    move-object/from16 v0, v19

    move-object v1, v5

    move v2, v6

    move/from16 v3, v21

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2777
    :cond_242
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object v5, v0

    if-eqz v5, :cond_262

    .line 2778
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object v5, v0

    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object/from16 p2, v0

    .end local p2
    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Landroid/text/method/MovementMethod;->initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 2785
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 2789
    .end local v12           #count:I
    .end local v19           #sp:Landroid/text/Spannable;
    .end local v22           #watchers:[Landroid/widget/TextView$ChangeWatcher;
    :cond_262
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v5, v0

    if-eqz v5, :cond_26c

    .line 2790
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 2793
    :cond_26c
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move/from16 v3, p4

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 2794
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move/from16 v3, p4

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 2796
    if-eqz v16, :cond_28d

    .line 2797
    check-cast p1, Landroid/text/Editable;

    .end local p1
    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->sendAfterTextChanged(Landroid/text/Editable;)V

    .line 2801
    :cond_28d
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 2802
    return-void
.end method

.method private setTypefaceByIndex(II)V
    .registers 4
    .parameter "typefaceIndex"
    .parameter "styleIndex"

    .prologue
    .line 1004
    const/4 v0, 0x0

    .line 1005
    .local v0, tf:Landroid/graphics/Typeface;
    packed-switch p1, :pswitch_data_12

    .line 1019
    :goto_4
    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1020
    return-void

    .line 1007
    :pswitch_8
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 1008
    goto :goto_4

    .line 1011
    :pswitch_b
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 1012
    goto :goto_4

    .line 1015
    :pswitch_e
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_4

    .line 1005
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method private shouldAdvanceFocusOnEnter()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4419
    iget-object v1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-nez v1, :cond_8

    move v1, v3

    .line 4436
    :goto_7
    return v1

    .line 4423
    :cond_8
    iget-boolean v1, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v1, :cond_e

    move v1, v2

    .line 4424
    goto :goto_7

    .line 4427
    :cond_e
    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v1, v1, 0xf

    if-ne v1, v2, :cond_22

    .line 4428
    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v0, v1, 0xff0

    .line 4430
    .local v0, variation:I
    const/16 v1, 0x20

    if-eq v0, v1, :cond_20

    const/16 v1, 0x30

    if-ne v0, v1, :cond_22

    :cond_20
    move v1, v2

    .line 4432
    goto :goto_7

    .end local v0           #variation:I
    :cond_22
    move v1, v3

    .line 4436
    goto :goto_7
.end method

.method private showError()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f00

    .line 3415
    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_c

    .line 3416
    iput-boolean v8, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    .line 3440
    :goto_b
    return-void

    .line 3420
    :cond_c
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-nez v4, :cond_48

    .line 3421
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 3422
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x109006b

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3425
    .local v0, err:Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .line 3426
    .local v2, scale:F
    new-instance v4, Landroid/widget/TextView$ErrorPopup;

    const/high16 v5, 0x4348

    mul-float/2addr v5, v2

    add-float/2addr v5, v7

    float-to-int v5, v5

    const/high16 v6, 0x4248

    mul-float/2addr v6, v2

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v4, v0, v5, v6}, Landroid/widget/TextView$ErrorPopup;-><init>(Landroid/widget/TextView;II)V

    iput-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    .line 3428
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView$ErrorPopup;->setFocusable(Z)V

    .line 3431
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v4, v8}, Landroid/widget/TextView$ErrorPopup;->setInputMethodMode(I)V

    .line 3434
    .end local v0           #err:Landroid/widget/TextView;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #scale:F
    :cond_48
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/TextView$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3435
    .local v3, tv:Landroid/widget/TextView;
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    iget-object v5, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v4, v5, v3}, Landroid/widget/TextView;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 3436
    iget-object v4, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3438
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorX()I

    move-result v5

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorY()I

    move-result v6

    invoke-virtual {v4, p0, v5, v6}, Landroid/widget/TextView$ErrorPopup;->showAsDropDown(Landroid/view/View;II)V

    .line 3439
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    iget-object v5, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v5}, Landroid/widget/TextView$ErrorPopup;->isAboveAnchor()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView$ErrorPopup;->fixDirection(Z)V

    goto :goto_b
.end method

.method private startMarquee()V
    .registers 3

    .prologue
    .line 6144
    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_5

    .line 6156
    :cond_4
    :goto_4
    return-void

    .line 6146
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0, v0}, Landroid/widget/TextView;->compressText(F)Z

    move-result v0

    if-nez v0, :cond_4

    .line 6150
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_26
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_32
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6153
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-nez v0, :cond_4a

    new-instance v0, Landroid/widget/TextView$Marquee;

    invoke-direct {v0, p0}, Landroid/widget/TextView$Marquee;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 6154
    :cond_4a
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    iget v1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Marquee;->start(I)V

    goto :goto_4
.end method

.method private startStopMarquee(Z)V
    .registers 4
    .parameter "start"

    .prologue
    .line 6165
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_b

    .line 6166
    if-eqz p1, :cond_c

    .line 6167
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 6172
    :cond_b
    :goto_b
    return-void

    .line 6169
    :cond_c
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    goto :goto_b
.end method

.method private startTextSelectionMode()V
    .registers 4

    .prologue
    .line 7940
    iget-boolean v1, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    if-nez v1, :cond_11

    .line 7941
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v1

    if-nez v1, :cond_12

    .line 7942
    const-string v1, "TextView"

    const-string v2, "TextView has no selection controller. Action mode cancelled."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7963
    :cond_11
    :goto_11
    return-void

    .line 7947
    :cond_12
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    move-result v1

    if-nez v1, :cond_22

    iget-boolean v1, p0, Landroid/widget/TextView;->mEnableSelection:Z

    if-eqz v1, :cond_11

    .line 7951
    :cond_22
    invoke-direct {p0}, Landroid/widget/TextView;->selectCurrentWord()V

    .line 7952
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$CursorController;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/TextView$CursorController;->show()V

    .line 7955
    iget-boolean v1, p0, Landroid/widget/TextView;->mByPassInputType:Z

    if-nez v1, :cond_41

    .line 7956
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 7958
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 7961
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_41
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    goto :goto_11
.end method

.method private stopMarquee()V
    .registers 2

    .prologue
    .line 6159
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v0

    if-nez v0, :cond_11

    .line 6160
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->stop()V

    .line 6162
    :cond_11
    return-void
.end method

.method private stopTextSelectionMode()V
    .registers 3

    .prologue
    .line 7966
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    if-eqz v0, :cond_15

    .line 7967
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 7968
    invoke-direct {p0}, Landroid/widget/TextView;->hideSelectionModifierCursorController()V

    .line 7969
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    .line 7971
    :cond_15
    return-void
.end method

.method private textCanBeSelected()Z
    .registers 2

    .prologue
    .line 7332
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    invoke-interface {v0}, Landroid/text/method/MovementMethod;->canSelectArbitrarily()Z

    move-result v0

    if-nez v0, :cond_16

    :cond_12
    iget-boolean v0, p0, Landroid/widget/TextView;->mEnableSelection:Z

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private updateTextColors()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 2323
    const/4 v1, 0x0

    .line 2324
    .local v1, inval:Z
    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 2325
    .local v0, color:I
    iget v2, p0, Landroid/widget/TextView;->mCurTextColor:I

    if-eq v0, v2, :cond_13

    .line 2326
    iput v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    .line 2327
    const/4 v1, 0x1

    .line 2329
    :cond_13
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2c

    .line 2330
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 2331
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->linkColor:I

    if-eq v0, v2, :cond_2c

    .line 2332
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iput v0, v2, Landroid/text/TextPaint;->linkColor:I

    .line 2333
    const/4 v1, 0x1

    .line 2336
    :cond_2c
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_49

    .line 2337
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 2338
    iget v2, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    if-eq v0, v2, :cond_49

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_49

    .line 2339
    iput v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    .line 2340
    const/4 v1, 0x1

    .line 2343
    :cond_49
    if-eqz v1, :cond_4e

    .line 2344
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2346
    :cond_4e
    return-void
.end method

.method private viewportToContentHorizontalOffset()I
    .registers 3

    .prologue
    .line 5947
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private viewportToContentVerticalOffset()I
    .registers 4

    .prologue
    .line 5951
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mScrollY:I

    sub-int v0, v1, v2

    .line 5952
    .local v0, offset:I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_16

    .line 5953
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 5955
    :cond_16
    return v0
.end method


# virtual methods
.method public IsEndHandleVisible()I
    .registers 2

    .prologue
    .line 9097
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    if-eqz v0, :cond_b

    .line 9098
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v0}, Landroid/widget/TextView$CursorController;->endHandleVisible()I

    move-result v0

    .line 9100
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v0}, Landroid/widget/TextView$CursorController;->endHandleVisible()I

    move-result v0

    goto :goto_a
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .registers 3
    .parameter "watcher"

    .prologue
    .line 6352
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 6353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 6356
    :cond_b
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6357
    return-void
.end method

.method public final append(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "text"

    .prologue
    .line 2306
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;II)V

    .line 2307
    return-void
.end method

.method public append(Ljava/lang/CharSequence;II)V
    .registers 6
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2315
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_d

    .line 2316
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2319
    :cond_d
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Editable;

    invoke-interface {p0, p1, p2, p3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    .line 2320
    return-void
.end method

.method public beginBatchEdit()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 4915
    iput-boolean v5, p0, Landroid/widget/TextView;->mInBatchEditControllers:Z

    .line 4916
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 4917
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_26

    .line 4918
    iget v2, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v2, 0x1

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    .line 4919
    .local v1, nesting:I
    if-ne v1, v5, :cond_26

    .line 4920
    iput-boolean v3, v0, Landroid/widget/TextView$InputMethodState;->mCursorChanged:Z

    .line 4921
    iput v3, v0, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    .line 4922
    iget-boolean v2, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    if-eqz v2, :cond_27

    .line 4925
    iput v3, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 4926
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    .line 4932
    :goto_23
    invoke-virtual {p0}, Landroid/widget/TextView;->onBeginBatchEdit()V

    .line 4935
    .end local v1           #nesting:I
    :cond_26
    return-void

    .line 4928
    .restart local v1       #nesting:I
    :cond_27
    iput v4, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 4929
    iput v4, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    .line 4930
    iput-boolean v3, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    goto :goto_23
.end method

.method public bringPointIntoView(I)Z
    .registers 31
    .parameter "offset"

    .prologue
    .line 5701
    const/4 v6, 0x0

    .line 5703
    .local v6, changed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v17

    .line 5706
    .local v17, line:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v24, v0

    .line 5707
    .local v24, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v20

    .line 5708
    .local v20, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    add-int/lit8 v26, v17, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    .line 5710
    .local v5, bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v25

    invoke-static/range {v25 .. v25}, Landroid/util/FloatMath;->floor(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v16, v0

    .line 5711
    .local v16, left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v25

    invoke-static/range {v25 .. v25}, Landroid/util/FloatMath;->ceil(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v19, v0

    .line 5712
    .local v19, right:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/text/Layout;->getHeight()I

    move-result v15

    .line 5716
    .local v15, ht:I
    sget-object v25, Landroid/widget/TextView$2;->$SwitchMap$android$text$Layout$Alignment:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v26

    aget v25, v25, v26

    packed-switch v25, :pswitch_data_29e

    .line 5726
    const/4 v11, 0x0

    .line 5729
    .local v11, grav:I
    :goto_8e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v25

    mul-int v11, v11, v25

    .line 5731
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v26

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v26

    sub-int v14, v25, v26

    .line 5732
    .local v14, hspace:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v26

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v26

    sub-int v23, v25, v26

    .line 5734
    .local v23, vspace:I
    sub-int v25, v5, v20

    div-int/lit8 v13, v25, 0x2

    .line 5735
    .local v13, hslack:I
    move/from16 v22, v13

    .line 5737
    .local v22, vslack:I
    div-int/lit8 v25, v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v25

    if-le v0, v1, :cond_e2

    .line 5738
    div-int/lit8 v22, v23, 0x4

    .line 5739
    :cond_e2
    div-int/lit8 v25, v14, 0x4

    move v0, v13

    move/from16 v1, v25

    if-le v0, v1, :cond_eb

    .line 5740
    div-int/lit8 v13, v14, 0x4

    .line 5742
    :cond_eb
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v12, v0

    .line 5743
    .local v12, hs:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v21, v0

    .line 5745
    .local v21, vs:I
    sub-int v25, v20, v21

    move/from16 v0, v25

    move/from16 v1, v22

    if-ge v0, v1, :cond_100

    .line 5746
    sub-int v21, v20, v22

    .line 5747
    :cond_100
    sub-int v25, v5, v21

    sub-int v26, v23, v22

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_10e

    .line 5748
    sub-int v25, v23, v22

    sub-int v21, v5, v25

    .line 5749
    :cond_10e
    sub-int v25, v15, v21

    move/from16 v0, v25

    move/from16 v1, v23

    if-ge v0, v1, :cond_118

    .line 5750
    sub-int v21, v15, v23

    .line 5751
    :cond_118
    const/16 v25, 0x0

    sub-int v25, v25, v21

    if-lez v25, :cond_120

    .line 5752
    const/16 v21, 0x0

    .line 5754
    :cond_120
    if-eqz v11, :cond_139

    .line 5755
    sub-int v25, v24, v12

    move/from16 v0, v25

    move v1, v13

    if-ge v0, v1, :cond_12b

    .line 5756
    sub-int v12, v24, v13

    .line 5758
    :cond_12b
    sub-int v25, v24, v12

    sub-int v26, v14, v13

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_139

    .line 5759
    sub-int v25, v14, v13

    sub-int v12, v24, v25

    .line 5763
    :cond_139
    if-gez v11, :cond_1b8

    .line 5764
    sub-int v25, v16, v12

    if-lez v25, :cond_141

    .line 5765
    move/from16 v12, v16

    .line 5766
    :cond_141
    sub-int v25, v19, v12

    move/from16 v0, v25

    move v1, v14

    if-ge v0, v1, :cond_14a

    .line 5767
    sub-int v12, v19, v14

    .line 5814
    :cond_14a
    :goto_14a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v25, v0

    move v0, v12

    move/from16 v1, v25

    if-ne v0, v1, :cond_161

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v25, v0

    move/from16 v0, v21

    move/from16 v1, v25

    if-eq v0, v1, :cond_172

    .line 5815
    :cond_161
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    if-nez v25, :cond_221

    .line 5816
    move-object/from16 v0, p0

    move v1, v12

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->scrollTo(II)V

    .line 5837
    :goto_171
    const/4 v6, 0x1

    .line 5840
    :cond_172
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v25

    if-eqz v25, :cond_1b1

    .line 5845
    new-instance v18, Landroid/graphics/Rect;

    add-int/lit8 v25, v24, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v25

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5846
    .local v18, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->getInterestingRect(Landroid/graphics/Rect;I)V

    .line 5847
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v26, v0

    move-object/from16 v0, v18

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 5849
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result v25

    if-eqz v25, :cond_1b1

    .line 5850
    const/4 v6, 0x1

    .line 5854
    .end local v18           #r:Landroid/graphics/Rect;
    :cond_1b1
    return v6

    .line 5718
    .end local v11           #grav:I
    .end local v12           #hs:I
    .end local v13           #hslack:I
    .end local v14           #hspace:I
    .end local v21           #vs:I
    .end local v22           #vslack:I
    .end local v23           #vspace:I
    :pswitch_1b2
    const/4 v11, 0x1

    .line 5719
    .restart local v11       #grav:I
    goto/16 :goto_8e

    .line 5722
    .end local v11           #grav:I
    :pswitch_1b5
    const/4 v11, -0x1

    .line 5723
    .restart local v11       #grav:I
    goto/16 :goto_8e

    .line 5768
    .restart local v12       #hs:I
    .restart local v13       #hslack:I
    .restart local v14       #hspace:I
    .restart local v21       #vs:I
    .restart local v22       #vslack:I
    .restart local v23       #vspace:I
    :cond_1b8
    if-lez v11, :cond_1ca

    .line 5769
    sub-int v25, v19, v12

    move/from16 v0, v25

    move v1, v14

    if-ge v0, v1, :cond_1c3

    .line 5770
    sub-int v12, v19, v14

    .line 5771
    :cond_1c3
    sub-int v25, v16, v12

    if-lez v25, :cond_14a

    .line 5772
    move/from16 v12, v16

    goto :goto_14a

    .line 5774
    :cond_1ca
    sub-int v25, v19, v16

    move/from16 v0, v25

    move v1, v14

    if-gt v0, v1, :cond_1db

    .line 5778
    sub-int v25, v19, v16

    sub-int v25, v14, v25

    div-int/lit8 v25, v25, 0x2

    sub-int v12, v16, v25

    goto/16 :goto_14a

    .line 5779
    :cond_1db
    sub-int v25, v19, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_1e7

    .line 5784
    sub-int v12, v19, v14

    goto/16 :goto_14a

    .line 5785
    :cond_1e7
    add-int v25, v16, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_1f3

    .line 5790
    move/from16 v12, v16

    goto/16 :goto_14a

    .line 5791
    :cond_1f3
    move/from16 v0, v16

    move v1, v12

    if-le v0, v1, :cond_1fc

    .line 5795
    move/from16 v12, v16

    goto/16 :goto_14a

    .line 5796
    :cond_1fc
    add-int v25, v12, v14

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_208

    .line 5800
    sub-int v12, v19, v14

    goto/16 :goto_14a

    .line 5805
    :cond_208
    sub-int v25, v24, v12

    move/from16 v0, v25

    move v1, v13

    if-ge v0, v1, :cond_211

    .line 5806
    sub-int v12, v24, v13

    .line 5808
    :cond_211
    sub-int v25, v24, v12

    sub-int v26, v14, v13

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_14a

    .line 5809
    sub-int v25, v14, v13

    sub-int v12, v24, v25

    goto/16 :goto_14a

    .line 5818
    :cond_221
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/TextView;->mLastScroll:J

    move-wide/from16 v27, v0

    sub-long v7, v25, v27

    .line 5819
    .local v7, duration:J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v25, v0

    sub-int v9, v12, v25

    .line 5820
    .local v9, dx:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v25, v0

    sub-int v10, v21, v25

    .line 5822
    .local v10, dy:I
    const-wide/16 v25, 0xfa

    cmp-long v25, v7, v25

    if-lez v25, :cond_280

    .line 5823
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move v3, v9

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 5824
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->getDuration()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->awakenScrollBars(I)Z

    .line 5825
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->invalidate()V

    .line 5834
    :goto_274
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mLastScroll:J

    goto/16 :goto_171

    .line 5827
    :cond_280
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->isFinished()Z

    move-result v25

    if-nez v25, :cond_295

    .line 5828
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->abortAnimation()V

    .line 5831
    :cond_295
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->scrollBy(II)V

    goto :goto_274

    .line 5716
    nop

    :pswitch_data_29e
    .packed-switch 0x1
        :pswitch_1b2
        :pswitch_1b5
    .end packed-switch
.end method

.method public cancelLongPress()V
    .registers 2

    .prologue
    .line 7096
    invoke-super {p0}, Landroid/view/View;->cancelLongPress()V

    .line 7097
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mScrolled:Z

    .line 7098
    return-void
.end method

.method public clearComposingText()V
    .registers 2

    .prologue
    .line 6864
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_d

    .line 6865
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Spannable;

    invoke-static {p0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 6867
    :cond_d
    return-void
.end method

.method protected computeHorizontalScrollRange()I
    .registers 2

    .prologue
    .line 7220
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_b

    .line 7221
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    .line 7223
    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v0

    goto :goto_a
.end method

.method public computeScroll()V
    .registers 2

    .prologue
    .line 5917
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_1f

    .line 5918
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 5919
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mScrollX:I

    .line 5920
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mScrollY:I

    .line 5921
    invoke-virtual {p0}, Landroid/widget/TextView;->postInvalidate()V

    .line 5924
    :cond_1f
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .registers 3

    .prologue
    .line 7236
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .registers 2

    .prologue
    .line 7228
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_b

    .line 7229
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    .line 7231
    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v0

    goto :goto_a
.end method

.method public customPrepareSpacesAroundPaste(Ljava/lang/CharSequence;)V
    .registers 12
    .parameter "paste"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 9872
    const/4 v1, 0x0

    .line 9873
    .local v1, min:I
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 9875
    .local v0, max:I
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_27

    .line 9876
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 9877
    .local v5, selStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 9879
    .local v4, selEnd:I
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 9880
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 9883
    .end local v4           #selEnd:I
    .end local v5           #selStart:I
    :cond_27
    if-eqz p1, :cond_69

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_69

    .line 9885
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    const-string v7, "JP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4b

    .line 9886
    invoke-direct {p0, v1, v0, p1}, Landroid/widget/TextView;->prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J

    move-result-wide v2

    .line 9887
    .local v2, minMax:J
    invoke-static {v2, v3}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result v1

    .line 9888
    invoke-static {v2, v3}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result v0

    .line 9891
    .end local v2           #minMax:J
    :cond_4b
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 9892
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Editable;

    invoke-interface {v6, v1, v0, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 9893
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 9895
    iput-boolean v8, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    .line 9896
    iget-object v6, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v6, :cond_69

    iget-boolean v6, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    if-nez v6, :cond_69

    .line 9897
    invoke-virtual {p0, v9, v9}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 9901
    :cond_69
    return-void
.end method

.method public debug(I)V
    .registers 6
    .parameter "depth"

    .prologue
    const-string v3, ", "

    .line 5960
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 5962
    invoke-static {p1}, Landroid/widget/TextView;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 5963
    .local v0, output:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "frame={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "} scroll={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "} "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5967
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_c0

    .line 5969
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mText=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5970
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_ba

    .line 5971
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mLayout width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5977
    :cond_ba
    :goto_ba
    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5978
    return-void

    .line 5975
    :cond_c0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mText=NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_ba
.end method

.method public didTouchFocusSelect()Z
    .registers 2

    .prologue
    .line 7091
    iget-boolean v0, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    return v0
.end method

.method public dispatchFinishTemporaryDetach()V
    .registers 2

    .prologue
    .line 6648
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    .line 6649
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 6650
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    .line 6651
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 7550
    invoke-virtual {p0}, Landroid/widget/TextView;->isShown()Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v4

    .line 7570
    :goto_8
    return v2

    .line 7554
    :cond_9
    iget v2, p0, Landroid/widget/TextView;->mInputType:I

    invoke-direct {p0, v2}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v0

    .line 7556
    .local v0, isPassword:Z
    if-nez v0, :cond_3c

    .line 7557
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 7558
    .local v1, text:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 7559
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    .line 7561
    :cond_1f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 7562
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v3, 0x1f4

    if-le v2, v3, :cond_33

    .line 7563
    const/16 v2, 0x1f5

    invoke-interface {v1, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 7565
    :cond_33
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_3a
    :goto_3a
    move v2, v4

    .line 7570
    goto :goto_8

    .line 7568
    :cond_3c
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    goto :goto_3a
.end method

.method protected drawableStateChanged()V
    .registers 4

    .prologue
    .line 2350
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2351
    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_f

    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-nez v2, :cond_27

    :cond_f
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-nez v2, :cond_27

    :cond_1b
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2354
    :cond_27
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2357
    :cond_2a
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2358
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_76

    .line 2359
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v1

    .line 2360
    .local v1, state:[I
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_43

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 2361
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2363
    :cond_43
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_54

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 2364
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2366
    :cond_54
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_65

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 2367
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2369
    :cond_65
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_76

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 2370
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2373
    .end local v1           #state:[I
    :cond_76
    return-void
.end method

.method public enableSelection()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/16 v0, 0xff

    .line 9863
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 9864
    iput-boolean v1, p0, Landroid/widget/TextView;->mEnableSelection:Z

    .line 9865
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 9866
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 9867
    return-void
.end method

.method public endBatchEdit()V
    .registers 5

    .prologue
    .line 4938
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/TextView;->mInBatchEditControllers:Z

    .line 4939
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 4940
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_13

    .line 4941
    iget v2, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    const/4 v3, 0x1

    sub-int v1, v2, v3

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    .line 4942
    .local v1, nesting:I
    if-nez v1, :cond_13

    .line 4943
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->finishBatchEdit(Landroid/widget/TextView$InputMethodState;)V

    .line 4946
    .end local v1           #nesting:I
    :cond_13
    return-void
.end method

.method ensureEndedBatchEdit()V
    .registers 3

    .prologue
    .line 4949
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 4950
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_e

    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-eqz v1, :cond_e

    .line 4951
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    .line 4952
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->finishBatchEdit(Landroid/widget/TextView$InputMethodState;)V

    .line 4954
    :cond_e
    return-void
.end method

.method public extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .registers 9
    .parameter "request"
    .parameter "outText"

    .prologue
    const/4 v2, -0x1

    .line 4722
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z
    .registers 16
    .parameter "request"
    .parameter "partialStartOffset"
    .parameter "partialEndOffset"
    .parameter "delta"
    .parameter "outText"

    .prologue
    const/4 v9, 0x0

    .line 4732
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 4733
    .local v2, content:Ljava/lang/CharSequence;
    if-eqz v2, :cond_97

    .line 4734
    const/4 v7, -0x2

    if-eq p2, v7, :cond_8e

    .line 4735
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 4736
    .local v1, N:I
    if-gez p2, :cond_4d

    .line 4737
    const/4 v7, -0x1

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 4738
    const/4 p2, 0x0

    .line 4739
    move p3, v1

    .line 4771
    :cond_15
    :goto_15
    iget v7, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_87

    .line 4772
    invoke-interface {v2, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 4783
    .end local v1           #N:I
    :goto_21
    iput v9, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 4784
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    const/high16 v8, 0x1

    invoke-static {v7, v8}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v7

    if-eqz v7, :cond_33

    .line 4785
    iget v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 4787
    :cond_33
    iget-boolean v7, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v7, :cond_3d

    .line 4788
    iget v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 4790
    :cond_3d
    iput v9, p5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 4791
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 4792
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 4793
    const/4 v7, 0x1

    .line 4795
    :goto_4c
    return v7

    .line 4742
    .restart local v1       #N:I
    :cond_4d
    instance-of v7, v2, Landroid/text/Spanned;

    if-eqz v7, :cond_73

    .line 4743
    move-object v0, v2

    check-cast v0, Landroid/text/Spanned;

    move-object v5, v0

    .line 4744
    .local v5, spanned:Landroid/text/Spanned;
    const-class v7, Landroid/text/ParcelableSpan;

    invoke-interface {v5, p2, p3, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    .line 4746
    .local v6, spans:[Ljava/lang/Object;
    array-length v3, v6

    .line 4747
    .local v3, i:I
    :cond_5c
    :goto_5c
    if-lez v3, :cond_73

    .line 4748
    add-int/lit8 v3, v3, -0x1

    .line 4749
    aget-object v7, v6, v3

    invoke-interface {v5, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 4750
    .local v4, j:I
    if-ge v4, p2, :cond_69

    move p2, v4

    .line 4751
    :cond_69
    aget-object v7, v6, v3

    invoke-interface {v5, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 4752
    if-le v4, p3, :cond_5c

    move p3, v4

    goto :goto_5c

    .line 4755
    .end local v3           #i:I
    .end local v4           #j:I
    .end local v5           #spanned:Landroid/text/Spanned;
    .end local v6           #spans:[Ljava/lang/Object;
    :cond_73
    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 4756
    iput p3, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 4759
    add-int/2addr p3, p4

    .line 4760
    if-le p2, v1, :cond_7f

    .line 4761
    move p2, v1

    .line 4765
    :cond_7b
    :goto_7b
    if-le p3, v1, :cond_83

    .line 4766
    move p3, v1

    goto :goto_15

    .line 4762
    :cond_7f
    if-gez p2, :cond_7b

    .line 4763
    const/4 p2, 0x0

    goto :goto_7b

    .line 4767
    :cond_83
    if-gez p3, :cond_15

    .line 4768
    const/4 p3, 0x0

    goto :goto_15

    .line 4775
    :cond_87
    invoke-static {v2, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_21

    .line 4779
    .end local v1           #N:I
    :cond_8e
    iput v9, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 4780
    iput v9, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 4781
    const-string v7, ""

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_21

    :cond_97
    move v7, v9

    .line 4795
    goto :goto_4c
.end method

.method finishBatchEdit(Landroid/widget/TextView$InputMethodState;)V
    .registers 3
    .parameter "ims"

    .prologue
    .line 4957
    invoke-virtual {p0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 4959
    iget-boolean v0, p1, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    if-nez v0, :cond_b

    iget-boolean v0, p1, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_12

    .line 4960
    :cond_b
    invoke-virtual {p0}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 4961
    invoke-virtual {p0}, Landroid/widget/TextView;->reportExtractedText()Z

    .line 4966
    :cond_11
    :goto_11
    return-void

    .line 4962
    :cond_12
    iget-boolean v0, p1, Landroid/widget/TextView$InputMethodState;->mCursorChanged:Z

    if-eqz v0, :cond_11

    .line 4964
    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursor()V

    goto :goto_11
.end method

.method public final getAutoLinkMask()I
    .registers 2

    .prologue
    .line 1644
    iget v0, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    return v0
.end method

.method public getBaseline()I
    .registers 5

    .prologue
    .line 4346
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_9

    .line 4347
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 4355
    :goto_8
    return v1

    .line 4350
    :cond_9
    const/4 v0, 0x0

    .line 4351
    .local v0, voffset:I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_17

    .line 4352
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    .line 4355
    :cond_17
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_8
.end method

.method protected getBottomPaddingOffset()I
    .registers 4

    .prologue
    .line 3921
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getCompoundDrawablePadding()I
    .registers 3

    .prologue
    .line 1618
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1619
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_7

    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    :goto_6
    return v1

    :cond_7
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
    .registers 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1581
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1582
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_1d

    .line 1583
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v4

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v6

    .line 1587
    :goto_1c
    return-object v1

    :cond_1d
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    aput-object v2, v1, v4

    aput-object v2, v1, v5

    aput-object v2, v1, v6

    goto :goto_1c
.end method

.method public getCompoundPaddingBottom()I
    .registers 4

    .prologue
    .line 1275
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1276
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_8

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_b

    .line 1277
    :cond_8
    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    .line 1279
    :goto_a
    return v1

    :cond_b
    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    add-int/2addr v1, v2

    goto :goto_a
.end method

.method public getCompoundPaddingLeft()I
    .registers 4

    .prologue
    .line 1288
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1289
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_8

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_b

    .line 1290
    :cond_8
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 1292
    :goto_a
    return v1

    :cond_b
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    add-int/2addr v1, v2

    goto :goto_a
.end method

.method public getCompoundPaddingRight()I
    .registers 4

    .prologue
    .line 1301
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1302
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_8

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_b

    .line 1303
    :cond_8
    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    .line 1305
    :goto_a
    return v1

    :cond_b
    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    add-int/2addr v1, v2

    goto :goto_a
.end method

.method public getCompoundPaddingTop()I
    .registers 4

    .prologue
    .line 1262
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1263
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_8

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_b

    .line 1264
    :cond_8
    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    .line 1266
    :goto_a
    return v1

    :cond_b
    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    add-int/2addr v1, v2

    goto :goto_a
.end method

.method public final getCurrentHintTextColor()I
    .registers 2

    .prologue
    .line 1984
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    goto :goto_6
.end method

.method public final getCurrentTextColor()I
    .registers 2

    .prologue
    .line 1853
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    return v0
.end method

.method protected getDefaultEditable()Z
    .registers 2

    .prologue
    .line 1057
    const/4 v0, 0x0

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .registers 2

    .prologue
    .line 1064
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditableText()Landroid/text/Editable;
    .registers 2

    .prologue
    .line 1094
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_c

    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Editable;

    move-object v0, p0

    :goto_b
    return-object v0

    .restart local p0
    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 6092
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 3352
    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtendedPaddingBottom()I
    .registers 8

    .prologue
    .line 1348
    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_a

    .line 1349
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    .line 1371
    :goto_9
    return v5

    .line 1352
    :cond_a
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v5, v6, :cond_19

    .line 1353
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    goto :goto_9

    .line 1356
    :cond_19
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 1357
    .local v3, top:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 1358
    .local v0, bottom:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    .line 1359
    .local v4, viewht:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 1361
    .local v2, layoutht:I
    if-lt v2, v4, :cond_34

    move v5, v0

    .line 1362
    goto :goto_9

    .line 1365
    :cond_34
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 1366
    .local v1, gravity:I
    const/16 v5, 0x30

    if-ne v1, v5, :cond_40

    .line 1367
    add-int v5, v0, v4

    sub-int/2addr v5, v2

    goto :goto_9

    .line 1368
    :cond_40
    const/16 v5, 0x50

    if-ne v1, v5, :cond_46

    move v5, v0

    .line 1369
    goto :goto_9

    .line 1371
    :cond_46
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    goto :goto_9
.end method

.method public getExtendedPaddingTop()I
    .registers 8

    .prologue
    .line 1315
    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_a

    .line 1316
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v5

    .line 1338
    :goto_9
    return v5

    .line 1319
    :cond_a
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v5, v6, :cond_19

    .line 1320
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v5

    goto :goto_9

    .line 1323
    :cond_19
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 1324
    .local v3, top:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 1325
    .local v0, bottom:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    .line 1326
    .local v4, viewht:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 1328
    .local v2, layoutht:I
    if-lt v2, v4, :cond_34

    move v5, v3

    .line 1329
    goto :goto_9

    .line 1332
    :cond_34
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 1333
    .local v1, gravity:I
    const/16 v5, 0x30

    if-ne v1, v5, :cond_3e

    move v5, v3

    .line 1334
    goto :goto_9

    .line 1335
    :cond_3e
    const/16 v5, 0x50

    if-ne v1, v5, :cond_46

    .line 1336
    add-int v5, v3, v4

    sub-int/2addr v5, v2

    goto :goto_9

    .line 1338
    :cond_46
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    goto :goto_9
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .registers 2

    .prologue
    .line 3614
    iget-object v0, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .registers 8
    .parameter "r"

    .prologue
    .line 4279
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v4, :cond_8

    .line 4280
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 4304
    :goto_7
    return-void

    .line 4284
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 4285
    .local v3, sel:I
    if-gez v3, :cond_12

    .line 4286
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_7

    .line 4290
    :cond_12
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 4291
    .local v0, line:I
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    iput v4, p1, Landroid/graphics/Rect;->top:I

    .line 4292
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 4294
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 4295
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 4298
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 4299
    .local v1, paddingLeft:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v2

    .line 4300
    .local v2, paddingTop:I
    iget v4, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v4, v4, 0x70

    const/16 v5, 0x30

    if-eq v4, v5, :cond_4d

    .line 4301
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 4303
    :cond_4d
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_7
.end method

.method public getFreezesText()Z
    .registers 2

    .prologue
    .line 2585
    iget-boolean v0, p0, Landroid/widget/TextView;->mFreezesText:Z

    return v0
.end method

.method public getGravity()I
    .registers 2

    .prologue
    .line 2064
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 2969
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getHintTextColors()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 1975
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getHysteresisOffset(III)I
    .registers 13
    .parameter "x"
    .parameter "y"
    .parameter "previousOffset"

    .prologue
    const/4 v8, 0x1

    .line 8872
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 8873
    .local v1, layout:Landroid/text/Layout;
    if-nez v1, :cond_9

    const/4 v6, -0x1

    .line 8895
    :goto_8
    return v6

    .line 8875
    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v6

    sub-int/2addr p2, v6

    .line 8877
    const/4 v6, 0x0

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 8878
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v6, v8

    invoke-static {v6, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 8879
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v6

    add-int/2addr p2, v6

    .line 8881
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 8883
    .local v2, line:I
    invoke-virtual {v1, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 8884
    .local v3, previousLine:I
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    .line 8885
    .local v5, previousLineTop:I
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    .line 8886
    .local v4, previousLineBottom:I
    sub-int v6, v4, v5

    div-int/lit8 v0, v6, 0x8

    .line 8890
    .local v0, hysteresisThreshold:I
    add-int/lit8 v6, v3, 0x1

    if-ne v2, v6, :cond_46

    sub-int v6, p2, v4

    if-lt v6, v0, :cond_4e

    :cond_46
    sub-int v6, v3, v8

    if-ne v2, v6, :cond_4f

    sub-int v6, v5, p2

    if-ge v6, v0, :cond_4f

    .line 8892
    :cond_4e
    move v2, v3

    .line 8895
    :cond_4f
    invoke-direct {p0, v2, p1}, Landroid/widget/TextView;->getOffsetForHorizontal(II)I

    move-result v6

    goto :goto_8
.end method

.method public getImeActionId()I
    .registers 2

    .prologue
    .line 3192
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeActionId:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getImeActionLabel()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 3181
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getImeOptions()I
    .registers 2

    .prologue
    .line 3152
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeOptions:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getInputExtras(Z)Landroid/os/Bundle;
    .registers 4
    .parameter "create"

    .prologue
    const/4 v1, 0x0

    .line 3335
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_10

    .line 3336
    if-nez p1, :cond_9

    move-object v0, v1

    .line 3343
    :goto_8
    return-object v0

    .line 3337
    :cond_9
    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3339
    :cond_10
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_23

    .line 3340
    if-nez p1, :cond_1a

    move-object v0, v1

    goto :goto_8

    .line 3341
    :cond_1a
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    .line 3343
    :cond_23
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    goto :goto_8
.end method

.method public getInputType()I
    .registers 2

    .prologue
    .line 3127
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    return v0
.end method

.method getInsertionController()Landroid/widget/TextView$CursorController;
    .registers 3

    .prologue
    .line 8913
    iget-boolean v1, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    if-nez v1, :cond_6

    .line 8914
    const/4 v1, 0x0

    .line 8926
    :goto_5
    return-object v1

    .line 8917
    :cond_6
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    if-nez v1, :cond_1c

    .line 8918
    new-instance v1, Landroid/widget/TextView$InsertionPointCursorController;

    invoke-direct {v1, p0}, Landroid/widget/TextView$InsertionPointCursorController;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    .line 8920
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 8921
    .local v0, observer:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_1c

    .line 8922
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 8926
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_1c
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    goto :goto_5
.end method

.method public getIsInTextSelectionMode()Z
    .registers 2

    .prologue
    .line 9093
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    return v0
.end method

.method public final getKeyListener()Landroid/text/method/KeyListener;
    .registers 2

    .prologue
    .line 1121
    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    return-object v0
.end method

.method public final getLayout()Landroid/text/Layout;
    .registers 2

    .prologue
    .line 1113
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 7169
    iget-object v1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_35

    .line 7170
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_27

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v1

    if-nez v1, :cond_27

    .line 7171
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 7172
    .local v0, marquee:Landroid/widget/TextView$Marquee;
    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->shouldDrawLeftFade()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 7173
    iget v1, v0, Landroid/widget/TextView$Marquee;->mScroll:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 7190
    .end local v0           #marquee:Landroid/widget/TextView$Marquee;
    :goto_24
    return v1

    .restart local v0       #marquee:Landroid/widget/TextView$Marquee;
    :cond_25
    move v1, v3

    .line 7175
    goto :goto_24

    .line 7177
    .end local v0           #marquee:Landroid/widget/TextView$Marquee;
    :cond_27
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_35

    .line 7178
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x7

    packed-switch v1, :pswitch_data_66

    .line 7190
    :cond_35
    :pswitch_35
    invoke-super {p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v1

    goto :goto_24

    :pswitch_3a
    move v1, v3

    .line 7180
    goto :goto_24

    .line 7182
    :pswitch_3c
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineRight(I)F

    move-result v1

    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_24

    :pswitch_63
    move v1, v3

    .line 7186
    goto :goto_24

    .line 7178
    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_63
        :pswitch_35
        :pswitch_3a
        :pswitch_35
        :pswitch_3c
    .end packed-switch
.end method

.method protected getLeftPaddingOffset()I
    .registers 5

    .prologue
    .line 3910
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v3, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .registers 7
    .parameter "line"
    .parameter "bounds"

    .prologue
    const/4 v3, 0x0

    .line 4324
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v2, :cond_c

    .line 4325
    if-eqz p2, :cond_a

    .line 4326
    invoke-virtual {p2, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_a
    move v2, v3

    .line 4340
    :goto_b
    return v2

    .line 4331
    :cond_c
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, p1, p2}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v0

    .line 4333
    .local v0, baseline:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    .line 4334
    .local v1, voffset:I
    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x30

    if-eq v2, v3, :cond_24

    .line 4335
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 4337
    :cond_24
    if-eqz p2, :cond_2d

    .line 4338
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual {p2, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 4340
    :cond_2d
    add-int v2, v0, v1

    goto :goto_b
.end method

.method public getLineCount()I
    .registers 2

    .prologue
    .line 4311
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getLineHeight()I
    .registers 3

    .prologue
    .line 1104
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/TextView;->mSpacingMult:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    add-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v0

    return v0
.end method

.method public final getLinkTextColors()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 2014
    iget-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getLinksClickable()Z
    .registers 2

    .prologue
    .line 1930
    iget-boolean v0, p0, Landroid/widget/TextView;->mLinksClickable:Z

    return v0
.end method

.method public final getMovementMethod()Landroid/text/method/MovementMethod;
    .registers 2

    .prologue
    .line 1185
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    return-object v0
.end method

.method public getOffset(II)I
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 8858
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_8

    const/4 v2, -0x1

    .line 8868
    :goto_7
    return v2

    .line 8860
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v2

    sub-int/2addr p2, v2

    .line 8862
    const/4 v2, 0x0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 8863
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 8864
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    add-int/2addr p2, v2

    .line 8866
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    .line 8867
    .local v0, line:I
    invoke-direct {p0, v0, p1}, Landroid/widget/TextView;->getOffsetForHorizontal(II)I

    move-result v1

    .local v1, offset:I
    move v2, v1

    .line 8868
    goto :goto_7
.end method

.method public getPaint()Landroid/text/TextPaint;
    .registers 2

    .prologue
    .line 1893
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getPaintFlags()I
    .registers 2

    .prologue
    .line 2072
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    return v0
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3301
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->privateImeOptions:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected getRightFadingEdgeStrength()F
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 7195
    iget-object v3, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v3, v4, :cond_2f

    .line 7196
    iget-object v3, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v3, :cond_21

    iget-object v3, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v3}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v3

    if-nez v3, :cond_21

    .line 7197
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 7198
    .local v1, marquee:Landroid/widget/TextView$Marquee;
    iget v3, v1, Landroid/widget/TextView$Marquee;->mMaxFadeScroll:F

    iget v4, v1, Landroid/widget/TextView$Marquee;->mScroll:F

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 7215
    .end local v1           #marquee:Landroid/widget/TextView$Marquee;
    :goto_20
    return v3

    .line 7199
    :cond_21
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2f

    .line 7200
    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v3, v3, 0x7

    packed-switch v3, :pswitch_data_74

    .line 7215
    :cond_2f
    :pswitch_2f
    invoke-super {p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v3

    goto :goto_20

    .line 7202
    :pswitch_34
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    sub-int v2, v3, v4

    .line 7204
    .local v2, textWidth:I
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    .line 7205
    .local v0, lineWidth:F
    int-to-float v3, v2

    sub-float v3, v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    goto :goto_20

    .line 7207
    .end local v0           #lineWidth:F
    .end local v2           #textWidth:I
    :pswitch_54
    const/4 v3, 0x0

    goto :goto_20

    .line 7209
    :pswitch_56
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    goto :goto_20

    .line 7200
    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_56
        :pswitch_2f
        :pswitch_34
        :pswitch_2f
        :pswitch_54
    .end packed-switch
.end method

.method protected getRightPaddingOffset()I
    .registers 5

    .prologue
    .line 3926
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v3, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method getSelectionController()Landroid/widget/TextView$CursorController;
    .registers 3

    .prologue
    .line 8930
    iget-boolean v1, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    if-nez v1, :cond_6

    .line 8931
    const/4 v1, 0x0

    .line 8943
    :goto_5
    return-object v1

    .line 8934
    :cond_6
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-nez v1, :cond_1c

    .line 8935
    new-instance v1, Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-direct {v1, p0}, Landroid/widget/TextView$SelectionModifierCursorController;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    .line 8937
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 8938
    .local v0, observer:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_1c

    .line 8939
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 8943
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_1c
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    goto :goto_5
.end method

.method public getSelectionEnd()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 5993
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getSelectionStart()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 5985
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 1077
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextColors()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 1844
    iget-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTextScaleX()F
    .registers 2

    .prologue
    .line 1760
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    return v0
.end method

.method public getTextSize()F
    .registers 2

    .prologue
    .line 1704
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected getTopPaddingOffset()I
    .registers 4

    .prologue
    .line 3916
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getTotalPaddingBottom()I
    .registers 3

    .prologue
    .line 1406
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getBottomVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalPaddingLeft()I
    .registers 2

    .prologue
    .line 1380
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingRight()I
    .registers 2

    .prologue
    .line 1388
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingTop()I
    .registers 3

    .prologue
    .line 1397
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getTransformationMethod()Landroid/text/method/TransformationMethod;
    .registers 2

    .prologue
    .line 1230
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .registers 2

    .prologue
    .line 1809
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getUrls()[Landroid/text/style/URLSpan;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1941
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1b

    .line 1942
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Landroid/text/style/URLSpan;

    move-object v0, p0

    .line 1944
    :goto_1a
    return-object v0

    .restart local p0
    :cond_1b
    new-array v0, v3, [Landroid/text/style/URLSpan;

    goto :goto_1a
.end method

.method handleTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .parameter "buffer"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 6420
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 6421
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_8

    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-nez v1, :cond_b

    .line 6422
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 6424
    :cond_b
    if-eqz v0, :cond_21

    .line 6425
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    .line 6426
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-gez v1, :cond_30

    .line 6427
    iput p2, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6428
    add-int v1, p2, p3

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    .line 6433
    :cond_1a
    :goto_1a
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    sub-int v2, p4, p3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    .line 6436
    :cond_21
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 6437
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 6440
    if-eq p3, p4, :cond_2f

    .line 6441
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 6442
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 6444
    :cond_2f
    return-void

    .line 6430
    :cond_30
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v1, p2, :cond_36

    iput p2, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6431
    :cond_36
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    add-int v2, p2, p3

    if-ge v1, v2, :cond_1a

    add-int v1, p2, p3

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    goto :goto_1a
.end method

.method hasInsertionController()Z
    .registers 2

    .prologue
    .line 8902
    iget-boolean v0, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    return v0
.end method

.method public hasSelection()Z
    .registers 4

    .prologue
    .line 6000
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 6001
    .local v1, selectionStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 6003
    .local v0, selectionEnd:I
    if-ltz v1, :cond_e

    if-eq v1, v0, :cond_e

    const/4 v2, 0x1

    :goto_d
    return v2

    :cond_e
    const/4 v2, 0x0

    goto :goto_d
.end method

.method hasSelectionController()Z
    .registers 2

    .prologue
    .line 8909
    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    return v0
.end method

.method public hideCursorControllerMenu()V
    .registers 2

    .prologue
    .line 7975
    iget-object v0, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    if-eqz v0, :cond_9

    .line 7976
    iget-object v0, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 7978
    :cond_9
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 16
    .parameter "drawable"

    .prologue
    .line 3942
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v10

    if-eqz v10, :cond_40

    .line 3943
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 3944
    .local v4, dirty:Landroid/graphics/Rect;
    iget v7, p0, Landroid/view/View;->mScrollX:I

    .line 3945
    .local v7, scrollX:I
    iget v8, p0, Landroid/view/View;->mScrollY:I

    .line 3950
    .local v8, scrollY:I
    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 3951
    .local v5, drawables:Landroid/widget/TextView$Drawables;
    if-eqz v5, :cond_31

    .line 3952
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_41

    .line 3953
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 3954
    .local v3, compoundPaddingTop:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 3955
    .local v0, compoundPaddingBottom:I
    iget v10, p0, Landroid/view/View;->mBottom:I

    iget v11, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v0

    sub-int v9, v10, v3

    .line 3957
    .local v9, vspace:I
    iget v10, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v7, v10

    .line 3958
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    sub-int v10, v9, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v3

    add-int/2addr v8, v10

    .line 3983
    .end local v0           #compoundPaddingBottom:I
    .end local v3           #compoundPaddingTop:I
    .end local v9           #vspace:I
    :cond_31
    :goto_31
    iget v10, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v7

    iget v11, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v8

    iget v12, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v7

    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v8

    invoke-virtual {p0, v10, v11, v12, v13}, Landroid/widget/TextView;->invalidate(IIII)V

    .line 3986
    .end local v4           #dirty:Landroid/graphics/Rect;
    .end local v5           #drawables:Landroid/widget/TextView$Drawables;
    .end local v7           #scrollX:I
    .end local v8           #scrollY:I
    :cond_40
    return-void

    .line 3959
    .restart local v4       #dirty:Landroid/graphics/Rect;
    .restart local v5       #drawables:Landroid/widget/TextView$Drawables;
    .restart local v7       #scrollX:I
    .restart local v8       #scrollY:I
    :cond_41
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_6a

    .line 3960
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 3961
    .restart local v3       #compoundPaddingTop:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 3962
    .restart local v0       #compoundPaddingBottom:I
    iget v10, p0, Landroid/view/View;->mBottom:I

    iget v11, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v0

    sub-int v9, v10, v3

    .line 3964
    .restart local v9       #vspace:I
    iget v10, p0, Landroid/view/View;->mRight:I

    iget v11, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v10, v11

    iget v11, v5, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v10, v11

    add-int/2addr v7, v10

    .line 3965
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    sub-int v10, v9, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v3

    add-int/2addr v8, v10

    .line 3966
    goto :goto_31

    .end local v0           #compoundPaddingBottom:I
    .end local v3           #compoundPaddingTop:I
    .end local v9           #vspace:I
    :cond_6a
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_8a

    .line 3967
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 3968
    .local v1, compoundPaddingLeft:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    .line 3969
    .local v2, compoundPaddingRight:I
    iget v10, p0, Landroid/view/View;->mRight:I

    iget v11, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v2

    sub-int v6, v10, v1

    .line 3971
    .local v6, hspace:I
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v10, v6, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v1

    add-int/2addr v7, v10

    .line 3972
    iget v10, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v8, v10

    .line 3973
    goto :goto_31

    .end local v1           #compoundPaddingLeft:I
    .end local v2           #compoundPaddingRight:I
    .end local v6           #hspace:I
    :cond_8a
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_31

    .line 3974
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 3975
    .restart local v1       #compoundPaddingLeft:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    .line 3976
    .restart local v2       #compoundPaddingRight:I
    iget v10, p0, Landroid/view/View;->mRight:I

    iget v11, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v2

    sub-int v6, v10, v1

    .line 3978
    .restart local v6       #hspace:I
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v10, v6, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v1

    add-int/2addr v7, v10

    .line 3979
    iget v10, p0, Landroid/view/View;->mBottom:I

    iget v11, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v10, v11

    iget v11, v5, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    sub-int/2addr v10, v11

    add-int/2addr v8, v10

    goto/16 :goto_31
.end method

.method public isIMEChangable()Z
    .registers 2

    .prologue
    .line 266
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsIMEChangable:Z

    return v0
.end method

.method isInBatchEditMode()Z
    .registers 3

    .prologue
    .line 8947
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 8948
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_c

    .line 8949
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-lez v1, :cond_a

    const/4 v1, 0x1

    .line 8951
    :goto_9
    return v1

    .line 8949
    :cond_a
    const/4 v1, 0x0

    goto :goto_9

    .line 8951
    :cond_c
    iget-boolean v1, p0, Landroid/widget/TextView;->mInBatchEditControllers:Z

    goto :goto_9
.end method

.method public isInputMethodTarget()Z
    .registers 3

    .prologue
    .line 7723
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 7724
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_e

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method protected isPaddingOffsetRequired()Z
    .registers 3

    .prologue
    .line 3905
    iget v0, p0, Landroid/widget/TextView;->mShadowRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_b

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_d

    :cond_b
    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public length()I
    .registers 2

    .prologue
    .line 1084
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method protected makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V
    .registers 29
    .parameter "w"
    .parameter "hintWidth"
    .parameter "boring"
    .parameter "hintBoring"
    .parameter "ellipsisWidth"
    .parameter "bringIntoView"

    .prologue
    .line 5058
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->stopMarquee()V

    .line 5060
    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 5062
    if-gez p1, :cond_d

    .line 5063
    const/16 p1, 0x0

    .line 5065
    :cond_d
    if-gez p2, :cond_11

    .line 5066
    const/16 p2, 0x0

    .line 5070
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mGravity:I

    move v2, v0

    and-int/lit8 v2, v2, 0x7

    sparse-switch v2, :sswitch_data_4aa

    .line 5080
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 5083
    .local v7, alignment:Landroid/text/Layout$Alignment;
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v2, v0

    if-eqz v2, :cond_145

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object v2, v0

    if-nez v2, :cond_145

    const/4 v2, 0x1

    move/from16 v21, v2

    .line 5085
    .local v21, shouldEllipsize:Z
    :goto_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v2, v0

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_14e

    .line 5086
    new-instance v2, Landroid/text/DynamicLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object v6, v0

    if-nez v6, :cond_14a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v6, v0

    move-object v11, v6

    :goto_64
    move/from16 v6, p1

    move/from16 v12, p5

    invoke-direct/range {v2 .. v12}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 5151
    :goto_70
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v2, v0

    if-eqz v2, :cond_334

    const/4 v2, 0x1

    move/from16 v21, v2

    .line 5152
    :goto_7a
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 5154
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v2, v0

    if-eqz v2, :cond_105

    .line 5155
    if-eqz v21, :cond_8b

    move/from16 p2, p1

    .line 5157
    :cond_8b
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p4

    move-object v1, v2

    if-ne v0, v1, :cond_ad

    .line 5158
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    move-object v4, v0

    invoke-static {v2, v3, v4}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p4

    .line 5160
    if-eqz p4, :cond_ad

    .line 5161
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 5165
    :cond_ad
    if-eqz p4, :cond_43c

    .line 5166
    move-object/from16 v0, p4

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move v2, v0

    move v0, v2

    move/from16 v1, p2

    if-gt v0, v1, :cond_361

    if-eqz v21, :cond_c5

    move-object/from16 v0, p4

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move v2, v0

    move v0, v2

    move/from16 v1, p5

    if-gt v0, v1, :cond_361

    .line 5168
    :cond_c5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object v2, v0

    if-eqz v2, :cond_339

    .line 5169
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move/from16 v6, p2

    move-object/from16 v10, p4

    invoke-virtual/range {v3 .. v11}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 5179
    :goto_f7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/text/BoringLayout;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    .line 5217
    :cond_105
    :goto_105
    if-eqz p6, :cond_10a

    .line 5218
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 5221
    :cond_10a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v2, v0

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_139

    .line 5222
    move/from16 v0, p5

    int-to-float v0, v0

    move v2, v0

    move-object/from16 v0, p0

    move v1, v2

    invoke-direct {v0, v1}, Landroid/widget/TextView;->compressText(F)Z

    move-result v2

    if-nez v2, :cond_139

    .line 5223
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    move-object v2, v0

    move-object v0, v2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v20, v0

    .line 5226
    .local v20, height:I
    const/4 v2, -0x2

    move/from16 v0, v20

    move v1, v2

    if-eq v0, v1, :cond_4a1

    const/4 v2, -0x1

    move/from16 v0, v20

    move v1, v2

    if-eq v0, v1, :cond_4a1

    .line 5227
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->startMarquee()V

    .line 5236
    .end local v20           #height:I
    :cond_139
    :goto_139
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 5237
    return-void

    .line 5072
    .end local v7           #alignment:Landroid/text/Layout$Alignment;
    .end local v21           #shouldEllipsize:Z
    .restart local p1
    :sswitch_13d
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 5073
    .restart local v7       #alignment:Landroid/text/Layout$Alignment;
    goto/16 :goto_1d

    .line 5076
    .end local v7           #alignment:Landroid/text/Layout$Alignment;
    :sswitch_141
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 5077
    .restart local v7       #alignment:Landroid/text/Layout$Alignment;
    goto/16 :goto_1d

    .line 5083
    :cond_145
    const/4 v2, 0x0

    move/from16 v21, v2

    goto/16 :goto_2e

    .line 5086
    .restart local v21       #shouldEllipsize:Z
    :cond_14a
    const/4 v6, 0x0

    move-object v11, v6

    goto/16 :goto_64

    .line 5091
    :cond_14e
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p3

    move-object v1, v2

    if-ne v0, v1, :cond_170

    .line 5092
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    move-object v4, v0

    invoke-static {v2, v3, v4}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p3

    .line 5094
    if-eqz p3, :cond_170

    .line 5095
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 5099
    :cond_170
    if-eqz p3, :cond_2cf

    .line 5100
    move-object/from16 v0, p3

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move v2, v0

    move v0, v2

    move/from16 v1, p1

    if-gt v0, v1, :cond_1f4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v2, v0

    if-eqz v2, :cond_18d

    move-object/from16 v0, p3

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move v2, v0

    move v0, v2

    move/from16 v1, p5

    if-gt v0, v1, :cond_1f4

    .line 5102
    :cond_18d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    move-object v2, v0

    if-eqz v2, :cond_1cd

    .line 5103
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move/from16 v6, p1

    move-object/from16 v10, p3

    invoke-virtual/range {v3 .. v11}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 5113
    :goto_1bf
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v2, v0

    check-cast v2, Landroid/text/BoringLayout;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    goto/16 :goto_70

    .line 5108
    :cond_1cd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move/from16 v6, p1

    move-object/from16 v10, p3

    invoke-static/range {v4 .. v11}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto :goto_1bf

    .line 5114
    :cond_1f4
    if-eqz v21, :cond_26a

    move-object/from16 v0, p3

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move v2, v0

    move v0, v2

    move/from16 v1, p1

    if-gt v0, v1, :cond_26a

    .line 5115
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    move-object v2, v0

    if-eqz v2, :cond_23b

    .line 5116
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v12, v0

    move/from16 v6, p1

    move-object/from16 v10, p3

    move/from16 v13, p5

    invoke-virtual/range {v3 .. v13}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto/16 :goto_70

    .line 5122
    :cond_23b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v12, v0

    move/from16 v6, p1

    move-object/from16 v10, p3

    move/from16 v13, p5

    invoke-static/range {v4 .. v13}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto/16 :goto_70

    .line 5127
    :cond_26a
    if-eqz v21, :cond_2a8

    .line 5128
    new-instance v8, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v18, v0

    move/from16 v13, p1

    move-object v14, v7

    move/from16 v19, p5

    invoke-direct/range {v8 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto/16 :goto_70

    .line 5134
    :cond_2a8
    new-instance v3, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v10, v0

    move/from16 v6, p1

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto/16 :goto_70

    .line 5138
    :cond_2cf
    if-eqz v21, :cond_30d

    .line 5139
    new-instance v8, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v18, v0

    move/from16 v13, p1

    move-object v14, v7

    move/from16 v19, p5

    invoke-direct/range {v8 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto/16 :goto_70

    .line 5145
    :cond_30d
    new-instance v3, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v10, v0

    move/from16 v6, p1

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto/16 :goto_70

    .line 5151
    :cond_334
    const/4 v2, 0x0

    move/from16 v21, v2

    goto/16 :goto_7a

    .line 5174
    :cond_339
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move/from16 v6, p2

    move-object/from16 v10, p4

    invoke-static/range {v4 .. v11}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_f7

    .line 5180
    :cond_361
    if-eqz v21, :cond_3d7

    move-object/from16 v0, p4

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move v2, v0

    move v0, v2

    move/from16 v1, p2

    if-gt v0, v1, :cond_3d7

    .line 5181
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object v2, v0

    if-eqz v2, :cond_3a8

    .line 5182
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v12, v0

    move/from16 v6, p2

    move-object/from16 v10, p4

    move/from16 v13, p5

    invoke-virtual/range {v3 .. v13}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_105

    .line 5188
    :cond_3a8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v12, v0

    move/from16 v6, p2

    move-object/from16 v10, p4

    move/from16 v13, p5

    invoke-static/range {v4 .. v13}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_105

    .line 5193
    :cond_3d7
    if-eqz v21, :cond_415

    .line 5194
    new-instance v8, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v18, v0

    move/from16 v13, p2

    move-object v14, v7

    move/from16 v19, p5

    invoke-direct/range {v8 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_105

    .line 5200
    :cond_415
    new-instance v3, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v10, v0

    move/from16 v6, p2

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_105

    .line 5204
    :cond_43c
    if-eqz v21, :cond_47a

    .line 5205
    new-instance v8, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v18, v0

    move/from16 v13, p2

    move-object v14, v7

    move/from16 v19, p5

    invoke-direct/range {v8 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_105

    .line 5211
    :cond_47a
    new-instance v3, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v10, v0

    move/from16 v6, p2

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_105

    .line 5230
    .end local p1
    .restart local v20       #height:I
    :cond_4a1
    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mRestartMarquee:Z

    goto/16 :goto_139

    .line 5070
    nop

    :sswitch_data_4aa
    .sparse-switch
        0x1 -> :sswitch_13d
        0x5 -> :sswitch_141
    .end sparse-switch
.end method

.method public moveCursorToVisibleOffset()Z
    .registers 20

    .prologue
    .line 5866
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v16, v0

    if-nez v16, :cond_11

    .line 5867
    const/16 v16, 0x0

    .line 5912
    .end local p0
    :goto_10
    return v16

    .line 5869
    .restart local p0
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v11

    .line 5870
    .local v11, start:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 5871
    .local v4, end:I
    if-eq v11, v4, :cond_1e

    .line 5872
    const/16 v16, 0x0

    goto :goto_10

    .line 5877
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 5879
    .local v8, line:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    .line 5880
    .local v12, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    add-int/lit8 v17, v8, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    .line 5881
    .local v3, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v17

    sub-int v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v17

    sub-int v15, v16, v17

    .line 5882
    .local v15, vspace:I
    sub-int v16, v3, v12

    div-int/lit8 v14, v16, 0x2

    .line 5883
    .local v14, vslack:I
    div-int/lit8 v16, v15, 0x4

    move v0, v14

    move/from16 v1, v16

    if-le v0, v1, :cond_6b

    .line 5884
    div-int/lit8 v14, v15, 0x4

    .line 5885
    :cond_6b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v13, v0

    .line 5887
    .local v13, vs:I
    add-int v16, v13, v14

    move v0, v12

    move/from16 v1, v16

    if-ge v0, v1, :cond_e7

    .line 5888
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    add-int v17, v13, v14

    sub-int v18, v3, v12

    add-int v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    .line 5895
    :cond_87
    :goto_87
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v17

    sub-int v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v17

    sub-int v6, v16, v17

    .line 5896
    .local v6, hspace:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v5, v0

    .line 5897
    .local v5, hs:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    move v0, v5

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, v16

    move v1, v8

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v7

    .line 5898
    .local v7, leftChar:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    add-int v17, v6, v5

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, v16

    move v1, v8

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v10

    .line 5900
    .local v10, rightChar:I
    move v9, v11

    .line 5901
    .local v9, newStart:I
    if-ge v9, v7, :cond_103

    .line 5902
    move v9, v7

    .line 5907
    :cond_d3
    :goto_d3
    if-eq v9, v11, :cond_107

    .line 5908
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/text/Spannable;

    move-object/from16 v0, p0

    move v1, v9

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 5909
    const/16 v16, 0x1

    goto/16 :goto_10

    .line 5889
    .end local v5           #hs:I
    .end local v6           #hspace:I
    .end local v7           #leftChar:I
    .end local v9           #newStart:I
    .end local v10           #rightChar:I
    .restart local p0
    :cond_e7
    add-int v16, v15, v13

    sub-int v16, v16, v14

    move v0, v3

    move/from16 v1, v16

    if-le v0, v1, :cond_87

    .line 5890
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    add-int v17, v15, v13

    sub-int v17, v17, v14

    sub-int v18, v3, v12

    sub-int v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    goto :goto_87

    .line 5903
    .restart local v5       #hs:I
    .restart local v6       #hspace:I
    .restart local v7       #leftChar:I
    .restart local v9       #newStart:I
    .restart local v10       #rightChar:I
    :cond_103
    if-le v9, v10, :cond_d3

    .line 5904
    move v9, v10

    goto :goto_d3

    .line 5912
    :cond_107
    const/16 v16, 0x0

    goto/16 :goto_10
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3846
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 3848
    iput-boolean v2, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 3850
    iget-boolean v1, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    if-eqz v1, :cond_f

    .line 3851
    invoke-direct {p0}, Landroid/widget/TextView;->showError()V

    .line 3852
    iput-boolean v2, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    .line 3855
    :cond_f
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3856
    .local v0, observer:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_27

    .line 3857
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v1, :cond_1e

    .line 3858
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3860
    :cond_1e
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v1, :cond_27

    .line 3861
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3864
    :cond_27
    return-void
.end method

.method public onBeginBatchEdit()V
    .registers 1

    .prologue
    .line 4994
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .registers 2

    .prologue
    .line 4663
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 4912
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 9834
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 9835
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Landroid/widget/TextView;->mOrientation:I

    if-eq v0, v1, :cond_f

    .line 9836
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 9837
    invoke-virtual {p0}, Landroid/widget/TextView;->hideCursorControllerMenu()V

    .line 9839
    :cond_f
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/widget/TextView;->mOrientation:I

    .line 9842
    sget-object v0, Landroid/widget/TextView;->mContextMenu:Landroid/view/ContextMenu;

    if-eqz v0, :cond_1f

    .line 9843
    sget-object v0, Landroid/widget/TextView;->mContextMenu:Landroid/view/ContextMenu;

    invoke-interface {v0}, Landroid/view/ContextMenu;->close()V

    .line 9844
    const/4 v0, 0x0

    sput-object v0, Landroid/widget/TextView;->mContextMenu:Landroid/view/ContextMenu;

    .line 9848
    :cond_1f
    return-void
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .registers 16
    .parameter "menu"

    .prologue
    const v13, 0x104000b

    const v12, 0x1020022

    const/16 v11, 0x76

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 7586
    invoke-super {p0, p1}, Landroid/view/View;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 7587
    const/4 v0, 0x0

    .line 7588
    .local v0, added:Z
    iget-boolean v7, p0, Landroid/widget/TextView;->mDPadCenterIsDown:Z

    if-nez v7, :cond_16

    iget-boolean v7, p0, Landroid/widget/TextView;->mEnterKeyIsDown:Z

    if-eqz v7, :cond_7f

    :cond_16
    move v7, v10

    :goto_17
    iput-boolean v7, p0, Landroid/widget/TextView;->mContextMenuTriggeredByKey:Z

    .line 7595
    iput-boolean v9, p0, Landroid/widget/TextView;->mEnterKeyIsDown:Z

    iput-boolean v9, p0, Landroid/widget/TextView;->mDPadCenterIsDown:Z

    .line 7597
    iget-boolean v7, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    if-eqz v7, :cond_81

    .line 7598
    new-instance v1, Landroid/widget/TextView$MenuHandler;

    const/4 v7, 0x0

    invoke-direct {v1, p0, v7}, Landroid/widget/TextView$MenuHandler;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    .line 7600
    .local v1, handler:Landroid/widget/TextView$MenuHandler;
    invoke-direct {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v7

    if-eqz v7, :cond_41

    .line 7601
    const v7, 0x1020020

    const v8, 0x1040003

    invoke-interface {p1, v9, v7, v9, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v7

    const/16 v8, 0x78

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 7604
    const/4 v0, 0x1

    .line 7607
    :cond_41
    invoke-direct {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v7

    if-eqz v7, :cond_5b

    .line 7608
    const v7, 0x1020021

    const v8, 0x1040001

    invoke-interface {p1, v9, v7, v9, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v7

    const/16 v8, 0x63

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 7611
    const/4 v0, 0x1

    .line 7614
    :cond_5b
    invoke-direct {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 7615
    invoke-interface {p1, v9, v12, v9, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v11}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 7618
    const/4 v0, 0x1

    .line 7703
    :cond_6d
    :goto_6d
    if-eqz v0, :cond_75

    .line 7704
    const v7, 0x104040d

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 7708
    :cond_75
    instance-of v7, p0, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v7, :cond_7c

    .line 7709
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 7714
    :cond_7c
    sput-object p1, Landroid/widget/TextView;->mContextMenu:Landroid/view/ContextMenu;

    .line 7716
    return-void

    .end local v1           #handler:Landroid/widget/TextView$MenuHandler;
    :cond_7f
    move v7, v9

    .line 7588
    goto :goto_17

    .line 7621
    :cond_81
    new-instance v1, Landroid/widget/TextView$MenuHandler;

    const/4 v7, 0x0

    invoke-direct {v1, p0, v7}, Landroid/widget/TextView$MenuHandler;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    .line 7623
    .restart local v1       #handler:Landroid/widget/TextView$MenuHandler;
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v7

    if-eqz v7, :cond_b4

    .line 7624
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v7

    if-nez v7, :cond_a0

    .line 7628
    const v7, 0x1020028

    const v8, 0x1040406

    invoke-interface {p1, v9, v7, v9, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 7631
    :cond_a0
    const v7, 0x102001f

    const v8, 0x104000d

    invoke-interface {p1, v9, v7, v9, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v7

    const/16 v8, 0x61

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 7634
    const/4 v0, 0x1

    .line 7637
    :cond_b4
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v7, v7, Landroid/text/Spanned;

    if-eqz v7, :cond_e7

    .line 7638
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 7639
    .local v5, selStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 7641
    .local v4, selEnd:I
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 7642
    .local v3, min:I
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 7644
    .local v2, max:I
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Spanned;

    const-class v8, Landroid/text/style/URLSpan;

    invoke-interface {v7, v3, v2, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/URLSpan;

    .line 7646
    .local v6, urls:[Landroid/text/style/URLSpan;
    array-length v7, v6

    if-ne v7, v10, :cond_e7

    .line 7647
    const v7, 0x1020023

    const v8, 0x1040002

    invoke-interface {p1, v9, v7, v9, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 7649
    const/4 v0, 0x1

    .line 7653
    .end local v2           #max:I
    .end local v3           #min:I
    .end local v4           #selEnd:I
    .end local v5           #selStart:I
    .end local v6           #urls:[Landroid/text/style/URLSpan;
    :cond_e7
    invoke-direct {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v7

    if-eqz v7, :cond_f9

    .line 7654
    invoke-interface {p1, v9, v12, v9, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v11}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 7657
    const/4 v0, 0x1

    .line 7682
    :cond_f9
    invoke-virtual {p0}, Landroid/widget/TextView;->isInputMethodTarget()Z

    move-result v7

    if-eqz v7, :cond_6d

    invoke-virtual {p0}, Landroid/widget/TextView;->isIMEChangable()Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 7683
    const v7, 0x1020024

    const v8, 0x104040b

    invoke-interface {p1, v10, v7, v9, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 7685
    const/4 v0, 0x1

    goto/16 :goto_6d
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 6
    .parameter "outAttrs"

    .prologue
    const/high16 v3, 0x4000

    .line 4667
    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v1

    if-eqz v1, :cond_98

    .line 4668
    iget-object v1, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    if-nez v1, :cond_13

    .line 4669
    new-instance v1, Landroid/widget/TextView$InputMethodState;

    invoke-direct {v1, p0}, Landroid/widget/TextView$InputMethodState;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 4671
    :cond_13
    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 4672
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v1, :cond_8d

    .line 4673
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v1, v1, Landroid/widget/TextView$InputContentType;->imeOptions:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4674
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v1, v1, Landroid/widget/TextView$InputContentType;->privateImeOptions:Ljava/lang/String;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 4675
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v1, v1, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 4676
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v1, v1, Landroid/widget/TextView$InputContentType;->imeActionId:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 4677
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v1, v1, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 4681
    :goto_39
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_58

    .line 4683
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_91

    .line 4686
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v1, v1, 0x5

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4692
    :goto_4d
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v1

    if-nez v1, :cond_58

    .line 4693
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v3

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4696
    :cond_58
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v2, 0x2000f

    and-int/2addr v1, v2

    const v2, 0x20001

    if-ne v1, v2, :cond_68

    .line 4701
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v3

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4703
    :cond_68
    iget-object v1, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 4704
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_98

    .line 4705
    new-instance v0, Lcom/android/internal/widget/EditableInputConnection;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/EditableInputConnection;-><init>(Landroid/widget/TextView;)V

    .line 4706
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 4707
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 4708
    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    move-object v1, v0

    .line 4712
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :goto_8c
    return-object v1

    .line 4679
    :cond_8d
    const/4 v1, 0x0

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_39

    .line 4690
    :cond_91
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v1, v1, 0x6

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_4d

    .line 4712
    :cond_98
    const/4 v1, 0x0

    goto :goto_8c
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 3868
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 3870
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3871
    .local v0, observer:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_25

    .line 3872
    iget v1, p0, Landroid/widget/TextView;->mPreDrawState:I

    if-eqz v1, :cond_13

    .line 3873
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3874
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/TextView;->mPreDrawState:I

    .line 3876
    :cond_13
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v1, :cond_1c

    .line 3877
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3879
    :cond_1c
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v1, :cond_25

    .line 3880
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3884
    :cond_25
    iget-object v1, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2c

    .line 3885
    invoke-direct {p0}, Landroid/widget/TextView;->hideError()V

    .line 3888
    :cond_2c
    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v1, :cond_35

    .line 3889
    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v1}, Landroid/widget/TextView$Blink;->cancel()V

    .line 3892
    :cond_35
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v1, :cond_3e

    .line 3893
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v1}, Landroid/widget/TextView$CursorController;->onDetached()V

    .line 3896
    :cond_3e
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v1, :cond_47

    .line 3897
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v1}, Landroid/widget/TextView$CursorController;->onDetached()V

    .line 3900
    :cond_47
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 3901
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 48
    .parameter "canvas"

    .prologue
    .line 3990
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    .line 3993
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 3995
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v24

    .line 3996
    .local v24, compoundPaddingLeft:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v26

    .line 3997
    .local v26, compoundPaddingTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v25

    .line 3998
    .local v25, compoundPaddingRight:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v23

    .line 3999
    .local v23, compoundPaddingBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v39, v0

    .line 4000
    .local v39, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v40, v0

    .line 4001
    .local v40, scrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v38, v0

    .line 4002
    .local v38, right:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v35, v0

    .line 4003
    .local v35, left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v17, v0

    .line 4004
    .local v17, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v42, v0

    .line 4006
    .local v42, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v28, v0

    .line 4007
    .local v28, dr:Landroid/widget/TextView$Drawables;
    if-eqz v28, :cond_130

    .line 4013
    sub-int v6, v17, v42

    sub-int v6, v6, v23

    sub-int v45, v6, v26

    .line 4014
    .local v45, vspace:I
    sub-int v6, v38, v35

    sub-int v6, v6, v25

    sub-int v32, v6, v24

    .line 4018
    .local v32, hspace:I
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    if-eqz v6, :cond_82

    .line 4019
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4020
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move v6, v0

    add-int v6, v6, v39

    int-to-float v6, v6

    add-int v7, v40, v26

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    move v8, v0

    sub-int v8, v45, v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4023
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4024
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4029
    :cond_82
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    if-eqz v6, :cond_bf

    .line 4030
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4031
    add-int v6, v39, v38

    sub-int v6, v6, v35

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move v7, v0

    sub-int/2addr v6, v7

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    move v7, v0

    sub-int/2addr v6, v7

    int-to-float v6, v6

    add-int v7, v40, v26

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    move v8, v0

    sub-int v8, v45, v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4033
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4034
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4039
    :cond_bf
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    if-eqz v6, :cond_f3

    .line 4040
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4041
    add-int v6, v39, v24

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    move v7, v0

    sub-int v7, v32, v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move v7, v0

    add-int v7, v7, v40

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4043
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4044
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4049
    :cond_f3
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    if-eqz v6, :cond_130

    .line 4050
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4051
    add-int v6, v39, v24

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    move v7, v0

    sub-int v7, v32, v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    add-int v7, v40, v17

    sub-int v7, v7, v42

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move v8, v0

    sub-int/2addr v7, v8

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    move v8, v0

    sub-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4054
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4055
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4059
    .end local v32           #hspace:I
    .end local v45           #vspace:I
    :cond_130
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mPreDrawState:I

    move v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_14b

    .line 4060
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v36

    .line 4061
    .local v36, observer:Landroid/view/ViewTreeObserver;
    if-eqz v36, :cond_14b

    .line 4062
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 4063
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mPreDrawState:I

    .line 4067
    .end local v36           #observer:Landroid/view/ViewTreeObserver;
    :cond_14b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mCurTextColor:I

    move/from16 v22, v0

    .line 4069
    .local v22, color:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v6, v0

    if-nez v6, :cond_15b

    .line 4070
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 4073
    :cond_15b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v34, v0

    .line 4074
    .local v34, layout:Landroid/text/Layout;
    move/from16 v27, v22

    .line 4076
    .local v27, cursorcolor:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v6, v0

    if-eqz v6, :cond_188

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v6, v0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_188

    .line 4077
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    move-object v6, v0

    if-eqz v6, :cond_182

    .line 4078
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mCurHintTextColor:I

    move/from16 v22, v0

    .line 4081
    :cond_182
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object/from16 v34, v0

    .line 4084
    :cond_188
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 4085
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v6, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v7

    iput-object v7, v6, Landroid/text/TextPaint;->drawableState:[I

    .line 4087
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4092
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v30

    .line 4093
    .local v30, extendedPaddingTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v29

    .line 4095
    .local v29, extendedPaddingBottom:I
    add-int v6, v24, v39

    move v0, v6

    int-to-float v0, v0

    move/from16 v19, v0

    .line 4096
    .local v19, clipLeft:F
    add-int v6, v30, v40

    move v0, v6

    int-to-float v0, v0

    move/from16 v21, v0

    .line 4097
    .local v21, clipTop:F
    sub-int v6, v38, v35

    sub-int v6, v6, v25

    add-int v6, v6, v39

    move v0, v6

    int-to-float v0, v0

    move/from16 v20, v0

    .line 4098
    .local v20, clipRight:F
    sub-int v6, v17, v42

    sub-int v6, v6, v29

    add-int v6, v6, v40

    move v0, v6

    int-to-float v0, v0

    move/from16 v18, v0

    .line 4100
    .local v18, clipBottom:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move v6, v0

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_21b

    .line 4101
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowDx:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move v8, v0

    sub-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float v19, v19, v6

    .line 4102
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowDx:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move v8, v0

    add-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float v20, v20, v6

    .line 4104
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowDy:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move v8, v0

    sub-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float v21, v21, v6

    .line 4105
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowDy:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move v8, v0

    add-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float v18, v18, v6

    .line 4108
    :cond_21b
    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 4110
    const/16 v44, 0x0

    .line 4111
    .local v44, voffsetText:I
    const/16 v43, 0x0

    .line 4116
    .local v43, voffsetCursor:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mGravity:I

    move v6, v0

    and-int/lit8 v6, v6, 0x70

    const/16 v7, 0x30

    if-eq v6, v7, :cond_247

    .line 4117
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v44

    .line 4118
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v43

    .line 4120
    :cond_247
    move/from16 v0, v24

    int-to-float v0, v0

    move v6, v0

    add-int v7, v30, v44

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4123
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v6, v0

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v6, v7, :cond_2c7

    .line 4124
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mSingleLine:Z

    move v6, v0

    if-nez v6, :cond_2a5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2a5

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v6

    if-eqz v6, :cond_2a5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mGravity:I

    move v6, v0

    and-int/lit8 v6, v6, 0x7

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2a5

    .line 4126
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineRight(I)F

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move v8, v0

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    sub-float/2addr v6, v7

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4130
    :cond_2a5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    move-object v6, v0

    if-eqz v6, :cond_2c7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_2c7

    .line 4131
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    move-object v6, v0

    iget v6, v6, Landroid/widget/TextView$Marquee;->mScroll:F

    neg-float v6, v6

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4135
    :cond_2c7
    const/16 v31, 0x0

    .line 4136
    .local v31, highlight:Landroid/graphics/Path;
    const/4 v7, -0x1

    .local v7, selStart:I
    const/4 v8, -0x1

    .line 4144
    .local v8, selEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object v6, v0

    if-eqz v6, :cond_2de

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v6

    if-nez v6, :cond_2e5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isPressed()Z

    move-result v6

    if-nez v6, :cond_2e5

    :cond_2de
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mEnableSelection:Z

    move v6, v0

    if-eqz v6, :cond_364

    .line 4145
    :cond_2e5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 4146
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    .line 4148
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mCursorVisible:Z

    move v6, v0

    if-eqz v6, :cond_364

    if-ltz v7, :cond_364

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_364

    .line 4149
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object v6, v0

    if-nez v6, :cond_30d

    .line 4150
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 4152
    :cond_30d
    if-ne v7, v8, :cond_4c0

    .line 4153
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/TextView;->mShowCursor:J

    move-wide v13, v0

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x3e8

    rem-long/2addr v11, v13

    const-wide/16 v13, 0x1f4

    cmp-long v6, v11, v13

    if-gez v6, :cond_364

    .line 4154
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    move v6, v0

    if-eqz v6, :cond_349

    .line 4155
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 4156
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v10, v0

    invoke-virtual {v6, v7, v9, v10}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 4157
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 4161
    :cond_349
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4162
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v6, v0

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4164
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    .line 4193
    :cond_364
    :goto_364
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    move-object/from16 v33, v0

    .line 4194
    .local v33, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v33, :cond_470

    move-object/from16 v0, v33

    iget v0, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    move v6, v0

    if-nez v6, :cond_470

    .line 4195
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    .line 4196
    .local v5, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v5, :cond_470

    .line 4197
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3ba

    .line 4198
    const/16 v37, 0x0

    .line 4199
    .local v37, reported:Z
    move-object/from16 v0, v33

    iget-boolean v0, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    move v6, v0

    if-nez v6, :cond_392

    move-object/from16 v0, v33

    iget-boolean v0, v0, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    move v6, v0

    if-eqz v6, :cond_396

    .line 4203
    :cond_392
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->reportExtractedText()Z

    move-result v37

    .line 4205
    :cond_396
    if-nez v37, :cond_3ba

    if-eqz v31, :cond_3ba

    .line 4206
    const/4 v9, -0x1

    .line 4207
    .local v9, candStart:I
    const/4 v10, -0x1

    .line 4208
    .local v10, candEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v6, v0

    instance-of v6, v6, Landroid/text/Spannable;

    if-eqz v6, :cond_3b5

    .line 4209
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v41, v0

    check-cast v41, Landroid/text/Spannable;

    .line 4210
    .local v41, sp:Landroid/text/Spannable;
    invoke-static/range {v41 .. v41}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v9

    .line 4211
    invoke-static/range {v41 .. v41}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v10

    .end local v41           #sp:Landroid/text/Spannable;
    :cond_3b5
    move-object/from16 v6, p0

    .line 4213
    invoke-virtual/range {v5 .. v10}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 4217
    .end local v9           #candStart:I
    .end local v10           #candEnd:I
    .end local v37           #reported:Z
    :cond_3ba
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isWatchingCursor(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_470

    if-eqz v31, :cond_470

    .line 4218
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v6, v0

    const/4 v7, 0x1

    move-object/from16 v0, v31

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 4219
    .end local v7           #selStart:I
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    move-object v8, v0

    .end local v8           #selEnd:I
    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v8, v9

    aput v10, v6, v7

    .line 4221
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 4222
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v6, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    move-object v8, v0

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 4224
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v6, v0

    const/4 v7, 0x0

    sub-int v8, v43, v44

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 4226
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    move-object v6, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/RectF;->left:F

    float-to-double v11, v7

    const-wide/high16 v13, 0x3fe0

    add-double/2addr v11, v13

    double-to-int v7, v11

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v8, v0

    iget v8, v8, Landroid/graphics/RectF;->top:F

    float-to-double v11, v8

    const-wide/high16 v13, 0x3fe0

    add-double/2addr v11, v13

    double-to-int v8, v11

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v9, v0

    iget v9, v9, Landroid/graphics/RectF;->right:F

    float-to-double v11, v9

    const-wide/high16 v13, 0x3fe0

    add-double/2addr v11, v13

    double-to-int v9, v11

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v10, v0

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    float-to-double v11, v10

    const-wide/high16 v13, 0x3fe0

    add-double/2addr v11, v13

    double-to-int v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 4231
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    move-object v6, v0

    iget v13, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    move-object v6, v0

    iget v14, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    move-object v6, v0

    iget v15, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    move-object v6, v0

    move-object v0, v6

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move-object v11, v5

    move-object/from16 v12, p0

    invoke-virtual/range {v11 .. v16}, Landroid/view/inputmethod/InputMethodManager;->updateCursor(Landroid/view/View;IIII)V

    .line 4238
    .end local v5           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_470
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v6, v0

    sub-int v7, v43, v44

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    move-object v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 4240
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    move-object v6, v0

    if-eqz v6, :cond_4b9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->shouldDrawGhost()Z

    move-result v6

    if-eqz v6, :cond_4b9

    .line 4241
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->getGhostOffset()F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4242
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v6, v0

    sub-int v7, v43, v44

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    move-object v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 4251
    :cond_4b9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4253
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->updateCursorControllerPositions()V

    .line 4254
    return-void

    .line 4167
    .end local v33           #ims:Landroid/widget/TextView$InputMethodState;
    .restart local v7       #selStart:I
    .restart local v8       #selEnd:I
    :cond_4c0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    move v6, v0

    if-eqz v6, :cond_4e2

    .line 4168
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 4169
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object v9, v0

    invoke-virtual {v6, v7, v8, v9}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 4170
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 4174
    :cond_4e2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mHighlightColor:I

    move v9, v0

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 4175
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v6, v0

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4177
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    goto/16 :goto_364
.end method

.method public onEditorAction(I)V
    .registers 25
    .parameter "actionCode"

    .prologue
    .line 3231
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v20, v0

    .line 3232
    .local v20, ict:Landroid/widget/TextView$InputContentType;
    if-eqz v20, :cond_5f

    .line 3233
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    move-object v4, v0

    if-eqz v4, :cond_22

    .line 3234
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    move-object v4, v0

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 3278
    :cond_21
    :goto_21
    return-void

    .line 3245
    :cond_22
    const/4 v4, 0x5

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_46

    .line 3246
    const/16 v4, 0x82

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v22

    .line 3247
    .local v22, v:Landroid/view/View;
    if-eqz v22, :cond_21

    .line 3248
    const/16 v4, 0x82

    move-object/from16 v0, v22

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-nez v4, :cond_21

    .line 3249
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3255
    .end local v22           #v:Landroid/view/View;
    :cond_46
    const/4 v4, 0x6

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_5f

    .line 3256
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v21

    .line 3257
    .local v21, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v21, :cond_21

    .line 3258
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v21

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_21

    .line 3264
    .end local v21           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_5f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v19

    .line 3265
    .local v19, h:Landroid/os/Handler;
    if-eqz v19, :cond_21

    .line 3266
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 3267
    .local v5, eventTime:J
    const/16 v16, 0x3f3

    new-instance v4, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/16 v10, 0x42

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x16

    move-wide v7, v5

    invoke-direct/range {v4 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v19

    move/from16 v1, v16

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3272
    const/16 v4, 0x3f3

    new-instance v7, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v12, 0x1

    const/16 v13, 0x42

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x16

    move-wide v10, v5

    invoke-direct/range {v7 .. v18}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v19

    move v1, v4

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_21
.end method

.method public onEndBatchEdit()V
    .registers 1

    .prologue
    .line 5001
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .registers 2

    .prologue
    .line 6663
    invoke-super {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 6666
    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    if-nez v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 6667
    :cond_a
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 15
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6671
    iget-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    if-eqz v0, :cond_a

    .line 6673
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 6791
    :goto_9
    return-void

    .line 6677
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/TextView;->mShowCursor:J

    .line 6679
    invoke-virtual {p0}, Landroid/widget/TextView;->ensureEndedBatchEdit()V

    .line 6681
    if-eqz p1, :cond_ba

    .line 6682
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    .line 6683
    .local v9, selStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    .line 6687
    .local v8, selEnd:I
    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    if-eqz v0, :cond_b5

    if-nez v9, :cond_b5

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v8, v0, :cond_b5

    move v6, v3

    .line 6689
    .local v6, isFocusHighlighted:Z
    :goto_2c
    iget-boolean v0, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    if-eqz v0, :cond_b8

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_b8

    if-nez v6, :cond_b8

    move v0, v3

    :goto_39
    iput-boolean v0, p0, Landroid/widget/TextView;->mCreatedWithASelection:Z

    .line 6691
    iget-boolean v0, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    if-eqz v0, :cond_43

    if-ltz v9, :cond_43

    if-gez v8, :cond_83

    .line 6694
    :cond_43
    invoke-direct {p0}, Landroid/widget/TextView;->getLastTapPosition()I

    move-result v7

    .line 6695
    .local v7, lastTapPosition:I
    if-ltz v7, :cond_50

    .line 6696
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 6720
    :cond_50
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_5d

    .line 6721
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p2}, Landroid/text/method/MovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    .line 6729
    :cond_5d
    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_65

    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    if-eqz v0, :cond_70

    :cond_65
    if-ltz v9, :cond_70

    if-ltz v8, :cond_70

    .line 6740
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v9, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 6743
    :cond_70
    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    if-eqz v0, :cond_81

    .line 6744
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 6747
    :cond_81
    iput-boolean v3, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    .line 6750
    .end local v7           #lastTapPosition:I
    :cond_83
    iput-boolean v2, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    .line 6751
    iput-boolean v2, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 6753
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_94

    .line 6754
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Spannable;

    .line 6755
    .local v10, sp:Landroid/text/Spannable;
    invoke-static {v10}, Landroid/text/method/MetaKeyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 6758
    .end local v10           #sp:Landroid/text/Spannable;
    :cond_94
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 6760
    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_9e

    .line 6761
    invoke-direct {p0}, Landroid/widget/TextView;->showError()V

    .line 6784
    .end local v6           #isFocusHighlighted:Z
    .end local v8           #selEnd:I
    .end local v9           #selStart:I
    :cond_9e
    :goto_9e
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    .line 6786
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_b0

    .line 6787
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/text/method/TransformationMethod;->onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V

    .line 6790
    :cond_b0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    goto/16 :goto_9

    .restart local v8       #selEnd:I
    .restart local v9       #selStart:I
    :cond_b5
    move v6, v2

    .line 6687
    goto/16 :goto_2c

    .restart local v6       #isFocusHighlighted:Z
    :cond_b8
    move v0, v2

    .line 6689
    goto :goto_39

    .line 6764
    .end local v6           #isFocusHighlighted:Z
    .end local v8           #selEnd:I
    .end local v9           #selStart:I
    :cond_ba
    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_c1

    .line 6765
    invoke-direct {p0}, Landroid/widget/TextView;->hideError()V

    .line 6768
    :cond_c1
    invoke-virtual {p0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 6770
    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    .line 6771
    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_d9

    .line 6774
    iput-boolean v2, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    .line 6779
    :goto_cd
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v0, :cond_9e

    .line 6780
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    check-cast v0, Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionModifierCursorController;->resetTouchOffsets()V

    goto :goto_9e

    .line 6776
    :cond_d9
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    goto :goto_cd
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 4360
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v0

    .line 4361
    .local v0, which:I
    if-nez v0, :cond_c

    .line 4363
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 4366
    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x1

    goto :goto_b
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4371
    const/4 v3, 0x0

    invoke-static {p3, v3}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 4373
    .local v0, down:Landroid/view/KeyEvent;
    invoke-direct {p0, p1, v0, p3}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v2

    .line 4374
    .local v2, which:I
    if-nez v2, :cond_12

    .line 4376
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v3

    .line 4409
    :goto_11
    return v3

    .line 4378
    :cond_12
    const/4 v3, -0x1

    if-ne v2, v3, :cond_17

    move v3, v5

    .line 4380
    goto :goto_11

    .line 4383
    :cond_17
    add-int/lit8 p2, p2, -0x1

    .line 4390
    invoke-static {p3, v5}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 4391
    .local v1, up:Landroid/view/KeyEvent;
    if-ne v2, v5, :cond_4c

    .line 4392
    iget-object v4, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v4, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 4393
    :goto_28
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_3f

    .line 4394
    iget-object v4, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v4, p0, v3, p1, v0}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 4395
    iget-object v4, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v4, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    goto :goto_28

    .line 4397
    :cond_3f
    iget-object v3, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v3, :cond_4a

    iget-boolean v3, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    if-nez v3, :cond_4a

    .line 4398
    invoke-virtual {p0, v6, v6}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :cond_4a
    move v3, v5

    .line 4409
    goto :goto_11

    .line 4401
    :cond_4c
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4a

    .line 4402
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v4, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 4403
    :goto_58
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_4a

    .line 4404
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v4, p0, v3, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 4405
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v4, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    goto :goto_58
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 9105
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x4

    if-eq p1, v0, :cond_d

    :cond_a
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1a

    .line 9106
    :cond_d
    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_14

    .line 9107
    invoke-direct {p0}, Landroid/widget/TextView;->hideError()V

    .line 9110
    :cond_14
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 9111
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 9113
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 7290
    sparse-switch p1, :sswitch_data_40

    .line 7320
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_7
    return v0

    .line 7292
    :sswitch_8
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7293
    const v0, 0x102001f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_7

    .line 7299
    :sswitch_16
    invoke-direct {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7300
    const v0, 0x1020020

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_7

    .line 7306
    :sswitch_24
    invoke-direct {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7307
    const v0, 0x1020021

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_7

    .line 7313
    :sswitch_32
    invoke-direct {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7314
    const v0, 0x1020022

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_7

    .line 7290
    :sswitch_data_40
    .sparse-switch
        0x1d -> :sswitch_8
        0x1f -> :sswitch_24
        0x32 -> :sswitch_32
        0x34 -> :sswitch_16
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v3, 0x82

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4566
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_f

    .line 4567
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 4659
    :goto_e
    return v2

    .line 4570
    :cond_f
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 4571
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 4573
    sparse-switch p1, :sswitch_data_de

    .line 4651
    :cond_18
    iget-object v2, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v2, :cond_c1

    .line 4652
    iget-object v3, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v3, p0, v2, p1, p2}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_c1

    move v2, v5

    .line 4653
    goto :goto_e

    .line 4575
    :sswitch_2a
    iput-boolean v4, p0, Landroid/widget/TextView;->mDPadCenterIsDown:Z

    .line 4585
    iget-object v2, p0, Landroid/view/View;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v2, :cond_53

    .line 4586
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v2, :cond_53

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Editable;

    if-eqz v2, :cond_53

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_53

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 4588
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 4590
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 4593
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_53
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_e

    .line 4596
    :sswitch_58
    iput-boolean v4, p0, Landroid/widget/TextView;->mEnterKeyIsDown:Z

    .line 4597
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v2, :cond_7a

    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_7a

    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-boolean v2, v2, Landroid/widget/TextView$InputContentType;->enterDown:Z

    if-eqz v2, :cond_7a

    .line 4600
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-boolean v4, v2, Landroid/widget/TextView$InputContentType;->enterDown:Z

    .line 4601
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v2, p0, v4, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_7a

    move v2, v5

    .line 4603
    goto :goto_e

    .line 4607
    :cond_7a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_88

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 4619
    :cond_88
    iget-object v2, p0, Landroid/view/View;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v2, :cond_bb

    .line 4620
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    .line 4622
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_a6

    .line 4623
    invoke-virtual {v1, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-nez v2, :cond_a0

    .line 4624
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4633
    :cond_a0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move v2, v5

    .line 4634
    goto/16 :goto_e

    .line 4635
    :cond_a6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_bb

    .line 4639
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 4640
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_bb

    .line 4641
    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 4646
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v1           #v:Landroid/view/View;
    :cond_bb
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_e

    .line 4655
    :cond_c1
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v2, :cond_d8

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_d8

    .line 4656
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v3, p0, v2, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_d8

    move v2, v5

    .line 4657
    goto/16 :goto_e

    .line 4659
    :cond_d8
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_e

    .line 4573
    :sswitch_data_de
    .sparse-switch
        0x17 -> :sswitch_2a
        0x42 -> :sswitch_58
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 27
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 5300
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    .line 5301
    .local v22, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 5302
    .local v15, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v23

    .line 5303
    .local v23, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 5308
    .local v16, heightSize:I
    sget-object v6, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 5309
    .local v6, boring:Landroid/text/BoringLayout$Metrics;
    sget-object v7, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 5311
    .local v7, hintBoring:Landroid/text/BoringLayout$Metrics;
    const/4 v10, -0x1

    .line 5312
    .local v10, des:I
    const/4 v13, 0x0

    .line 5314
    .local v13, fromexisting:Z
    const/high16 v3, 0x4000

    move/from16 v0, v22

    move v1, v3

    if-ne v0, v1, :cond_cd

    .line 5316
    move/from16 v21, v23

    .line 5400
    .local v21, width:I
    :cond_1f
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int v3, v21, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    sub-int v4, v3, v4

    .line 5401
    .local v4, want:I
    move/from16 v20, v4

    .line 5402
    .local v20, unpaddedWidth:I
    move v5, v4

    .line 5404
    .local v5, hintWant:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    move v3, v0

    if-eqz v3, :cond_37

    .line 5405
    const/16 v4, 0x4000

    .line 5407
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object v3, v0

    if-nez v3, :cond_21d

    move/from16 v18, v5

    .line 5409
    .local v18, hintWidth:I
    :goto_40
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    if-nez v3, :cond_22a

    .line 5410
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int v3, v21, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v8

    sub-int v8, v3, v8

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 5428
    :cond_59
    :goto_59
    const/high16 v3, 0x4000

    if-ne v15, v3, :cond_296

    .line 5430
    move/from16 v14, v16

    .line 5431
    .local v14, height:I
    const/4 v3, -0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 5443
    :cond_65
    :goto_65
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    sub-int v3, v14, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v4

    .end local v4           #want:I
    sub-int v19, v3, v4

    .line 5444
    .local v19, unpaddedHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaxMode:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move v4, v0

    if-le v3, v4, :cond_9e

    .line 5445
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move v4, v0

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    move/from16 v0, v19

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 5452
    :cond_9e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object v3, v0

    if-nez v3, :cond_c1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    move v0, v3

    move/from16 v1, v20

    if-gt v0, v1, :cond_c1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    move v0, v3

    move/from16 v1, v19

    if-le v0, v1, :cond_2ad

    .line 5455
    :cond_c1
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 5460
    :goto_c4
    move-object/from16 v0, p0

    move/from16 v1, v21

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    .line 5461
    return-void

    .line 5318
    .end local v5           #hintWant:I
    .end local v14           #height:I
    .end local v18           #hintWidth:I
    .end local v19           #unpaddedHeight:I
    .end local v20           #unpaddedWidth:I
    .end local v21           #width:I
    :cond_cd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    if-eqz v3, :cond_e4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v3, v0

    if-nez v3, :cond_e4

    .line 5319
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-static {v3}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v10

    .line 5322
    :cond_e4
    if-gez v10, :cond_1f3

    .line 5323
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    move-object v5, v0

    invoke-static {v3, v4, v5}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v6

    .line 5324
    if-eqz v6, :cond_100

    .line 5325
    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 5331
    :cond_100
    :goto_100
    if-eqz v6, :cond_106

    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v6, v3, :cond_1f6

    .line 5332
    :cond_106
    if-gez v10, :cond_11b

    .line 5333
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v4, v0

    invoke-static {v3, v4}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v10, v3

    .line 5336
    :cond_11b
    move/from16 v21, v10

    .line 5341
    .restart local v21       #width:I
    :goto_11d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object v12, v0

    .line 5342
    .local v12, dr:Landroid/widget/TextView$Drawables;
    if-eqz v12, :cond_136

    .line 5343
    iget v3, v12, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    move/from16 v0, v21

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 5344
    iget v3, v12, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    move/from16 v0, v21

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 5347
    :cond_136
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v3, v0

    if-eqz v3, :cond_19a

    .line 5348
    const/16 v17, -0x1

    .line 5351
    .local v17, hintDes:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object v3, v0

    if-eqz v3, :cond_156

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v3, v0

    if-nez v3, :cond_156

    .line 5352
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-static {v3}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v17

    .line 5355
    :cond_156
    if-gez v17, :cond_172

    .line 5356
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    move-object v5, v0

    invoke-static {v3, v4, v5}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v7

    .line 5357
    if-eqz v7, :cond_172

    .line 5358
    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 5362
    :cond_172
    if-eqz v7, :cond_178

    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v7, v3, :cond_1fd

    .line 5363
    :cond_178
    if-gez v17, :cond_190

    .line 5364
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v4, v0

    invoke-static {v3, v4}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    move v0, v3

    float-to-int v0, v0

    move/from16 v17, v0

    .line 5368
    :cond_190
    move/from16 v18, v17

    .line 5373
    .restart local v18       #hintWidth:I
    :goto_192
    move/from16 v0, v18

    move/from16 v1, v21

    if-le v0, v1, :cond_19a

    .line 5374
    move/from16 v21, v18

    .line 5378
    .end local v17           #hintDes:I
    .end local v18           #hintWidth:I
    :cond_19a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int v21, v21, v3

    .line 5380
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaxWidthMode:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_203

    .line 5381
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaxWidth:I

    move v3, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    mul-int/2addr v3, v4

    move/from16 v0, v21

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 5386
    :goto_1be
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMinWidthMode:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_210

    .line 5387
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMinWidth:I

    move v3, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    mul-int/2addr v3, v4

    move/from16 v0, v21

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 5393
    :goto_1d7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v21

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 5395
    const/high16 v3, -0x8000

    move/from16 v0, v22

    move v1, v3

    if-ne v0, v1, :cond_1f

    .line 5396
    move/from16 v0, v23

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    goto/16 :goto_1f

    .line 5328
    .end local v12           #dr:Landroid/widget/TextView$Drawables;
    .end local v21           #width:I
    :cond_1f3
    const/4 v13, 0x1

    goto/16 :goto_100

    .line 5338
    :cond_1f6
    move-object v0, v6

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v21, v0

    .restart local v21       #width:I
    goto/16 :goto_11d

    .line 5370
    .restart local v12       #dr:Landroid/widget/TextView$Drawables;
    .restart local v17       #hintDes:I
    :cond_1fd
    move-object v0, v7

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v18, v0

    .restart local v18       #hintWidth:I
    goto :goto_192

    .line 5383
    .end local v17           #hintDes:I
    .end local v18           #hintWidth:I
    :cond_203
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaxWidth:I

    move v3, v0

    move/from16 v0, v21

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    goto :goto_1be

    .line 5389
    :cond_210
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMinWidth:I

    move v3, v0

    move/from16 v0, v21

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    goto :goto_1d7

    .line 5407
    .end local v12           #dr:Landroid/widget/TextView$Drawables;
    .restart local v4       #want:I
    .restart local v5       #hintWant:I
    .restart local v20       #unpaddedWidth:I
    :cond_21d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    move/from16 v18, v3

    goto/16 :goto_40

    .line 5412
    .restart local v18       #hintWidth:I
    :cond_22a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    if-ne v3, v4, :cond_250

    move/from16 v0, v18

    move v1, v5

    if-ne v0, v1, :cond_250

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v8

    sub-int v8, v21, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    if-eq v3, v8, :cond_59

    .line 5415
    :cond_250
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v3, v0

    if-nez v3, :cond_282

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v3, v0

    if-nez v3, :cond_282

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    if-le v4, v3, :cond_282

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    instance-of v3, v3, Landroid/text/BoringLayout;

    if-nez v3, :cond_278

    if-eqz v13, :cond_282

    if-ltz v10, :cond_282

    if-gt v10, v4, :cond_282

    .line 5419
    :cond_278
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3, v4}, Landroid/text/Layout;->increaseWidthTo(I)V

    goto/16 :goto_59

    .line 5421
    :cond_282
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int v3, v21, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v8

    sub-int v8, v3, v8

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    goto/16 :goto_59

    .line 5433
    :cond_296
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v11

    .line 5435
    .local v11, desired:I
    move v14, v11

    .line 5436
    .restart local v14       #height:I
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 5438
    const/high16 v3, -0x8000

    if-ne v15, v3, :cond_65

    .line 5439
    move v0, v11

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto/16 :goto_65

    .line 5457
    .end local v4           #want:I
    .end local v11           #desired:I
    .restart local v19       #unpaddedHeight:I
    :cond_2ad
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->scrollTo(II)V

    goto/16 :goto_c4
.end method

.method public onPreDraw()Z
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3782
    iget v3, p0, Landroid/widget/TextView;->mPreDrawState:I

    if-eq v3, v5, :cond_8

    move v3, v5

    .line 3841
    :goto_7
    return v3

    .line 3786
    :cond_8
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v3, :cond_f

    .line 3787
    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 3790
    :cond_f
    const/4 v0, 0x0

    .line 3792
    .local v0, changed:Z
    const/4 v2, 0x0

    .line 3793
    .local v2, selectionController:Landroid/widget/TextView$SelectionModifierCursorController;
    iget-object v3, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v3, :cond_19

    .line 3794
    iget-object v2, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    .end local v2           #selectionController:Landroid/widget/TextView$SelectionModifierCursorController;
    check-cast v2, Landroid/widget/TextView$SelectionModifierCursorController;

    .line 3799
    .restart local v2       #selectionController:Landroid/widget/TextView$SelectionModifierCursorController;
    :cond_19
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v3, :cond_5d

    .line 3804
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 3805
    .local v1, curs:I
    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Landroid/widget/TextView$SelectionModifierCursorController;->isSelectionStartDragged()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 3806
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 3814
    :cond_2d
    if-gez v1, :cond_3d

    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x50

    if-ne v3, v4, :cond_3d

    .line 3816
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3819
    :cond_3d
    if-ltz v1, :cond_43

    .line 3820
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    move-result v0

    .line 3835
    .end local v1           #curs:I
    :cond_43
    :goto_43
    iget-boolean v3, p0, Landroid/widget/TextView;->mCreatedWithASelection:Z

    if-nez v3, :cond_51

    instance-of v3, p0, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v3, :cond_56

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 3836
    :cond_51
    invoke-direct {p0}, Landroid/widget/TextView;->startTextSelectionMode()V

    .line 3837
    iput-boolean v6, p0, Landroid/widget/TextView;->mCreatedWithASelection:Z

    .line 3840
    :cond_56
    const/4 v3, 0x2

    iput v3, p0, Landroid/widget/TextView;->mPreDrawState:I

    .line 3841
    if-nez v0, :cond_62

    move v3, v5

    goto :goto_7

    .line 3823
    :cond_5d
    invoke-direct {p0}, Landroid/widget/TextView;->bringTextIntoView()Z

    move-result v0

    goto :goto_43

    :cond_62
    move v3, v6

    .line 3841
    goto :goto_7
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4
    .parameter "action"
    .parameter "data"

    .prologue
    .line 5014
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 9
    .parameter "state"

    .prologue
    .line 2507
    instance-of v4, p1, Landroid/widget/TextView$SavedState;

    if-nez v4, :cond_8

    .line 2508
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2556
    :cond_7
    :goto_7
    return-void

    .line 2512
    :cond_8
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView$SavedState;

    move-object v3, v0

    .line 2513
    .local v3, ss:Landroid/widget/TextView$SavedState;
    invoke-virtual {v3}, Landroid/widget/TextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {p0, v4}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2516
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1c

    .line 2517
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2520
    :cond_1c
    iget v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    if-ltz v4, :cond_7d

    iget v4, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    if-ltz v4, :cond_7d

    .line 2521
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v4, v4, Landroid/text/Spannable;

    if-eqz v4, :cond_7d

    .line 2522
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 2524
    .local v1, len:I
    iget v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    if-gt v4, v1, :cond_38

    iget v4, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    if-le v4, v1, :cond_84

    .line 2525
    :cond_38
    const-string v2, ""

    .line 2527
    .local v2, restored:Ljava/lang/String;
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_40

    .line 2528
    const-string v2, "(restored) "

    .line 2531
    :cond_40
    const-string v4, "TextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saved cursor position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/widget/TextView$SavedState;->selStart:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " out of range for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "text "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2545
    .end local v1           #len:I
    .end local v2           #restored:Ljava/lang/String;
    :cond_7d
    :goto_7d
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    if-eqz v4, :cond_7

    .line 2546
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    goto :goto_7

    .line 2535
    .restart local v1       #len:I
    :cond_84
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spannable;

    iget v5, v3, Landroid/widget/TextView$SavedState;->selStart:I

    iget v6, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-static {v4, v5, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 2538
    iget-boolean v4, v3, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    if-eqz v4, :cond_7d

    .line 2539
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    goto :goto_7d
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 14

    .prologue
    .line 2444
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    .line 2447
    .local v9, superState:Landroid/os/Parcelable;
    iget-boolean v5, p0, Landroid/widget/TextView;->mFreezesText:Z

    .line 2448
    .local v5, save:Z
    const/4 v8, 0x0

    .line 2449
    .local v8, start:I
    const/4 v2, 0x0

    .line 2451
    .local v2, end:I
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v10, :cond_19

    .line 2452
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    .line 2453
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 2454
    if-gez v8, :cond_18

    if-ltz v2, :cond_19

    .line 2456
    :cond_18
    const/4 v5, 0x1

    .line 2460
    :cond_19
    if-eqz v5, :cond_6f

    .line 2461
    new-instance v7, Landroid/widget/TextView$SavedState;

    invoke-direct {v7, v9}, Landroid/widget/TextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2463
    .local v7, ss:Landroid/widget/TextView$SavedState;
    iput v8, v7, Landroid/widget/TextView$SavedState;->selStart:I

    .line 2464
    iput v2, v7, Landroid/widget/TextView$SavedState;->selEnd:I

    .line 2466
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v10, v10, Landroid/text/Spanned;

    if-eqz v10, :cond_66

    .line 2475
    new-instance v6, Landroid/text/SpannableString;

    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {v6, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2478
    .local v6, sp:Landroid/text/Spannable;
    const/4 v10, 0x0

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v11

    const-class v12, Landroid/widget/TextView$ChangeWatcher;

    invoke-interface {v6, v10, v11, v12}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/TextView$ChangeWatcher;

    .local v0, arr$:[Landroid/widget/TextView$ChangeWatcher;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_40
    if-ge v3, v4, :cond_4a

    aget-object v1, v0, v3

    .line 2479
    .local v1, cw:Landroid/widget/TextView$ChangeWatcher;
    invoke-interface {v6, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2478
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 2482
    .end local v1           #cw:Landroid/widget/TextView$ChangeWatcher;
    :cond_4a
    iput-object v6, v7, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    .line 2487
    .end local v0           #arr$:[Landroid/widget/TextView$ChangeWatcher;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #sp:Landroid/text/Spannable;
    :goto_4c
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_59

    if-ltz v8, :cond_59

    if-ltz v2, :cond_59

    .line 2488
    const/4 v10, 0x1

    iput-boolean v10, v7, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    .line 2491
    :cond_59
    iget-object v10, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    iput-object v10, v7, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    .line 2494
    iget-object v10, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v10, :cond_64

    .line 2495
    invoke-direct {p0}, Landroid/widget/TextView;->hideError()V

    :cond_64
    move-object v10, v7

    .line 2502
    .end local v7           #ss:Landroid/widget/TextView$SavedState;
    :goto_65
    return-object v10

    .line 2484
    .restart local v7       #ss:Landroid/widget/TextView$SavedState;
    :cond_66
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    goto :goto_4c

    .end local v7           #ss:Landroid/widget/TextView$SavedState;
    :cond_6f
    move-object v10, v9

    .line 2502
    goto :goto_65
.end method

.method protected onSelectionChanged(II)V
    .registers 3
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    .line 6340
    return-void
.end method

.method public onStartTemporaryDetach()V
    .registers 2

    .prologue
    .line 6655
    invoke-super {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 6658
    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 6659
    :cond_a
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 6330
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .registers 15
    .parameter "id"

    .prologue
    .line 7755
    const/4 v4, 0x0

    .line 7756
    .local v4, min:I
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 7758
    .local v3, max:I
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_27

    .line 7759
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 7760
    .local v7, selStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    .line 7762
    .local v6, selEnd:I
    const/4 v10, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 7763
    const/4 v10, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 7766
    .end local v6           #selEnd:I
    .end local v7           #selStart:I
    :cond_27
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "clipboard"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 7769
    .local v0, clip:Landroid/text/ClipboardManager;
    sparse-switch p1, :sswitch_data_162

    .line 7873
    const/4 v10, 0x0

    .end local p0
    .end local p1
    :goto_37
    return v10

    .line 7771
    .restart local p0
    .restart local p1
    :sswitch_38
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p1
    check-cast p1, Landroid/text/Spannable;

    const/4 v10, 0x0

    iget-object v11, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-static {p1, v10, v11}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 7772
    invoke-direct {p0}, Landroid/widget/TextView;->startTextSelectionMode()V

    .line 7773
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$CursorController;

    move-result-object v10

    invoke-interface {v10}, Landroid/widget/TextView$CursorController;->show()V

    .line 7775
    iget-boolean v10, p0, Landroid/widget/TextView;->mIsCursorControllerOn:Z

    if-eqz v10, :cond_84

    .line 7776
    iget-object v10, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    if-nez v10, :cond_76

    .line 7777
    new-instance v10, Landroid/widget/TextView$CursorControllerMenu;

    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v10, p0, v11, p0}, Landroid/widget/TextView$CursorControllerMenu;-><init>(Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/TextView;)V

    iput-object v10, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    .line 7778
    iget-object v10, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget v12, p0, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView$CursorControllerMenu;->setCursorControllerHeight(I)V

    .line 7780
    :cond_76
    iget-object v10, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/TextView$CursorControllerMenu;->setLife(Z)V

    .line 7781
    iget-object v10, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v10}, Landroid/widget/TextView$CursorControllerMenu;->showCursorControllerMenu()V

    .line 7782
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/TextView;->mLockCursorControllerMenu:Z

    .line 7785
    :cond_84
    const/4 v10, 0x1

    goto :goto_37

    .line 7788
    .restart local p1
    :sswitch_86
    invoke-direct {p0}, Landroid/widget/TextView;->startTextSelectionMode()V

    .line 7789
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$CursorController;

    move-result-object v10

    invoke-interface {v10}, Landroid/widget/TextView$CursorController;->show()V

    .line 7791
    iget-boolean v10, p0, Landroid/widget/TextView;->mIsCursorControllerOn:Z

    if-eqz v10, :cond_c4

    .line 7792
    iget-object v10, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    if-nez v10, :cond_b6

    .line 7793
    new-instance v10, Landroid/widget/TextView$CursorControllerMenu;

    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v10, p0, v11, p0}, Landroid/widget/TextView$CursorControllerMenu;-><init>(Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/TextView;)V

    iput-object v10, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    .line 7794
    iget-object v10, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget v12, p0, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView$CursorControllerMenu;->setCursorControllerHeight(I)V

    .line 7796
    :cond_b6
    iget-object v10, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/TextView$CursorControllerMenu;->setLife(Z)V

    .line 7797
    iget-object v10, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v10}, Landroid/widget/TextView$CursorControllerMenu;->showCursorControllerMenu()V

    .line 7798
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/TextView;->mLockCursorControllerMenu:Z

    .line 7801
    :cond_c4
    const/4 v10, 0x1

    goto/16 :goto_37

    .line 7804
    :sswitch_c7
    iget-object v10, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v10, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 7805
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p1
    check-cast p1, Landroid/text/Editable;

    invoke-interface {p1, v4, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 7806
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 7807
    const/4 v10, 0x1

    goto/16 :goto_37

    .line 7810
    .restart local p1
    :sswitch_dd
    iget-object v10, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v10, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 7811
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 7812
    const/4 v10, 0x1

    goto/16 :goto_37

    .line 7816
    :sswitch_ec
    invoke-direct {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v10

    if-nez v10, :cond_f5

    .line 7817
    const/4 v10, 0x1

    goto/16 :goto_37

    .line 7821
    :cond_f5
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 7824
    .local v5, paste:Ljava/lang/CharSequence;
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->customPrepareSpacesAroundPaste(Ljava/lang/CharSequence;)V

    .line 7836
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    .line 7837
    iget-object v10, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v10, :cond_10c

    iget-boolean v10, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    if-nez v10, :cond_10c

    .line 7838
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 7841
    :cond_10c
    const/4 v10, 0x1

    goto/16 :goto_37

    .line 7844
    .end local v5           #paste:Ljava/lang/CharSequence;
    :sswitch_10f
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Spanned;

    const-class v10, Landroid/text/style/URLSpan;

    invoke-interface {p0, v4, v3, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/URLSpan;

    .line 7845
    .local v8, urls:[Landroid/text/style/URLSpan;
    array-length v10, v8

    const/4 v11, 0x1

    if-ne v10, v11, :cond_129

    .line 7846
    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v10}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 7848
    :cond_129
    const/4 v10, 0x1

    goto/16 :goto_37

    .line 7851
    .end local v8           #urls:[Landroid/text/style/URLSpan;
    .restart local p0
    :sswitch_12c
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 7852
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_135

    .line 7853
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 7855
    :cond_135
    const/4 v10, 0x1

    goto/16 :goto_37

    .line 7858
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    :sswitch_138
    invoke-direct {p0}, Landroid/widget/TextView;->getWordForDictionary()Ljava/lang/String;

    move-result-object v9

    .line 7859
    .local v9, word:Ljava/lang/String;
    if-eqz v9, :cond_15c

    .line 7860
    new-instance v1, Landroid/content/Intent;

    const-string v10, "com.android.settings.USER_DICTIONARY_INSERT"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7861
    .local v1, i:Landroid/content/Intent;
    const-string/jumbo v10, "word"

    invoke-virtual {v1, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7862
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v10

    const/high16 v11, 0x1000

    or-int/2addr v10, v11

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7863
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 7865
    .end local v1           #i:Landroid/content/Intent;
    :cond_15c
    const/4 v10, 0x1

    goto/16 :goto_37

    .line 7869
    .end local v9           #word:Ljava/lang/String;
    :sswitch_15f
    const/4 v10, 0x1

    goto/16 :goto_37

    .line 7769
    :sswitch_data_162
    .sparse-switch
        0x102001f -> :sswitch_38
        0x1020020 -> :sswitch_c7
        0x1020021 -> :sswitch_dd
        0x1020022 -> :sswitch_ec
        0x1020023 -> :sswitch_10f
        0x1020024 -> :sswitch_12c
        0x1020028 -> :sswitch_86
        0x102002a -> :sswitch_138
        0x102018b -> :sswitch_15f
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "event"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 6953
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 6956
    .local v0, action:I
    iput-boolean v11, p0, Landroid/widget/TextView;->mLockCursorControllerMenu:Z

    .line 6959
    invoke-virtual {p0}, Landroid/widget/TextView;->hasInsertionController()Z

    move-result v9

    if-eqz v9, :cond_15

    .line 6960
    invoke-virtual {p0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$CursorController;

    move-result-object v9

    invoke-interface {v9, p1}, Landroid/widget/TextView$CursorController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6962
    :cond_15
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v9

    if-eqz v9, :cond_22

    .line 6963
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$CursorController;

    move-result-object v9

    invoke-interface {v9, p1}, Landroid/widget/TextView$CursorController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6966
    :cond_22
    if-nez v0, :cond_28

    .line 6969
    iput-boolean v11, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    .line 6970
    iput-boolean v11, p0, Landroid/widget/TextView;->mScrolled:Z

    .line 6973
    :cond_28
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 6980
    .local v8, result:Z
    iget-boolean v9, p0, Landroid/widget/TextView;->mEatTouchRelease:Z

    if-eqz v9, :cond_3c

    if-ne v0, v12, :cond_3c

    .line 6981
    iput-boolean v11, p0, Landroid/widget/TextView;->mEatTouchRelease:Z

    .line 7044
    :cond_34
    :goto_34
    if-eq v0, v12, :cond_39

    const/4 v9, 0x3

    if-ne v0, v9, :cond_3b

    .line 7045
    :cond_39
    iput-boolean v11, p0, Landroid/widget/TextView;->mNoContextMenuOnUp:Z

    .line 7048
    :cond_3b
    return v8

    .line 6982
    :cond_3c
    iget-object v9, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v9, :cond_46

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v9

    if-eqz v9, :cond_34

    :cond_46
    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v9, v9, Landroid/text/Spannable;

    if-eqz v9, :cond_34

    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v9, :cond_34

    .line 6984
    const/4 v2, 0x0

    .line 6987
    .local v2, handled:Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 6988
    .local v7, oldSelStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    .line 6990
    .local v6, oldSelEnd:I
    iget v4, p0, Landroid/view/View;->mScrollX:I

    .line 6991
    .local v4, oldScrollX:I
    iget v5, p0, Landroid/view/View;->mScrollY:I

    .line 6993
    .local v5, oldScrollY:I
    iget-object v9, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v9, :cond_6c

    .line 6994
    iget-object v10, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v9, Landroid/text/Spannable;

    invoke-interface {v10, p0, v9, p1}, Landroid/text/method/MovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v9

    or-int/2addr v2, v9

    .line 6997
    :cond_6c
    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v9

    if-eqz v9, :cond_df

    .line 6998
    iget v9, p0, Landroid/view/View;->mScrollX:I

    if-ne v9, v4, :cond_7a

    iget v9, p0, Landroid/view/View;->mScrollY:I

    if-eq v9, v5, :cond_91

    .line 7000
    :cond_7a
    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    .line 7002
    invoke-virtual {p0}, Landroid/widget/TextView;->hideCursorControllerMenu()V

    .line 7005
    iget-object v9, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v9, :cond_91

    iget-object v9, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v9}, Landroid/widget/TextView$CursorController;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_91

    .line 7007
    iget-object v9, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v9}, Landroid/widget/TextView$CursorController;->updatePosition()V

    .line 7010
    :cond_91
    if-ne v0, v12, :cond_df

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v9

    if-eqz v9, :cond_df

    iget-boolean v9, p0, Landroid/widget/TextView;->mScrolled:Z

    if-nez v9, :cond_df

    .line 7011
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "input_method"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 7014
    .local v3, imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    .line 7015
    .local v1, csr:Landroid/widget/TextView$CommitSelectionReceiver;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    if-ne v9, v7, :cond_bc

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v9

    if-ne v9, v6, :cond_bc

    invoke-virtual {p0}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v9

    if-eqz v9, :cond_c1

    .line 7017
    :cond_bc
    new-instance v1, Landroid/widget/TextView$CommitSelectionReceiver;

    .end local v1           #csr:Landroid/widget/TextView$CommitSelectionReceiver;
    invoke-direct {v1, p0, v7, v6}, Landroid/widget/TextView$CommitSelectionReceiver;-><init>(Landroid/widget/TextView;II)V

    .line 7023
    .restart local v1       #csr:Landroid/widget/TextView$CommitSelectionReceiver;
    :cond_c1
    iget-boolean v9, p0, Landroid/widget/TextView;->mByPassInputType:Z

    if-nez v9, :cond_cb

    .line 7024
    const/4 v9, 0x0

    invoke-virtual {v3, p0, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v9

    or-int/2addr v2, v9

    .line 7031
    :cond_cb
    invoke-direct {p0, v7, v6}, Landroid/widget/TextView;->onTapUpEvent(II)V

    .line 7034
    iget-object v9, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    if-eqz v9, :cond_df

    iget-object v9, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v9}, Landroid/widget/TextView$CursorControllerMenu;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_df

    .line 7035
    iget-object v9, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v9}, Landroid/widget/TextView$CursorControllerMenu;->showCursorControllerMenu()V

    .line 7041
    .end local v1           #csr:Landroid/widget/TextView$CommitSelectionReceiver;
    .end local v3           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_df
    if-eqz v2, :cond_34

    const/4 v8, 0x1

    goto/16 :goto_34
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 7102
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1c

    .line 7104
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 7105
    const/4 v0, 0x1

    .line 7109
    :goto_1b
    return v0

    :cond_1c
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1b
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 6852
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 6853
    if-eqz p2, :cond_8

    .line 6854
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 6856
    :cond_8
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .parameter "hasWindowFocus"

    .prologue
    .line 6813
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 6815
    if-eqz p1, :cond_21

    .line 6816
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v0, :cond_1d

    .line 6817
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0}, Landroid/widget/TextView$Blink;->uncancel()V

    .line 6819
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 6820
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/TextView;->mShowCursor:J

    .line 6821
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 6847
    :cond_1d
    :goto_1d
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    .line 6848
    return-void

    .line 6825
    :cond_21
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v0, :cond_2a

    .line 6826
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0}, Landroid/widget/TextView$Blink;->cancel()V

    .line 6829
    :cond_2a
    invoke-virtual {p0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 6830
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_36

    .line 6831
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/TextView$InputContentType;->enterDown:Z

    .line 6833
    :cond_36
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 6837
    iget v0, p0, Landroid/widget/TextView;->mContextMenuTitleId:I

    const v1, 0x104040d

    if-ne v0, v1, :cond_1d

    .line 6838
    sget-object v0, Landroid/widget/TextView;->mContextMenu:Landroid/view/ContextMenu;

    if-eqz v0, :cond_1d

    .line 6839
    sget-object v0, Landroid/widget/TextView;->mContextMenu:Landroid/view/ContextMenu;

    invoke-interface {v0}, Landroid/view/ContextMenu;->close()V

    .line 6840
    const/4 v0, 0x0

    sput-object v0, Landroid/widget/TextView;->mContextMenu:Landroid/view/ContextMenu;

    goto :goto_1d
.end method

.method public performLongClick()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 7922
    iget-boolean v0, p0, Landroid/widget/TextView;->mEnableSelection:Z

    if-nez v0, :cond_12

    .line 7923
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 7924
    iput-boolean v1, p0, Landroid/widget/TextView;->mEatTouchRelease:Z

    move v0, v1

    .line 7934
    :goto_f
    return v0

    :cond_10
    move v0, v2

    .line 7927
    goto :goto_f

    .line 7930
    :cond_12
    invoke-direct {p0}, Landroid/widget/TextView;->startTextSelectionMode()V

    .line 7931
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$CursorController;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/TextView$CursorController;->show()V

    .line 7932
    iget-object v0, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v0}, Landroid/widget/TextView$CursorControllerMenu;->showCursorControllerMenu()V

    .line 7933
    iput-boolean v1, p0, Landroid/widget/TextView;->mEatTouchRelease:Z

    move v0, v2

    .line 7934
    goto :goto_f
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .registers 4
    .parameter "watcher"

    .prologue
    .line 6365
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_11

    .line 6366
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 6368
    .local v0, i:I
    if-ltz v0, :cond_11

    .line 6369
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6372
    .end local v0           #i:I
    :cond_11
    return-void
.end method

.method reportExtractedText()Z
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 4799
    iget-object v8, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 4800
    .local v8, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v8, :cond_40

    .line 4801
    iget-boolean v6, v8, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    .line 4802
    .local v6, contentChanged:Z
    if-nez v6, :cond_d

    iget-boolean v0, v8, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_40

    .line 4803
    :cond_d
    iput-boolean v9, v8, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    .line 4804
    iput-boolean v9, v8, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    .line 4805
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    iget-object v1, v0, Landroid/widget/TextView$InputMethodState;->mExtracting:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 4806
    .local v1, req:Landroid/view/inputmethod/ExtractedTextRequest;
    if-eqz v1, :cond_40

    .line 4807
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    .line 4808
    .local v7, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v7, :cond_40

    .line 4812
    iget v0, v8, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-gez v0, :cond_26

    if-nez v6, :cond_26

    .line 4813
    const/4 v0, -0x2

    iput v0, v8, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 4815
    :cond_26
    iget v2, v8, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    iget v3, v8, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    iget v4, v8, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    iget-object v5, v8, Landroid/widget/TextView$InputMethodState;->mTmpExtracted:Landroid/view/inputmethod/ExtractedText;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 4821
    iget v0, v1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    iget-object v2, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    iget-object v2, v2, Landroid/widget/TextView$InputMethodState;->mTmpExtracted:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v7, p0, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 4823
    const/4 v0, 0x1

    .line 4829
    .end local v1           #req:Landroid/view/inputmethod/ExtractedTextRequest;
    .end local v6           #contentChanged:Z
    .end local v7           #imm:Landroid/view/inputmethod/InputMethodManager;
    :goto_3f
    return v0

    :cond_40
    move v0, v9

    goto :goto_3f
.end method

.method sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .parameter "beforeText"
    .parameter "fromIndex"
    .parameter "removedCount"
    .parameter "addedCount"

    .prologue
    .line 7575
    const/16 v1, 0x10

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 7577
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 7578
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 7579
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 7580
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 7581
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 7582
    return-void
.end method

.method sendAfterTextChanged(Landroid/text/Editable;)V
    .registers 6
    .parameter "text"

    .prologue
    .line 6405
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_19

    .line 6406
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 6407
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6408
    .local v0, count:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_19

    .line 6409
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/TextWatcher;

    invoke-interface {p0, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 6408
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 6412
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_19
    return-void
.end method

.method sendOnTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 6391
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_19

    .line 6392
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 6393
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6394
    .local v0, count:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_19

    .line 6395
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/TextWatcher;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 6394
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 6398
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_19
    return-void
.end method

.method public final setAutoLinkMask(I)V
    .registers 2
    .parameter "mask"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1905
    iput p1, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    .line 1906
    return-void
.end method

.method public setByPassInputType(Z)V
    .registers 2
    .parameter "byPass"

    .prologue
    .line 9855
    iput-boolean p1, p0, Landroid/widget/TextView;->mByPassInputType:Z

    .line 9856
    return-void
.end method

.method public setCompoundDrawablePadding(I)V
    .registers 3
    .parameter "pad"

    .prologue
    .line 1598
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1599
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-nez p1, :cond_f

    .line 1600
    if-eqz v0, :cond_8

    .line 1601
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    .line 1610
    :cond_8
    :goto_8
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1611
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 1612
    return-void

    .line 1604
    :cond_f
    if-nez v0, :cond_18

    .line 1605
    new-instance v0, Landroid/widget/TextView$Drawables;

    .end local v0           #dr:Landroid/widget/TextView$Drawables;
    invoke-direct {v0, p0}, Landroid/widget/TextView$Drawables;-><init>(Landroid/widget/TextView;)V

    .restart local v0       #dr:Landroid/widget/TextView$Drawables;
    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1607
    :cond_18
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    goto :goto_8
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 12
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1422
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1424
    .local v1, dr:Landroid/widget/TextView$Drawables;
    if-nez p1, :cond_c

    if-nez p2, :cond_c

    if-nez p3, :cond_c

    if-eqz p4, :cond_1f

    :cond_c
    const/4 v4, 0x1

    move v2, v4

    .line 1427
    .local v2, drawables:Z
    :goto_e
    if-nez v2, :cond_5e

    .line 1429
    if-eqz v1, :cond_18

    .line 1430
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v4, :cond_21

    .line 1431
    iput-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1520
    :cond_18
    :goto_18
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1521
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 1522
    return-void

    .end local v2           #drawables:Z
    :cond_1f
    move v2, v6

    .line 1424
    goto :goto_e

    .line 1435
    .restart local v2       #drawables:Z
    :cond_21
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2a

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1436
    :cond_2a
    iput-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 1437
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_35

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1438
    :cond_35
    iput-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 1439
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_40

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1440
    :cond_40
    iput-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 1441
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4b

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1442
    :cond_4b
    iput-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 1443
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 1444
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 1445
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 1446
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto :goto_18

    .line 1450
    :cond_5e
    if-nez v1, :cond_67

    .line 1451
    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1           #dr:Landroid/widget/TextView$Drawables;
    invoke-direct {v1, p0}, Landroid/widget/TextView$Drawables;-><init>(Landroid/widget/TextView;)V

    .restart local v1       #dr:Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1454
    :cond_67
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eq v4, p1, :cond_74

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_74

    .line 1455
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1457
    :cond_74
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 1459
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq v4, p2, :cond_83

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_83

    .line 1460
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1462
    :cond_83
    iput-object p2, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 1464
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eq v4, p3, :cond_92

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_92

    .line 1465
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1467
    :cond_92
    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 1469
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eq v4, p4, :cond_a1

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_a1

    .line 1470
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1472
    :cond_a1
    iput-object p4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 1474
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 1477
    .local v0, compoundRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    .line 1479
    .local v3, state:[I
    if-eqz p1, :cond_107

    .line 1480
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1481
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1482
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1483
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 1484
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 1489
    :goto_c0
    if-eqz p3, :cond_10c

    .line 1490
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1491
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1492
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1493
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 1494
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 1499
    :goto_d7
    if-eqz p2, :cond_111

    .line 1500
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1501
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1502
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1503
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 1504
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    .line 1509
    :goto_ee
    if-eqz p4, :cond_116

    .line 1510
    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1511
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1512
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1513
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 1514
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto/16 :goto_18

    .line 1486
    :cond_107
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    goto :goto_c0

    .line 1496
    :cond_10c
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    goto :goto_d7

    .line 1506
    :cond_111
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    goto :goto_ee

    .line 1516
    :cond_116
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_18
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .registers 10
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    .line 1541
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1542
    .local v0, resources:Landroid/content/res/Resources;
    if-eqz p1, :cond_25

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_f
    if-eqz p2, :cond_27

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_15
    if-eqz p3, :cond_29

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_1b
    if-eqz p4, :cond_21

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_21
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1546
    return-void

    :cond_25
    move-object v1, v4

    .line 1542
    goto :goto_f

    :cond_27
    move-object v2, v4

    goto :goto_15

    :cond_29
    move-object v3, v4

    goto :goto_1b
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 8
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v2, 0x0

    .line 1562
    if-eqz p1, :cond_e

    .line 1563
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1565
    :cond_e
    if-eqz p3, :cond_1b

    .line 1566
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1568
    :cond_1b
    if-eqz p2, :cond_28

    .line 1569
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1571
    :cond_28
    if-eqz p4, :cond_35

    .line 1572
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1574
    :cond_35
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1575
    return-void
.end method

.method public setContextMenuTitleId(I)V
    .registers 2
    .parameter "titleId"

    .prologue
    .line 2625
    iput p1, p0, Landroid/widget/TextView;->mContextMenuTitleId:I

    .line 2626
    return-void
.end method

.method public setCursorVisible(Z)V
    .registers 4
    .parameter "visible"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 6117
    iput-boolean p1, p0, Landroid/widget/TextView;->mCursorVisible:Z

    .line 6118
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 6120
    if-eqz p1, :cond_16

    .line 6121
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 6127
    :cond_a
    :goto_a
    if-nez p1, :cond_12

    .line 6128
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 6129
    invoke-virtual {p0}, Landroid/widget/TextView;->hideCursorControllerMenu()V

    .line 6134
    :cond_12
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 6135
    return-void

    .line 6122
    :cond_16
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v0, :cond_a

    .line 6123
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_a
.end method

.method protected setEditTextMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 9060
    sparse-switch p1, :sswitch_data_c

    .line 9072
    :goto_3
    return-void

    .line 9062
    :sswitch_4
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    goto :goto_3

    .line 9066
    :sswitch_8
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    goto :goto_3

    .line 9060
    :sswitch_data_c
    .sparse-switch
        0xb -> :sswitch_4
        0x16 -> :sswitch_8
    .end sparse-switch
.end method

.method public final setEditableFactory(Landroid/text/Editable$Factory;)V
    .registers 3
    .parameter "factory"

    .prologue
    .line 2594
    iput-object p1, p0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    .line 2595
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2596
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .registers 3
    .parameter "where"

    .prologue
    .line 6067
    iput-object p1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 6069
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_f

    .line 6070
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 6071
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 6072
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 6074
    :cond_f
    return-void
.end method

.method public setEms(I)V
    .registers 3
    .parameter "ems"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2258
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 2259
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 2261
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2262
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2263
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .registers 6
    .parameter "error"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3365
    if-nez p1, :cond_8

    .line 3366
    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 3375
    :goto_7
    return-void

    .line 3368
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10801f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3372
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3373
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_7
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .registers 8
    .parameter "error"
    .parameter "icon"

    .prologue
    const/4 v4, 0x0

    .line 3387
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 3389
    iput-object p1, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    .line 3390
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    .line 3391
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 3392
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_2d

    .line 3393
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v2, p2, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3399
    :goto_17
    if-nez p1, :cond_31

    .line 3400
    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-eqz v1, :cond_2c

    .line 3401
    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 3402
    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->dismiss()V

    .line 3405
    :cond_2a
    iput-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    .line 3412
    :cond_2c
    :goto_2c
    return-void

    .line 3396
    :cond_2d
    invoke-virtual {p0, v4, v4, p2, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_17

    .line 3408
    :cond_31
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 3409
    invoke-direct {p0}, Landroid/widget/TextView;->showError()V

    goto :goto_2c
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .registers 10
    .parameter "text"

    .prologue
    const/4 v7, 0x0

    .line 4851
    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 4852
    .local v1, content:Landroid/text/Editable;
    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v5, :cond_12

    .line 4853
    if-nez v1, :cond_33

    .line 4854
    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    sget-object v6, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4873
    :cond_12
    :goto_12
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    .line 4874
    .local v3, sp:Landroid/text/Spannable;
    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 4875
    .local v0, N:I
    iget v4, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 4876
    .local v4, start:I
    if-gez v4, :cond_5f

    const/4 v4, 0x0

    .line 4878
    :cond_21
    :goto_21
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 4879
    .local v2, end:I
    if-gez v2, :cond_63

    const/4 v2, 0x0

    .line 4881
    :cond_26
    :goto_26
    invoke-static {v3, v4, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 4884
    iget v5, p1, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_67

    .line 4885
    invoke-static {p0, v3}, Landroid/text/method/MetaKeyKeyListener;->startSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    .line 4889
    :goto_32
    return-void

    .line 4855
    .end local v0           #N:I
    .end local v2           #end:I
    .end local v3           #sp:Landroid/text/Spannable;
    .end local v4           #start:I
    :cond_33
    iget v5, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    if-gez v5, :cond_48

    .line 4856
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-static {v1, v7, v5}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    .line 4857
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    iget-object v6, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1, v7, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_12

    .line 4859
    :cond_48
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 4860
    .restart local v0       #N:I
    iget v4, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 4861
    .restart local v4       #start:I
    if-le v4, v0, :cond_51

    move v4, v0

    .line 4862
    :cond_51
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 4863
    .restart local v2       #end:I
    if-le v2, v0, :cond_56

    move v2, v0

    .line 4864
    :cond_56
    invoke-static {v1, v4, v2}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    .line 4865
    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1, v4, v2, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_12

    .line 4877
    .end local v2           #end:I
    .restart local v3       #sp:Landroid/text/Spannable;
    :cond_5f
    if-le v4, v0, :cond_21

    move v4, v0

    goto :goto_21

    .line 4880
    .restart local v2       #end:I
    :cond_63
    if-le v2, v0, :cond_26

    move v2, v0

    goto :goto_26

    .line 4887
    :cond_67
    invoke-static {p0, v3}, Landroid/text/method/MetaKeyKeyListener;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    goto :goto_32
.end method

.method public setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V
    .registers 3
    .parameter "req"

    .prologue
    .line 4895
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    if-eqz v0, :cond_8

    .line 4896
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    iput-object p1, v0, Landroid/widget/TextView$InputMethodState;->mExtracting:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 4898
    :cond_8
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 4899
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .registers 3
    .parameter "filters"

    .prologue
    .line 3582
    if-nez p1, :cond_8

    .line 3583
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 3586
    :cond_8
    iput-object p1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    .line 3588
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_17

    .line 3589
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, v0, p1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 3591
    :cond_17
    return-void
.end method

.method protected setFrame(IIII)Z
    .registers 13
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 3554
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v6

    .line 3556
    .local v6, result:Z
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-eqz v0, :cond_31

    .line 3557
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/TextView$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 3558
    .local v7, tv:Landroid/widget/TextView;
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    iget-object v1, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1, v7}, Landroid/widget/TextView;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 3559
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorX()I

    move-result v2

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorY()I

    move-result v3

    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->getWidth()I

    move-result v4

    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->getHeight()I

    move-result v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView$ErrorPopup;->update(Landroid/view/View;IIII)V

    .line 3563
    .end local v7           #tv:Landroid/widget/TextView;
    :cond_31
    invoke-direct {p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    .line 3565
    return v6
.end method

.method public setFreezesText(Z)V
    .registers 2
    .parameter "freezesText"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2573
    iput-boolean p1, p0, Landroid/widget/TextView;->mFreezesText:Z

    .line 2574
    return-void
.end method

.method public setGravity(I)V
    .registers 10
    .parameter "gravity"

    .prologue
    .line 2026
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_6

    .line 2027
    or-int/lit8 p1, p1, 0x3

    .line 2029
    :cond_6
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_c

    .line 2030
    or-int/lit8 p1, p1, 0x30

    .line 2033
    :cond_c
    const/4 v7, 0x0

    .line 2035
    .local v7, newLayout:Z
    and-int/lit8 v0, p1, 0x7

    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v3, v3, 0x7

    if-eq v0, v3, :cond_16

    .line 2037
    const/4 v7, 0x1

    .line 2040
    :cond_16
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    if-eq p1, v0, :cond_1d

    .line 2041
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2044
    :cond_1d
    iput p1, p0, Landroid/widget/TextView;->mGravity:I

    .line 2046
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_4a

    if-eqz v7, :cond_4a

    .line 2048
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    .line 2049
    .local v1, want:I
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_4b

    const/4 v0, 0x0

    move v2, v0

    .line 2051
    .local v2, hintWant:I
    :goto_31
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v0, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 2055
    .end local v1           #want:I
    .end local v2           #hintWant:I
    :cond_4a
    return-void

    .line 2049
    .restart local v1       #want:I
    :cond_4b
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    move v2, v0

    goto :goto_31
.end method

.method public setHeight(I)V
    .registers 3
    .parameter "pixels"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2188
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 2189
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 2191
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2192
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2193
    return-void
.end method

.method public setHighlightColor(I)V
    .registers 3
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1863
    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    if-eq v0, p1, :cond_9

    .line 1864
    iput p1, p0, Landroid/widget/TextView;->mHighlightColor:I

    .line 1865
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1867
    :cond_9
    return-void
.end method

.method public final setHint(I)V
    .registers 3
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2958
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 2959
    return-void
.end method

.method public final setHint(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "hint"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2939
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    .line 2941
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_d

    .line 2942
    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 2945
    :cond_d
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_18

    .line 2946
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2948
    :cond_18
    return-void
.end method

.method public final setHintTextColor(I)V
    .registers 3
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1955
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 1956
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 1957
    return-void
.end method

.method public final setHintTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2
    .parameter "colors"

    .prologue
    .line 1965
    iput-object p1, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 1966
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 1967
    return-void
.end method

.method public setHorizontallyScrolling(Z)V
    .registers 3
    .parameter "whether"

    .prologue
    .line 2100
    iput-boolean p1, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    .line 2102
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_f

    .line 2103
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2104
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2105
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2107
    :cond_f
    return-void
.end method

.method public setIMEChangable(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 263
    iput-boolean p1, p0, Landroid/widget/TextView;->mIsIMEChangable:Z

    .line 264
    return-void
.end method

.method public setImeActionLabel(Ljava/lang/CharSequence;I)V
    .registers 4
    .parameter "label"
    .parameter "actionId"

    .prologue
    .line 3167
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_b

    .line 3168
    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3170
    :cond_b
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-object p1, v0, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    .line 3171
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput p2, v0, Landroid/widget/TextView$InputContentType;->imeActionId:I

    .line 3172
    return-void
.end method

.method public setImeOptions(I)V
    .registers 3
    .parameter "imeOptions"

    .prologue
    .line 3139
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_b

    .line 3140
    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3142
    :cond_b
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput p1, v0, Landroid/widget/TextView$InputContentType;->imeOptions:I

    .line 3143
    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .registers 3
    .parameter "includepad"

    .prologue
    .line 5287
    iput-boolean p1, p0, Landroid/widget/TextView;->mIncludePad:Z

    .line 5289
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_f

    .line 5290
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 5291
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 5292
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 5294
    :cond_f
    return-void
.end method

.method public setInputExtras(I)V
    .registers 5
    .parameter "xmlResId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3318
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 3319
    .local v0, parser:Landroid/content/res/XmlResourceParser;
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v1, :cond_13

    new-instance v1, Landroid/widget/TextView$InputContentType;

    invoke-direct {v1, p0}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3320
    :cond_13
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    .line 3321
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    .line 3322
    return-void
.end method

.method public setInputType(I)V
    .registers 13
    .parameter "type"

    .prologue
    const/4 v8, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2986
    iget v7, p0, Landroid/widget/TextView;->mInputType:I

    invoke-direct {p0, v7}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v5

    .line 2987
    .local v5, wasPassword:Z
    iget v7, p0, Landroid/widget/TextView;->mInputType:I

    invoke-direct {p0, v7}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v6

    .line 2988
    .local v6, wasVisiblePassword:Z
    invoke-direct {p0, p1, v9}, Landroid/widget/TextView;->setInputType(IZ)V

    .line 2989
    invoke-direct {p0, p1}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v2

    .line 2990
    .local v2, isPassword:Z
    invoke-direct {p0, p1}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v3

    .line 2991
    .local v3, isVisiblePassword:Z
    const/4 v0, 0x0

    .line 2992
    .local v0, forceUpdate:Z
    if-eqz v2, :cond_50

    .line 2993
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 2994
    invoke-direct {p0, v10, v9}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    .line 3009
    :cond_27
    :goto_27
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 3010
    invoke-virtual {p0}, Landroid/widget/TextView;->hideCursorControllerMenu()V

    .line 3013
    const v7, 0x2000f

    and-int/2addr v7, p1

    const v8, 0x20001

    if-ne v7, v8, :cond_70

    move v4, v10

    .line 3020
    .local v4, multiLine:Z
    :goto_37
    iget-boolean v7, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eq v7, v4, :cond_3d

    if-eqz v0, :cond_46

    .line 3023
    :cond_3d
    if-nez v4, :cond_72

    move v7, v10

    :goto_40
    if-nez v2, :cond_74

    move v8, v10

    :goto_43
    invoke-direct {p0, v7, v8}, Landroid/widget/TextView;->applySingleLine(ZZ)V

    .line 3026
    :cond_46
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 3027
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_4f

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 3028
    :cond_4f
    return-void

    .line 2995
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v4           #multiLine:Z
    :cond_50
    if-eqz v3, :cond_5f

    .line 2996
    iget-object v7, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v8

    if-ne v7, v8, :cond_5b

    .line 2997
    const/4 v0, 0x1

    .line 2999
    :cond_5b
    invoke-direct {p0, v10, v9}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    goto :goto_27

    .line 3000
    :cond_5f
    if-nez v5, :cond_63

    if-eqz v6, :cond_27

    .line 3002
    :cond_63
    invoke-direct {p0, v8, v8}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    .line 3003
    iget-object v7, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v8

    if-ne v7, v8, :cond_27

    .line 3004
    const/4 v0, 0x1

    goto :goto_27

    :cond_70
    move v4, v9

    .line 3013
    goto :goto_37

    .restart local v4       #multiLine:Z
    :cond_72
    move v7, v9

    .line 3023
    goto :goto_40

    :cond_74
    move v8, v9

    goto :goto_43
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .registers 6
    .parameter "input"

    .prologue
    const/4 v3, 0x1

    .line 1147
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    .line 1148
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    .line 1150
    if-eqz p1, :cond_3a

    .line 1152
    :try_start_9
    iget-object v2, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    invoke-interface {v2}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v2

    iput v2, p0, Landroid/widget/TextView;->mInputType:I
    :try_end_11
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_9 .. :try_end_11} :catch_2d

    .line 1156
    :goto_11
    iget v2, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v3, :cond_23

    .line 1158
    iget-boolean v2, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v2, :cond_32

    .line 1159
    iget v2, p0, Landroid/widget/TextView;->mInputType:I

    const v3, -0x20001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/widget/TextView;->mInputType:I

    .line 1168
    :cond_23
    :goto_23
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 1169
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_2c

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1170
    :cond_2c
    return-void

    .line 1153
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :catch_2d
    move-exception v2

    move-object v0, v2

    .line 1154
    .local v0, e:Ljava/lang/IncompatibleClassChangeError;
    iput v3, p0, Landroid/widget/TextView;->mInputType:I

    goto :goto_11

    .line 1161
    .end local v0           #e:Ljava/lang/IncompatibleClassChangeError;
    :cond_32
    iget v2, p0, Landroid/widget/TextView;->mInputType:I

    const/high16 v3, 0x2

    or-int/2addr v2, v3

    iput v2, p0, Landroid/widget/TextView;->mInputType:I

    goto :goto_23

    .line 1165
    :cond_3a
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/TextView;->mInputType:I

    goto :goto_23
.end method

.method public setLineSpacing(FF)V
    .registers 4
    .parameter "add"
    .parameter "mult"

    .prologue
    .line 2290
    iput p2, p0, Landroid/widget/TextView;->mSpacingMult:F

    .line 2291
    iput p1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    .line 2293
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_11

    .line 2294
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2295
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2296
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2298
    :cond_11
    return-void
.end method

.method public setLines(I)V
    .registers 3
    .parameter "lines"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2172
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 2173
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 2175
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2176
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2177
    return-void
.end method

.method public final setLinkTextColor(I)V
    .registers 3
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1994
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    .line 1995
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 1996
    return-void
.end method

.method public final setLinkTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2
    .parameter "colors"

    .prologue
    .line 2004
    iput-object p1, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    .line 2005
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2006
    return-void
.end method

.method public final setLinksClickable(Z)V
    .registers 2
    .parameter "whether"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1918
    iput-boolean p1, p0, Landroid/widget/TextView;->mLinksClickable:Z

    .line 1919
    return-void
.end method

.method public setMarqueeRepeatLimit(I)V
    .registers 2
    .parameter "marqueeLimit"

    .prologue
    .line 6083
    iput p1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    .line 6084
    return-void
.end method

.method public setMaxEms(I)V
    .registers 3
    .parameter "maxems"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2230
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 2231
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 2233
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2234
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2235
    return-void
.end method

.method public setMaxHeight(I)V
    .registers 3
    .parameter "maxHeight"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2158
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 2159
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 2161
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2162
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2163
    return-void
.end method

.method public setMaxLines(I)V
    .registers 3
    .parameter "maxlines"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2144
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 2145
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 2147
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2148
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2149
    return-void
.end method

.method public setMaxWidth(I)V
    .registers 3
    .parameter "maxpixels"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2244
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 2245
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 2247
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2248
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2249
    return-void
.end method

.method public setMinEms(I)V
    .registers 3
    .parameter "minems"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2202
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    .line 2203
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    .line 2205
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2206
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2207
    return-void
.end method

.method public setMinHeight(I)V
    .registers 3
    .parameter "minHeight"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2130
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    .line 2131
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    .line 2133
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2134
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2135
    return-void
.end method

.method public setMinLines(I)V
    .registers 3
    .parameter "minlines"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2116
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    .line 2117
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    .line 2119
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2120
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2121
    return-void
.end method

.method public setMinWidth(I)V
    .registers 3
    .parameter "minpixels"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2216
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    .line 2217
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    .line 2219
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2220
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2221
    return-void
.end method

.method public final setMovementMethod(Landroid/text/method/MovementMethod;)V
    .registers 3
    .parameter "movement"

    .prologue
    .line 1200
    iput-object p1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 1202
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_11

    .line 1203
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1205
    :cond_11
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    .line 1208
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 1209
    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 3205
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_b

    .line 3206
    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3208
    :cond_b
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-object p1, v0, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 3209
    return-void
.end method

.method public setPadding(IIII)V
    .registers 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1624
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    if-ne p1, v0, :cond_10

    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    if-ne p3, v0, :cond_10

    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    if-ne p2, v0, :cond_10

    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    if-eq p4, v0, :cond_13

    .line 1628
    :cond_10
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 1632
    :cond_13
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 1633
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1634
    return-void
.end method

.method public setPaintFlags(I)V
    .registers 3
    .parameter "flags"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2082
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    if-eq v0, p1, :cond_1a

    .line 2083
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 2085
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1a

    .line 2086
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2087
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2088
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2091
    :cond_1a
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .registers 3
    .parameter "type"

    .prologue
    .line 3290
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_b

    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3291
    :cond_b
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-object p1, v0, Landroid/widget/TextView$InputContentType;->privateImeOptions:Ljava/lang/String;

    .line 3292
    return-void
.end method

.method public setRawInputType(I)V
    .registers 2
    .parameter "type"

    .prologue
    .line 3073
    iput p1, p0, Landroid/widget/TextView;->mInputType:I

    .line 3074
    return-void
.end method

.method public setScroller(Landroid/widget/Scroller;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 7113
    iput-object p1, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    .line 7114
    return-void
.end method

.method public setSelectAllOnFocus(Z)V
    .registers 4
    .parameter "selectAllOnFocus"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 6103
    iput-boolean p1, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    .line 6105
    if-eqz p1, :cond_11

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_11

    .line 6106
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 6108
    :cond_11
    return-void
.end method

.method public setSelected(I)V
    .registers 3
    .parameter "value"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 6872
    if-ne v0, p1, :cond_7

    :goto_3
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 6873
    return-void

    .line 6872
    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setSelected(Z)V
    .registers 5
    .parameter "selected"

    .prologue
    .line 6878
    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    .line 6880
    .local v0, wasSelected:Z
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 6882
    if-eq p1, v0, :cond_14

    iget-object v1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_14

    .line 6883
    if-eqz p1, :cond_15

    .line 6884
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 6889
    :cond_14
    :goto_14
    return-void

    .line 6886
    :cond_15
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    goto :goto_14
.end method

.method public setShadowLayer(FFFI)V
    .registers 6
    .parameter "radius"
    .parameter "dx"
    .parameter "dy"
    .parameter "color"

    .prologue
    .line 1879
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 1881
    iput p1, p0, Landroid/widget/TextView;->mShadowRadius:F

    .line 1882
    iput p2, p0, Landroid/widget/TextView;->mShadowDx:F

    .line 1883
    iput p3, p0, Landroid/widget/TextView;->mShadowDy:F

    .line 1885
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1886
    return-void
.end method

.method public setSingleLine()V
    .registers 2

    .prologue
    .line 6013
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 6014
    return-void
.end method

.method public setSingleLine(Z)V
    .registers 5
    .parameter "singleLine"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 6028
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v2, :cond_11

    .line 6030
    if-eqz p1, :cond_15

    .line 6031
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/widget/TextView;->mInputType:I

    .line 6036
    :cond_11
    :goto_11
    invoke-direct {p0, p1, v2}, Landroid/widget/TextView;->applySingleLine(ZZ)V

    .line 6037
    return-void

    .line 6033
    :cond_15
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/widget/TextView;->mInputType:I

    goto :goto_11
.end method

.method public final setSpannableFactory(Landroid/text/Spannable$Factory;)V
    .registers 3
    .parameter "factory"

    .prologue
    .line 2602
    iput-object p1, p0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    .line 2603
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2604
    return-void
.end method

.method public final setText(I)V
    .registers 3
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2923
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2924
    return-void
.end method

.method public final setText(ILandroid/widget/TextView$BufferType;)V
    .registers 4
    .parameter "resid"
    .parameter "type"

    .prologue
    .line 2927
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2928
    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "text"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2619
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2620
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 5
    .parameter "text"
    .parameter "type"

    .prologue
    .line 2651
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    .line 2653
    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-eqz v0, :cond_f

    .line 2654
    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    const/4 v1, 0x0

    #setter for: Landroid/widget/TextView$CharWrapper;->mChars:[C
    invoke-static {v0, v1}, Landroid/widget/TextView$CharWrapper;->access$102(Landroid/widget/TextView$CharWrapper;[C)[C

    .line 2656
    :cond_f
    return-void
.end method

.method public final setText([CII)V
    .registers 8
    .parameter "text"
    .parameter "start"
    .parameter "len"

    .prologue
    const/4 v3, 0x0

    .line 2812
    const/4 v0, 0x0

    .line 2814
    .local v0, oldlen:I
    if-ltz p2, :cond_b

    if-ltz p3, :cond_b

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_28

    .line 2815
    :cond_b
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2823
    :cond_28
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4a

    .line 2824
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2825
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v3, v0, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 2830
    :goto_37
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-nez v1, :cond_50

    .line 2831
    new-instance v1, Landroid/widget/TextView$CharWrapper;

    invoke-direct {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;-><init>([CII)V

    iput-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    .line 2836
    :goto_42
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    iget-object v2, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    .line 2837
    return-void

    .line 2827
    :cond_4a
    const-string v1, ""

    invoke-direct {p0, v1, v3, v3, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_37

    .line 2833
    :cond_50
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;->set([CII)V

    goto :goto_42
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .registers 12
    .parameter "context"
    .parameter "resid"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 1652
    sget-object v6, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1660
    .local v0, appearance:Landroid/content/res/TypedArray;
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 1661
    .local v1, color:I
    if-eqz v1, :cond_12

    .line 1662
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 1665
    :cond_12
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 1667
    .local v2, colors:Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_1c

    .line 1668
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1671
    :cond_1c
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 1673
    .local v4, ts:I
    if-eqz v4, :cond_26

    .line 1674
    int-to-float v6, v4

    invoke-direct {p0, v6}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 1677
    :cond_26
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 1679
    if-eqz v2, :cond_30

    .line 1680
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 1683
    :cond_30
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 1685
    if-eqz v2, :cond_3a

    .line 1686
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 1691
    :cond_3a
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 1693
    .local v5, typefaceIndex:I
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 1696
    .local v3, styleIndex:I
    invoke-direct {p0, v5, v3}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    .line 1697
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1698
    return-void
.end method

.method public setTextColor(I)V
    .registers 3
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1820
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 1821
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 1822
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .parameter "colors"

    .prologue
    .line 1830
    if-nez p1, :cond_8

    .line 1831
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1834
    :cond_8
    iput-object p1, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 1835
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 1836
    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "text"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2639
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2640
    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 9
    .parameter "text"
    .parameter "type"

    .prologue
    const/4 v5, 0x0

    .line 2906
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 2907
    .local v2, start:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 2908
    .local v0, end:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 2910
    .local v1, len:I
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2912
    if-gez v2, :cond_14

    if-ltz v0, :cond_31

    .line 2913
    :cond_14
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_31

    .line 2914
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Spannable;

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {p0, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 2919
    :cond_31
    return-void
.end method

.method public setTextScaleX(F)V
    .registers 3
    .parameter "size"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1770
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1f

    .line 1771
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    .line 1772
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 1774
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1f

    .line 1775
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 1776
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 1777
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1780
    :cond_1f
    return-void
.end method

.method public setTextSize(F)V
    .registers 3
    .parameter "size"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1718
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1719
    return-void
.end method

.method public setTextSize(IF)V
    .registers 6
    .parameter "unit"
    .parameter "size"

    .prologue
    .line 1731
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1734
    .local v0, c:Landroid/content/Context;
    if-nez v0, :cond_16

    .line 1735
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 1739
    .local v1, r:Landroid/content/res/Resources;
    :goto_a
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p1, p2, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 1741
    return-void

    .line 1737
    .end local v1           #r:Landroid/content/res/Resources;
    :cond_16
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .restart local v1       #r:Landroid/content/res/Resources;
    goto :goto_a
.end method

.method public final setTransformationMethod(Landroid/text/method/TransformationMethod;)V
    .registers 4
    .parameter "method"

    .prologue
    .line 1241
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-ne p1, v0, :cond_5

    .line 1255
    :goto_4
    return-void

    .line 1246
    :cond_5
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_18

    .line 1247
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_18

    .line 1248
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1252
    :cond_18
    iput-object p1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    .line 1254
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .registers 3
    .parameter "tf"

    .prologue
    .line 1793
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_1a

    .line 1794
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1796
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1a

    .line 1797
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 1798
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 1799
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1802
    :cond_1a
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .registers 9
    .parameter "tf"
    .parameter "style"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1032
    if-lez p2, :cond_39

    .line 1033
    if-nez p1, :cond_2e

    .line 1034
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 1039
    :goto_a
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1041
    if-eqz p1, :cond_33

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    move v1, v2

    .line 1042
    .local v1, typefaceStyle:I
    :goto_14
    xor-int/lit8 v2, v1, -0x1

    and-int v0, p2, v2

    .line 1043
    .local v0, need:I
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_35

    const/4 v3, 0x1

    :goto_1f
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1044
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_37

    const/high16 v3, -0x4180

    :goto_2a
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 1050
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :goto_2d
    return-void

    .line 1036
    :cond_2e
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_a

    :cond_33
    move v1, v4

    .line 1041
    goto :goto_14

    .restart local v0       #need:I
    .restart local v1       #typefaceStyle:I
    :cond_35
    move v3, v4

    .line 1043
    goto :goto_1f

    :cond_37
    move v3, v5

    .line 1044
    goto :goto_2a

    .line 1046
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :cond_39
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1047
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 1048
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_2d
.end method

.method public setWidth(I)V
    .registers 3
    .parameter "pixels"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2274
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 2275
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 2277
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2278
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2279
    return-void
.end method

.method public showCursorController(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 9079
    iput-boolean p1, p0, Landroid/widget/TextView;->mIsCursorControllerOn:Z

    .line 9080
    return-void
.end method

.method spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V
    .registers 15
    .parameter "buf"
    .parameter "what"
    .parameter "oldStart"
    .parameter "newStart"
    .parameter "oldEnd"
    .parameter "newEnd"

    .prologue
    const/4 v7, 0x1

    .line 6455
    const/4 v4, 0x0

    .line 6456
    .local v4, selChanged:Z
    const/4 v3, -0x1

    .local v3, newSelStart:I
    const/4 v2, -0x1

    .line 6458
    .local v2, newSelEnd:I
    iget-object v1, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 6460
    .local v1, ims:Landroid/widget/TextView$InputMethodState;
    sget-object v5, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v5, :cond_33

    .line 6461
    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6462
    const/4 v4, 0x1

    .line 6463
    move v2, p4

    .line 6465
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_16

    .line 6466
    iput-boolean v7, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 6469
    :cond_16
    if-gez p3, :cond_1a

    if-ltz p4, :cond_33

    .line 6470
    :cond_1a
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-direct {p0, v5, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 6471
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 6473
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 6474
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/widget/TextView;->mShowCursor:J

    .line 6475
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 6480
    :cond_33
    sget-object v5, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-ne p2, v5, :cond_4e

    .line 6481
    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6482
    const/4 v4, 0x1

    .line 6483
    move v3, p4

    .line 6485
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_43

    .line 6486
    iput-boolean v7, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 6489
    :cond_43
    if-gez p3, :cond_47

    if-ltz p4, :cond_4e

    .line 6490
    :cond_47
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 6491
    .local v0, end:I
    invoke-direct {p0, v0, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 6495
    .end local v0           #end:I
    :cond_4e
    if-eqz v4, :cond_67

    .line 6496
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    and-int/lit16 v5, v5, 0x200

    if-nez v5, :cond_67

    .line 6497
    if-gez v3, :cond_5e

    .line 6498
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 6500
    :cond_5e
    if-gez v2, :cond_64

    .line 6501
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 6503
    :cond_64
    invoke-virtual {p0, v3, v2}, Landroid/widget/TextView;->onSelectionChanged(II)V

    .line 6507
    :cond_67
    instance-of v5, p2, Landroid/text/style/UpdateAppearance;

    if-nez v5, :cond_6f

    instance-of v5, p2, Landroid/text/style/ParagraphStyle;

    if-eqz v5, :cond_7d

    .line 6509
    :cond_6f
    if-eqz v1, :cond_75

    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_c9

    .line 6510
    :cond_75
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 6511
    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6512
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 6518
    :cond_7d
    :goto_7d
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 6519
    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6520
    if-eqz v1, :cond_8f

    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 6521
    iput-boolean v7, v1, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    .line 6524
    :cond_8f
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    if-ltz v5, :cond_9e

    .line 6525
    if-eqz v1, :cond_9b

    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_cc

    .line 6526
    :cond_9b
    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursor()V

    .line 6533
    :cond_9e
    :goto_9e
    instance-of v5, p2, Landroid/text/ParcelableSpan;

    if-eqz v5, :cond_c8

    .line 6536
    if-eqz v1, :cond_c8

    iget-object v5, v1, Landroid/widget/TextView$InputMethodState;->mExtracting:Landroid/view/inputmethod/ExtractedTextRequest;

    if-eqz v5, :cond_c8

    .line 6537
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-eqz v5, :cond_cf

    .line 6538
    if-ltz p3, :cond_ba

    .line 6539
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p3, :cond_b4

    .line 6540
    iput p3, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6542
    :cond_b4
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p5, :cond_ba

    .line 6543
    iput p5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6546
    :cond_ba
    if-ltz p4, :cond_c8

    .line 6547
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p4, :cond_c2

    .line 6548
    iput p4, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6550
    :cond_c2
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p6, :cond_c8

    .line 6551
    iput p6, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6562
    :cond_c8
    :goto_c8
    return-void

    .line 6514
    :cond_c9
    iput-boolean v7, v1, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    goto :goto_7d

    .line 6528
    :cond_cc
    iput-boolean v7, v1, Landroid/widget/TextView$InputMethodState;->mCursorChanged:Z

    goto :goto_9e

    .line 6558
    :cond_cf
    iput-boolean v7, v1, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    goto :goto_c8
.end method

.method updateAfterEdit()V
    .registers 4

    .prologue
    .line 4969
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 4970
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 4972
    .local v0, curs:I
    if-gez v0, :cond_11

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_14

    .line 4974
    :cond_11
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 4977
    :cond_14
    if-ltz v0, :cond_28

    .line 4978
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 4980
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 4981
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/TextView;->mShowCursor:J

    .line 4982
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 4986
    :cond_28
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 4987
    return-void
.end method

.method protected updateCursorControllerPositions()V
    .registers 2

    .prologue
    .line 4262
    iget-object v0, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v0}, Landroid/widget/TextView$CursorController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4264
    iget-object v0, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v0}, Landroid/widget/TextView$CursorController;->updatePosition()V

    .line 4266
    :cond_11
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v0}, Landroid/widget/TextView$CursorController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 4268
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v0}, Landroid/widget/TextView$CursorController;->updatePosition()V

    .line 4271
    :cond_22
    iget-object v0, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    if-eqz v0, :cond_33

    iget-object v0, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v0}, Landroid/widget/TextView$CursorControllerMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 4272
    iget-object v0, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v0}, Landroid/widget/TextView$CursorControllerMenu;->updateCursorControllerMenu()V

    .line 4275
    :cond_33
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 4
    .parameter "who"

    .prologue
    .line 3932
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 3933
    .local v0, verified:Z
    if-nez v0, :cond_26

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_26

    .line 3934
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_22

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_22

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_22

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_24

    :cond_22
    const/4 v1, 0x1

    .line 3937
    :goto_23
    return v1

    .line 3934
    :cond_24
    const/4 v1, 0x0

    goto :goto_23

    :cond_26
    move v1, v0

    .line 3937
    goto :goto_23
.end method
