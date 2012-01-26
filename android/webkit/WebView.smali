.class public Landroid/webkit/WebView;
.super Landroid/widget/AbsoluteLayout;
.source "WebView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebView$CountingOutputStream;,
        Landroid/webkit/WebView$InvokeListBox;,
        Landroid/webkit/WebView$PrivateHandler;,
        Landroid/webkit/WebView$ScaleDetectorListener;,
        Landroid/webkit/WebView$DragTracker;,
        Landroid/webkit/WebView$DragTrackerHandler;,
        Landroid/webkit/WebView$PostScale;,
        Landroid/webkit/WebView$CmdVal;,
        Landroid/webkit/WebView$SelectionOffset;,
        Landroid/webkit/WebView$CursorDirection;,
        Landroid/webkit/WebView$ResultTransport;,
        Landroid/webkit/WebView$RequestFormData;,
        Landroid/webkit/WebView$PluginUpdateData;,
        Landroid/webkit/WebView$ViewSizeData;,
        Landroid/webkit/WebView$WebTextSelectionListener;,
        Landroid/webkit/WebView$WebSelectRequest;,
        Landroid/webkit/WebView$HitTestResult;,
        Landroid/webkit/WebView$PictureListener;,
        Landroid/webkit/WebView$WebViewTransport;,
        Landroid/webkit/WebView$ExtendedZoomControls;,
        Landroid/webkit/WebView$ZoomMode;
    }
.end annotation


# static fields
.field private static final AUTO_REDRAW_HACK:Z = false

.field private static final AWAKEN_SCROLL_BARS:I = 0x9

.field static final CENTER_FIT_RECT:I = 0x7f

.field static final CLEAR_TEXT_ENTRY:I = 0x6f

.field private static final DEBUG_DRAG_TRACKER:Z = false

.field private static DEFAULT_MAX_ZOOM_SCALE:F = 0.0f

.field private static DEFAULT_MIN_ZOOM_SCALE:F = 0.0f

.field static DEFAULT_SCALE_PERCENT:I = 0x0

.field static final DEFAULT_VIEWPORT_WIDTH:I = 0x320

.field static final DOM_FOCUS_CHANGED:I = 0x7a

.field static final DO_MOTION_UP:I = 0x77

.field private static final DRAG_HELD_MOTIONLESS:I = 0x8

.field private static final DRAW_EXTRAS_CURSOR_RING:I = 0x3

.field private static final DRAW_EXTRAS_FIND:I = 0x1

.field private static final DRAW_EXTRAS_NONE:I = 0x0

.field private static final DRAW_EXTRAS_SELECTION:I = 0x2

.field private static ENABLE_ADAPTIVE_ZOOM:Z = false

.field static final FIND_AGAIN:I = 0x7e

.field private static final FIRST_PACKAGE_MSG_ID:I = 0x65

.field private static final FIRST_PRIVATE_MSG_ID:I = 0x1

.field static final FORM_INPUT_ACTION:I = 0x83

.field public static final FORM_INPUT_DONE:I = 0x20

.field public static final FORM_INPUT_GO:I = 0x10

.field public static final FORM_INPUT_NEXT_SELECT:I = 0x8

.field public static final FORM_INPUT_NEXT_TEXT:I = 0x4

.field public static final FORM_INPUT_NONE:I = 0x0

.field public static final FORM_INPUT_PREV_SELECT:I = 0x2

.field public static final FORM_INPUT_PREV_TEXT:I = 0x1

.field static final HIDE_FULLSCREEN:I = 0x79

.field static final HandlerPackageDebugString:[Ljava/lang/String; = null

.field static final HandlerPrivateDebugString:[Ljava/lang/String; = null

.field static final IMMEDIATE_REPAINT_MSG_ID:I = 0x7b

.field static final INVAL_RECT_MSG_ID:I = 0x75

.field private static final LAST_PACKAGE_MSG_ID:I = 0x81

.field private static final LAST_PRIVATE_MSG_ID:I = 0xa

.field static final LOGTAG:Ljava/lang/String; = "webview"

.field static final LONG_PRESS_CENTER:I = 0x72

.field private static final LONG_PRESS_TIMEOUT:I = 0x3e8

.field private static final MAX_ADAPTIVE_ZOOM_ANIMATION_LENGTH:I = 0x2bc

.field private static final MAX_DURATION:I = 0x2ee

.field private static final MAX_SLOPE_FOR_DIAG:F = 1.5f

.field private static MINIMUM_SCALE_INCREMENT:F = 0.0f

.field private static final MIN_BREAK_SNAP_CROSS_DISTANCE:I = 0x50

.field private static final MIN_FLING_TIME:I = 0xfa

.field private static final MIN_SCROLL_AMOUNT_TO_DISABLE_DRAG_TRACKER:I = 0x4

.field private static final MOTIONLESS_FALSE:I = 0x0

.field private static final MOTIONLESS_IGNORE:I = 0x3

.field private static final MOTIONLESS_PENDING:I = 0x1

.field private static final MOTIONLESS_TIME:I = 0x64

.field private static final MOTIONLESS_TRUE:I = 0x2

.field static final MOVE_OUT_OF_PLUGIN:I = 0x6e

.field private static final NEVER_REMEMBER_PASSWORD:I = 0x2

.field static final NEW_PICTURE_MSG_ID:I = 0x69

.field private static final NO_LEFTEDGE:I = -0x1

.field private static final PAGE_SCROLL_OVERLAP:I = 0x18

.field public static final PREVENT_DEFAULT_IGNORE:I = 0x4

.field public static final PREVENT_DEFAULT_MAYBE_YES:I = 0x1

.field public static final PREVENT_DEFAULT_NO:I = 0x0

.field public static final PREVENT_DEFAULT_NO_FROM_TOUCH_DOWN:I = 0x2

.field private static final PREVENT_DEFAULT_TIMEOUT:I = 0xa

.field public static final PREVENT_DEFAULT_YES:I = 0x3

.field static final PREVENT_TOUCH_ID:I = 0x73

.field private static final RELEASE_SINGLE_TAP:I = 0x5

.field private static final REMEMBER_PASSWORD:I = 0x1

.field static final REQUEST_CLEAR_CURSOR:I = 0x85

.field private static final REQUEST_FORM_DATA:I = 0x6

.field static final REQUEST_KEYBOARD:I = 0x76

.field static final REQUEST_KEYBOARD_WITH_SELECTION_MSG_ID:I = 0x80

.field static final REQUEST_LISTBOX:I = 0x84

.field private static final RESUME_WEBCORE_PRIORITY:I = 0x7

.field static final RETURN_LABEL:I = 0x7d

.field public static final SCHEME_GEO:Ljava/lang/String; = "geo:0,0?q="

.field public static final SCHEME_MAILTO:Ljava/lang/String; = "mailto:"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel:"

.field private static final SCROLLBAR_ALWAYSOFF:I = 0x1

.field private static final SCROLLBAR_ALWAYSON:I = 0x2

.field private static final SCROLLBAR_AUTO:I = 0x0

.field static final SCROLL_BY_MSG_ID:I = 0x66

.field static final SCROLL_TO_MSG_ID:I = 0x65

.field static final SELECTION_CONTROLS_NOTIFY:I = 0x8d

.field static final SELECTION_POS_CHANGED_DELAY:I = 0x320

.field private static final SELECT_CURSOR_OFFSET:I = 0x10

.field static final SET_ROOT_LAYER_MSG_ID:I = 0x7c

.field static final SET_SCROLLBAR_MODES:I = 0x81

.field static final SHOW_FULLSCREEN:I = 0x78

.field static final SHOW_RECT_MSG_ID:I = 0x71

.field private static final SLIDE_TITLE_DURATION:I = 0x1f4

.field private static final SNAP_LOCK:I = 0x1

.field private static final SNAP_NONE:I = 0x0

.field private static final SNAP_X:I = 0x2

.field private static final SNAP_Y:I = 0x4

.field static final SPAWN_SCROLL_TO_MSG_ID:I = 0x67

.field private static final STD_SPEED:I = 0x1e0

.field private static final SWITCH_TO_LONGPRESS:I = 0x4

.field private static final SWITCH_TO_SHORTPRESS:I = 0x3

.field static final SYNC_SCROLL_TO_MSG_ID:I = 0x68

.field private static final TAP_TIMEOUT:I = 0xc8

.field private static final TOUCH_DONE_MODE:I = 0x7

.field private static final TOUCH_DOUBLE_TAP_MODE:I = 0x6

.field private static final TOUCH_DRAG_MODE:I = 0x3

.field private static final TOUCH_DRAG_START_MODE:I = 0x2

.field private static final TOUCH_INIT_MODE:I = 0x1

.field private static final TOUCH_PINCH_DRAG:I = 0x8

.field private static final TOUCH_SENT_INTERVAL:I = 0x32

.field private static final TOUCH_SHORTPRESS_MODE:I = 0x5

.field private static final TOUCH_SHORTPRESS_START_MODE:I = 0x4

.field private static final TRACKBALL_KEY_TIMEOUT:I = 0x3e8

.field private static final TRACKBALL_MOVE_COUNT:I = 0xa

.field private static final TRACKBALL_MULTIPLIER:I = 0x3

.field private static final TRACKBALL_SCALE:I = 0x190

.field private static final TRACKBALL_SCROLL_COUNT:I = 0x5

.field private static final TRACKBALL_TIMEOUT:I = 0xc8

.field private static final TRACKBALL_WAIT:I = 0x64

.field static final UPDATE_SELECTION_MSG_ID:I = 0x8c

.field static final UPDATE_TEXTFIELD_TEXT_MSG_ID:I = 0x6c

.field static final UPDATE_TEXT_ENTRY_MSG_ID:I = 0x6a

.field static final UPDATE_TEXT_SELECTION_MSG_ID:I = 0x70

.field static final UPDATE_ZOOM_RANGE:I = 0x6d

.field static final WEBCORE_INITIALIZED_MSG_ID:I = 0x6b

.field static final WEBCORE_NEED_TOUCH_EVENTS:I = 0x74

.field public static final WEBTEXTSELECT_CHARACTER_GRANULARITY:I = 0x0

.field public static final WEBTEXTSELECT_CHAR_CONTROLER_LEFT:I = 0x1

.field public static final WEBTEXTSELECT_CHAR_CONTROLER_RIGHT:I = 0x2

.field public static final WEBTEXTSELECT_NO_CONTROLER:I = 0x0

.field public static final WEBTEXTSELECT_PARAGRAPH_GRANULARITY:I = 0x4

.field public static final WEBTEXTSELECT_PARA_CONTROLER_BM:I = 0x5

.field public static final WEBTEXTSELECT_PARA_CONTROLER_LM:I = 0x3

.field public static final WEBTEXTSELECT_PARA_CONTROLER_RM:I = 0x4

.field public static final WEBTEXTSELECT_PARA_CONTROLER_UM:I = 0x6

.field public static final WEBTEXTSELECT_WORD_GRANULARITY:I = 0x1

.field private static final ZOOM_ANIMATION_LENGTH:I = 0x1f4

#the value of this static final field might be set in the static constructor
.field private static final ZOOM_CONTROLS_TIMEOUT:J = 0x0L

.field static final ZOOM_ON_DOUBLE_TAP:I = 0x82

.field private static final mAdaptiveZoomPadding:I = 0xa

.field static mLogEvent:Z = false

.field private static final mMaxAdaptiveZoomScale:F = 2.0f

.field private static mOverScrollBackground:Landroid/graphics/Paint;

.field private static mOverScrollBorder:Landroid/graphics/Paint;

.field private static mScrollBeyondPage:Z

.field static sMaxViewportWidth:I


# instance fields
.field private bWebSelectDialogIsUp:Z

.field public isSelectionset:Z

.field private mActionMove:Z

.field private mActualScale:F

.field private mAdaptiveZoom:Z

.field private mAdaptiveZoomAnimationLength:F

.field private mAllowPanAndScale:Z

.field private mAnchorX:I

.field private mAnchorY:I

.field private mAutoRedraw:Z

.field private mAutoSelection:Z

.field private mBackgroundColor:I

.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private mCertificate:Landroid/net/http/SslCertificate;

.field private mConfirmMove:Z

.field private mContentHeight:I

.field private mContentWidth:I

.field private mController:I

.field mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

.field private mCurrentTouchInterval:I

.field private final mDatabase:Landroid/webkit/WebViewDatabase;

.field private mDefaultScale:F

.field private mDeferTouchMode:I

.field private mDeferTouchProcess:Z

.field private mDelayedDeleteRootLayer:Z

.field private mDoubleTapSlopSquare:I

.field mDragFromTextInput:Z

.field private mDragTracker:Landroid/webkit/WebView$DragTracker;

.field private mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

.field private mDrawCursorRing:Z

.field private mDrawHistory:Z

.field private mDrawSelectionPointer:Z

.field private mEdgeGlowBottom:Landroid/widget/EdgeGlow;

.field private mEdgeGlowLeft:Landroid/widget/EdgeGlow;

.field private mEdgeGlowRight:Landroid/widget/EdgeGlow;

.field private mEdgeGlowTop:Landroid/widget/EdgeGlow;

.field private mExtendSelection:Z

.field private mExtendSelectionPressed:Z

.field private mFindHeight:I

.field private mFindIsUp:Z

.field private mFirstTouchPosX:F

.field private mFirstTouchPosY:F

.field private mFocusSizeChanged:Z

.field private mFocusedNodeName:Ljava/lang/String;

.field private mFocusedNodePointer:I

.field private mForwardTouchEvents:Z

.field private mForwardTouchEvents_others:Z

.field private mForwardTouchEvents_plugin:Z

.field mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

.field private mGotCenterDown:Z

.field private mGotKeyDown:Z

.field private mHasRotateSupport:Z

.field mHeightCanMeasure:Z

.field private mHeldMotionless:I

.field private mHistoryHeight:I

.field private mHistoryPicture:Landroid/graphics/Picture;

.field private mHistoryWidth:I

.field private mHorizontalScrollBarMode:I

.field private mIgnoreDoubleTap:Z

.field private mIgnoreFling:Z

.field private mIgnoreViewSizeChanged:Z

.field public mInActionMove:Z

.field private mInOverScrollMode:Z

.field mInZoomOverview:Z

.field private mInitialScaleInPercent:I

.field private mInitialScrollX:I

.field private mInitialScrollY:I

.field private mInvActualScale:F

.field private mInvFinalZoomScale:F

.field private mInvInitialZoomScale:F

.field private mIsGrabbingScreen:Z

.field private mIsPaused:Z

.field private mLastCursorBounds:Landroid/graphics/Rect;

.field private mLastCursorTime:J

.field private mLastDeferTouchX:F

.field private mLastDeferTouchY:F

.field private mLastFind:Ljava/lang/String;

.field private mLastGlobalRect:Landroid/graphics/Rect;

.field mLastHeightSent:I

.field private mLastSentTouchTime:J

.field private mLastTouchTime:J

.field private mLastTouchUpTime:J

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mLastVelX:F

.field private mLastVelY:F

.field private mLastVelocity:F

.field private mLastVisibleRectSent:Landroid/graphics/Rect;

.field mLastWidthSent:I

.field private mLongPress:Z

.field private mMagnifier:Landroid/webkit/WebMagnifier;

.field private mMapTrackballToArrowKeys:Z

.field private mMaxZoomScale:F

.field private mMaximumFling:I

.field private mMinLockSnapReverseDistance:I

.field private mMinZoomScale:F

.field private mMinZoomScaleFixed:Z

.field private mNativeClass:I

.field private mNavSlop:I

.field private mNeedToAdjustWebTextView:Z

.field private mOverflingDistance:I

.field private mOverlayHorizontalScrollbar:Z

.field private mOverlayVerticalScrollbar:Z

.field private mOverscrollDeltaX:I

.field private mOverscrollDeltaY:I

.field private mOverscrollDistance:I

.field private mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

.field private mPictureListener:Landroid/webkit/WebView$PictureListener;

.field mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

.field private mPreserveZoom:Z

.field public mPreventDefault:I

.field mPreventDefaultTimeout:I

.field private mPreviewZoomOnly:Z

.field final mPrivateHandler:Landroid/os/Handler;

.field private mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

.field private mScroller:Landroid/widget/OverScroller;

.field private mSelectX:I

.field private mSelectY:I

.field private mSelectingText:Z

.field private mSelectionStarted:Z

.field private mShiftIsPressed:Z

.field private mSizeChangedCallback:Ljava/lang/Runnable;

.field private mSmartSelection:Z

.field private mSnapPositive:Z

.field private mSnapScrollMode:I

.field public mStopSelection:Z

.field private mSupportMultiTouch:Z

.field private mTempDisableInvalidate:Z

.field private mTextGeneration:I

.field mTextWrapScale:F

.field private mTitleBar:Landroid/view/View;

.field private mTitleShadow:Landroid/graphics/drawable/Drawable;

.field private mTmpLocations:[I

.field private mTouchMode:I

.field private mTouchSelectionHandler:Z

.field private mTouchSlop:I

.field private mTouchSlopSquare:I

.field private mTrackballDown:Z

.field private mTrackballFirstTime:J

.field private mTrackballLastTime:J

.field private mTrackballRemainsX:F

.field private mTrackballRemainsY:F

.field private mTrackballUpTime:J

.field private mTrackballXMove:I

.field private mTrackballYMove:I

.field public mUserScroll:Z

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollBarMode:I

.field private mViewCenterYCorrection:F

.field final mViewManager:Landroid/webkit/ViewManager;

.field private mWebClipboard:Landroid/webkit/WebClipboard;

.field private mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

.field private mWebSelectDialog:Landroid/webkit/WebSelectDialog;

.field private mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

.field private mWebSelectionOn:Z

.field private mWebTextView:Landroid/webkit/WebTextView;

.field private mWebViewCore:Landroid/webkit/WebViewCore;

.field mWidthCanMeasure:Z

.field private mWrapContent:Z

.field private mYDistanceToSlideTitleOffScreen:I

.field private mZoomButtonsController:Landroid/widget/ZoomButtonsController;

.field private mZoomCenterX:F

.field private mZoomCenterY:F

.field private mZoomControlRunnable:Ljava/lang/Runnable;

.field private mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

.field mZoomInfo:Landroid/webkit/OnPinchZoomListener$ZoomInfo;

.field private mZoomListener:Landroid/widget/ZoomButtonsController$OnZoomListener;

.field mZoomOverviewWidth:I

.field private mZoomScale:F

.field private mZoomStart:J

.field private mbIsNewWordSelected:Z

.field textWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 330
    sput-boolean v4, Landroid/webkit/WebView;->mScrollBeyondPage:Z

    .line 337
    sput-boolean v3, Landroid/webkit/WebView;->ENABLE_ADAPTIVE_ZOOM:Z

    .line 668
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v0

    sput-wide v0, Landroid/webkit/WebView;->ZOOM_CONTROLS_TIMEOUT:J

    .line 790
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "REMEMBER_PASSWORD"

    aput-object v1, v0, v4

    const-string v1, "NEVER_REMEMBER_PASSWORD"

    aput-object v1, v0, v3

    const-string v1, "SWITCH_TO_SHORTPRESS"

    aput-object v1, v0, v5

    const-string v1, "SWITCH_TO_LONGPRESS"

    aput-object v1, v0, v6

    const-string v1, "RELEASE_SINGLE_TAP"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "REQUEST_FORM_DATA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "RESUME_WEBCORE_PRIORITY"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DRAG_HELD_MOTIONLESS"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "AWAKEN_SCROLL_BARS"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "PREVENT_DEFAULT_TIMEOUT"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/WebView;->HandlerPrivateDebugString:[Ljava/lang/String;

    .line 803
    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SCROLL_TO_MSG_ID"

    aput-object v1, v0, v4

    const-string v1, "SCROLL_BY_MSG_ID"

    aput-object v1, v0, v3

    const-string v1, "SPAWN_SCROLL_TO_MSG_ID"

    aput-object v1, v0, v5

    const-string v1, "SYNC_SCROLL_TO_MSG_ID"

    aput-object v1, v0, v6

    const-string v1, "NEW_PICTURE_MSG_ID"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "UPDATE_TEXT_ENTRY_MSG_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "WEBCORE_INITIALIZED_MSG_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "UPDATE_TEXTFIELD_TEXT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "UPDATE_ZOOM_RANGE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "MOVE_OUT_OF_PLUGIN"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "CLEAR_TEXT_ENTRY"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "UPDATE_TEXT_SELECTION_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "SHOW_RECT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "LONG_PRESS_CENTER"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "PREVENT_TOUCH_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "WEBCORE_NEED_TOUCH_EVENTS"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "INVAL_RECT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "REQUEST_KEYBOARD"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "DO_MOTION_UP"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "SHOW_FULLSCREEN"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "HIDE_FULLSCREEN"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "DOM_FOCUS_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "IMMEDIATE_REPAINT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "SET_ROOT_LAYER_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "RETURN_LABEL"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "FIND_AGAIN"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "CENTER_FIT_RECT"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "REQUEST_KEYBOARD_WITH_SELECTION_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "SET_SCROLLBAR_MODES"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "ZOOM_ON_DOUBLE_TAP"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "FORM_INPUT_ACTION"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "REQUEST_LISTBOX"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "REQUEST_CLEAR_CURSOR"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/WebView;->HandlerPackageDebugString:[Ljava/lang/String;

    .line 849
    const/16 v0, 0x320

    sput v0, Landroid/webkit/WebView;->sMaxViewportWidth:I

    .line 877
    const v0, 0x3c23d70a

    sput v0, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    .line 954
    sput-boolean v3, Landroid/webkit/WebView;->mLogEvent:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 1464
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1465
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1473
    const v0, 0x1010085

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1474
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 1483
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;)V

    .line 1484
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;)V
    .registers 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, javascriptInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1500
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 325
    iput-boolean v1, p0, Landroid/webkit/WebView;->isSelectionset:Z

    .line 343
    iput-boolean v1, p0, Landroid/webkit/WebView;->mHasRotateSupport:Z

    .line 355
    iput-boolean v1, p0, Landroid/webkit/WebView;->mIsGrabbingScreen:Z

    .line 518
    new-instance v0, Landroid/webkit/WebView$PrivateHandler;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$PrivateHandler;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    .line 531
    iput-object v3, p0, Landroid/webkit/WebView;->mWebClipboard:Landroid/webkit/WebClipboard;

    .line 572
    const/16 v0, 0x32

    iput v0, p0, Landroid/webkit/WebView;->mCurrentTouchInterval:I

    .line 586
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 602
    iput-boolean v1, p0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    .line 604
    iput-boolean v1, p0, Landroid/webkit/WebView;->mForwardTouchEvents_plugin:Z

    .line 605
    iput-boolean v1, p0, Landroid/webkit/WebView;->mForwardTouchEvents_others:Z

    .line 617
    const/4 v0, 0x4

    iput v0, p0, Landroid/webkit/WebView;->mPreventDefault:I

    .line 628
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebView;->mDeferTouchMode:I

    .line 637
    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 691
    iput-boolean v2, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    .line 692
    iput-boolean v1, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    .line 702
    iput-boolean v1, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    .line 857
    iput-boolean v2, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    .line 860
    iput v1, p0, Landroid/webkit/WebView;->mInitialScaleInPercent:I

    .line 866
    iput-boolean v1, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 870
    const/16 v0, 0x320

    iput v0, p0, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    .line 880
    iput-boolean v1, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    .line 898
    iput-boolean v1, p0, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    .line 899
    iput v6, p0, Landroid/webkit/WebView;->mAdaptiveZoomAnimationLength:F

    .line 902
    iput-boolean v1, p0, Landroid/webkit/WebView;->mUserScroll:Z

    .line 904
    iput v1, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 922
    iput v1, p0, Landroid/webkit/WebView;->mHorizontalScrollBarMode:I

    .line 923
    iput v1, p0, Landroid/webkit/WebView;->mVerticalScrollBarMode:I

    .line 957
    iput-wide v4, p0, Landroid/webkit/WebView;->mLastTouchUpTime:J

    .line 972
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    .line 1097
    new-instance v0, Landroid/webkit/WebView$1;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$1;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mZoomListener:Landroid/widget/ZoomButtonsController$OnZoomListener;

    .line 1124
    iput v1, p0, Landroid/webkit/WebView;->mController:I

    .line 1125
    iput-object v3, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    .line 1126
    iput-boolean v2, p0, Landroid/webkit/WebView;->mSmartSelection:Z

    .line 1127
    iput-boolean v2, p0, Landroid/webkit/WebView;->mAutoSelection:Z

    .line 1128
    iput-boolean v1, p0, Landroid/webkit/WebView;->mPreserveZoom:Z

    .line 1134
    new-instance v0, Landroid/webkit/WebView$2;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$2;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

    .line 4720
    iput-boolean v1, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    .line 4721
    iput-object v3, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    .line 4722
    iput v1, p0, Landroid/webkit/WebView;->mHistoryWidth:I

    .line 4723
    iput v1, p0, Landroid/webkit/WebView;->mHistoryHeight:I

    .line 5034
    iput-boolean v1, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    .line 6389
    iput-object v3, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    .line 6390
    iput-object v3, p0, Landroid/webkit/WebView;->mZoomInfo:Landroid/webkit/OnPinchZoomListener$ZoomInfo;

    .line 7479
    iput-wide v4, p0, Landroid/webkit/WebView;->mTrackballFirstTime:J

    .line 7480
    iput-wide v4, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    .line 7481
    iput v6, p0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 7482
    iput v6, p0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    .line 7483
    iput v1, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    .line 7484
    iput v1, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    .line 7485
    iput-boolean v1, p0, Landroid/webkit/WebView;->mSelectingText:Z

    .line 7486
    iput-boolean v1, p0, Landroid/webkit/WebView;->mSelectionStarted:Z

    .line 7487
    iput-boolean v1, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 7488
    iput-boolean v1, p0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    .line 7491
    iput-boolean v1, p0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    .line 7492
    iput-boolean v2, p0, Landroid/webkit/WebView;->mStopSelection:Z

    .line 7493
    iput-boolean v1, p0, Landroid/webkit/WebView;->mExtendSelectionPressed:Z

    .line 7494
    iput-boolean v1, p0, Landroid/webkit/WebView;->mLongPress:Z

    .line 7495
    iput-boolean v1, p0, Landroid/webkit/WebView;->mActionMove:Z

    .line 7496
    iput-boolean v1, p0, Landroid/webkit/WebView;->mInActionMove:Z

    .line 7497
    iput-boolean v1, p0, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    .line 7498
    iput-boolean v1, p0, Landroid/webkit/WebView;->mbIsNewWordSelected:Z

    .line 7512
    iput v1, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 7513
    iput v1, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 7514
    iput-boolean v1, p0, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    .line 7515
    iput-boolean v1, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 7516
    iput-boolean v1, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    .line 7517
    iput-wide v4, p0, Landroid/webkit/WebView;->mTrackballUpTime:J

    .line 7518
    iput-wide v4, p0, Landroid/webkit/WebView;->mLastCursorTime:J

    .line 7524
    iput-boolean v2, p0, Landroid/webkit/WebView;->mMapTrackballToArrowKeys:Z

    .line 8220
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/webkit/WebView;->mTmpLocations:[I

    .line 9861
    iput-boolean v1, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    .line 9862
    iput-object v3, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    .line 10548
    const/16 v0, 0xc8

    iput v0, p0, Landroid/webkit/WebView;->mPreventDefaultTimeout:I

    .line 1501
    invoke-direct {p0}, Landroid/webkit/WebView;->init()V

    .line 1503
    new-instance v0, Landroid/webkit/CallbackProxy;

    invoke-direct {v0, p1, p0}, Landroid/webkit/CallbackProxy;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 1504
    new-instance v0, Landroid/webkit/ViewManager;

    invoke-direct {v0, p0}, Landroid/webkit/ViewManager;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    .line 1505
    new-instance v0, Landroid/webkit/WebViewCore;

    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {v0, p1, p0, v1, p4}, Landroid/webkit/WebViewCore;-><init>(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/CallbackProxy;Ljava/util/Map;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 1506
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    .line 1507
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    .line 1509
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 1511
    new-instance v0, Landroid/webkit/WebMagnifier;

    invoke-direct {v0, p0}, Landroid/webkit/WebMagnifier;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    .line 1512
    new-instance v0, Landroid/webkit/OnPinchZoomListener$ZoomInfo;

    invoke-direct {v0}, Landroid/webkit/OnPinchZoomListener$ZoomInfo;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mZoomInfo:Landroid/webkit/OnPinchZoomListener$ZoomInfo;

    .line 1514
    new-instance v0, Landroid/webkit/WebTextSelectionControls;

    invoke-direct {v0, p1, p0}, Landroid/webkit/WebTextSelectionControls;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    .line 1515
    return-void
.end method

.method private IsTextSelectionControlerForward(II)Z
    .registers 11
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    .line 10809
    const/4 v0, 0x0

    .line 10811
    .local v0, moveForward:Z
    iget v4, p0, Landroid/webkit/WebView;->mController:I

    if-ne v4, v6, :cond_25

    .line 10812
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->left:I

    .line 10813
    .local v2, startX:I
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 10817
    .local v3, startY:I
    if-le p2, v3, :cond_17

    .line 10818
    const/4 v0, 0x1

    .line 10861
    .end local v2           #startX:I
    .end local v3           #startY:I
    :cond_16
    :goto_16
    return v0

    .line 10819
    .restart local v2       #startX:I
    .restart local v3       #startY:I
    :cond_17
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt p2, v4, :cond_16

    add-int/lit8 v4, v2, 0x5

    if-le p1, v4, :cond_16

    .line 10821
    const/4 v0, 0x1

    goto :goto_16

    .line 10823
    .end local v2           #startX:I
    .end local v3           #startY:I
    :cond_25
    iget v4, p0, Landroid/webkit/WebView;->mController:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_48

    .line 10824
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->right:I

    .line 10825
    .restart local v2       #startX:I
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 10830
    .restart local v3       #startY:I
    if-ge p2, v3, :cond_3a

    .line 10831
    const/4 v0, 0x1

    goto :goto_16

    .line 10832
    :cond_3a
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v4, :cond_16

    sub-int v4, v2, v7

    if-ge p1, v4, :cond_16

    .line 10834
    const/4 v0, 0x1

    goto :goto_16

    .line 10836
    .end local v2           #startX:I
    .end local v3           #startY:I
    :cond_48
    iget v4, p0, Landroid/webkit/WebView;->mController:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_5d

    .line 10837
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 10838
    .local v1, selectRect:Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 10839
    .restart local v3       #startY:I
    sub-int v4, v3, v6

    if-ge p2, v4, :cond_16

    .line 10840
    const/4 v0, 0x1

    goto :goto_16

    .line 10842
    .end local v1           #selectRect:Landroid/graphics/Rect;
    .end local v3           #startY:I
    :cond_5d
    iget v4, p0, Landroid/webkit/WebView;->mController:I

    if-ne v4, v7, :cond_71

    .line 10843
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 10844
    .restart local v1       #selectRect:Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 10845
    .restart local v3       #startY:I
    add-int/lit8 v4, v3, 0x2

    if-le p2, v4, :cond_16

    .line 10846
    const/4 v0, 0x1

    goto :goto_16

    .line 10848
    .end local v1           #selectRect:Landroid/graphics/Rect;
    .end local v3           #startY:I
    :cond_71
    iget v4, p0, Landroid/webkit/WebView;->mController:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_86

    .line 10849
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 10850
    .restart local v1       #selectRect:Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 10851
    .restart local v2       #startX:I
    sub-int v4, v2, v6

    if-ge p1, v4, :cond_16

    .line 10852
    const/4 v0, 0x1

    goto :goto_16

    .line 10854
    .end local v1           #selectRect:Landroid/graphics/Rect;
    .end local v2           #startX:I
    :cond_86
    iget v4, p0, Landroid/webkit/WebView;->mController:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_16

    .line 10855
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 10856
    .restart local v1       #selectRect:Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 10857
    .restart local v2       #startX:I
    add-int/lit8 v4, v2, 0x2

    if-le p1, v4, :cond_16

    .line 10858
    const/4 v0, 0x1

    goto/16 :goto_16
.end method

.method private _onDraw(Landroid/graphics/Canvas;)V
    .registers 27
    .parameter "canvas"

    .prologue
    .line 4255
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->isVisible()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->isDrawingWebView()Z

    move-result v20

    if-nez v20, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->alwaysAllowWebViewDraw()Z

    move-result v20

    if-nez v20, :cond_33

    .line 4322
    :cond_32
    :goto_32
    return-void

    .line 4261
    :cond_33
    const/4 v5, 0x0

    .line 4262
    .local v5, cacheBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v7, p1

    .line 4263
    .local v7, innerCanvas:Landroid/graphics/Canvas;
    const/4 v9, 0x0

    .line 4264
    .local v9, offsetX:I
    const/4 v10, 0x0

    .line 4265
    .local v10, offsetY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_72

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->isDrawingWebView()Z

    move-result v20

    if-nez v20, :cond_72

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mIsGrabbingScreen:Z

    move/from16 v20, v0

    if-nez v20, :cond_72

    .line 4266
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->getCacheBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 4267
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->getCacheBitmapOffsetX()I

    move-result v9

    .line 4268
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->getCacheBitmapOffsetY()I

    move-result v10

    .line 4271
    :cond_72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 4272
    .local v11, time1:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 4273
    .local v13, time2:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 4274
    .local v15, time3:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 4277
    .local v17, time4:J
    if-eqz v5, :cond_c2

    .line 4280
    :try_start_84
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_89
    .catchall {:try_start_84 .. :try_end_89} :catchall_1be

    .line 4281
    .end local v7           #innerCanvas:Landroid/graphics/Canvas;
    .local v8, innerCanvas:Landroid/graphics/Canvas;
    :try_start_89
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object v0, v8

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4282
    move v0, v9

    int-to-float v0, v0

    move/from16 v20, v0

    move v0, v10

    int-to-float v0, v0

    move/from16 v21, v0

    move-object v0, v8

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_c1
    .catchall {:try_start_89 .. :try_end_c1} :catchall_1d2

    move-object v7, v8

    .line 4284
    .end local v8           #innerCanvas:Landroid/graphics/Canvas;
    .restart local v7       #innerCanvas:Landroid/graphics/Canvas;
    :cond_c2
    :try_start_c2
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->_onDrawInner(Landroid/graphics/Canvas;)V

    .line 4285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 4286
    if-eqz v5, :cond_fe

    .line 4288
    move v0, v9

    neg-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move v0, v10

    neg-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 4290
    :cond_fe
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_101
    .catchall {:try_start_c2 .. :try_end_101} :catchall_1be

    move-result-wide v15

    .line 4292
    if-eqz v5, :cond_110

    .line 4293
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/webkit/OnPinchZoomListener;->postCacheBitmap(Landroid/graphics/Bitmap;)V

    .line 4295
    :cond_110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 4298
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_12a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->isDrawingWebView()Z

    move-result v20

    if-nez v20, :cond_12a

    if-eqz v5, :cond_12a

    .line 4302
    :cond_12a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_19c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->isDrawingWebView()Z

    move-result v20

    if-nez v20, :cond_19c

    .line 4304
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v19

    .line 4305
    .local v19, titleH:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_19c

    if-nez v19, :cond_19c

    .line 4306
    const/high16 v20, 0x40a0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move v6, v0

    .line 4308
    .local v6, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTitleShadow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v24

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v24, v0

    add-int v24, v24, v6

    invoke-virtual/range {v20 .. v24}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4310
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTitleShadow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4316
    .end local v6           #height:I
    .end local v19           #titleH:I
    :cond_19c
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v20

    if-eqz v20, :cond_1ab

    .line 4317
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/webkit/WebTextView;->onDrawSubstitute()V

    .line 4319
    :cond_1ab
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object/from16 v20, v0

    if-eqz v20, :cond_32

    .line 4320
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/webkit/WebViewCore;->signalRepaintDone()V

    goto/16 :goto_32

    .line 4292
    :catchall_1be
    move-exception v20

    :goto_1bf
    if-eqz v5, :cond_1cd

    .line 4293
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/webkit/OnPinchZoomListener;->postCacheBitmap(Landroid/graphics/Bitmap;)V

    .line 4295
    :cond_1cd
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 4292
    throw v20

    .end local v7           #innerCanvas:Landroid/graphics/Canvas;
    .restart local v8       #innerCanvas:Landroid/graphics/Canvas;
    :catchall_1d2
    move-exception v20

    move-object v7, v8

    .end local v8           #innerCanvas:Landroid/graphics/Canvas;
    .restart local v7       #innerCanvas:Landroid/graphics/Canvas;
    goto :goto_1bf
.end method

.method private _onDrawInner(Landroid/graphics/Canvas;)V
    .registers 14
    .parameter "canvas"

    .prologue
    const/4 v11, 0x0

    .line 4326
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_6

    .line 4384
    :goto_5
    return-void

    .line 4333
    :cond_6
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    or-int/2addr v0, v1

    if-nez v0, :cond_17

    iget-object v0, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    if-nez v0, :cond_17

    .line 4334
    iget v0, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_5

    .line 4338
    :cond_17
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 4339
    .local v9, saveCount:I
    iget-boolean v0, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    if-eqz v0, :cond_b4

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseWebViewBackgroundForOverscrollBackground()Z

    move-result v0

    if-nez v0, :cond_b4

    .line 4341
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBackground:Landroid/graphics/Paint;

    if-nez v0, :cond_6a

    .line 4342
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid/webkit/WebView;->mOverScrollBackground:Landroid/graphics/Paint;

    .line 4343
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10802ff

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 4346
    .local v6, bm:Landroid/graphics/Bitmap;
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBackground:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v6, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 4348
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    .line 4349
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4350
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4351
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    const v1, -0x444445

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4354
    .end local v6           #bm:Landroid/graphics/Bitmap;
    :cond_6a
    const/4 v10, 0x0

    .line 4355
    .local v10, top:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v8

    .line 4356
    .local v8, right:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v0

    add-int v7, v10, v0

    .line 4358
    .local v7, bottom:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4359
    iget v0, p0, Landroid/view/View;->mScrollX:I

    int-to-float v0, v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4360
    iget v0, p0, Landroid/view/View;->mScrollX:I

    neg-int v0, v0

    int-to-float v1, v0

    iget v0, p0, Landroid/view/View;->mScrollY:I

    sub-int v0, v10, v0

    int-to-float v2, v0

    iget v0, p0, Landroid/view/View;->mScrollX:I

    sub-int v0, v8, v0

    int-to-float v3, v0

    iget v0, p0, Landroid/view/View;->mScrollY:I

    sub-int v0, v7, v0

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 4362
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 4363
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4365
    const/high16 v1, -0x4080

    const/4 v0, 0x1

    sub-int v0, v10, v0

    int-to-float v2, v0

    int-to-float v3, v8

    int-to-float v4, v7

    sget-object v5, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4367
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v10, v8, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 4369
    .end local v7           #bottom:I
    .end local v8           #right:I
    .end local v10           #top:I
    :cond_b4
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v0, :cond_c2

    .line 4370
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v11, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4372
    :cond_c2
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    if-nez v0, :cond_ce

    .line 4373
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->drawContent(Landroid/graphics/Canvas;)V

    .line 4383
    :cond_c9
    :goto_c9
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_5

    .line 4375
    :cond_ce
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView$DragTrackerHandler;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-nez v0, :cond_d9

    .line 4377
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->drawContent(Landroid/graphics/Canvas;)V

    .line 4379
    :cond_d9
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    invoke-virtual {v0}, Landroid/webkit/WebView$DragTrackerHandler;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 4380
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    goto :goto_c9
.end method

.method private abortAnimation()V
    .registers 2

    .prologue
    .line 2846
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 2847
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView;->mLastVelocity:F

    .line 2848
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebView;)Landroid/widget/ZoomButtonsController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/WebView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 314
    invoke-direct {p0}, Landroid/webkit/WebView;->updateZoomButtonsEnabled()V

    return-void
.end method

.method static synthetic access$1000(Landroid/webkit/WebView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    return v0
.end method

.method static synthetic access$10000(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$1002(Landroid/webkit/WebView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    iput p1, p0, Landroid/webkit/WebView;->mActualScale:F

    return p1
.end method

.method static synthetic access$10100(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v0

    return v0
.end method

.method static synthetic access$10200(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v0

    return v0
.end method

.method static synthetic access$10300(Landroid/webkit/WebView;)Landroid/widget/OverScroller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method static synthetic access$10400(Landroid/webkit/WebView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 314
    invoke-direct {p0}, Landroid/webkit/WebView;->doDoubleTap()V

    return-void
.end method

.method static synthetic access$10500(Landroid/webkit/WebView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 314
    invoke-direct {p0}, Landroid/webkit/WebView;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$10600(Landroid/webkit/WebView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget-object v0, p0, Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10700(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/webkit/WebView;->mHeldMotionless:I

    return v0
.end method

.method static synthetic access$10702(Landroid/webkit/WebView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    iput p1, p0, Landroid/webkit/WebView;->mHeldMotionless:I

    return p1
.end method

.method static synthetic access$10800(Landroid/webkit/WebView;IZ)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 314
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$10900(Landroid/webkit/WebView;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 314
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->doMotionUp(II)V

    return-void
.end method

.method static synthetic access$1100(Landroid/webkit/WebView;FZZLandroid/webkit/WebView$ZoomMode;Landroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 314
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/WebView$ZoomMode;Landroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    return-void
.end method

.method static synthetic access$11000(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$11100(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$11200(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$11300(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$11400(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v0

    return v0
.end method

.method static synthetic access$11500(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$11600(Landroid/webkit/WebView;IIII)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 314
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->centerFitRect(IIII)V

    return-void
.end method

.method static synthetic access$11702(Landroid/webkit/WebView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    iput p1, p0, Landroid/webkit/WebView;->mHorizontalScrollBarMode:I

    return p1
.end method

.method static synthetic access$11802(Landroid/webkit/WebView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    iput p1, p0, Landroid/webkit/WebView;->mVerticalScrollBarMode:I

    return p1
.end method

.method static synthetic access$11900(Landroid/webkit/WebView;Landroid/graphics/Rect;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->doAdaptiveZoom(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method static synthetic access$12000(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget-boolean v0, p0, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    return v0
.end method

.method static synthetic access$12100(Landroid/webkit/WebView;)Landroid/webkit/WebMagnifier;
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    return-object v0
.end method

.method static synthetic access$12202(Landroid/webkit/WebView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    iput p1, p0, Landroid/webkit/WebView;->mController:I

    return p1
.end method

.method static synthetic access$12300(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget-boolean v0, p0, Landroid/webkit/WebView;->mbIsNewWordSelected:Z

    return v0
.end method

.method static synthetic access$12400(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget-boolean v0, p0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    return v0
.end method

.method static synthetic access$12402(Landroid/webkit/WebView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    iput-boolean p1, p0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    return p1
.end method

.method static synthetic access$12500(Landroid/webkit/WebView;)Landroid/webkit/WebView$WebTextSelectionListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget-object v0, p0, Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

    return-object v0
.end method

.method static synthetic access$12600(Landroid/webkit/WebView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$12700(Landroid/webkit/WebView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$12800(Landroid/webkit/WebView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method static synthetic access$13000(Landroid/webkit/WebView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$13100(Landroid/webkit/WebView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$13200(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget-object v0, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    return-object v0
.end method

.method static synthetic access$13202(Landroid/webkit/WebView;Landroid/webkit/WebSelectDialog;)Landroid/webkit/WebSelectDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    iput-object p1, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    return-object p1
.end method

.method static synthetic access$13300(Landroid/webkit/WebView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    return v0
.end method

.method static synthetic access$1500(Landroid/webkit/WebView;Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->drawContent(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/webkit/WebView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    return v0
.end method

.method static synthetic access$1900(Landroid/webkit/WebView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    return v0
.end method

.method static synthetic access$1902(Landroid/webkit/WebView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    iput p1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    return p1
.end method

.method static synthetic access$2000(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget-boolean v0, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    return v0
.end method

.method static synthetic access$2002(Landroid/webkit/WebView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    iput-boolean p1, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    return p1
.end method

.method static synthetic access$2100(Landroid/webkit/WebView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    return v0
.end method

.method static synthetic access$2102(Landroid/webkit/WebView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    iput p1, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    return p1
.end method

.method static synthetic access$2200(Landroid/webkit/WebView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    return v0
.end method

.method static synthetic access$2202(Landroid/webkit/WebView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    iput p1, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    return p1
.end method

.method static synthetic access$2302(Landroid/webkit/WebView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    iput p1, p0, Landroid/webkit/WebView;->mAnchorX:I

    return p1
.end method

.method static synthetic access$2400(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$2502(Landroid/webkit/WebView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    iput p1, p0, Landroid/webkit/WebView;->mAnchorY:I

    return p1
.end method

.method static synthetic access$2600(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2700()F
    .registers 1

    .prologue
    .line 314
    sget v0, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    return v0
.end method

.method static synthetic access$2800(Landroid/webkit/WebView;FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 314
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    return-void
.end method

.method static synthetic access$2900(Landroid/webkit/WebView;Z)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/webkit/WebView;Landroid/graphics/Picture;Landroid/os/Bundle;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 314
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->restoreHistoryPictureFields(Landroid/graphics/Picture;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3000(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    return v0
.end method

.method static synthetic access$3002(Landroid/webkit/WebView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    iput p1, p0, Landroid/webkit/WebView;->mTouchMode:I

    return p1
.end method

.method static synthetic access$3102(Landroid/webkit/WebView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    iput-boolean p1, p0, Landroid/webkit/WebView;->mConfirmMove:Z

    return p1
.end method

.method static synthetic access$3200(Landroid/webkit/WebView;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 314
    iget-wide v0, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    return-wide v0
.end method

.method static synthetic access$3300(Landroid/webkit/WebView;FFJ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 314
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->startTouch(FFJ)V

    return-void
.end method

.method static synthetic access$3400(Landroid/webkit/WebView;)Landroid/webkit/WebView$ExtendedZoomControls;
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/webkit/WebView;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3600()J
    .registers 2

    .prologue
    .line 314
    sget-wide v0, Landroid/webkit/WebView;->ZOOM_CONTROLS_TIMEOUT:J

    return-wide v0
.end method

.method static synthetic access$3700(Landroid/webkit/WebView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/webkit/WebView;->mLastTouchX:F

    return v0
.end method

.method static synthetic access$3702(Landroid/webkit/WebView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    iput p1, p0, Landroid/webkit/WebView;->mLastTouchX:F

    return p1
.end method

.method static synthetic access$3800(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$3900(Landroid/webkit/WebView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/webkit/WebView;->mLastTouchY:F

    return v0
.end method

.method static synthetic access$3902(Landroid/webkit/WebView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    iput p1, p0, Landroid/webkit/WebView;->mLastTouchY:F

    return p1
.end method

.method static synthetic access$4000(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$4100(Landroid/webkit/WebView;IIZ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 314
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->cancelWebCoreTouchEvent(IIZ)V

    return-void
.end method

.method static synthetic access$4200(Landroid/webkit/WebView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 314
    invoke-direct {p0}, Landroid/webkit/WebView;->updateSelection()V

    return-void
.end method

.method static synthetic access$4300(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget-boolean v0, p0, Landroid/webkit/WebView;->mAutoSelection:Z

    return v0
.end method

.method static synthetic access$4400(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$4500(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$4600(Landroid/webkit/WebView;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 314
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->selectClosestWord(II)V

    return-void
.end method

.method static synthetic access$4700(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    return v0
.end method

.method static synthetic access$4900(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$5000(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$5100(Landroid/webkit/WebView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 314
    invoke-direct {p0}, Landroid/webkit/WebView;->doShortPress()V

    return-void
.end method

.method static synthetic access$5200(Landroid/webkit/WebView;IIZ)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 314
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->setContentScrollBy(IIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Landroid/webkit/WebView;II)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 314
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->setContentScrollTo(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Landroid/webkit/WebView;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 314
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->spawnContentScrollTo(II)V

    return-void
.end method

.method static synthetic access$5500(Landroid/webkit/WebView;Landroid/webkit/WebViewCore$RestoreState;IIZ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 314
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->updateZoomRange(Landroid/webkit/WebViewCore$RestoreState;IIZ)V

    return-void
.end method

.method static synthetic access$5600(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDelayedDeleteRootLayer:Z

    return v0
.end method

.method static synthetic access$5602(Landroid/webkit/WebView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    iput-boolean p1, p0, Landroid/webkit/WebView;->mDelayedDeleteRootLayer:Z

    return p1
.end method

.method static synthetic access$5700(Landroid/webkit/WebView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeSetRootLayer(I)V

    return-void
.end method

.method static synthetic access$5800(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    return v0
.end method

.method static synthetic access$5900(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/webkit/WebView;->mInitialScaleInPercent:I

    return v0
.end method

.method static synthetic access$6000(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget-boolean v0, p0, Landroid/webkit/WebView;->mPreserveZoom:Z

    return v0
.end method

.method static synthetic access$6100(Landroid/webkit/WebView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 314
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissWebSelectDialog()V

    return-void
.end method

.method static synthetic access$6200(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget-boolean v0, p0, Landroid/webkit/WebView;->mFindIsUp:Z

    return v0
.end method

.method static synthetic access$6300(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/webkit/WebView;->mFindHeight:I

    return v0
.end method

.method static synthetic access$6400(Landroid/webkit/WebView;IIZ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 314
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->recordNewContentSize(IIZ)V

    return-void
.end method

.method static synthetic access$6500(Landroid/webkit/WebView;Landroid/graphics/Rect;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->invalidateContentRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$6600(Landroid/webkit/WebView;)Landroid/webkit/WebView$PictureListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget-object v0, p0, Landroid/webkit/WebView;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    return-object v0
.end method

.method static synthetic access$6700(Landroid/webkit/WebView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/webkit/WebView;->mDefaultScale:F

    return v0
.end method

.method static synthetic access$6800(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget-boolean v0, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    return v0
.end method

.method static synthetic access$6900(Landroid/webkit/WebView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/webkit/WebView;->mInvActualScale:F

    return v0
.end method

.method static synthetic access$700(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    return-object v0
.end method

.method static synthetic access$7002(Landroid/webkit/WebView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    iput-boolean p1, p0, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    return p1
.end method

.method static synthetic access$7100(Landroid/webkit/WebView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeCreate(I)V

    return-void
.end method

.method static synthetic access$7200(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/webkit/WebView;->mTextGeneration:I

    return v0
.end method

.method static synthetic access$7300(Landroid/webkit/WebView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->displaySoftKeyboard(Z)V

    return-void
.end method

.method static synthetic access$7400(Landroid/webkit/WebView;IILandroid/webkit/WebViewCore$TextSelectionData;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 314
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V

    return-void
.end method

.method static synthetic access$7500(Landroid/webkit/WebView;IIZJ)Z
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 314
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7600(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7700(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget-boolean v0, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    return v0
.end method

.method static synthetic access$7702(Landroid/webkit/WebView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    iput-boolean p1, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    return p1
.end method

.method static synthetic access$7800(Landroid/webkit/WebView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget-object v0, p0, Landroid/webkit/WebView;->mFocusedNodeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7900(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/webkit/WebView;->mFocusedNodePointer:I

    return v0
.end method

.method static synthetic access$800(Landroid/webkit/WebView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8000(Landroid/webkit/WebView;Ljava/lang/String;I)Landroid/graphics/Rect;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 314
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->nativeGetNodeBounds(Ljava/lang/String;I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8100(Landroid/webkit/WebView;Landroid/graphics/Rect;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 314
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->requestSelectElementOnScreen(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method static synthetic access$8200(Landroid/webkit/WebView;IIII)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 314
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->viewInvalidate(IIII)V

    return-void
.end method

.method static synthetic access$8302(Landroid/webkit/WebView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    iput-boolean p1, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    return p1
.end method

.method static synthetic access$8402(Landroid/webkit/WebView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    iput-boolean p1, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    return p1
.end method

.method static synthetic access$8500(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget-boolean v0, p0, Landroid/webkit/WebView;->mForwardTouchEvents_plugin:Z

    return v0
.end method

.method static synthetic access$8502(Landroid/webkit/WebView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    iput-boolean p1, p0, Landroid/webkit/WebView;->mForwardTouchEvents_plugin:Z

    return p1
.end method

.method static synthetic access$8600(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget-boolean v0, p0, Landroid/webkit/WebView;->mForwardTouchEvents_others:Z

    return v0
.end method

.method static synthetic access$8602(Landroid/webkit/WebView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    iput-boolean p1, p0, Landroid/webkit/WebView;->mForwardTouchEvents_others:Z

    return p1
.end method

.method static synthetic access$8702(Landroid/webkit/WebView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    iput-boolean p1, p0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    return p1
.end method

.method static synthetic access$8800(Landroid/webkit/WebView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/webkit/WebView;->mLastDeferTouchX:F

    return v0
.end method

.method static synthetic access$8802(Landroid/webkit/WebView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    iput p1, p0, Landroid/webkit/WebView;->mLastDeferTouchX:F

    return p1
.end method

.method static synthetic access$8900(Landroid/webkit/WebView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/webkit/WebView;->mLastDeferTouchY:F

    return v0
.end method

.method static synthetic access$8902(Landroid/webkit/WebView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    iput p1, p0, Landroid/webkit/WebView;->mLastDeferTouchY:F

    return p1
.end method

.method static synthetic access$900(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    return-object v0
.end method

.method static synthetic access$9000(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/webkit/WebView;->mDeferTouchMode:I

    return v0
.end method

.method static synthetic access$9002(Landroid/webkit/WebView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    iput p1, p0, Landroid/webkit/WebView;->mDeferTouchMode:I

    return p1
.end method

.method static synthetic access$9100(Landroid/webkit/WebView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 314
    invoke-direct {p0}, Landroid/webkit/WebView;->startDrag()V

    return-void
.end method

.method static synthetic access$9200(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$9300(Landroid/webkit/WebView;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$9400(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$9500(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$9600(Landroid/webkit/WebView;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$9700(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$9800(Landroid/webkit/WebView;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 314
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->doDrag(II)V

    return-void
.end method

.method static synthetic access$9900(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method private calcOurContentVisibleRect(Landroid/graphics/Rect;)V
    .registers 5
    .parameter "r"

    .prologue
    const/4 v2, 0x0

    .line 3122
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 3124
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 3129
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 3130
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mContentWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 3131
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 3132
    return-void
.end method

.method private calcOurContentVisibleRectF(Landroid/graphics/RectF;)V
    .registers 6
    .parameter "r"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 3139
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3140
    .local v0, ri:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 3142
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentXf(I)F

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 3147
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentYf(I)F

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 3148
    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentXf(I)F

    move-result v1

    iget v2, p0, Landroid/webkit/WebView;->mContentWidth:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 3149
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentYf(I)F

    move-result v1

    iget v2, p0, Landroid/webkit/WebView;->mContentHeight:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 3150
    return-void
.end method

.method private calcOurVisibleRect(Landroid/graphics/Rect;)V
    .registers 5
    .parameter "r"

    .prologue
    .line 3112
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 3113
    .local v0, p:Landroid/graphics/Point;
    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 3114
    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 3115
    iget-boolean v1, p0, Landroid/webkit/WebView;->mFindIsUp:Z

    if-eqz v1, :cond_1c

    .line 3116
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/webkit/WebView;->mFindHeight:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 3118
    :cond_1c
    return-void
.end method

.method private cancelWebCoreTouchEvent(IIZ)V
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "removeEvents"

    .prologue
    const/16 v2, 0x8d

    .line 7327
    invoke-virtual {p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 7328
    if-eqz p3, :cond_f

    .line 7329
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 7331
    :cond_f
    new-instance v0, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 7332
    .local v0, ted:Landroid/webkit/WebViewCore$TouchEventData;
    iput p1, v0, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 7333
    iput p2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 7334
    const/4 v1, 0x3

    iput v1, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 7335
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7336
    const/4 v1, 0x4

    iput v1, p0, Landroid/webkit/WebView;->mPreventDefault:I

    .line 7338
    .end local v0           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_23
    return-void
.end method

.method private centerFitRect(IIII)V
    .registers 27
    .parameter "docX"
    .parameter "docY"
    .parameter "docWidth"
    .parameter "docHeight"

    .prologue
    .line 8274
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v17

    .line 8275
    .local v17, viewWidth:I
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v16

    .line 8276
    .local v16, viewHeight:I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 8278
    .local v15, scale:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move/from16 v18, v0

    cmpg-float v18, v15, v18

    if-gez v18, :cond_77

    .line 8279
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move v15, v0

    .line 8283
    :cond_33
    :goto_33
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v18, v0

    sub-float v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    sget v19, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v18, v18, v19

    if-gez v18, :cond_87

    .line 8284
    div-int/lit8 v18, p3, 0x2

    add-int v18, v18, p1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v18

    div-int/lit8 v19, v17, 0x2

    sub-int v18, v18, v19

    div-int/lit8 v19, p4, 0x2

    add-int v19, v19, p2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v19

    div-int/lit8 v20, v16, 0x2

    sub-int v19, v19, v20

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 8317
    :goto_76
    return-void

    .line 8280
    :cond_77
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaxZoomScale:F

    move/from16 v18, v0

    cmpl-float v18, v15, v18

    if-lez v18, :cond_33

    .line 8281
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaxZoomScale:F

    move v15, v0

    goto :goto_33

    .line 8288
    :cond_87
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v9, v18, v19

    .line 8289
    .local v9, oldScreenX:F
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v13, v18, v15

    .line 8290
    .local v13, rectViewX:F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v12, v18, v15

    .line 8291
    .local v12, rectViewWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v6, v18, v15

    .line 8292
    .local v6, newMaxWidth:F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v12

    const/high16 v19, 0x4000

    div-float v7, v18, v19

    .line 8294
    .local v7, newScreenX:F
    cmpl-float v18, v7, v13

    if-lez v18, :cond_17a

    .line 8295
    move v7, v13

    .line 8299
    :cond_cc
    :goto_cc
    mul-float v18, v9, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    mul-float v19, v19, v7

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    sub-float v19, v15, v19

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 8301
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v10, v18, v19

    .line 8303
    .local v10, oldScreenY:F
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v15

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v14, v18, v19

    .line 8304
    .local v14, rectViewY:F
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v11, v18, v15

    .line 8305
    .local v11, rectViewHeight:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v15

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v5, v18, v19

    .line 8306
    .local v5, newMaxHeight:F
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v11

    const/high16 v19, 0x4000

    div-float v8, v18, v19

    .line 8308
    .local v8, newScreenY:F
    cmpl-float v18, v8, v14

    if-lez v18, :cond_18d

    .line 8309
    move v8, v14

    .line 8313
    :cond_14e
    :goto_14e
    mul-float v18, v10, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    mul-float v19, v19, v8

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    sub-float v19, v15, v19

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 8315
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->zoomWithPreview(FZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    goto/16 :goto_76

    .line 8296
    .end local v5           #newMaxHeight:F
    .end local v8           #newScreenY:F
    .end local v10           #oldScreenY:F
    .end local v11           #rectViewHeight:F
    .end local v14           #rectViewY:F
    :cond_17a
    sub-float v18, v6, v13

    sub-float v18, v18, v12

    cmpl-float v18, v7, v18

    if-lez v18, :cond_cc

    .line 8297
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v19, v6, v13

    sub-float v7, v18, v19

    goto/16 :goto_cc

    .line 8310
    .restart local v5       #newMaxHeight:F
    .restart local v8       #newScreenY:F
    .restart local v10       #oldScreenY:F
    .restart local v11       #rectViewHeight:F
    .restart local v14       #rectViewY:F
    :cond_18d
    sub-float v18, v5, v14

    sub-float v18, v18, v11

    cmpl-float v18, v8, v18

    if-lez v18, :cond_14e

    .line 8311
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v19, v5, v14

    sub-float v8, v18, v19

    goto :goto_14e
.end method

.method private clearHelpers()V
    .registers 2

    .prologue
    .line 1835
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 1836
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    .line 1837
    return-void
.end method

.method private static computeDuration(II)I
    .registers 6
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 3785
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3786
    .local v0, distance:I
    mul-int/lit16 v2, v0, 0x3e8

    div-int/lit16 v1, v2, 0x1e0

    .line 3787
    .local v1, duration:I
    const/16 v2, 0x2ee

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private computeMaxScrollX()I
    .registers 3

    .prologue
    .line 7789
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private computeMaxScrollY()I
    .registers 3

    .prologue
    .line 7793
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private computeRealHorizontalScrollRange()I
    .registers 3

    .prologue
    .line 3238
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v0, :cond_7

    .line 3239
    iget v0, p0, Landroid/webkit/WebView;->mHistoryWidth:I

    .line 3246
    :goto_6
    return v0

    .line 3240
    :cond_7
    iget v0, p0, Landroid/webkit/WebView;->mHorizontalScrollBarMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    sub-float/2addr v0, v1

    sget v1, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1c

    .line 3243
    invoke-virtual {p0}, Landroid/webkit/WebView;->computeHorizontalScrollExtent()I

    move-result v0

    goto :goto_6

    .line 3246
    :cond_1c
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    int-to-float v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_6
.end method

.method private computeRealVerticalScrollRange()I
    .registers 3

    .prologue
    .line 3272
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v0, :cond_7

    .line 3273
    iget v0, p0, Landroid/webkit/WebView;->mHistoryHeight:I

    .line 3280
    :goto_6
    return v0

    .line 3274
    :cond_7
    iget v0, p0, Landroid/webkit/WebView;->mVerticalScrollBarMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    sub-float/2addr v0, v1

    sget v1, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1c

    .line 3277
    invoke-virtual {p0}, Landroid/webkit/WebView;->computeVerticalScrollExtent()I

    move-result v0

    goto :goto_6

    .line 3280
    :cond_1c
    iget v0, p0, Landroid/webkit/WebView;->mContentHeight:I

    int-to-float v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_6
.end method

.method private contentSizeChanged(Z)V
    .registers 4
    .parameter "updateLayout"

    .prologue
    .line 3970
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    or-int/2addr v0, v1

    if-nez v0, :cond_8

    .line 3989
    :cond_7
    :goto_7
    return-void

    .line 3974
    :cond_8
    iget-boolean v0, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v0, :cond_1e

    .line 3975
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v1

    if-ne v0, v1, :cond_1a

    if-eqz p1, :cond_7

    .line 3977
    :cond_1a
    invoke-virtual {p0}, Landroid/webkit/WebView;->requestLayout()V

    goto :goto_7

    .line 3979
    :cond_1e
    iget-boolean v0, p0, Landroid/webkit/WebView;->mWidthCanMeasure:Z

    if-eqz v0, :cond_34

    .line 3980
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mContentWidth:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v1

    if-ne v0, v1, :cond_30

    if-eqz p1, :cond_7

    .line 3982
    :cond_30
    invoke-virtual {p0}, Landroid/webkit/WebView;->requestLayout()V

    goto :goto_7

    .line 3987
    :cond_34
    invoke-direct {p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    goto :goto_7
.end method

.method private contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 7
    .parameter "x"

    .prologue
    .line 2798
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private createZoomControls()Landroid/webkit/WebView$ExtendedZoomControls;
    .registers 4

    .prologue
    .line 8004
    new-instance v0, Landroid/webkit/WebView$ExtendedZoomControls;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView$ExtendedZoomControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8006
    .local v0, zoomControls:Landroid/webkit/WebView$ExtendedZoomControls;
    new-instance v1, Landroid/webkit/WebView$10;

    invoke-direct {v1, p0}, Landroid/webkit/WebView$10;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ExtendedZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    .line 8015
    new-instance v1, Landroid/webkit/WebView$11;

    invoke-direct {v1, p0}, Landroid/webkit/WebView$11;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ExtendedZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    .line 8024
    return-object v0
.end method

.method private didUpdateTextViewBounds(Z)Z
    .registers 11
    .parameter "allowIntersect"

    .prologue
    const/4 v8, 0x0

    .line 4455
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateNodeBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 4456
    .local v0, contentBounds:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 4457
    .local v1, vBox:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 4458
    .local v2, visibleRect:Landroid/graphics/Rect;
    invoke-direct {p0, v2}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 4463
    if-eqz p1, :cond_3a

    invoke-static {v2, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 4468
    :cond_19
    :goto_19
    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/webkit/WebTextView;->setRect(IIII)V

    .line 4470
    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateTextSize()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v8, v4}, Landroid/webkit/WebTextView;->setTextSize(IF)V

    .line 4473
    const/4 v3, 0x1

    return v3

    .line 4463
    :cond_3a
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 4466
    :cond_40
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v3, v4, v8, v8}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    goto :goto_19
.end method

.method public static disablePlatformNotifications()V
    .registers 0

    .prologue
    .line 1886
    invoke-static {}, Landroid/webkit/Network;->disablePlatformNotifications()V

    .line 1887
    return-void
.end method

.method private dismissWebSelectDialog()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2475
    iget-boolean v0, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    iget-object v0, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    if-eqz v0, :cond_29

    .line 2476
    iget-object v0, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    invoke-virtual {v0}, Landroid/webkit/WebSelectDialog;->dismiss()V

    .line 2477
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    .line 2478
    iput-boolean v3, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    .line 2480
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x7c

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2482
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x85

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2485
    :cond_29
    return-void
.end method

.method private displaySoftKeyboard(Z)V
    .registers 9
    .parameter "isTextView"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4801
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 4802
    .local v0, client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_b

    .line 4803
    invoke-virtual {v0, p0, p1}, Landroid/webkit/WebChromeClient;->onDisplaySoftKeyboard(Landroid/webkit/WebView;Z)V

    .line 4806
    :cond_b
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 4810
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    iget v3, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v4, p0, Landroid/webkit/WebView;->mDefaultScale:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_48

    move v2, v6

    .line 4811
    .local v2, zoom:Z
    :goto_20
    if-eqz v2, :cond_32

    .line 4812
    iput-boolean v5, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 4813
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchX:F

    iput v3, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 4814
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchY:F

    iput v3, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 4816
    iget v3, p0, Landroid/webkit/WebView;->mDefaultScale:F

    const/4 v4, 0x0

    invoke-direct {p0, v3, v5, v5, v4}, Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 4818
    :cond_32
    if-eqz p1, :cond_4a

    .line 4819
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 4820
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 4821
    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v1, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 4822
    if-eqz v2, :cond_47

    .line 4823
    invoke-direct {p0, v6}, Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z

    .line 4834
    :cond_47
    :goto_47
    return-void

    .end local v2           #zoom:Z
    :cond_48
    move v2, v5

    .line 4810
    goto :goto_20

    .line 4833
    .restart local v2       #zoom:Z
    :cond_4a
    invoke-virtual {v1, p0, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_47
.end method

.method private doAdaptiveZoom(Landroid/graphics/Rect;)V
    .registers 16
    .parameter "blockRect"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/high16 v11, 0x3f00

    const/4 v10, 0x1

    .line 8490
    iget-object v8, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v8}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v8

    if-nez v8, :cond_12

    .line 8642
    :cond_11
    :goto_11
    return-void

    .line 8494
    :cond_12
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eq v8, v10, :cond_11

    .line 8498
    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 8500
    .local v2, oldScale:F
    iget v8, p0, Landroid/webkit/WebView;->mLastTouchX:F

    iput v8, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 8501
    iget v8, p0, Landroid/webkit/WebView;->mLastTouchY:F

    iput v8, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 8502
    iget v8, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    float-to-int v8, v8

    iget v9, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v8, v9

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v8

    iput v8, p0, Landroid/webkit/WebView;->mAnchorX:I

    .line 8503
    iget v8, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    float-to-int v8, v8

    iget v9, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v8, v9

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v8

    iput v8, p0, Landroid/webkit/WebView;->mAnchorY:I

    .line 8512
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    .line 8514
    .local v5, settings:Landroid/webkit/WebSettings;
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 8515
    .local v0, blockWidth:I
    if-lez v0, :cond_11

    .line 8516
    const/4 v7, 0x0

    .line 8517
    .local v7, zoomToMin:Z
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v8

    const/16 v9, 0xa

    sub-int v6, v8, v9

    .line 8519
    .local v6, viewWidth:I
    int-to-float v8, v6

    int-to-float v9, v0

    div-float v1, v8, v9

    .line 8521
    .local v1, newScale:F
    const/high16 v8, 0x4000

    cmpl-float v8, v1, v8

    if-lez v8, :cond_59

    .line 8523
    const/high16 v1, 0x4000

    .line 8532
    :cond_59
    iget v8, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v9, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    cmpl-float v8, v8, v9

    if-nez v8, :cond_13b

    .line 8535
    iput-boolean v12, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 8537
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 8538
    .local v4, scaledRect:Landroid/graphics/Rect;
    iget v8, p0, Landroid/webkit/WebView;->mActualScale:F

    invoke-virtual {v4, v8}, Landroid/graphics/Rect;->scale(F)V

    .line 8543
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    iget v9, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iput v8, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 8545
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float v3, v8, v1

    .line 8547
    .local v3, scaledHeight:F
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v3, v8

    if-gtz v8, :cond_96

    .line 8551
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iput v8, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 8553
    :cond_96
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v8

    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v11

    iput v8, p0, Landroid/webkit/WebView;->mViewCenterYCorrection:F

    .line 8559
    iget v8, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    float-to-int v8, v8

    iget v9, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v8, v9

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v8

    iput v8, p0, Landroid/webkit/WebView;->mAnchorX:I

    .line 8560
    iget v8, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    float-to-int v8, v8

    iget v9, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v8, v9

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v8

    iput v8, p0, Landroid/webkit/WebView;->mAnchorY:I

    .line 8562
    iget-object v8, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v8, :cond_137

    iget-object v8, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v8}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v8

    if-ne v8, v10, :cond_137

    .line 8563
    iget-object v8, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v8}, Landroid/webkit/OnPinchZoomListener;->overrideDoubleTap()Z

    move-result v8

    if-ne v8, v10, :cond_133

    .line 8565
    iget-object v8, p0, Landroid/webkit/WebView;->mZoomInfo:Landroid/webkit/OnPinchZoomListener$ZoomInfo;

    invoke-direct {p0, v1, v8}, Landroid/webkit/WebView;->zoomWithPreviewEx(FLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    .line 8566
    iget-object v8, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    iget-object v9, p0, Landroid/webkit/WebView;->mZoomInfo:Landroid/webkit/OnPinchZoomListener$ZoomInfo;

    invoke-interface {v8, v2, v9}, Landroid/webkit/OnPinchZoomListener;->doDoubleTap(FLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 8612
    .end local v3           #scaledHeight:F
    .end local v4           #scaledRect:Landroid/graphics/Rect;
    :goto_db
    if-eqz v7, :cond_11

    .line 8613
    iput-boolean v12, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 8620
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v11

    iput v8, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 8621
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v11

    iput v8, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 8622
    iget v8, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    float-to-int v8, v8

    iget v9, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v8, v9

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v8

    iput v8, p0, Landroid/webkit/WebView;->mAnchorX:I

    .line 8623
    iget v8, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    float-to-int v8, v8

    iget v9, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v8, v9

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v8

    iput v8, p0, Landroid/webkit/WebView;->mAnchorY:I

    .line 8626
    iget-object v8, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v8, :cond_14e

    iget-object v8, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v8}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v8

    if-ne v8, v10, :cond_14e

    .line 8627
    iget-object v8, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v8}, Landroid/webkit/OnPinchZoomListener;->overrideDoubleTap()Z

    move-result v8

    if-ne v8, v10, :cond_145

    .line 8628
    iget-object v8, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v8}, Landroid/webkit/WebViewCore;->isMobilePage()Z

    move-result v8

    if-eqz v8, :cond_13d

    .line 8629
    iget v8, p0, Landroid/webkit/WebView;->mDefaultScale:F

    iget-object v9, p0, Landroid/webkit/WebView;->mZoomInfo:Landroid/webkit/OnPinchZoomListener$ZoomInfo;

    invoke-direct {p0, v8, v9}, Landroid/webkit/WebView;->zoomWithPreviewEx(FLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    .line 8633
    :goto_12a
    iget-object v8, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    iget-object v9, p0, Landroid/webkit/WebView;->mZoomInfo:Landroid/webkit/OnPinchZoomListener$ZoomInfo;

    invoke-interface {v8, v2, v9}, Landroid/webkit/OnPinchZoomListener;->doDoubleTap(FLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    goto/16 :goto_11

    .line 8568
    .restart local v3       #scaledHeight:F
    .restart local v4       #scaledRect:Landroid/graphics/Rect;
    :cond_133
    invoke-direct {p0, v1, v13}, Landroid/webkit/WebView;->zoomWithPreviewEx(FLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    goto :goto_db

    .line 8571
    :cond_137
    invoke-direct {p0, v1, v13}, Landroid/webkit/WebView;->zoomWithPreviewEx(FLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    goto :goto_db

    .line 8576
    .end local v3           #scaledHeight:F
    .end local v4           #scaledRect:Landroid/graphics/Rect;
    :cond_13b
    const/4 v7, 0x1

    goto :goto_db

    .line 8631
    :cond_13d
    iget v8, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    iget-object v9, p0, Landroid/webkit/WebView;->mZoomInfo:Landroid/webkit/OnPinchZoomListener$ZoomInfo;

    invoke-direct {p0, v8, v9}, Landroid/webkit/WebView;->zoomWithPreviewEx(FLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    goto :goto_12a

    .line 8635
    :cond_145
    iget v8, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    iget-object v9, p0, Landroid/webkit/WebView;->mZoomInfo:Landroid/webkit/OnPinchZoomListener$ZoomInfo;

    invoke-direct {p0, v8, v9}, Landroid/webkit/WebView;->zoomWithPreviewEx(FLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    goto/16 :goto_11

    .line 8638
    :cond_14e
    iget v8, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    iget-object v9, p0, Landroid/webkit/WebView;->mZoomInfo:Landroid/webkit/OnPinchZoomListener$ZoomInfo;

    invoke-direct {p0, v8, v9}, Landroid/webkit/WebView;->zoomWithPreviewEx(FLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    goto/16 :goto_11
.end method

.method private doDoubleTap()V
    .registers 15

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 8352
    iget-object v7, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v7}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v7

    if-nez v7, :cond_11

    .line 8428
    :cond_10
    :goto_10
    return-void

    .line 8356
    :cond_11
    iget-boolean v7, p0, Landroid/webkit/WebView;->mIgnoreDoubleTap:Z

    if-nez v7, :cond_10

    .line 8361
    sget-boolean v7, Landroid/webkit/WebView;->ENABLE_ADAPTIVE_ZOOM:Z

    if-eqz v7, :cond_29

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v7

    sget-object v8, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v7, v8, :cond_29

    .line 8362
    invoke-direct {p0}, Landroid/webkit/WebView;->prepareForAdaptiveZoom()V

    goto :goto_10

    .line 8366
    :cond_29
    iget v7, p0, Landroid/webkit/WebView;->mLastTouchX:F

    iput v7, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 8367
    iget v7, p0, Landroid/webkit/WebView;->mLastTouchY:F

    iput v7, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 8368
    iget v7, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    float-to-int v7, v7

    iget v8, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v7, v8

    invoke-virtual {p0, v7}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v7

    iput v7, p0, Landroid/webkit/WebView;->mAnchorX:I

    .line 8369
    iget v7, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    float-to-int v7, v7

    iget v8, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v7, v8

    invoke-virtual {p0, v7}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v7

    iput v7, p0, Landroid/webkit/WebView;->mAnchorY:I

    .line 8370
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    .line 8371
    .local v4, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v4, v11}, Landroid/webkit/WebSettings;->setDoubleTapToastCount(I)V

    .line 8373
    invoke-virtual {p0}, Landroid/webkit/WebView;->dismissZoomControl()V

    .line 8374
    iget-object v7, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    iget v8, p0, Landroid/webkit/WebView;->mAnchorX:I

    iget v9, p0, Landroid/webkit/WebView;->mAnchorY:I

    invoke-virtual {v7, v8, v9}, Landroid/webkit/ViewManager;->hitTest(II)Landroid/webkit/ViewManager$ChildView;

    move-result-object v3

    .line 8375
    .local v3, plugin:Landroid/webkit/ViewManager$ChildView;
    if-eqz v3, :cond_8c

    .line 8376
    invoke-direct {p0, v3}, Landroid/webkit/WebView;->isPluginFitOnScreen(Landroid/webkit/ViewManager$ChildView;)Z

    move-result v7

    if-eqz v7, :cond_7e

    .line 8377
    iput-boolean v10, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 8379
    iget v7, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v8

    if-ge v7, v8, :cond_71

    iput v11, p0, Landroid/view/View;->mScrollY:I

    .line 8380
    :cond_71
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-direct {p0, v7, v10, v12}, Landroid/webkit/WebView;->zoomWithPreview(FZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    goto :goto_10

    .line 8383
    :cond_7e
    iput-boolean v11, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 8384
    iget v7, v3, Landroid/webkit/ViewManager$ChildView;->x:I

    iget v8, v3, Landroid/webkit/ViewManager$ChildView;->y:I

    iget v9, v3, Landroid/webkit/ViewManager$ChildView;->width:I

    iget v10, v3, Landroid/webkit/ViewManager$ChildView;->height:I

    invoke-direct {p0, v7, v8, v9, v10}, Landroid/webkit/WebView;->centerFitRect(IIII)V

    goto :goto_10

    .line 8388
    :cond_8c
    const/4 v6, 0x0

    .line 8389
    .local v6, zoomToDefault:Z
    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v7

    sget-object v8, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v7, v8, :cond_f3

    iget v7, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v8, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_f3

    .line 8391
    iget v7, p0, Landroid/webkit/WebView;->mActualScale:F

    invoke-direct {p0, v7, v10, v10, v12}, Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 8392
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    int-to-float v8, v8

    div-float v2, v7, v8

    .line 8393
    .local v2, overviewScale:F
    iget v7, p0, Landroid/webkit/WebView;->mActualScale:F

    sub-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_c2

    .line 8394
    iput-boolean v10, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 8409
    .end local v2           #overviewScale:F
    :cond_c2
    :goto_c2
    if-eqz v6, :cond_10

    .line 8410
    iput-boolean v11, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 8411
    iget v7, p0, Landroid/webkit/WebView;->mAnchorX:I

    iget v8, p0, Landroid/webkit/WebView;->mAnchorY:I

    iget v9, p0, Landroid/webkit/WebView;->mActualScale:F

    invoke-direct {p0, v7, v8, v9}, Landroid/webkit/WebView;->nativeGetBlockLeftEdge(IIF)I

    move-result v0

    .line 8412
    .local v0, left:I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_ec

    .line 8414
    if-ge v0, v13, :cond_131

    move v7, v11

    :goto_d6
    invoke-virtual {p0, v7}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v7

    iget v8, p0, Landroid/view/View;->mScrollX:I

    sub-int v5, v7, v8

    .line 8418
    .local v5, viewLeft:I
    if-lez v5, :cond_134

    .line 8419
    int-to-float v7, v5

    iget v8, p0, Landroid/webkit/WebView;->mDefaultScale:F

    mul-float/2addr v7, v8

    iget v8, p0, Landroid/webkit/WebView;->mDefaultScale:F

    iget v9, p0, Landroid/webkit/WebView;->mActualScale:F

    sub-float/2addr v8, v9

    div-float/2addr v7, v8

    iput v7, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 8426
    .end local v5           #viewLeft:I
    :cond_ec
    :goto_ec
    iget v7, p0, Landroid/webkit/WebView;->mDefaultScale:F

    invoke-direct {p0, v7, v10, v12}, Landroid/webkit/WebView;->zoomWithPreview(FZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    goto/16 :goto_10

    .line 8396
    .end local v0           #left:I
    :cond_f3
    iget-boolean v7, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    if-nez v7, :cond_12f

    .line 8397
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    int-to-float v8, v8

    div-float v1, v7, v8

    .line 8398
    .local v1, newScale:F
    iget v7, p0, Landroid/webkit/WebView;->mActualScale:F

    sub-float/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_11e

    .line 8399
    iput-boolean v10, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 8401
    iget v7, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v8

    if-ge v7, v8, :cond_11a

    iput v11, p0, Landroid/view/View;->mScrollY:I

    .line 8402
    :cond_11a
    invoke-direct {p0, v1, v10, v12}, Landroid/webkit/WebView;->zoomWithPreview(FZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    goto :goto_c2

    .line 8403
    :cond_11e
    iget v7, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v8, p0, Landroid/webkit/WebView;->mDefaultScale:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_c2

    .line 8404
    const/4 v6, 0x1

    goto :goto_c2

    .line 8407
    .end local v1           #newScale:F
    :cond_12f
    const/4 v6, 0x1

    goto :goto_c2

    .line 8414
    .restart local v0       #left:I
    :cond_131
    sub-int v7, v0, v13

    goto :goto_d6

    .line 8422
    .restart local v5       #viewLeft:I
    :cond_134
    invoke-virtual {p0, v5, v11}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 8423
    const/4 v7, 0x0

    iput v7, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    goto :goto_ec
.end method

.method private doDrag(II)V
    .registers 15
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    .line 7384
    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v0}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v0

    if-ne v0, v9, :cond_17

    .line 7386
    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v0, p1, p2}, Landroid/webkit/OnPinchZoomListener;->doDrag(II)Z

    move-result v0

    if-ne v0, v9, :cond_17

    .line 7423
    :cond_16
    :goto_16
    return-void

    .line 7390
    :cond_17
    or-int v0, p1, p2

    if-eqz v0, :cond_60

    .line 7391
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 7392
    .local v3, oldX:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 7393
    .local v4, oldY:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v5

    .line 7394
    .local v5, rangeX:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v6

    .line 7396
    .local v6, rangeY:I
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v0, :cond_2f

    .line 7398
    iput p1, p0, Landroid/webkit/WebView;->mOverscrollDeltaX:I

    .line 7399
    iput p2, p0, Landroid/webkit/WebView;->mOverscrollDeltaY:I

    .line 7402
    :cond_2f
    iget v7, p0, Landroid/webkit/WebView;->mOverscrollDistance:I

    iget v8, p0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    .line 7405
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v0, :cond_60

    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-nez v0, :cond_60

    .line 7408
    :cond_5d
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 7411
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v5           #rangeX:I
    .end local v6           #rangeY:I
    :cond_60
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    if-nez v0, :cond_16

    .line 7412
    iget v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    iget v1, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_92

    move v10, v9

    .line 7413
    .local v10, showPlusMinus:Z
    :goto_73
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    if-eqz v0, :cond_16

    if-eqz v10, :cond_16

    .line 7414
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    invoke-virtual {v0}, Landroid/webkit/WebView$ExtendedZoomControls;->getVisibility()I

    move-result v0

    if-nez v0, :cond_94

    .line 7415
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7419
    :goto_88
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    sget-wide v7, Landroid/webkit/WebView;->ZOOM_CONTROLS_TIMEOUT:J

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_16

    .end local v10           #showPlusMinus:Z
    :cond_92
    move v10, v11

    .line 7412
    goto :goto_73

    .line 7417
    .restart local v10       #showPlusMinus:Z
    :cond_94
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    invoke-virtual {v0, v10, v11}, Landroid/webkit/WebView$ExtendedZoomControls;->show(ZZ)V

    goto :goto_88
.end method

.method private doFling()V
    .registers 22

    .prologue
    .line 7805
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mIgnoreFling:Z

    move v3, v0

    if-eqz v3, :cond_8

    .line 7911
    :cond_7
    :goto_7
    return-void

    .line 7809
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v3, v0

    if-eqz v3, :cond_7

    .line 7812
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v9

    .line 7813
    .local v9, maxX:I
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v11

    .line 7815
    .local v11, maxY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v3, v0

    const/16 v4, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaximumFling:I

    move v5, v0

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 7816
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    move v0, v3

    float-to-int v0, v0

    move/from16 v19, v0

    .line 7817
    .local v19, vx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    move v0, v3

    float-to-int v0, v0

    move/from16 v20, v0

    .line 7819
    .local v20, vy:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v3, v0

    if-eqz v3, :cond_54

    .line 7820
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v3, v0

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_b1

    .line 7821
    const/16 v20, 0x0

    .line 7827
    :cond_54
    :goto_54
    const/high16 v17, 0x3f40

    .line 7828
    .local v17, flingfactor:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v3, v0

    if-eqz v3, :cond_66

    .line 7830
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v3, v0

    invoke-interface {v3}, Landroid/webkit/OnPinchZoomListener;->getFlingFactor()F

    move-result v17

    .line 7835
    :cond_66
    move/from16 v0, v19

    int-to-float v0, v0

    move v3, v0

    mul-float v3, v3, v17

    move v0, v3

    float-to-int v0, v0

    move/from16 v19, v0

    .line 7836
    move/from16 v0, v20

    int-to-float v0, v0

    move v3, v0

    mul-float v3, v3, v17

    move v0, v3

    float-to-int v0, v0

    move/from16 v20, v0

    .line 7839
    if-nez v9, :cond_7e

    if-eqz v20, :cond_82

    :cond_7e
    if-nez v11, :cond_b4

    if-nez v19, :cond_b4

    .line 7840
    :cond_82
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 7841
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v3, v0

    invoke-static {v3}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 7842
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v5, v0

    const/4 v6, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v9

    .end local v9           #maxX:I
    invoke-virtual/range {v3 .. v9}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 7844
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_7

    .line 7823
    .end local v17           #flingfactor:F
    .restart local v9       #maxX:I
    :cond_b1
    const/16 v19, 0x0

    goto :goto_54

    .line 7849
    .restart local v17       #flingfactor:F
    :cond_b4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v3, v0

    if-eqz v3, :cond_d8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v3, v0

    invoke-interface {v3}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d8

    .line 7851
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/webkit/OnPinchZoomListener;->doFling(II)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    .line 7855
    :cond_d8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v15

    .line 7856
    .local v15, currentVelocity:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelocity:F

    move v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_150

    const/4 v3, 0x0

    cmpl-float v3, v15, v3

    if-lez v3, :cond_150

    .line 7857
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelY:F

    move v3, v0

    float-to-double v3, v3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelX:F

    move v5, v0

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide v5, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    move-wide v0, v3

    double-to-float v0, v0

    move/from16 v16, v0

    .line 7859
    .local v16, deltaR:F
    const v14, 0x40c90fdb

    .line 7860
    .local v14, circle:F
    const v3, 0x40b4f4ab

    cmpl-float v3, v16, v3

    if-gtz v3, :cond_126

    const v3, 0x3f20d97c

    cmpg-float v3, v16, v3

    if-gez v3, :cond_150

    .line 7861
    :cond_126
    move/from16 v0, v19

    int-to-float v0, v0

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelX:F

    move v4, v0

    mul-float/2addr v4, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelocity:F

    move v5, v0

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    move v0, v3

    float-to-int v0, v0

    move/from16 v19, v0

    .line 7862
    move/from16 v0, v20

    int-to-float v0, v0

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelY:F

    move v4, v0

    mul-float/2addr v4, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelocity:F

    move v5, v0

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    move v0, v3

    float-to-int v0, v0

    move/from16 v20, v0

    .line 7878
    .end local v14           #circle:F
    .end local v16           #deltaR:F
    :cond_150
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v3, v0

    if-eqz v3, :cond_15e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v3, v0

    if-ne v3, v9, :cond_16a

    :cond_15e
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_16a

    .line 7879
    const/16 v19, 0x0

    .line 7881
    :cond_16a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v3, v0

    if-eqz v3, :cond_178

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v3, v0

    if-ne v3, v11, :cond_184

    :cond_178
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_184

    .line 7882
    const/16 v20, 0x0

    .line 7885
    :cond_184
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverflingDistance:I

    move v4, v0

    if-ge v3, v4, :cond_1c8

    .line 7886
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move v4, v0

    neg-int v4, v4

    if-eq v3, v4, :cond_1aa

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move v4, v0

    add-int/2addr v4, v9

    if-ne v3, v4, :cond_1ac

    .line 7887
    :cond_1aa
    const/16 v19, 0x0

    .line 7889
    :cond_1ac
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move v4, v0

    neg-int v4, v4

    if-eq v3, v4, :cond_1c6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move v4, v0

    add-int/2addr v4, v11

    if-ne v3, v4, :cond_1c8

    .line 7890
    :cond_1c6
    const/16 v20, 0x0

    .line 7894
    :cond_1c8
    move/from16 v0, v19

    int-to-float v0, v0

    move v3, v0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastVelX:F

    .line 7895
    move/from16 v0, v20

    int-to-float v0, v0

    move v3, v0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastVelY:F

    .line 7896
    move/from16 v0, v19

    int-to-double v0, v0

    move-wide v3, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastVelocity:F

    .line 7899
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v5, v0

    move/from16 v0, v19

    neg-int v0, v0

    move v6, v0

    move/from16 v0, v20

    neg-int v0, v0

    move v7, v0

    const/4 v8, 0x0

    const/4 v10, 0x0

    if-nez v9, :cond_225

    const/4 v12, 0x0

    :goto_208
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverflingDistance:I

    move v13, v0

    invoke-virtual/range {v3 .. v13}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 7906
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getDuration()I

    move-result v18

    .line 7907
    .local v18, time:I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->awakenScrollBars(I)Z

    .line 7908
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_7

    .line 7899
    .end local v18           #time:I
    :cond_225
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverflingDistance:I

    move v12, v0

    goto :goto_208
.end method

.method private doMotionUp(II)V
    .registers 6
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    const/4 v2, 0x0

    .line 8211
    sget-boolean v0, Landroid/webkit/WebView;->mLogEvent:Z

    if-eqz v0, :cond_15

    iget v0, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;->nativeMotionUp(III)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 8212
    const v0, 0x11206

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 8214
    :cond_15
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v0

    if-nez v0, :cond_24

    .line 8215
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->playSoundEffect(I)V

    .line 8217
    :cond_24
    return-void
.end method

.method private doShortPress()V
    .registers 6

    .prologue
    .line 8184
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v3, :cond_5

    .line 8208
    :cond_4
    :goto_4
    return-void

    .line 8187
    :cond_5
    iget v3, p0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    .line 8190
    const/4 v3, 0x7

    iput v3, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 8191
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 8193
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v3, v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 8194
    .local v0, contentX:I
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v3, v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 8195
    .local v1, contentY:I
    iget v3, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-direct {p0, v0, v1, v3}, Landroid/webkit/WebView;->nativePointInNavCache(III)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 8196
    new-instance v2, Landroid/webkit/WebViewCore$MotionUpData;

    invoke-direct {v2}, Landroid/webkit/WebViewCore$MotionUpData;-><init>()V

    .line 8198
    .local v2, motionUpData:Landroid/webkit/WebViewCore$MotionUpData;
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCacheHitFramePointer()I

    move-result v3

    iput v3, v2, Landroid/webkit/WebViewCore$MotionUpData;->mFrame:I

    .line 8199
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCacheHitNodePointer()I

    move-result v3

    iput v3, v2, Landroid/webkit/WebViewCore$MotionUpData;->mNode:I

    .line 8200
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCacheHitNodeBounds()Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, v2, Landroid/webkit/WebViewCore$MotionUpData;->mBounds:Landroid/graphics/Rect;

    .line 8201
    iput v0, v2, Landroid/webkit/WebViewCore$MotionUpData;->mX:I

    .line 8202
    iput v1, v2, Landroid/webkit/WebViewCore$MotionUpData;->mY:I

    .line 8203
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x92

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    goto :goto_4

    .line 8206
    .end local v2           #motionUpData:Landroid/webkit/WebViewCore$MotionUpData;
    :cond_4f
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->doMotionUp(II)V

    goto :goto_4
.end method

.method private doTrackball(J)V
    .registers 29
    .parameter "time"

    .prologue
    .line 7699
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mTrackballLastTime:J

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mTrackballFirstTime:J

    move-wide v10, v0

    sub-long/2addr v8, v10

    long-to-int v13, v8

    .line 7700
    .local v13, elapsed:I
    if-nez v13, :cond_10

    .line 7701
    const/16 v13, 0xc8

    .line 7703
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    move v5, v0

    const/high16 v6, 0x447a

    mul-float/2addr v5, v6

    int-to-float v6, v13

    div-float v23, v5, v6

    .line 7704
    .local v23, xRate:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v5, v0

    const/high16 v6, 0x447a

    mul-float/2addr v5, v6

    int-to-float v6, v13

    div-float v25, v5, v6

    .line 7705
    .local v25, yRate:F
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v20

    .line 7706
    .local v20, viewWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v19

    .line 7707
    .local v19, viewHeight:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSelectingText:Z

    move v5, v0

    if-eqz v5, :cond_93

    .line 7708
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    move v5, v0

    if-nez v5, :cond_6a

    .line 7712
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeSelectionX()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSelectX:I

    .line 7713
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeSelectionY()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSelectY:I

    .line 7714
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mExtendSelection:Z

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    .line 7715
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeSetExtendSelection()V

    .line 7717
    :cond_6a
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballX(FI)I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballY(FI)I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->moveSelection(FF)V

    .line 7719
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 7786
    :cond_92
    :goto_92
    return-void

    .line 7722
    :cond_93
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 7723
    .local v11, ax:F
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 7724
    .local v12, ay:F
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 7732
    .local v16, maxA:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentWidth:I

    move v5, v0

    sub-int v21, v5, v20

    .line 7733
    .local v21, width:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentHeight:I

    move v5, v0

    sub-int v14, v5, v19

    .line 7734
    .local v14, height:I
    if-gez v21, :cond_b1

    const/16 v21, 0x0

    .line 7735
    :cond_b1
    if-gez v14, :cond_b4

    const/4 v14, 0x0

    .line 7736
    :cond_b4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    move v5, v0

    const/high16 v6, 0x4040

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 7737
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v5, v0

    const/high16 v6, 0x4040

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 7738
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 7739
    const/4 v5, 0x0

    move/from16 v0, v16

    float-to-int v0, v0

    move v6, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 7740
    .local v7, count:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v17, v0

    .line 7741
    .local v17, oldScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v18, v0

    .line 7742
    .local v18, oldScrollY:I
    if-lez v7, :cond_146

    .line 7743
    cmpg-float v5, v11, v12

    if-gez v5, :cond_11f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v5, v0

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_11b

    const/16 v5, 0x13

    move v6, v5

    .line 7747
    .local v6, selectKeyCode:I
    :goto_f8
    const/16 v5, 0xa

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 7754
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mNativeClass:I

    move v5, v0

    if-eqz v5, :cond_19b

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v5

    if-eqz v5, :cond_19b

    .line 7755
    const/4 v15, 0x0

    .local v15, i:I
    :goto_10c
    if-ge v15, v7, :cond_131

    .line 7756
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v6

    move-wide/from16 v2, p1

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->letPluginHandleNavKey(IJZ)V

    .line 7755
    add-int/lit8 v15, v15, 0x1

    goto :goto_10c

    .line 7743
    .end local v6           #selectKeyCode:I
    .end local v15           #i:I
    :cond_11b
    const/16 v5, 0x14

    move v6, v5

    goto :goto_f8

    :cond_11f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    move v5, v0

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_12d

    const/16 v5, 0x15

    move v6, v5

    goto :goto_f8

    :cond_12d
    const/16 v5, 0x16

    move v6, v5

    goto :goto_f8

    .line 7758
    .restart local v6       #selectKeyCode:I
    .restart local v15       #i:I
    :cond_131
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v6

    move-wide/from16 v2, p1

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->letPluginHandleNavKey(IJZ)V

    .line 7762
    .end local v15           #i:I
    :cond_13b
    :goto_13b
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 7764
    .end local v6           #selectKeyCode:I
    :cond_146
    const/4 v5, 0x5

    if-lt v7, v5, :cond_92

    .line 7765
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballX(FI)I

    move-result v22

    .line 7766
    .local v22, xMove:I
    move-object/from16 v0, p0

    move/from16 v1, v25

    move v2, v14

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballY(FI)I

    move-result v24

    .line 7775
    .local v24, yMove:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v5, v0

    sub-int v5, v5, v17

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v5, v6, :cond_16f

    .line 7776
    const/16 v22, 0x0

    .line 7778
    :cond_16f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v5, v0

    sub-int v5, v5, v18

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v5, v6, :cond_182

    .line 7779
    const/16 v24, 0x0

    .line 7781
    :cond_182
    if-nez v22, :cond_186

    if-eqz v24, :cond_193

    .line 7782
    :cond_186
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v24

    move v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    .line 7784
    :cond_193
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mUserScroll:Z

    goto/16 :goto_92

    .line 7759
    .end local v22           #xMove:I
    .end local v24           #yMove:I
    .restart local v6       #selectKeyCode:I
    :cond_19b
    const/4 v8, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v9, p1

    invoke-direct/range {v5 .. v10}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    move-result v5

    if-eqz v5, :cond_13b

    .line 7760
    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->keyCodeToSoundsEffect(I)I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->playSoundEffect(I)V

    goto :goto_13b
.end method

.method private domChangedFocus()V
    .registers 3

    .prologue
    .line 2595
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2596
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2598
    :cond_11
    return-void
.end method

.method private drawContent(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4230
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_2d

    move v0, v4

    :goto_f
    iget v1, p0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1c

    iget-boolean v1, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    if-nez v1, :cond_1c

    iget-boolean v1, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    if-eqz v1, :cond_2f

    :cond_1c
    move v1, v4

    :goto_1d
    invoke-direct {p0, v0, v1, v3}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 4233
    iget v0, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    iget-boolean v1, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    invoke-direct {p0, p1, v0, v1}, Landroid/webkit/WebView;->drawCoreAndCursorRing(Landroid/graphics/Canvas;IZ)V

    .line 4234
    iget-boolean v0, p0, Landroid/webkit/WebView;->mExtendSelectionPressed:Z

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;->drawWebSelectionControl(Landroid/graphics/Canvas;Z)V

    .line 4235
    return-void

    :cond_2d
    move v0, v3

    .line 4230
    goto :goto_f

    :cond_2f
    move v1, v3

    goto :goto_1d
.end method

.method private drawCoreAndCursorRing(Landroid/graphics/Canvas;IZ)V
    .registers 29
    .parameter "canvas"
    .parameter "color"
    .parameter "drawCursorRing"

    .prologue
    .line 4525
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDrawHistory:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2b

    .line 4526
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4527
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 4717
    :cond_2a
    :goto_2a
    return-void

    .line 4531
    :cond_2b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScale:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_2ec

    const/16 v20, 0x1

    move/from16 v7, v20

    .line 4532
    .local v7, animateZoom:Z
    :goto_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v20

    if-eqz v20, :cond_4f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6b

    :cond_4f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_79

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_79

    :cond_6b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mDeferTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2f2

    :cond_79
    const/16 v20, 0x1

    move/from16 v6, v20

    .line 4538
    .local v6, animateScroll:Z
    :goto_7d
    const/4 v8, 0x0

    .line 4539
    .local v8, correctionY:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_df

    .line 4540
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b8

    .line 4541
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 4542
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x9

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 4543
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 4545
    :cond_b8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    move/from16 v20, v0

    if-nez v20, :cond_df

    .line 4546
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    const-wide/16 v22, 0x64

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4548
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 4553
    :cond_df
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_fa

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->isDrawingWebView()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_fa

    .line 4554
    const/4 v7, 0x0

    .line 4557
    :cond_fa
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->forceHighQualityImage()Z

    move-result v20

    if-eqz v20, :cond_10f

    .line 4565
    const/4 v6, 0x0

    .line 4569
    :cond_10f
    if-eqz v7, :cond_375

    .line 4571
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mZoomStart:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move v11, v0

    .line 4572
    .local v11, interval:I
    const/16 v20, 0x1f4

    move v0, v11

    move/from16 v1, v20

    if-ge v0, v1, :cond_2f8

    .line 4573
    move v0, v11

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x43fa

    div-float v12, v20, v21

    .line 4574
    .local v12, ratio:F
    const/high16 v20, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvInitialZoomScale:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvFinalZoomScale:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvInitialZoomScale:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    mul-float v22, v22, v12

    add-float v21, v21, v22

    div-float v19, v20, v21

    .line 4576
    .local v19, zoomScale:F
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 4598
    .end local v12           #ratio:F
    :goto_14f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvInitialZoomScale:F

    move/from16 v20, v0

    mul-float v13, v19, v20

    .line 4601
    .local v13, scale:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    move/from16 v20, v0

    if-eqz v20, :cond_346

    .line 4602
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x3f00

    mul-float v17, v20, v21

    .line 4607
    .local v17, viewCentreX:F
    :goto_16c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInitialScrollX:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move/from16 v21, v0

    add-float v20, v20, v21

    mul-float v20, v20, v13

    sub-float v20, v20, v17

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 4609
    .local v15, tx:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v19

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v21

    move v0, v15

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v20

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v21, v0

    add-int v15, v20, v21

    .line 4611
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v14

    .line 4614
    .local v14, titleHeight:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    move/from16 v20, v0

    if-eqz v20, :cond_34e

    .line 4615
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x3f00

    mul-float v18, v20, v21

    .line 4616
    .local v18, viewCentreY:F
    add-float v18, v18, v8

    .line 4621
    :goto_1cd
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInitialScrollY:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move/from16 v21, v0

    add-float v20, v20, v21

    move v0, v14

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v20, v20, v21

    mul-float v20, v20, v13

    move v0, v14

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, v18, v21

    sub-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 4624
    .local v16, ty:I
    move/from16 v0, v16

    move v1, v14

    if-gt v0, v1, :cond_356

    const/16 v20, 0x0

    move/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v20

    :goto_203
    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v21, v0

    add-int v16, v20, v21

    .line 4627
    move v0, v15

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4628
    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4629
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v20

    if-eqz v20, :cond_25e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mNeedToAdjustWebTextView:Z

    move/from16 v20, v0

    if-nez v20, :cond_25e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScale:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_25e

    .line 4633
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mNeedToAdjustWebTextView:Z

    .line 4636
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v20

    if-eqz v20, :cond_25e

    .line 4637
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 4646
    .end local v11           #interval:I
    .end local v13           #scale:F
    .end local v14           #titleHeight:I
    .end local v15           #tx:I
    .end local v16           #ty:I
    .end local v17           #viewCentreX:F
    .end local v18           #viewCentreY:F
    .end local v19           #zoomScale:F
    :cond_25e
    :goto_25e
    const/4 v5, 0x0

    .line 4649
    .local v5, UIAnimationsRunning:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mNativeClass:I

    move/from16 v20, v0

    if-eqz v20, :cond_271

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeEvaluateLayersAnimations()Z

    move-result v20

    if-eqz v20, :cond_271

    .line 4650
    const/4 v5, 0x1

    .line 4653
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 4655
    :cond_271
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object/from16 v20, v0

    if-nez v7, :cond_283

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    move/from16 v21, v0

    if-nez v21, :cond_283

    if-eqz v5, :cond_394

    :cond_283
    const/16 v21, 0x1

    :goto_285
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v21

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebViewCore;->drawContentPicture(Landroid/graphics/Canvas;IZZ)V

    .line 4658
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mNativeClass:I

    move/from16 v20, v0

    if-eqz v20, :cond_2a

    .line 4660
    const/4 v9, 0x0

    .line 4661
    .local v9, extras:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mFindIsUp:Z

    move/from16 v20, v0

    if-eqz v20, :cond_398

    .line 4662
    const/4 v9, 0x1

    .line 4701
    :cond_2a3
    :goto_2a3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v9

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->drawExtras(Landroid/graphics/Canvas;IZ)V

    .line 4703
    const/16 v20, 0x3

    move v0, v9

    move/from16 v1, v20

    if-ne v0, v1, :cond_2c9

    .line 4704
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2c9

    .line 4705
    const/16 v20, 0x5

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 4708
    :cond_2c9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2a

    .line 4709
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    .line 4713
    if-nez v7, :cond_2a

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v20

    if-eqz v20, :cond_2a

    .line 4714
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z

    goto/16 :goto_2a

    .line 4531
    .end local v5           #UIAnimationsRunning:Z
    .end local v6           #animateScroll:Z
    .end local v7           #animateZoom:Z
    .end local v8           #correctionY:F
    .end local v9           #extras:I
    :cond_2ec
    const/16 v20, 0x0

    move/from16 v7, v20

    goto/16 :goto_3b

    .line 4532
    .restart local v7       #animateZoom:Z
    :cond_2f2
    const/16 v20, 0x0

    move/from16 v6, v20

    goto/16 :goto_7d

    .line 4578
    .restart local v6       #animateScroll:Z
    .restart local v8       #correctionY:F
    .restart local v11       #interval:I
    :cond_2f8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScale:F

    move/from16 v19, v0

    .line 4580
    .restart local v19       #zoomScale:F
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomScale:F

    .line 4581
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 4583
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 4584
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mNeedToAdjustWebTextView:Z

    move/from16 v20, v0

    if-eqz v20, :cond_33f

    .line 4585
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mNeedToAdjustWebTextView:Z

    .line 4586
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z

    move-result v20

    if-eqz v20, :cond_33f

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v20

    if-eqz v20, :cond_33f

    .line 4590
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 4594
    :cond_33f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mViewCenterYCorrection:F

    move v8, v0

    goto/16 :goto_14f

    .line 4604
    .restart local v13       #scale:F
    :cond_346
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move/from16 v17, v0

    .restart local v17       #viewCentreX:F
    goto/16 :goto_16c

    .line 4619
    .restart local v14       #titleHeight:I
    .restart local v15       #tx:I
    :cond_34e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move/from16 v18, v0

    .restart local v18       #viewCentreY:F
    goto/16 :goto_1cd

    .line 4624
    .restart local v16       #ty:I
    :cond_356
    sub-int v20, v16, v14

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v19

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v22

    invoke-static/range {v20 .. v22}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v20

    add-int v20, v20, v14

    goto/16 :goto_203

    .line 4641
    .end local v11           #interval:I
    .end local v13           #scale:F
    .end local v14           #titleHeight:I
    .end local v15           #tx:I
    .end local v16           #ty:I
    .end local v17           #viewCentreX:F
    .end local v18           #viewCentreY:F
    .end local v19           #zoomScale:F
    :cond_375
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4643
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    goto/16 :goto_25e

    .line 4655
    .restart local v5       #UIAnimationsRunning:Z
    :cond_394
    const/16 v21, 0x0

    goto/16 :goto_285

    .line 4663
    .restart local v9       #extras:I
    :cond_398
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSelectingText:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3ce

    .line 4664
    const/4 v9, 0x2

    .line 4665
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvActualScale:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSelectX:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSelectY:I

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v24

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->nativeSetSelectionPointer(ZFII)V

    goto/16 :goto_2a3

    .line 4669
    :cond_3ce
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object/from16 v20, v0

    if-eqz v20, :cond_444

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_444

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mAutoSelection:Z

    move/from16 v20, v0

    if-eqz v20, :cond_444

    .line 4671
    if-eqz p3, :cond_413

    .line 4672
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_43a

    .line 4673
    const/16 v20, 0x5

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 4674
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v10

    .line 4675
    .local v10, hitTest:Landroid/webkit/WebView$HitTestResult;
    if-eqz v10, :cond_412

    #getter for: Landroid/webkit/WebView$HitTestResult;->mType:I
    invoke-static {v10}, Landroid/webkit/WebView$HitTestResult;->access$600(Landroid/webkit/WebView$HitTestResult;)I

    move-result v20

    if-nez v20, :cond_430

    .line 4678
    :cond_412
    const/4 v9, 0x0

    .line 4687
    .end local v10           #hitTest:Landroid/webkit/WebView$HitTestResult;
    :cond_413
    :goto_413
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2a3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->isDrawingWebView()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2a3

    .line 4689
    const/4 v9, 0x0

    goto/16 :goto_2a3

    .line 4679
    .restart local v10       #hitTest:Landroid/webkit/WebView$HitTestResult;
    :cond_430
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    move/from16 v20, v0

    if-nez v20, :cond_413

    .line 4680
    const/4 v9, 0x3

    goto :goto_413

    .line 4682
    .end local v10           #hitTest:Landroid/webkit/WebView$HitTestResult;
    :cond_43a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    move/from16 v20, v0

    if-nez v20, :cond_413

    .line 4683
    const/4 v9, 0x3

    goto :goto_413

    .line 4692
    :cond_444
    if-eqz p3, :cond_2a3

    .line 4693
    const/4 v9, 0x3

    .line 4695
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2a3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->isDrawingWebView()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2a3

    .line 4697
    const/4 v9, 0x0

    goto/16 :goto_2a3
.end method

.method private drawExtras(Landroid/graphics/Canvas;IZ)V
    .registers 5
    .parameter "canvas"
    .parameter "extras"
    .parameter "animationsRunning"

    .prologue
    .line 4503
    if-eqz p3, :cond_9

    .line 4504
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-object v0, v0, Landroid/webkit/WebViewCore;->mZoomFilter:Landroid/graphics/DrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 4506
    :cond_9
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->nativeDrawExtras(Landroid/graphics/Canvas;I)V

    .line 4507
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 4508
    return-void
.end method

.method private drawWebSelectionControl(Landroid/graphics/Canvas;Z)V
    .registers 12
    .parameter "canvas"
    .parameter "pressed"

    .prologue
    const/4 v1, 0x1

    .line 4488
    iget-boolean v0, p0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    if-ne v0, v1, :cond_28

    iget-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_28

    .line 4489
    const/4 v8, 0x1

    .line 4491
    .local v8, bDisaplayController:Z
    iget v7, p0, Landroid/webkit/WebView;->mController:I

    .line 4492
    .local v7, nController:I
    iget-boolean v0, p0, Landroid/webkit/WebView;->mLongPress:Z

    if-ne v1, v0, :cond_11

    .line 4493
    const/4 v8, 0x0

    .line 4495
    :cond_11
    iget-object v0, p0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    iget-object v1, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v2, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    iget-object v1, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v3, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v6, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionControls(Landroid/graphics/Canvas;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIZ)V

    .line 4499
    .end local v7           #nController:I
    .end local v8           #bDisaplayController:Z
    :cond_28
    return-void
.end method

.method public static enablePlatformNotifications()V
    .registers 0

    .prologue
    .line 1878
    invoke-static {}, Landroid/webkit/Network;->enablePlatformNotifications()V

    .line 1879
    return-void
.end method

.method private extendScroll(I)Z
    .registers 6
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 2364
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    .line 2365
    .local v0, finalY:I
    add-int v2, v0, p1

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v1

    .line 2366
    .local v1, newY:I
    if-ne v1, v0, :cond_11

    move v2, v3

    .line 2369
    :goto_10
    return v2

    .line 2367
    :cond_11
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2, v1}, Landroid/widget/OverScroller;->setFinalY(I)V

    .line 2368
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-static {v3, p1}, Landroid/webkit/WebView;->computeDuration(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->extendDuration(I)V

    .line 2369
    const/4 v2, 0x1

    goto :goto_10
.end method

.method public static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "addr"

    .prologue
    .line 3650
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findAddress(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3
    .parameter "addr"
    .parameter "caseInsensitive"

    .prologue
    .line 3676
    invoke-static {p0, p1}, Landroid/webkit/WebViewCore;->nativeFindAddress(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;
    .registers 8
    .parameter "contentX"
    .parameter "contentY"
    .parameter "extendSelection"
    .parameter "selectionMove"
    .parameter "zoomScale"

    .prologue
    .line 10574
    new-instance v0, Landroid/webkit/WebViewCore$CopyParams;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$CopyParams;-><init>()V

    .line 10575
    .local v0, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    iput p1, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    .line 10576
    iput p2, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    .line 10577
    iput-boolean p3, v0, Landroid/webkit/WebViewCore$CopyParams;->mSmartSelection:Z

    .line 10578
    iput-boolean p4, v0, Landroid/webkit/WebViewCore$CopyParams;->mSelectionMove:Z

    .line 10579
    iput p5, v0, Landroid/webkit/WebViewCore$CopyParams;->mZoomScale:F

    .line 10580
    iget v1, p0, Landroid/webkit/WebView;->mController:I

    iput v1, v0, Landroid/webkit/WebViewCore$CopyParams;->mController:I

    .line 10581
    const/4 v1, -0x1

    iput v1, v0, Landroid/webkit/WebViewCore$CopyParams;->mGranularity:I

    .line 10582
    return-object v0
.end method

.method private getCopyParams(IIZZFI)Landroid/webkit/WebViewCore$CopyParams;
    .registers 8
    .parameter "contentX"
    .parameter "contentY"
    .parameter "extendSelection"
    .parameter "selectionMove"
    .parameter "zoomScale"
    .parameter "granularity"

    .prologue
    .line 10593
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebView;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v0

    .line 10595
    .local v0, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    iput p6, v0, Landroid/webkit/WebViewCore$CopyParams;->mGranularity:I

    .line 10596
    return-object v0
.end method

.method public static declared-synchronized getPluginList()Landroid/webkit/PluginList;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4184
    const-class v0, Landroid/webkit/WebView;

    monitor-enter v0

    :try_start_3
    new-instance v1, Landroid/webkit/PluginList;

    invoke-direct {v1}, Landroid/webkit/PluginList;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getScaledMaxXScroll()I
    .registers 4

    .prologue
    .line 10397
    iget-boolean v2, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v2, :cond_f

    .line 10398
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x4

    .line 10405
    .local v1, width:I
    :goto_a
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v2

    return v2

    .line 10400
    .end local v1           #width:I
    :cond_f
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 10401
    .local v0, visRect:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 10402
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .restart local v1       #width:I
    goto :goto_a
.end method

.method private getScaledMaxYScroll()I
    .registers 5

    .prologue
    .line 10410
    iget-boolean v2, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v2, :cond_13

    .line 10411
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x4

    .line 10420
    .local v0, height:I
    :goto_a
    int-to-float v2, v0

    iget v3, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2

    .line 10413
    .end local v0           #height:I
    :cond_13
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 10414
    .local v1, visRect:Landroid/graphics/Rect;
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 10415
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .restart local v0       #height:I
    goto :goto_a
.end method

.method private getSelectionDirection(II)V
    .registers 6
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    const/4 v2, 0x0

    .line 10712
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebView;->mStopSelection:Z

    .line 10714
    invoke-virtual {p0, p1, p2, v2}, Landroid/webkit/WebView;->getSelectionType(IIZ)I

    move-result v0

    .line 10716
    .local v0, nController:I
    packed-switch v0, :pswitch_data_12

    .line 10728
    :goto_b
    return-void

    .line 10723
    :pswitch_c
    iput v0, p0, Landroid/webkit/WebView;->mController:I

    .line 10724
    iput-boolean v2, p0, Landroid/webkit/WebView;->mStopSelection:Z

    goto :goto_b

    .line 10716
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method private getSelectionExtendPoint(II)Landroid/graphics/Point;
    .registers 11
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x2

    .line 10731
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 10732
    .local v4, value:Landroid/graphics/Point;
    const/4 v1, 0x0

    .line 10733
    .local v1, deltaX:I
    const/4 v2, 0x0

    .line 10734
    .local v2, deltaY:I
    const/4 v0, 0x0

    .line 10736
    .local v0, ControlerLength:I
    iget-object v5, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-nez v5, :cond_10

    .line 10737
    const/4 v5, 0x0

    .line 10804
    :goto_f
    return-object v5

    .line 10739
    :cond_10
    iput p1, v4, Landroid/graphics/Point;->x:I

    .line 10740
    iput p2, v4, Landroid/graphics/Point;->y:I

    .line 10741
    iget-object v5, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v5}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 10743
    .local v3, selectRect:Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    invoke-virtual {v5}, Landroid/webkit/WebTextSelectionControls;->getControllerHeight()I

    move-result v0

    .line 10745
    iget v5, p0, Landroid/webkit/WebView;->mController:I

    if-ne v6, v5, :cond_6a

    .line 10746
    iget-object v5, p0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkit/WebTextSelectionControls;->isReversed(I)Z

    move-result v5

    if-nez v5, :cond_4d

    .line 10747
    iget-object v5, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int v2, v5, p2

    .line 10748
    if-le v2, v0, :cond_3f

    .line 10749
    add-int v5, p2, v0

    iput v5, v4, Landroid/graphics/Point;->y:I

    :cond_3d
    :goto_3d
    move-object v5, v4

    .line 10804
    goto :goto_f

    .line 10750
    :cond_3f
    if-lez v2, :cond_3d

    if-gt v2, v0, :cond_3d

    .line 10751
    iget-object v5, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v7

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto :goto_3d

    .line 10755
    :cond_4d
    iget-object v5, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v5

    .line 10756
    if-le v2, v0, :cond_5c

    .line 10757
    sub-int v5, p2, v0

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto :goto_3d

    .line 10758
    :cond_5c
    if-lez v2, :cond_3d

    if-gt v2, v0, :cond_3d

    .line 10759
    iget-object v5, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v7

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto :goto_3d

    .line 10763
    :cond_6a
    iget v5, p0, Landroid/webkit/WebView;->mController:I

    if-ne v7, v5, :cond_ac

    .line 10764
    iget-object v5, p0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    invoke-virtual {v5, v6}, Landroid/webkit/WebTextSelectionControls;->isReversed(I)Z

    move-result v5

    if-nez v5, :cond_8f

    .line 10765
    iget-object v5, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v5

    .line 10766
    if-le v2, v0, :cond_85

    .line 10767
    sub-int v5, p2, v0

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto :goto_3d

    .line 10768
    :cond_85
    if-lez v2, :cond_3d

    if-gt v2, v0, :cond_3d

    .line 10769
    sub-int v5, p2, v2

    sub-int/2addr v5, v7

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto :goto_3d

    .line 10773
    :cond_8f
    iget-object v5, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int v2, v5, p2

    .line 10774
    if-le v2, v0, :cond_9e

    .line 10775
    add-int v5, p2, v0

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto :goto_3d

    .line 10776
    :cond_9e
    if-lez v2, :cond_3d

    if-gt v2, v0, :cond_3d

    .line 10777
    iget-object v5, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v7

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto :goto_3d

    .line 10782
    :cond_ac
    const/4 v5, 0x5

    iget v6, p0, Landroid/webkit/WebView;->mController:I

    if-eq v5, v6, :cond_b6

    const/4 v5, 0x6

    iget v6, p0, Landroid/webkit/WebView;->mController:I

    if-ne v5, v6, :cond_ce

    .line 10785
    :cond_b6
    if-lez p1, :cond_c2

    iget v5, v3, Landroid/graphics/Rect;->left:I

    if-ge p1, v5, :cond_c2

    .line 10786
    iget v5, v3, Landroid/graphics/Rect;->left:I

    iput v5, v4, Landroid/graphics/Point;->x:I

    goto/16 :goto_3d

    .line 10787
    :cond_c2
    if-lez p1, :cond_3d

    iget v5, v3, Landroid/graphics/Rect;->right:I

    if-le p1, v5, :cond_3d

    .line 10788
    iget v5, v3, Landroid/graphics/Rect;->right:I

    iput v5, v4, Landroid/graphics/Point;->x:I

    goto/16 :goto_3d

    .line 10790
    :cond_ce
    const/4 v5, 0x3

    iget v6, p0, Landroid/webkit/WebView;->mController:I

    if-eq v5, v6, :cond_d8

    const/4 v5, 0x4

    iget v6, p0, Landroid/webkit/WebView;->mController:I

    if-ne v5, v6, :cond_3d

    .line 10793
    :cond_d8
    if-lez p2, :cond_e4

    iget v5, v3, Landroid/graphics/Rect;->top:I

    if-ge p2, v5, :cond_e4

    .line 10794
    iget v5, v3, Landroid/graphics/Rect;->top:I

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto/16 :goto_3d

    .line 10795
    :cond_e4
    if-lez p2, :cond_3d

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    if-le p2, v5, :cond_3d

    .line 10796
    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto/16 :goto_3d
.end method

.method private getViewHeightWithTitle()I
    .registers 3

    .prologue
    .line 1766
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 1767
    .local v0, height:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->isHorizontalScrollBarEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    if-nez v1, :cond_13

    .line 1768
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHorizontalScrollbarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1770
    :cond_13
    return v0
.end method

.method private goBackOrForward(IZ)V
    .registers 6
    .parameter "steps"
    .parameter "ignoreSnapshot"

    .prologue
    .line 2354
    if-eqz p1, :cond_12

    .line 2355
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 2357
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissWebSelectDialog()V

    .line 2358
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6a

    if-eqz p2, :cond_13

    const/4 v2, 0x1

    :goto_f
    invoke-virtual {v0, v1, p1, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2361
    :cond_12
    return-void

    .line 2358
    :cond_13
    const/4 v2, 0x0

    goto :goto_f
.end method

.method private hideCursor()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 11289
    invoke-direct {p0}, Landroid/webkit/WebView;->isPinchZoomListenerEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 11294
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mTempDisableInvalidate:Z

    .line 11296
    :try_start_a
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHideCursor()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_10

    .line 11298
    iput-boolean v1, p0, Landroid/webkit/WebView;->mTempDisableInvalidate:Z

    .line 11303
    :goto_f
    return-void

    .line 11298
    :catchall_10
    move-exception v0

    iput-boolean v1, p0, Landroid/webkit/WebView;->mTempDisableInvalidate:Z

    throw v0

    .line 11301
    :cond_14
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHideCursor()V

    goto :goto_f
.end method

.method private hideSoftKeyboard()V
    .registers 4

    .prologue
    .line 4838
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 4841
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 4842
    return-void
.end method

.method private hitFocusedPlugin(II)Z
    .registers 4
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    .line 6660
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusNodeBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private inEditingMode()Z
    .registers 2

    .prologue
    .line 2453
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private inFullScreenMode()Z
    .registers 2

    .prologue
    .line 6675
    iget-object v0, p0, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private init()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1554
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    .line 1555
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 1556
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 1557
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setClickable(Z)V

    .line 1558
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 1560
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1561
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 1563
    .local v2, slop:I
    iput v2, p0, Landroid/webkit/WebView;->mTouchSlop:I

    .line 1565
    mul-int v3, v2, v2

    iput v3, p0, Landroid/webkit/WebView;->mTouchSlopSquare:I

    .line 1566
    iput v2, p0, Landroid/webkit/WebView;->mMinLockSnapReverseDistance:I

    .line 1567
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v2

    .line 1568
    mul-int v3, v2, v2

    iput v3, p0, Landroid/webkit/WebView;->mDoubleTapSlopSquare:I

    .line 1569
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 1572
    .local v1, density:F
    const/high16 v3, 0x4180

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, p0, Landroid/webkit/WebView;->mNavSlop:I

    .line 1574
    const/high16 v3, 0x42c8

    mul-float/2addr v3, v1

    float-to-int v3, v3

    sput v3, Landroid/webkit/WebView;->DEFAULT_SCALE_PERCENT:I

    .line 1575
    iput v1, p0, Landroid/webkit/WebView;->mDefaultScale:F

    .line 1576
    iput v1, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 1577
    const/high16 v3, 0x3f80

    div-float/2addr v3, v1

    iput v3, p0, Landroid/webkit/WebView;->mInvActualScale:F

    .line 1578
    iput v1, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    .line 1579
    const/high16 v3, 0x4080

    mul-float/2addr v3, v1

    sput v3, Landroid/webkit/WebView;->DEFAULT_MAX_ZOOM_SCALE:F

    .line 1580
    const/high16 v3, 0x3e80

    mul-float/2addr v3, v1

    sput v3, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    .line 1581
    sget v3, Landroid/webkit/WebView;->DEFAULT_MAX_ZOOM_SCALE:F

    iput v3, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    .line 1582
    sget v3, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    iput v3, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 1583
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mMaximumFling:I

    .line 1584
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mOverscrollDistance:I

    .line 1585
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    .line 1587
    new-instance v3, Landroid/webkit/WebClipboard;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/webkit/WebClipboard;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/webkit/WebView;->mWebClipboard:Landroid/webkit/WebClipboard;

    .line 1588
    iget-object v3, p0, Landroid/webkit/WebView;->mWebClipboard:Landroid/webkit/WebClipboard;

    invoke-virtual {v3}, Landroid/webkit/WebClipboard;->initWebClipboard()V

    .line 1590
    return-void
.end method

.method private invalidateContentRect(Landroid/graphics/Rect;)V
    .registers 6
    .parameter "r"

    .prologue
    .line 2840
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->viewInvalidate(IIII)V

    .line 2841
    return-void
.end method

.method private isPinchZoomListenerEnabled()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 11284
    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    .line 11285
    .local v0, l:Landroid/webkit/OnPinchZoomListener;
    if-eqz v0, :cond_d

    invoke-interface {v0}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v1

    if-ne v1, v2, :cond_d

    move v1, v2

    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private isPluginFitOnScreen(Landroid/webkit/ViewManager$ChildView;)Z
    .registers 8
    .parameter "view"

    .prologue
    .line 8245
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v2

    .line 8246
    .local v2, viewWidth:I
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v1

    .line 8247
    .local v1, viewHeight:I
    int-to-float v3, v2

    iget v4, p1, Landroid/webkit/ViewManager$ChildView;->width:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v1

    iget v5, p1, Landroid/webkit/ViewManager$ChildView;->height:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 8249
    .local v0, scale:F
    iget v3, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    cmpg-float v3, v0, v3

    if-gez v3, :cond_5e

    .line 8250
    iget v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 8254
    :cond_1e
    :goto_1e
    iget v3, p0, Landroid/webkit/WebView;->mActualScale:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v4, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_67

    .line 8255
    iget v3, p1, Landroid/webkit/ViewManager$ChildView;->x:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    if-lt v3, v4, :cond_67

    iget v3, p1, Landroid/webkit/ViewManager$ChildView;->x:I

    iget v4, p1, Landroid/webkit/ViewManager$ChildView;->width:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v4, v2

    if-gt v3, v4, :cond_67

    iget v3, p1, Landroid/webkit/ViewManager$ChildView;->y:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    if-lt v3, v4, :cond_67

    iget v3, p1, Landroid/webkit/ViewManager$ChildView;->y:I

    iget v4, p1, Landroid/webkit/ViewManager$ChildView;->height:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v4, v1

    if-gt v3, v4, :cond_67

    .line 8261
    const/4 v3, 0x1

    .line 8264
    :goto_5d
    return v3

    .line 8251
    :cond_5e
    iget v3, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1e

    .line 8252
    iget v0, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    goto :goto_1e

    .line 8264
    :cond_67
    const/4 v3, 0x0

    goto :goto_5d
.end method

.method private keyCodeToSoundsEffect(I)I
    .registers 4
    .parameter "keyCode"

    .prologue
    .line 7683
    packed-switch p1, :pswitch_data_14

    .line 7693
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyCode must be one of {KEYCODE_DPAD_UP, KEYCODE_DPAD_RIGHT, KEYCODE_DPAD_DOWN, KEYCODE_DPAD_LEFT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7685
    :pswitch_b
    const/4 v0, 0x2

    .line 7691
    :goto_c
    return v0

    .line 7687
    :pswitch_d
    const/4 v0, 0x3

    goto :goto_c

    .line 7689
    :pswitch_f
    const/4 v0, 0x4

    goto :goto_c

    .line 7691
    :pswitch_11
    const/4 v0, 0x1

    goto :goto_c

    .line 7683
    nop

    :pswitch_data_14
    .packed-switch 0x13
        :pswitch_b
        :pswitch_f
        :pswitch_11
        :pswitch_d
    .end packed-switch
.end method

.method private letPluginHandleNavKey(IJZ)V
    .registers 18
    .parameter "keyCode"
    .parameter "time"
    .parameter "down"

    .prologue
    .line 10437
    if-eqz p4, :cond_27

    .line 10438
    const/4 v5, 0x0

    .line 10439
    .local v5, keyEventAction:I
    const/16 v12, 0x67

    .line 10440
    .local v12, eventHubAction:I
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->keyCodeToSoundsEffect(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->playSoundEffect(I)V

    .line 10445
    :goto_c
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v7, 0x1

    iget-boolean v1, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    if-eqz v1, :cond_2b

    const/4 v1, 0x1

    :goto_14
    or-int/lit8 v1, v1, 0x0

    or-int/lit8 v8, v1, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v1, p2

    move-wide v3, p2

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 10450
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v12, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 10451
    return-void

    .line 10442
    .end local v0           #event:Landroid/view/KeyEvent;
    .end local v5           #keyEventAction:I
    .end local v12           #eventHubAction:I
    :cond_27
    const/4 v5, 0x1

    .line 10443
    .restart local v5       #keyEventAction:I
    const/16 v12, 0x68

    .restart local v12       #eventHubAction:I
    goto :goto_c

    .line 10445
    :cond_2b
    const/4 v1, 0x0

    goto :goto_14
.end method

.method private native nativeCacheHitFramePointer()I
.end method

.method private native nativeCacheHitNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeCacheHitNodePointer()I
.end method

.method private native nativeCreate(I)V
.end method

.method private native nativeCursorFramePointer()I
.end method

.method private native nativeCursorIntersects(Landroid/graphics/Rect;)Z
.end method

.method private native nativeCursorIsAnchor()Z
.end method

.method private native nativeCursorIsTextInput()Z
.end method

.method private native nativeCursorNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeCursorNodePointer()I
.end method

.method private native nativeCursorPosition()Landroid/graphics/Point;
.end method

.method private native nativeCursorText()Ljava/lang/String;
.end method

.method private native nativeCursorWantsKeyEvents()Z
.end method

.method private native nativeDebugDump()V
.end method

.method private native nativeDestroy()V
.end method

.method private native nativeDrawExtras(Landroid/graphics/Canvas;I)V
.end method

.method private native nativeDumpDisplayTree(Ljava/lang/String;)V
.end method

.method private native nativeEvaluateLayersAnimations()Z
.end method

.method private native nativeExtendSelection(II)V
.end method

.method private native nativeFindAll(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeFindIndex()I
.end method

.method private native nativeFindNext(Z)V
.end method

.method private native nativeFocusCandidateIsReadonlyTextInput()Z
.end method

.method private native nativeFocusCandidateIsRtlText()Z
.end method

.method private native nativeFocusCandidateIsTextInput()Z
.end method

.method private native nativeFocusCandidateNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeFocusCandidatePaddingRect()Landroid/graphics/Rect;
.end method

.method private native nativeFocusCandidateText()Ljava/lang/String;
.end method

.method private native nativeFocusCandidateTextSize()I
.end method

.method private native nativeFocusCandidateType()I
.end method

.method private native nativeFocusIsPlugin()Z
.end method

.method private native nativeFocusNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeGetBlockLeftEdge(IIF)I
.end method

.method private native nativeGetClosestWordPosition(II)Landroid/graphics/Point;
.end method

.method private native nativeGetCursorRingBounds()Landroid/graphics/Rect;
.end method

.method private native nativeGetNodeBounds(Ljava/lang/String;I)Landroid/graphics/Rect;
.end method

.method private native nativeGetSelection()Ljava/lang/String;
.end method

.method private native nativeHasCursorNode()Z
.end method

.method private native nativeHasFocusNode()Z
.end method

.method private native nativeHideCursor()V
.end method

.method private native nativeHitSelection(II)Z
.end method

.method private native nativeImageURI(II)Ljava/lang/String;
.end method

.method private native nativeInstrumentReport()V
.end method

.method private native nativeMotionUp(III)Z
.end method

.method private native nativeMoveCursor(IIZ)Z
.end method

.method private native nativeMoveGeneration()I
.end method

.method private native nativeMoveSelection(II)V
.end method

.method private native nativePointInNavCache(III)Z
.end method

.method private native nativeRecordButtons(ZZZ)V
.end method

.method private native nativeResetSelection()V
.end method

.method private native nativeSelectAll()V
.end method

.method private native nativeSelectBestAt(Landroid/graphics/Rect;)V
.end method

.method private native nativeSelectionX()I
.end method

.method private native nativeSelectionY()I
.end method

.method private native nativeSetExtendSelection()V
.end method

.method private native nativeSetFindIsEmpty()V
.end method

.method private native nativeSetFindIsUp(Z)V
.end method

.method private native nativeSetFollowedLink(Z)V
.end method

.method private native nativeSetHeightCanMeasure(Z)V
.end method

.method private native nativeSetRootLayer(I)V
.end method

.method private native nativeSetSelectionPointer(ZFII)V
.end method

.method private native nativeSetSelectionRegion(Z)V
.end method

.method private native nativeStartSelection(II)Z
.end method

.method private native nativeSubtractLayers(Landroid/graphics/Rect;)Landroid/graphics/Rect;
.end method

.method private native nativeTextGeneration()I
.end method

.method private native nativeUpdateCachedTextfield(Ljava/lang/String;I)V
.end method

.method private native nativeWordSelection(II)Z
.end method

.method private navHandledKey(IIZJ)Z
    .registers 17
    .parameter "keyCode"
    .parameter "count"
    .parameter "noScroll"
    .parameter "time"

    .prologue
    .line 10456
    iget v8, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v8, :cond_6

    .line 10457
    const/4 v8, 0x0

    .line 10505
    :goto_5
    return v8

    .line 10459
    :cond_6
    iput-wide p4, p0, Landroid/webkit/WebView;->mLastCursorTime:J

    .line 10460
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetCursorRingBounds()Landroid/graphics/Rect;

    move-result-object v8

    iput-object v8, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    .line 10461
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->nativeMoveCursor(IIZ)Z

    move-result v8

    if-nez v8, :cond_1e

    const/4 v8, 0x1

    move v1, v8

    .line 10468
    .local v1, keyHandled:Z
    :goto_16
    if-eqz v1, :cond_1c

    iget-boolean v8, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v8, :cond_21

    :cond_1c
    move v8, v1

    .line 10469
    goto :goto_5

    .line 10461
    .end local v1           #keyHandled:Z
    :cond_1e
    const/4 v8, 0x0

    move v1, v8

    goto :goto_16

    .line 10471
    .restart local v1       #keyHandled:Z
    :cond_21
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetCursorRingBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 10472
    .local v0, contentCursorRingBounds:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2d

    move v8, v1

    goto :goto_5

    .line 10473
    :cond_2d
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 10474
    .local v6, viewCursorRingBounds:Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 10475
    .local v7, visRect:Landroid/graphics/Rect;
    invoke-direct {p0, v7}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 10476
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 10477
    .local v5, outset:Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v3, v8, 0x2

    .line 10478
    .local v3, maxXScroll:I
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v4, v8, 0x2

    .line 10479
    .local v4, maxYScroll:I
    neg-int v8, v3

    neg-int v9, v4

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->inset(II)V

    .line 10480
    invoke-static {v5, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v8

    if-nez v8, :cond_57

    move v8, v1

    .line 10481
    goto :goto_5

    .line 10484
    :cond_57
    iget v8, v6, Landroid/graphics/Rect;->right:I

    iget v9, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 10486
    .local v2, maxH:I
    if-lez v2, :cond_72

    .line 10487
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, v2, v8, v9, v10}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    .line 10495
    :cond_68
    :goto_68
    iget-object v8, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_85

    move v8, v1

    goto :goto_5

    .line 10489
    :cond_72
    iget v8, v6, Landroid/graphics/Rect;->left:I

    iget v9, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    neg-int v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 10491
    if-gez v2, :cond_68

    .line 10492
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, v2, v8, v9, v10}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    goto :goto_68

    .line 10496
    :cond_85
    iget-object v8, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_90

    move v8, v1

    .line 10497
    goto/16 :goto_5

    .line 10503
    :cond_90
    invoke-virtual {p0, v6}, Landroid/webkit/WebView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 10504
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebView;->mUserScroll:Z

    move v8, v1

    .line 10505
    goto/16 :goto_5
.end method

.method private overrideLoading(Ljava/lang/String;)V
    .registers 3
    .parameter "url"

    .prologue
    .line 8794
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->uiOverrideUrlLoading(Ljava/lang/String;)Z

    .line 8795
    return-void
.end method

.method private pictureReady()Z
    .registers 2

    .prologue
    .line 6679
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->pictureReady()Z

    move-result v0

    return v0
.end method

.method private static pinLoc(III)I
    .registers 4
    .parameter "x"
    .parameter "viewMax"
    .parameter "docMax"

    .prologue
    .line 2659
    if-ge p2, p1, :cond_4

    .line 2661
    const/4 p0, 0x0

    .line 2672
    :cond_3
    :goto_3
    return p0

    .line 2663
    :cond_4
    if-gez p0, :cond_8

    .line 2664
    const/4 p0, 0x0

    goto :goto_3

    .line 2666
    :cond_8
    add-int v0, p0, p1

    if-le v0, p2, :cond_3

    .line 2667
    sub-int p0, p2, p1

    .line 2669
    const/4 v0, 0x1

    sput-boolean v0, Landroid/webkit/WebView;->mScrollBeyondPage:Z

    goto :goto_3
.end method

.method private pinLocX(I)I
    .registers 4
    .parameter "x"

    .prologue
    .line 2677
    iget-boolean v0, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    if-eqz v0, :cond_6

    move v0, p1

    .line 2678
    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v0

    goto :goto_5
.end method

.method private pinLocY(I)I
    .registers 5
    .parameter "y"

    .prologue
    .line 2683
    iget-boolean v0, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    if-eqz v0, :cond_6

    move v0, p1

    .line 2684
    :goto_5
    return v0

    :cond_6
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p1, v0, v1}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v0

    goto :goto_5
.end method

.method private pinScrollBy(IIZI)Z
    .registers 7
    .parameter "dx"
    .parameter "dy"
    .parameter "animate"
    .parameter "animationDuration"

    .prologue
    .line 3793
    iget v0, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v1, p2

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v0

    return v0
.end method

.method private pinScrollTo(IIZI)Z
    .registers 11
    .parameter "x"
    .parameter "y"
    .parameter "animate"
    .parameter "animationDuration"

    .prologue
    .line 3798
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result p1

    .line 3799
    invoke-direct {p0, p2}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result p2

    .line 3800
    iget v0, p0, Landroid/view/View;->mScrollX:I

    sub-int v3, p1, v0

    .line 3801
    .local v3, dx:I
    iget v0, p0, Landroid/view/View;->mScrollY:I

    sub-int v4, p2, v0

    .line 3803
    .local v4, dy:I
    or-int v0, v3, v4

    if-nez v0, :cond_16

    .line 3804
    const/4 v0, 0x0

    .line 3816
    :goto_15
    return v0

    .line 3806
    :cond_16
    if-eqz p3, :cond_37

    .line 3808
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    if-lez p4, :cond_32

    move v5, p4

    :goto_21
    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 3810
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->awakenScrollBars(I)Z

    .line 3811
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3816
    :goto_30
    const/4 v0, 0x1

    goto :goto_15

    .line 3808
    :cond_32
    invoke-static {v3, v4}, Landroid/webkit/WebView;->computeDuration(II)I

    move-result v5

    goto :goto_21

    .line 3813
    :cond_37
    invoke-direct {p0}, Landroid/webkit/WebView;->abortAnimation()V

    .line 3814
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->scrollTo(II)V

    goto :goto_30
.end method

.method private prepareForAdaptiveZoom()V
    .registers 7

    .prologue
    .line 8433
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v4}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v4

    if-nez v4, :cond_d

    .line 8456
    :goto_c
    return-void

    .line 8437
    :cond_d
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchX:F

    iput v4, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 8438
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchY:F

    iput v4, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 8440
    iget v4, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    float-to-int v4, v4

    iget v5, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v2

    .line 8441
    .local v2, touchX:I
    iget v4, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    float-to-int v4, v4

    iget v5, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v3

    .line 8443
    .local v3, touchY:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 8446
    .local v1, settings:Landroid/webkit/WebSettings;
    invoke-virtual {p0}, Landroid/webkit/WebView;->dismissZoomControl()V

    .line 8448
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDoubleTapToastCount(I)V

    .line 8454
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 8455
    .local v0, pt:Landroid/graphics/Point;
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0xbb

    invoke-virtual {v4, v5, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_c
.end method

.method private recordNewContentSize(IIZ)V
    .registers 11
    .parameter "w"
    .parameter "h"
    .parameter "updateLayout"

    .prologue
    .line 2855
    or-int v4, p1, p2

    if-nez v4, :cond_5

    .line 2914
    :goto_4
    return-void

    .line 2860
    :cond_5
    iget v4, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    iget v5, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_63

    iget-boolean v4, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    if-eqz v4, :cond_63

    .line 2870
    iget v4, p0, Landroid/webkit/WebView;->mContentWidth:I

    if-ne v4, p1, :cond_63

    iget v4, p0, Landroid/webkit/WebView;->mContentHeight:I

    if-ge p2, v4, :cond_63

    .line 2871
    if-lez p2, :cond_63

    iget v4, p0, Landroid/webkit/WebView;->mContentHeight:I

    int-to-float v4, v4

    int-to-float v5, p2

    div-float/2addr v4, v5

    const v5, 0x3f99999a

    cmpg-float v4, v4, v5

    if-gez v4, :cond_63

    .line 2872
    int-to-float v4, p2

    iget v5, p0, Landroid/webkit/WebView;->mActualScale:F

    mul-float/2addr v4, v5

    float-to-int v0, v4

    .line 2873
    .local v0, newHeightInPixels:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v5

    sub-int v3, v4, v5

    .line 2880
    .local v3, viewPortHeight:I
    sub-int v4, v0, v3

    const/16 v5, 0x1e

    if-ge v4, v5, :cond_63

    .line 2881
    const-string/jumbo v4, "webview"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "override mContentHeight "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/webkit/WebView;->mContentHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2882
    move p2, v0

    .line 2890
    .end local v0           #newHeightInPixels:I
    .end local v3           #viewPortHeight:I
    :cond_63
    iget v4, p0, Landroid/webkit/WebView;->mContentWidth:I

    if-ne v4, p1, :cond_6b

    iget v4, p0, Landroid/webkit/WebView;->mContentHeight:I

    if-eq v4, p2, :cond_bc

    .line 2892
    :cond_6b
    iput p1, p0, Landroid/webkit/WebView;->mContentWidth:I

    .line 2893
    iput p2, p0, Landroid/webkit/WebView;->mContentHeight:I

    .line 2896
    iget-boolean v4, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-nez v4, :cond_bc

    .line 2898
    iget v1, p0, Landroid/view/View;->mScrollX:I

    .line 2899
    .local v1, oldX:I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 2900
    .local v2, oldY:I
    iget v4, p0, Landroid/view/View;->mScrollX:I

    invoke-direct {p0, v4}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v4

    iput v4, p0, Landroid/view/View;->mScrollX:I

    .line 2901
    iget v4, p0, Landroid/view/View;->mScrollY:I

    invoke-direct {p0, v4}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v4

    iput v4, p0, Landroid/view/View;->mScrollY:I

    .line 2902
    iget v4, p0, Landroid/view/View;->mScrollX:I

    if-ne v1, v4, :cond_8f

    iget v4, p0, Landroid/view/View;->mScrollY:I

    if-eq v2, v4, :cond_96

    .line 2903
    :cond_8f
    iget v4, p0, Landroid/view/View;->mScrollX:I

    iget v5, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v4, v5, v1, v2}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 2905
    :cond_96
    iget-object v4, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_bc

    .line 2908
    iget-object v4, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    iget-object v5, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v5

    invoke-direct {p0, v5}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/OverScroller;->setFinalX(I)V

    .line 2909
    iget-object v4, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    iget-object v5, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v5

    invoke-direct {p0, v5}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/OverScroller;->setFinalY(I)V

    .line 2913
    .end local v1           #oldX:I
    .end local v2           #oldY:I
    :cond_bc
    invoke-direct {p0, p3}, Landroid/webkit/WebView;->contentSizeChanged(Z)V

    goto/16 :goto_4
.end method

.method private requestSelectElementOnScreen(Landroid/graphics/Rect;Z)V
    .registers 24
    .parameter "elementRect"
    .parameter "immediate"

    .prologue
    .line 8941
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    .line 8944
    .local v8, rect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v19

    add-int v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getVerticalScrollbarWidth()I

    move-result v19

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v19

    move-object v0, v5

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 8954
    .local v5, content:Landroid/graphics/Rect;
    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v12

    .line 8955
    .local v12, screenTop:I
    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v9

    .line 8956
    .local v9, screenBottom:I
    sub-int v6, v9, v12

    .line 8957
    .local v6, height:I
    const/4 v14, 0x0

    .line 8959
    .local v14, scrollYDelta:I
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v9

    if-le v0, v1, :cond_fb

    .line 8960
    div-int/lit8 v7, v6, 0x3

    .line 8961
    .local v7, oneThirdOfScreenHeight:I
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v16

    mul-int/lit8 v17, v7, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_f1

    .line 8964
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v14, v16, v12

    .line 8974
    .end local v7           #oneThirdOfScreenHeight:I
    :cond_98
    :goto_98
    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v10

    .line 8975
    .local v10, screenLeft:I
    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v11

    .line 8976
    .local v11, screenRight:I
    sub-int v15, v11, v10

    .line 8977
    .local v15, width:I
    const/4 v13, 0x0

    .line 8979
    .local v13, scrollXDelta:I
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v11

    if-le v0, v1, :cond_117

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v10

    if-le v0, v1, :cond_117

    .line 8980
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v16

    move/from16 v0, v16

    move v1, v15

    if-le v0, v1, :cond_10d

    .line 8981
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    sub-int v16, v16, v10

    add-int v13, v13, v16

    .line 8994
    :cond_db
    :goto_db
    or-int v16, v14, v13

    if-eqz v16, :cond_12e

    .line 8995
    if-nez p2, :cond_12b

    const/16 v16, 0x1

    :goto_e3
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    .line 8999
    :goto_f0
    return-void

    .line 8968
    .end local v10           #screenLeft:I
    .end local v11           #screenRight:I
    .end local v13           #scrollXDelta:I
    .end local v15           #width:I
    .restart local v7       #oneThirdOfScreenHeight:I
    :cond_f1
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    add-int v17, v12, v7

    sub-int v14, v16, v17

    goto :goto_98

    .line 8970
    .end local v7           #oneThirdOfScreenHeight:I
    :cond_fb
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v12

    if-ge v0, v1, :cond_98

    .line 8971
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v14, v16, v12

    goto :goto_98

    .line 8983
    .restart local v10       #screenLeft:I
    .restart local v11       #screenRight:I
    .restart local v13       #scrollXDelta:I
    .restart local v15       #width:I
    :cond_10d
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    sub-int v16, v16, v11

    add-int v13, v13, v16

    goto :goto_db

    .line 8985
    :cond_117
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v10

    if-ge v0, v1, :cond_db

    .line 8986
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    sub-int v16, v10, v16

    sub-int v13, v13, v16

    goto :goto_db

    .line 8995
    :cond_12b
    const/16 v16, 0x0

    goto :goto_e3

    .line 8997
    :cond_12e
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_f0
.end method

.method private restoreHistoryPictureFields(Landroid/graphics/Picture;Landroid/os/Bundle;)V
    .registers 9
    .parameter "p"
    .parameter "b"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    .line 2027
    const-string/jumbo v3, "scrollX"

    invoke-virtual {p2, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2028
    .local v1, sx:I
    const-string/jumbo v3, "scrollY"

    invoke-virtual {p2, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2029
    .local v2, sy:I
    const-string/jumbo v3, "scale"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 2030
    .local v0, scale:F
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    .line 2031
    iput-object p1, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    .line 2032
    iput v1, p0, Landroid/view/View;->mScrollX:I

    .line 2033
    iput v2, p0, Landroid/view/View;->mScrollY:I

    .line 2034
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mHistoryWidth:I

    .line 2035
    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mHistoryHeight:I

    .line 2039
    iput v0, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 2040
    div-float v3, v4, v0

    iput v3, p0, Landroid/webkit/WebView;->mInvActualScale:F

    .line 2041
    const-string/jumbo v3, "textwrapScale"

    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    .line 2042
    const-string/jumbo v3, "overview"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 2043
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 2044
    return-void
.end method

.method private scaleTrackballX(FI)I
    .registers 7
    .parameter "xRate"
    .parameter "width"

    .prologue
    .line 7655
    const/high16 v2, 0x43c8

    div-float v2, p1, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 7656
    .local v1, xMove:I
    move v0, v1

    .line 7657
    .local v0, nextXMove:I
    if-lez v1, :cond_14

    .line 7658
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    if-le v1, v2, :cond_11

    .line 7659
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    sub-int/2addr v1, v2

    .line 7664
    :cond_11
    :goto_11
    iput v0, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    .line 7665
    return v1

    .line 7661
    :cond_14
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    if-ge v1, v2, :cond_11

    .line 7662
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    sub-int/2addr v1, v2

    goto :goto_11
.end method

.method private scaleTrackballY(FI)I
    .registers 7
    .parameter "yRate"
    .parameter "height"

    .prologue
    .line 7669
    const/high16 v2, 0x43c8

    div-float v2, p1, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 7670
    .local v1, yMove:I
    move v0, v1

    .line 7671
    .local v0, nextYMove:I
    if-lez v1, :cond_14

    .line 7672
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    if-le v1, v2, :cond_11

    .line 7673
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    sub-int/2addr v1, v2

    .line 7678
    :cond_11
    :goto_11
    iput v0, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    .line 7679
    return v1

    .line 7675
    :cond_14
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    if-ge v1, v2, :cond_11

    .line 7676
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    sub-int/2addr v1, v2

    goto :goto_11
.end method

.method private selectClosestWord(II)V
    .registers 11
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 1201
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v0

    if-ne v0, v7, :cond_2b

    .line 1202
    invoke-virtual {p0}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 1203
    iget-boolean v3, p0, Landroid/webkit/WebView;->mSmartSelection:Z

    iget v5, p0, Landroid/webkit/WebView;->mActualScale:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v6

    .line 1205
    .local v6, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xd4

    invoke-virtual {v0, v1, v6}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1207
    iput-boolean v4, p0, Landroid/webkit/WebView;->mStopSelection:Z

    .line 1208
    iput-boolean v7, p0, Landroid/webkit/WebView;->mLongPress:Z

    .line 1209
    iput-boolean v7, p0, Landroid/webkit/WebView;->mbIsNewWordSelected:Z

    .line 1210
    iput-boolean v7, p0, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    .line 1211
    iput v4, p0, Landroid/webkit/WebView;->mController:I

    .line 1216
    .end local v6           #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    :cond_2b
    return-void
.end method

.method private sendMotionUp(IIIII)V
    .registers 9
    .parameter "touchGeneration"
    .parameter "frame"
    .parameter "node"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 10381
    new-instance v0, Landroid/webkit/WebViewCore$TouchUpData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$TouchUpData;-><init>()V

    .line 10382
    .local v0, touchUpData:Landroid/webkit/WebViewCore$TouchUpData;
    iput p1, v0, Landroid/webkit/WebViewCore$TouchUpData;->mMoveGeneration:I

    .line 10383
    iput p2, v0, Landroid/webkit/WebViewCore$TouchUpData;->mFrame:I

    .line 10384
    iput p3, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNode:I

    .line 10385
    iput p4, v0, Landroid/webkit/WebViewCore$TouchUpData;->mX:I

    .line 10386
    iput p5, v0, Landroid/webkit/WebViewCore$TouchUpData;->mY:I

    .line 10387
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8c

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 10388
    instance-of v1, p0, Landroid/webkit/HtmlComposerView;

    if-eqz v1, :cond_1f

    .line 10390
    check-cast p0, Landroid/webkit/HtmlComposerView;

    .end local p0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->onRecieveWebviewTouchUp()V

    .line 10392
    :cond_1f
    return-void
.end method

.method private sendMouseClick(II)V
    .registers 7
    .parameter "frame"
    .parameter "node"

    .prologue
    const/4 v3, 0x0

    .line 10355
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xbc

    new-instance v2, Landroid/webkit/WebViewCore$CursorData;

    invoke-direct {v2, p1, p2, v3, v3}, Landroid/webkit/WebViewCore$CursorData;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 10357
    return-void
.end method

.method private sendMoveFocus(II)V
    .registers 7
    .parameter "frame"
    .parameter "node"

    .prologue
    const/4 v3, 0x0

    .line 10342
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x7f

    new-instance v2, Landroid/webkit/WebViewCore$CursorData;

    invoke-direct {v2, p1, p2, v3, v3}, Landroid/webkit/WebViewCore$CursorData;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 10344
    return-void
.end method

.method private sendMoveMouse(IIII)V
    .registers 8
    .parameter "frame"
    .parameter "node"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 10348
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x87

    new-instance v2, Landroid/webkit/WebViewCore$CursorData;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/webkit/WebViewCore$CursorData;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 10350
    return-void
.end method

.method private sendMoveMouseIfLatest(Z)V
    .registers 5
    .parameter "removeFocus"

    .prologue
    .line 10371
    if-eqz p1, :cond_6

    .line 10372
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 10374
    :cond_6
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x88

    invoke-virtual {p0}, Landroid/webkit/WebView;->cursorData()Landroid/webkit/WebViewCore$CursorData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 10376
    return-void
.end method

.method private sendOurVisibleRect()Landroid/graphics/Rect;
    .registers 8

    .prologue
    .line 3078
    iget-boolean v3, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    .line 3107
    :goto_6
    return-object v3

    .line 3080
    :cond_7
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 3081
    .local v2, rect:Landroid/graphics/Rect;
    invoke-direct {p0, v2}, Landroid/webkit/WebView;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    .line 3083
    iget-object v3, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 3084
    new-instance v1, Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 3085
    .local v1, pos:Landroid/graphics/Point;
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x6b

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeMoveGeneration()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 3087
    iput-object v2, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    .line 3089
    .end local v1           #pos:Landroid/graphics/Point;
    :cond_2e
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3090
    .local v0, globalRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_5a

    iget-object v3, p0, Landroid/webkit/WebView;->mLastGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    .line 3100
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x74

    invoke-virtual {v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3101
    iput-object v0, p0, Landroid/webkit/WebView;->mLastGlobalRect:Landroid/graphics/Rect;

    .line 3103
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 3104
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z

    :cond_5a
    move-object v3, v2

    .line 3107
    goto :goto_6
.end method

.method private sendViewSizeZoom()Z
    .registers 2

    .prologue
    .line 3194
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->sendViewSizeZoom(Z)Z

    move-result v0

    return v0
.end method

.method private sendViewSizeZoom(Z)Z
    .registers 10
    .parameter "needAnchorDiff"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3197
    iget-boolean v4, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    if-eqz v4, :cond_a

    if-nez p1, :cond_a

    move v4, v6

    .line 3234
    :goto_9
    return v4

    .line 3199
    :cond_a
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v3

    .line 3200
    .local v3, viewWidth:I
    int-to-float v4, v3

    iget v5, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 3201
    .local v2, newWidth:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 3210
    .local v1, newHeight:I
    iget v4, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    if-le v2, v4, :cond_2b

    iget-boolean v4, p0, Landroid/webkit/WebView;->mWrapContent:Z

    if-eqz v4, :cond_2b

    .line 3211
    const/4 v1, 0x0

    .line 3214
    :cond_2b
    iget v4, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    if-ne v2, v4, :cond_33

    iget v4, p0, Landroid/webkit/WebView;->mLastHeightSent:I

    if-eq v1, v4, :cond_85

    .line 3215
    :cond_33
    new-instance v0, Landroid/webkit/WebView$ViewSizeData;

    invoke-direct {v0}, Landroid/webkit/WebView$ViewSizeData;-><init>()V

    .line 3216
    .local v0, data:Landroid/webkit/WebView$ViewSizeData;
    iput v2, v0, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    .line 3217
    iput v1, v0, Landroid/webkit/WebView$ViewSizeData;->mHeight:I

    .line 3218
    int-to-float v4, v3

    iget v5, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v0, Landroid/webkit/WebView$ViewSizeData;->mTextWrapWidth:I

    .line 3219
    iget v4, p0, Landroid/webkit/WebView;->mActualScale:F

    iput v4, v0, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    .line 3220
    iget v4, p0, Landroid/webkit/WebView;->mZoomScale:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_83

    iget-boolean v4, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v4, :cond_83

    move v4, v7

    :goto_56
    iput-boolean v4, v0, Landroid/webkit/WebView$ViewSizeData;->mIgnoreHeight:Z

    .line 3221
    iget v4, p0, Landroid/webkit/WebView;->mAnchorX:I

    iput v4, v0, Landroid/webkit/WebView$ViewSizeData;->mAnchorX:I

    .line 3222
    iget v4, p0, Landroid/webkit/WebView;->mAnchorY:I

    iput v4, v0, Landroid/webkit/WebView$ViewSizeData;->mAnchorY:I

    .line 3224
    iput-boolean p1, v0, Landroid/webkit/WebView$ViewSizeData;->mNeedAnchorDiff:Z

    .line 3225
    iget v4, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v4

    iput v4, v0, Landroid/webkit/WebView$ViewSizeData;->mViewportLeft:I

    .line 3226
    iget v4, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v4

    iput v4, v0, Landroid/webkit/WebView$ViewSizeData;->mViewportTop:I

    .line 3228
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x69

    invoke-virtual {v4, v5, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3229
    iput v2, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    .line 3230
    iput v1, p0, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 3231
    iput v6, p0, Landroid/webkit/WebView;->mAnchorY:I

    iput v6, p0, Landroid/webkit/WebView;->mAnchorX:I

    move v4, v7

    .line 3232
    goto :goto_9

    :cond_83
    move v4, v6

    .line 3220
    goto :goto_56

    .end local v0           #data:Landroid/webkit/WebView$ViewSizeData;
    :cond_85
    move v4, v6

    .line 3234
    goto :goto_9
.end method

.method private setActive(Z)V
    .registers 6
    .parameter "active"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5455
    if-eqz p1, :cond_37

    .line 5456
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 5457
    instance-of v0, p0, Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_31

    .line 5458
    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 5459
    const-string/jumbo v0, "webview"

    const-string/jumbo v1, "setActive, has Focus() mDrawCursorRing set to false for HTMLComposer only"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5467
    :goto_19
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_2d

    .line 5468
    invoke-direct {p0, v3, v2, v3}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 5469
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 5470
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1, v3, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 5507
    :cond_2d
    :goto_2d
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 5508
    return-void

    .line 5465
    :cond_31
    iput-boolean v3, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    goto :goto_19

    .line 5476
    :cond_34
    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    goto :goto_2d

    .line 5482
    :cond_37
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_57

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_51

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v0

    if-nez v0, :cond_57

    .line 5494
    :cond_51
    iget-boolean v0, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    if-nez v0, :cond_57

    .line 5495
    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 5498
    :cond_57
    iput-boolean v2, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    .line 5499
    iput-boolean v2, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 5500
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5501
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 5502
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_6b

    .line 5503
    invoke-direct {p0, v2, v2, v3}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 5505
    :cond_6b
    invoke-virtual {p0}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    goto :goto_2d
.end method

.method private setContentScrollBy(IIZ)Z
    .registers 7
    .parameter "cx"
    .parameter "cy"
    .parameter "animate"

    .prologue
    const/4 v2, 0x0

    .line 3822
    iget-boolean v1, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v1, :cond_7

    move v1, v2

    .line 3846
    :goto_6
    return v1

    .line 3829
    :cond_7
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result p1

    .line 3830
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result p2

    .line 3831
    iget-boolean v1, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v1, :cond_31

    .line 3833
    if-eqz p2, :cond_23

    .line 3834
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3835
    .local v0, tempRect:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 3836
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 3837
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 3844
    .end local v0           #tempRect:Landroid/graphics/Rect;
    :cond_23
    if-nez p2, :cond_2f

    if-eqz p1, :cond_2f

    invoke-direct {p0, p1, v2, p3, v2}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v1

    if-eqz v1, :cond_2f

    const/4 v1, 0x1

    goto :goto_6

    :cond_2f
    move v1, v2

    goto :goto_6

    .line 3846
    :cond_31
    invoke-direct {p0, p1, p2, p3, v2}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v1

    goto :goto_6
.end method

.method private setContentScrollTo(II)Z
    .registers 9
    .parameter "cx"
    .parameter "cy"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3892
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_8

    move v2, v4

    .line 3946
    :goto_7
    return v2

    .line 3902
    :cond_8
    or-int v2, p1, p2

    if-nez v2, :cond_30

    .line 3906
    const/4 v0, 0x0

    .line 3907
    .local v0, vx:I
    const/4 v1, 0x0

    .line 3919
    .local v1, vy:I
    :goto_e
    if-nez p1, :cond_3f

    if-ne p2, v5, :cond_3f

    iget v2, p0, Landroid/view/View;->mScrollX:I

    if-nez v2, :cond_3f

    iget v2, p0, Landroid/view/View;->mScrollY:I

    if-nez v2, :cond_3f

    iget-object v2, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v2, :cond_3f

    .line 3922
    invoke-virtual {p0}, Landroid/webkit/WebView;->getProgress()I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_39

    .line 3926
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    .line 3927
    iput v1, p0, Landroid/webkit/WebView;->mYDistanceToSlideTitleOffScreen:I

    :goto_2e
    move v2, v4

    .line 3933
    goto :goto_7

    .line 3909
    .end local v0           #vx:I
    .end local v1           #vy:I
    :cond_30
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v0

    .line 3910
    .restart local v0       #vx:I
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v1

    .restart local v1       #vy:I
    goto :goto_e

    .line 3929
    :cond_39
    const/16 v2, 0x1f4

    invoke-direct {p0, v0, v1, v5, v2}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    goto :goto_2e

    .line 3936
    :cond_3f
    sput-boolean v4, Landroid/webkit/WebView;->mScrollBeyondPage:Z

    .line 3938
    invoke-direct {p0, v0, v1, v4, v4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 3942
    iget v2, p0, Landroid/view/View;->mScrollX:I

    if-eq v2, v0, :cond_4a

    if-gez p1, :cond_54

    :cond_4a
    sget-boolean v2, Landroid/webkit/WebView;->mScrollBeyondPage:Z

    if-nez v2, :cond_56

    iget v2, p0, Landroid/view/View;->mScrollY:I

    if-eq v2, v1, :cond_56

    if-ltz p2, :cond_56

    :cond_54
    move v2, v5

    .line 3944
    goto :goto_7

    :cond_56
    move v2, v4

    .line 3946
    goto :goto_7
.end method

.method private setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    .registers 11
    .parameter "scale"
    .parameter "updateTextWrapScale"
    .parameter "force"
    .parameter "zoomInfo"

    .prologue
    .line 2919
    sget-object v4, Landroid/webkit/WebView$ZoomMode;->ZOOM_NORMAL:Landroid/webkit/WebView$ZoomMode;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/WebView$ZoomMode;Landroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 2920
    return-void
.end method

.method private setNewZoomScale(FZZLandroid/webkit/WebView$ZoomMode;Landroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    .registers 31
    .parameter "scale"
    .parameter "updateTextWrapScale"
    .parameter "force"
    .parameter "mode"
    .parameter "zoomInfo"

    .prologue
    .line 2930
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTextWrapScale:F

    move/from16 v18, v0

    .line 2931
    .local v18, oldTextWrapScale:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastHeightSent:I

    move v15, v0

    .line 2932
    .local v15, oldLastHeightSent:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v10, v0

    .line 2933
    .local v10, oldActualScale:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvActualScale:F

    move v14, v0

    .line 2934
    .local v14, oldInvActualScale:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    move v11, v0

    .line 2935
    .local v11, oldAdaptiveZoom:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mAdaptiveZoomAnimationLength:F

    move v12, v0

    .line 2936
    .local v12, oldAdaptiveZoomAnimationLength:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v16, v0

    .line 2937
    .local v16, oldScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v17, v0

    .line 2938
    .local v17, oldScrollY:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mInZoomOverview:Z

    move v13, v0

    .line 2939
    .local v13, oldInZoomOverview:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move/from16 v19, v0

    .line 2940
    .local v19, oldZoomCenterX:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move/from16 v20, v0

    .line 2944
    .local v20, oldZoomCenterY:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move v3, v0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_124

    .line 2945
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move/from16 p1, v0

    .line 2947
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mDefaultScale:F

    move v3, v0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_5a

    .line 2948
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 2958
    :cond_5a
    :goto_5a
    if-eqz p2, :cond_68

    .line 2959
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTextWrapScale:F

    .line 2961
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 2963
    :cond_68
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v3, v0

    cmpl-float v3, p1, v3

    if-nez v3, :cond_73

    if-eqz p3, :cond_b1

    .line 2964
    :cond_73
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDrawHistory:Z

    move v3, v0

    if-eqz v3, :cond_14a

    .line 2967
    if-nez p5, :cond_9d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v3, v0

    cmpl-float v3, p1, v3

    if-eqz v3, :cond_9d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    move v3, v0

    if-nez v3, :cond_9d

    .line 2968
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v4, v0

    move-object v0, v3

    move v1, v4

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CallbackProxy;->onScaleChanged(FF)V

    .line 2970
    :cond_9d
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mActualScale:F

    .line 2971
    const/high16 v3, 0x3f80

    div-float v3, v3, p1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mInvActualScale:F

    .line 2972
    if-nez p5, :cond_b1

    .line 2973
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    .line 3047
    :cond_b1
    :goto_b1
    if-eqz p5, :cond_123

    .line 3049
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v3, v0

    move v0, v3

    move-object/from16 v1, p5

    iput v0, v1, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scale:F

    .line 3050
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v3, v0

    int-to-float v3, v3

    move v0, v3

    move-object/from16 v1, p5

    iput v0, v1, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scrollX:F

    .line 3051
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v3, v0

    int-to-float v3, v3

    move v0, v3

    move-object/from16 v1, p5

    iput v0, v1, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scrollY:F

    .line 3052
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move v3, v0

    move v0, v3

    move-object/from16 v1, p5

    iput v0, v1, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterX:F

    .line 3053
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move v3, v0

    move v0, v3

    move-object/from16 v1, p5

    iput v0, v1, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterY:F

    .line 3056
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTextWrapScale:F

    .line 3057
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 3058
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mActualScale:F

    .line 3059
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mInvActualScale:F

    .line 3060
    move v0, v11

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    .line 3061
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mAdaptiveZoomAnimationLength:F

    .line 3062
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mScrollX:I

    .line 3063
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mScrollY:I

    .line 3064
    move v0, v13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 3065
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 3066
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 3071
    :cond_123
    return-void

    .line 2949
    :cond_124
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaxZoomScale:F

    move v3, v0

    cmpl-float v3, p1, v3

    if-lez v3, :cond_135

    .line 2950
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaxZoomScale:F

    move/from16 p1, v0

    goto/16 :goto_5a

    .line 2951
    :cond_135
    sget-object v3, Landroid/webkit/WebView$ZoomMode;->ZOOM_ROTATE:Landroid/webkit/WebView$ZoomMode;

    move-object v0, v3

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_5a

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->userScalable()Z

    move-result v3

    if-nez v3, :cond_5a

    .line 2955
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 p1, v0

    goto/16 :goto_5a

    .line 2978
    :cond_14a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v6, v0

    .line 2979
    .local v6, oldX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v7, v0

    .line 2980
    .local v7, oldY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvActualScale:F

    move v3, v0

    mul-float v21, p1, v3

    .line 2981
    .local v21, ratio:F
    int-to-float v3, v6

    mul-float v3, v3, v21

    const/high16 v4, 0x3f80

    sub-float v4, v21, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move v5, v0

    mul-float/2addr v4, v5

    add-float v22, v3, v4

    .line 2982
    .local v22, sx:F
    int-to-float v3, v7

    mul-float v3, v3, v21

    const/high16 v4, 0x3f80

    sub-float v4, v21, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v5, v8

    mul-float/2addr v4, v5

    add-float v23, v3, v4

    .line 2986
    .local v23, sy:F
    if-nez p5, :cond_1a2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v3, v0

    cmpl-float v3, p1, v3

    if-eqz v3, :cond_1a2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    move v3, v0

    if-nez v3, :cond_1a2

    .line 2987
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v4, v0

    move-object v0, v3

    move v1, v4

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CallbackProxy;->onScaleChanged(FF)V

    .line 2989
    :cond_1a2
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mActualScale:F

    .line 2990
    const/high16 v3, 0x3f80

    div-float v3, v3, p1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mInvActualScale:F

    .line 2993
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    .line 2995
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v24

    .line 2997
    .local v24, titleHeight:I
    sget-object v3, Landroid/webkit/WebView$ZoomMode;->ZOOM_ROTATE:Landroid/webkit/WebView$ZoomMode;

    move-object v0, v3

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_26b

    .line 2998
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->userScalable()Z

    move-result v3

    if-eqz v3, :cond_257

    .line 2999
    int-to-float v3, v6

    mul-float v22, v21, v3

    .line 3001
    move/from16 v0, v24

    move v1, v7

    if-ge v0, v1, :cond_252

    .line 3002
    move/from16 v0, v24

    int-to-float v0, v0

    move v3, v0

    sub-int v4, v7, v24

    int-to-float v4, v4

    mul-float v4, v4, v21

    add-float v23, v3, v4

    .line 3017
    :goto_1db
    if-nez p5, :cond_1e5

    .line 3018
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/ViewManager;->scaleAll()V

    .line 3023
    :cond_1e5
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mScrollX:I

    .line 3024
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mScrollY:I

    .line 3027
    sget-object v3, Landroid/webkit/WebView$ZoomMode;->ZOOM_ROTATE:Landroid/webkit/WebView$ZoomMode;

    move-object v0, v3

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_290

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->userScalable()Z

    move-result v3

    if-eqz v3, :cond_21e

    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v4

    if-eq v3, v4, :cond_290

    :cond_21e
    const/4 v3, 0x1

    move v9, v3

    .line 3029
    .local v9, needAnchorDiff:Z
    :goto_220
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v3, v0

    if-ne v6, v3, :cond_22e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v3, v0

    if-eq v7, v3, :cond_296

    .line 3030
    :cond_22e
    if-nez p5, :cond_248

    .line 3031
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v5, v0

    sget-object v3, Landroid/webkit/WebView$ZoomMode;->ZOOM_ROTATE:Landroid/webkit/WebView$ZoomMode;

    move-object v0, v3

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_293

    const/4 v3, 0x1

    move v8, v3

    :goto_243
    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->onScrollChangedAnchorDiff(IIIIZ)V

    .line 3040
    :cond_248
    :goto_248
    if-nez p5, :cond_b1

    .line 3042
    move-object/from16 v0, p0

    move v1, v9

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->sendViewSizeZoom(Z)Z

    goto/16 :goto_b1

    .line 3004
    .end local v9           #needAnchorDiff:Z
    :cond_252
    move v0, v7

    int-to-float v0, v0

    move/from16 v23, v0

    goto :goto_1db

    .line 3007
    :cond_257
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mAnchorX:I

    move v0, v6

    int-to-float v0, v0

    move/from16 v22, v0

    .line 3008
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mAnchorY:I

    move v0, v7

    int-to-float v0, v0

    move/from16 v23, v0

    goto/16 :goto_1db

    .line 3011
    :cond_26b
    int-to-float v3, v6

    mul-float v3, v3, v21

    const/high16 v4, 0x3f80

    sub-float v4, v21, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move v5, v0

    mul-float/2addr v4, v5

    add-float v22, v3, v4

    .line 3012
    int-to-float v3, v7

    mul-float v3, v3, v21

    const/high16 v4, 0x3f80

    sub-float v4, v21, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move v5, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move v8, v0

    sub-float/2addr v5, v8

    mul-float/2addr v4, v5

    add-float v23, v3, v4

    goto/16 :goto_1db

    .line 3027
    :cond_290
    const/4 v3, 0x0

    move v9, v3

    goto :goto_220

    .line 3031
    .restart local v9       #needAnchorDiff:Z
    :cond_293
    const/4 v3, 0x0

    move v8, v3

    goto :goto_243

    .line 3037
    :cond_296
    if-nez p5, :cond_248

    .line 3038
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    goto :goto_248
.end method

.method private setNewZoomScaleEx(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    .registers 26
    .parameter "scale"
    .parameter "updateTextWrapScale"
    .parameter "force"
    .parameter "zoomInfo"

    .prologue
    .line 8653
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTextWrapScale:F

    move v10, v0

    .line 8654
    .local v10, oldTextWrapScale:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastHeightSent:I

    move v7, v0

    .line 8655
    .local v7, oldLastHeightSent:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v3, v0

    .line 8656
    .local v3, oldActualScale:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvActualScale:F

    move v6, v0

    .line 8657
    .local v6, oldInvActualScale:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    move v4, v0

    .line 8658
    .local v4, oldAdaptiveZoom:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mAdaptiveZoomAnimationLength:F

    move v5, v0

    .line 8659
    .local v5, oldAdaptiveZoomAnimationLength:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v8, v0

    .line 8660
    .local v8, oldScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v9, v0

    .line 8663
    .local v9, oldScrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move/from16 v17, v0

    cmpg-float v17, p1, v17

    if-gez v17, :cond_10b

    .line 8664
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move/from16 p1, v0

    .line 8672
    :cond_38
    :goto_38
    if-eqz p2, :cond_48

    .line 8673
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTextWrapScale:F

    .line 8675
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 8677
    :cond_48
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v17, v0

    cmpl-float v17, p1, v17

    if-nez v17, :cond_54

    if-eqz p3, :cond_9a

    .line 8678
    :cond_54
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDrawHistory:Z

    move/from16 v17, v0

    if-eqz v17, :cond_11d

    .line 8681
    if-nez p4, :cond_85

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v17, v0

    cmpl-float v17, p1, v17

    if-eqz v17, :cond_85

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    move/from16 v17, v0

    if-nez v17, :cond_85

    .line 8682
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CallbackProxy;->onScaleChanged(FF)V

    .line 8684
    :cond_85
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mActualScale:F

    .line 8685
    const/high16 v17, 0x3f80

    div-float v17, v17, p1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mInvActualScale:F

    .line 8687
    if-nez p4, :cond_9a

    .line 8688
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    .line 8739
    :cond_9a
    :goto_9a
    if-eqz p4, :cond_10a

    .line 8741
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p4

    iput v0, v1, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scale:F

    .line 8742
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p4

    iput v0, v1, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scrollX:F

    .line 8743
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p4

    iput v0, v1, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scrollY:F

    .line 8744
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p4

    iput v0, v1, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterX:F

    .line 8745
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p4

    iput v0, v1, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterY:F

    .line 8748
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTextWrapScale:F

    .line 8749
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 8750
    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mActualScale:F

    .line 8751
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mInvActualScale:F

    .line 8752
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    .line 8753
    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mAdaptiveZoomAnimationLength:F

    .line 8754
    move v0, v8

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mScrollX:I

    .line 8755
    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mScrollY:I

    .line 8758
    :cond_10a
    return-void

    .line 8665
    :cond_10b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaxZoomScale:F

    move/from16 v17, v0

    cmpl-float v17, p1, v17

    if-lez v17, :cond_38

    .line 8666
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaxZoomScale:F

    move/from16 p1, v0

    goto/16 :goto_38

    .line 8693
    :cond_11d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v11, v0

    .line 8694
    .local v11, oldX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v12, v0

    .line 8695
    .local v12, oldY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvActualScale:F

    move/from16 v17, v0

    mul-float v13, p1, v17

    .line 8702
    .local v13, ratio:F
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    .line 8703
    .local v16, titleHeight:F
    move v0, v11

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move/from16 v18, v0

    mul-float v18, v18, v13

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f00

    mul-float v19, v19, v20

    sub-float v18, v18, v19

    add-float v14, v17, v18

    .line 8704
    .local v14, sx:F
    move v0, v12

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move/from16 v18, v0

    sub-float v18, v18, v16

    mul-float v18, v18, v13

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v19, v16

    const/high16 v20, 0x3f00

    mul-float v19, v19, v20

    sub-float v18, v18, v19

    add-float v15, v17, v18

    .line 8707
    .local v15, sy:F
    if-nez p4, :cond_1a3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v17, v0

    cmpl-float v17, p1, v17

    if-eqz v17, :cond_1a3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    move/from16 v17, v0

    if-nez v17, :cond_1a3

    .line 8708
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CallbackProxy;->onScaleChanged(FF)V

    .line 8710
    :cond_1a3
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mActualScale:F

    .line 8711
    const/high16 v17, 0x3f80

    div-float v17, v17, p1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mInvActualScale:F

    .line 8713
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    .line 8714
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mAdaptiveZoomAnimationLength:F

    .line 8717
    if-nez p4, :cond_1ce

    .line 8718
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/ViewManager;->scaleAll()V

    .line 8723
    :cond_1ce
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mScrollX:I

    .line 8724
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mScrollY:I

    .line 8730
    if-nez p4, :cond_9a

    .line 8732
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    .line 8733
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    goto/16 :goto_9a
.end method

.method private setSmartTextSelection(Z)V
    .registers 2
    .parameter "smartSeelction"

    .prologue
    .line 1373
    iput-boolean p1, p0, Landroid/webkit/WebView;->mSmartSelection:Z

    .line 1374
    return-void
.end method

.method private static sign(F)I
    .registers 3
    .parameter "x"

    .prologue
    const/4 v1, 0x0

    .line 6190
    cmpl-float v0, p0, v1

    if-lez v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    cmpg-float v0, p0, v1

    if-gez v0, :cond_d

    const/4 v0, -0x1

    goto :goto_6

    :cond_d
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private skipInvalidates()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 11271
    iget-boolean v0, p0, Landroid/webkit/WebView;->mTempDisableInvalidate:Z

    if-eqz v0, :cond_7

    move v0, v1

    .line 11279
    :goto_6
    return v0

    .line 11274
    :cond_7
    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v0}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v0

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v0}, Landroid/webkit/OnPinchZoomListener;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v1

    .line 11277
    goto :goto_6

    .line 11279
    :cond_1d
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private spawnContentScrollTo(II)V
    .registers 7
    .parameter "cx"
    .parameter "cy"

    .prologue
    .line 3952
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_5

    .line 3960
    :goto_4
    return-void

    .line 3957
    :cond_5
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v0

    .line 3958
    .local v0, vx:I
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v1

    .line 3959
    .local v1, vy:I
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    goto :goto_4
.end method

.method private startDrag()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 7353
    invoke-static {}, Landroid/webkit/WebViewCore;->reducePriority()V

    .line 7355
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 7356
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDragFromTextInput:Z

    if-nez v2, :cond_10

    .line 7357
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHideCursor()V

    .line 7359
    :cond_10
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 7360
    .local v1, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-virtual {p0}, Landroid/webkit/WebView;->getZoomButtonsController()Landroid/widget/ZoomButtonsController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v2

    if-nez v2, :cond_5a

    iget v2, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    iget v3, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5a

    iget v2, p0, Landroid/webkit/WebView;->mHorizontalScrollBarMode:I

    if-ne v2, v4, :cond_3a

    iget v2, p0, Landroid/webkit/WebView;->mVerticalScrollBarMode:I

    if-eq v2, v4, :cond_5a

    .line 7366
    :cond_3a
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, v4}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 7367
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getDoubleTapToastCount()I

    move-result v0

    .line 7368
    .local v0, count:I
    iget-boolean v2, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    if-eqz v2, :cond_5a

    if-lez v0, :cond_5a

    .line 7369
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDoubleTapToastCount(I)V

    .line 7370
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v3, 0x10403d8

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 7376
    .end local v0           #count:I
    :cond_5a
    iget-object v2, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v2, :cond_6b

    iget-object v2, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v2

    if-ne v2, v4, :cond_6b

    .line 7378
    iget-object v2, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2}, Landroid/webkit/OnPinchZoomListener;->startDrag()V

    .line 7380
    :cond_6b
    return-void
.end method

.method private startTouch(FFJ)V
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 7342
    iput p1, p0, Landroid/webkit/WebView;->mLastTouchX:F

    .line 7343
    iput p2, p0, Landroid/webkit/WebView;->mLastTouchY:F

    .line 7344
    iput-wide p3, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    .line 7345
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 7346
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 7347
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTracker:Landroid/webkit/WebView$DragTracker;

    if-eqz v0, :cond_1c

    .line 7348
    new-instance v0, Landroid/webkit/WebView$DragTrackerHandler;

    iget-object v1, p0, Landroid/webkit/WebView;->mDragTracker:Landroid/webkit/WebView$DragTracker;

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/webkit/WebView$DragTrackerHandler;-><init>(Landroid/webkit/WebView;FFLandroid/webkit/WebView$DragTracker;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    .line 7350
    :cond_1c
    return-void
.end method

.method private stopTouch()V
    .registers 2

    .prologue
    .line 7426
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    if-eqz v0, :cond_9

    .line 7427
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    invoke-virtual {v0}, Landroid/webkit/WebView$DragTrackerHandler;->stopDrag()V

    .line 7432
    :cond_9
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_15

    .line 7433
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 7434
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 7438
    :cond_15
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v0, :cond_2d

    .line 7439
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 7440
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 7441
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 7442
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 7444
    :cond_2d
    return-void
.end method

.method private textSelectionTouchEvent(Landroid/view/MotionEvent;IIIFF)Z
    .registers 26
    .parameter "ev"
    .parameter "touchEvent"
    .parameter "contentX"
    .parameter "contentY"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 10868
    const/16 v17, 0x0

    .line 10869
    .local v17, result:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    .line 10875
    .local v14, eventTime:J
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v5

    if-nez v5, :cond_12

    .line 10876
    const/4 v5, 0x0

    .line 11049
    .end local p1
    :goto_11
    return v5

    .line 10877
    .restart local p1
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    move v5, v0

    if-nez v5, :cond_3a

    .line 10879
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move-object v6, v0

    iget-boolean v6, v6, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-ne v5, v6, :cond_2b

    .line 10880
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebMagnifier;->hide()V

    .line 10882
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v5, v0

    if-nez v5, :cond_38

    .line 10883
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mStopSelection:Z

    .line 10885
    :cond_38
    const/4 v5, 0x0

    goto :goto_11

    .line 10891
    :cond_3a
    packed-switch p2, :pswitch_data_2e6

    .end local p1
    :cond_3d
    :goto_3d
    move/from16 v5, v17

    .line 11049
    goto :goto_11

    .line 10896
    .restart local p1
    :pswitch_40
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mStopSelection:Z

    .line 10897
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    .line 10898
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->getSelectionDirection(II)V

    .line 10900
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mStopSelection:Z

    move v5, v0

    if-nez v5, :cond_bd

    .line 10901
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mExtendSelectionPressed:Z

    .line 10902
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0xd2

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 10903
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v6, v0

    const/16 v7, 0x8d

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 10906
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mActionMove:Z

    .line 10907
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mInActionMove:Z

    .line 10908
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v5, v0

    iget v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_a7

    .line 10909
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move-object v5, v0

    move/from16 v0, p5

    float-to-int v0, v0

    move v6, v0

    move/from16 v0, p6

    float-to-int v0, v0

    move v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/webkit/WebMagnifier;->show(II)V

    .line 10912
    :cond_a7
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move-wide v3, v14

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->startTouch(FFJ)V

    .line 10913
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 10914
    const/4 v5, 0x7

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 10915
    const/16 v17, 0x1

    goto :goto_3d

    .line 10919
    :cond_bd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v5, v0

    if-eqz v5, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

    move-object v5, v0

    if-eqz v5, :cond_3d

    .line 10921
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

    move-object v5, v0

    const/4 v6, 0x7

    invoke-interface {v5, v6}, Landroid/webkit/WebView$WebTextSelectionListener;->onSelectionChanged(I)V

    goto/16 :goto_3d

    .line 10932
    :pswitch_d6
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mbIsNewWordSelected:Z

    .line 10934
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mStopSelection:Z

    move v5, v0

    if-nez v5, :cond_3d

    .line 10938
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mLongPress:Z

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_180

    .line 10942
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0xd4

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 10944
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v10, v0

    move-object/from16 v5, p0

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v5 .. v10}, Landroid/webkit/WebView;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v11

    .line 10945
    .local v11, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0xd4

    invoke-virtual {v5, v6, v11}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 10982
    .end local v11           #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    :cond_110
    :goto_110
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    if-nez v5, :cond_15e

    .line 10983
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "textSelectionTouchEvent : Got null mVelocityTracker when mPreventDefault = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mDeferTouchProcess = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mTouchMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10988
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move-wide v3, v14

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->startTouch(FFJ)V

    .line 10990
    :cond_15e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 10991
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 10992
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move-object v5, v0

    move/from16 v0, p5

    float-to-int v0, v0

    move v6, v0

    move/from16 v0, p6

    float-to-int v0, v0

    move v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/webkit/WebMagnifier;->move(II)V

    .line 10993
    const/16 v17, 0x1

    goto/16 :goto_3d

    .line 10948
    :cond_180
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v5, v0

    if-eqz v5, :cond_110

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    if-eqz v5, :cond_110

    .line 10952
    const/16 v16, 0x0

    .line 10953
    .local v16, moveForward:Z
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->getSelectionExtendPoint(II)Landroid/graphics/Point;

    move-result-object v18

    .line 10955
    .local v18, value:Landroid/graphics/Point;
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v12, v0

    .line 10956
    .local v12, currX:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v13, v0

    .line 10957
    .local v13, currY:I
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->IsTextSelectionControlerForward(II)Z

    move-result v16

    .line 10959
    const/4 v5, 0x1

    move/from16 v0, v16

    move v1, v5

    if-ne v0, v1, :cond_1f5

    .line 10960
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v6, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v7, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSmartSelection:Z

    move v8, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mActionMove:Z

    move v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v10, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Landroid/webkit/WebView;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v11

    .line 10963
    .restart local v11       #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mActionMove:Z

    .line 10964
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mInActionMove:Z

    .line 10965
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0xd2

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 10966
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0xd2

    invoke-virtual {v5, v6, v11}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_110

    .line 10974
    .end local v11           #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    :cond_1f5
    const-string/jumbo v5, "webview"

    const-string v6, "Right Selection Controler never cross left side Controler ."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_110

    .line 11003
    .end local v12           #currX:I
    .end local v13           #currY:I
    .end local v16           #moveForward:Z
    .end local v18           #value:Landroid/graphics/Point;
    :pswitch_1ff
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebMagnifier;->hide()V

    .line 11004
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mExtendSelectionPressed:Z

    .line 11005
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    .line 11006
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mStopSelection:Z

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_28a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_28a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/16 v6, 0x8

    if-eq v5, v6, :cond_28a

    .line 11008
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/webkit/HtmlComposerView;

    move v5, v0

    if-eqz v5, :cond_23f

    move-object/from16 v0, p0

    check-cast v0, Landroid/webkit/HtmlComposerView;

    move-object/from16 p1, v0

    .end local p1
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/HtmlComposerView;->getConetextmenuVisibility()Z

    move-result v5

    if-nez v5, :cond_282

    .line 11009
    :cond_23f
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mWebSelectionOn:Z

    .line 11010
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSmartSelection:Z

    move v8, v0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v10, v0

    move-object/from16 v5, p0

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v5 .. v10}, Landroid/webkit/WebView;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v11

    .line 11013
    .restart local v11       #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0xd3

    invoke-virtual {v5, v6, v11}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 11015
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    .line 11019
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v6, v0

    const/16 v7, 0x8d

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11021
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 11045
    .end local v11           #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    :cond_282
    :goto_282
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mLongPress:Z

    goto/16 :goto_3d

    .line 11024
    .restart local p1
    :cond_28a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mStopSelection:Z

    move v5, v0

    if-nez v5, :cond_2cd

    .line 11026
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mLongPress:Z

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2b7

    .line 11028
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v6, v0

    const/16 v7, 0x8d

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11036
    :goto_2ae
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->stopTouch()V

    .line 11037
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 11038
    const/16 v17, 0x1

    goto :goto_282

    .line 11033
    :cond_2b7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v6, v0

    const/16 v7, 0x8d

    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2ae

    .line 11042
    :cond_2cd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v6, v0

    const/16 v7, 0x8d

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x320

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_282

    .line 10891
    :pswitch_data_2e6
    .packed-switch 0x0
        :pswitch_40
        :pswitch_1ff
        :pswitch_d6
    .end packed-switch
.end method

.method private updateSelection()V
    .registers 8

    .prologue
    .line 8084
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v3, :cond_5

    .line 8093
    :goto_4
    return-void

    .line 8088
    :cond_5
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v3, v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 8089
    .local v0, contentX:I
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v3, v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 8090
    .local v1, contentY:I
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Landroid/webkit/WebView;->mNavSlop:I

    sub-int v3, v0, v3

    iget v4, p0, Landroid/webkit/WebView;->mNavSlop:I

    sub-int v4, v1, v4

    iget v5, p0, Landroid/webkit/WebView;->mNavSlop:I

    add-int/2addr v5, v0

    iget v6, p0, Landroid/webkit/WebView;->mNavSlop:I

    add-int/2addr v6, v1

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 8092
    .local v2, rect:Landroid/graphics/Rect;
    invoke-direct {p0, v2}, Landroid/webkit/WebView;->nativeSelectBestAt(Landroid/graphics/Rect;)V

    goto :goto_4
.end method

.method private updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V
    .registers 7
    .parameter "nodePointer"
    .parameter "textGeneration"
    .parameter "data"

    .prologue
    .line 9853
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget v0, p0, Landroid/webkit/WebView;->mTextGeneration:I

    if-ne p2, v0, :cond_1b

    .line 9856
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v1, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    iget v2, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebTextView;->setSelectionFromWebKit(II)V

    .line 9858
    :cond_1b
    return-void
.end method

.method private updateZoomButtonsEnabled()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1538
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-nez v2, :cond_7

    .line 1551
    :goto_6
    return-void

    .line 1539
    :cond_7
    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v3, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2d

    move v0, v5

    .line 1540
    .local v0, canZoomIn:Z
    :goto_10
    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v3, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2f

    iget-boolean v2, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    if-nez v2, :cond_2f

    move v1, v5

    .line 1541
    .local v1, canZoomOut:Z
    :goto_1d
    if-nez v0, :cond_31

    if-nez v1, :cond_31

    .line 1544
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .end local v0           #canZoomIn:Z
    .end local v1           #canZoomOut:Z
    :cond_2d
    move v0, v4

    .line 1539
    goto :goto_10

    .restart local v0       #canZoomIn:Z
    :cond_2f
    move v1, v4

    .line 1540
    goto :goto_1d

    .line 1548
    .restart local v1       #canZoomOut:Z
    :cond_31
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, v0}, Landroid/widget/ZoomButtonsController;->setZoomInEnabled(Z)V

    .line 1549
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, v1}, Landroid/widget/ZoomButtonsController;->setZoomOutEnabled(Z)V

    goto :goto_6
.end method

.method private updateZoomRange(Landroid/webkit/WebViewCore$RestoreState;IIZ)V
    .registers 10
    .parameter "restoreState"
    .parameter "viewWidth"
    .parameter "minPrefWidth"
    .parameter "updateZoomOverview"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10283
    iget v1, p1, Landroid/webkit/WebViewCore$RestoreState;->mMinScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_40

    .line 10284
    iget-boolean v1, p1, Landroid/webkit/WebViewCore$RestoreState;->mMobileSite:Z

    if-eqz v1, :cond_39

    .line 10285
    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-le p3, v1, :cond_32

    .line 10286
    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 10287
    iput-boolean v3, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    .line 10288
    if-eqz p4, :cond_2f

    .line 10289
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 10290
    .local v0, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v1

    if-eqz v1, :cond_30

    move v1, v4

    :goto_2d
    iput-boolean v1, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 10312
    .end local v0           #settings:Landroid/webkit/WebSettings;
    :cond_2f
    :goto_2f
    return-void

    .restart local v0       #settings:Landroid/webkit/WebSettings;
    :cond_30
    move v1, v3

    .line 10290
    goto :goto_2d

    .line 10294
    .end local v0           #settings:Landroid/webkit/WebSettings;
    :cond_32
    sget v1, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    iput v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 10296
    iput-boolean v4, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    goto :goto_2f

    .line 10299
    :cond_39
    sget v1, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    iput v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 10300
    iput-boolean v3, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    goto :goto_2f

    .line 10303
    :cond_40
    sget v1, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    iput v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 10304
    sget v1, Landroid/webkit/WebView;->DEFAULT_MAX_ZOOM_SCALE:F

    iput v1, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    .line 10305
    iput-boolean v4, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    goto :goto_2f
.end method

.method private viewInvalidate()V
    .registers 1

    .prologue
    .line 10427
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 10428
    return-void
.end method

.method private viewInvalidate(IIII)V
    .registers 12
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2819
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 2820
    .local v1, scale:F
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    .line 2821
    .local v0, dy:I
    int-to-float v2, p1

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v3, p2

    mul-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v3, v0

    int-to-float v4, p3

    mul-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-float v5, p4

    mul-float/2addr v5, v1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/2addr v5, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/webkit/WebView;->invalidate(IIII)V

    .line 2825
    return-void
.end method

.method private viewInvalidateDelayed(JIIII)V
    .registers 16
    .parameter "delay"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2830
    iget v8, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 2831
    .local v8, scale:F
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v7

    .line 2832
    .local v7, dy:I
    int-to-float v0, p3

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v3, v0

    int-to-float v0, p4

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int v4, v0, v7

    int-to-float v0, p5

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v5, v0

    int-to-float v0, p6

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int v6, v0, v7

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/WebView;->postInvalidateDelayed(JIIII)V

    .line 2837
    return-void
.end method

.method private viewToContentDimension(IF)F
    .registers 4
    .parameter "d"
    .parameter "scale"

    .prologue
    .line 7914
    int-to-float v0, p1

    div-float/2addr v0, p2

    return v0
.end method

.method private viewToContentX(IF)F
    .registers 4
    .parameter "x"
    .parameter "scale"

    .prologue
    .line 7918
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->viewToContentDimension(IF)F

    move-result v0

    return v0
.end method

.method private viewToContentY(IF)F
    .registers 4
    .parameter "y"
    .parameter "scale"

    .prologue
    .line 7922
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/webkit/WebView;->viewToContentDimension(IF)F

    move-result v0

    return v0
.end method

.method private zoomWithPreview(FZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z
    .registers 9
    .parameter "scale"
    .parameter "updateTextWrapScale"
    .parameter "zoomInfo"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 7927
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 7929
    .local v0, oldScale:F
    if-nez p3, :cond_f

    .line 7931
    iget v1, p0, Landroid/view/View;->mScrollX:I

    iput v1, p0, Landroid/webkit/WebView;->mInitialScrollX:I

    .line 7932
    iget v1, p0, Landroid/view/View;->mScrollY:I

    iput v1, p0, Landroid/webkit/WebView;->mInitialScrollY:I

    .line 7936
    :cond_f
    iget v1, p0, Landroid/webkit/WebView;->mDefaultScale:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1f

    .line 7937
    iget p1, p0, Landroid/webkit/WebView;->mDefaultScale:F

    .line 7940
    :cond_1f
    invoke-direct {p0, p1, p2, v4, p3}, Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 7942
    if-nez p3, :cond_48

    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_48

    .line 7944
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/webkit/WebView;->mZoomStart:J

    .line 7945
    div-float v1, v3, v0

    iput v1, p0, Landroid/webkit/WebView;->mInvInitialZoomScale:F

    .line 7946
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    div-float v1, v3, v1

    iput v1, p0, Landroid/webkit/WebView;->mInvFinalZoomScale:F

    .line 7947
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    iput v1, p0, Landroid/webkit/WebView;->mZoomScale:F

    .line 7948
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v1}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 7949
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 7950
    const/4 v1, 0x1

    .line 7952
    :goto_47
    return v1

    :cond_48
    move v1, v4

    goto :goto_47
.end method

.method private zoomWithPreviewEx(FLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z
    .registers 13
    .parameter "scale"
    .parameter "zoomInfo"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    const-wide v5, 0x3fa999999999999aL

    .line 8762
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 8763
    .local v0, oldScale:F
    if-nez p2, :cond_15

    .line 8765
    iget v1, p0, Landroid/view/View;->mScrollX:I

    iput v1, p0, Landroid/webkit/WebView;->mInitialScrollX:I

    .line 8766
    iget v1, p0, Landroid/view/View;->mScrollY:I

    iput v1, p0, Landroid/webkit/WebView;->mInitialScrollY:I

    .line 8770
    :cond_15
    float-to-double v1, p1

    iget v3, p0, Landroid/webkit/WebView;->mDefaultScale:F

    float-to-double v3, v3

    sub-double/2addr v3, v5

    cmpl-double v1, v1, v3

    if-lez v1, :cond_29

    float-to-double v1, p1

    iget v3, p0, Landroid/webkit/WebView;->mDefaultScale:F

    float-to-double v3, v3

    add-double/2addr v3, v5

    cmpg-double v1, v1, v3

    if-gez v1, :cond_29

    .line 8771
    iget p1, p0, Landroid/webkit/WebView;->mDefaultScale:F

    .line 8774
    :cond_29
    invoke-direct {p0, p1, v9, v8, p2}, Landroid/webkit/WebView;->setNewZoomScaleEx(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 8776
    if-nez p2, :cond_4d

    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_4d

    .line 8778
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/webkit/WebView;->mZoomStart:J

    .line 8779
    div-float v1, v7, v0

    iput v1, p0, Landroid/webkit/WebView;->mInvInitialZoomScale:F

    .line 8780
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    div-float v1, v7, v1

    iput v1, p0, Landroid/webkit/WebView;->mInvFinalZoomScale:F

    .line 8781
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    iput v1, p0, Landroid/webkit/WebView;->mZoomScale:F

    .line 8782
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    move v1, v9

    .line 8785
    :goto_4c
    return v1

    :cond_4d
    move v1, v8

    goto :goto_4c
.end method


# virtual methods
.method public AdvanceTextSelectionAll()Z
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 1224
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_8

    move v0, v4

    .line 1248
    :goto_7
    return v0

    .line 1225
    :cond_8
    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v4

    goto :goto_7

    .line 1228
    :cond_10
    invoke-virtual {p0}, Landroid/webkit/WebView;->ClearWebTextSelection()V

    .line 1232
    invoke-virtual {p0}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 1233
    invoke-direct {p0, v4, v4}, Landroid/webkit/WebView;->nativeGetClosestWordPosition(II)Landroid/graphics/Point;

    move-result-object v7

    .line 1236
    .local v7, pos:Landroid/graphics/Point;
    iget v1, v7, Landroid/graphics/Point;->x:I

    iget v2, v7, Landroid/graphics/Point;->y:I

    iget-boolean v3, p0, Landroid/webkit/WebView;->mSmartSelection:Z

    iget v5, p0, Landroid/webkit/WebView;->mActualScale:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v6

    .line 1239
    .local v6, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xd8

    invoke-virtual {v0, v1, v6}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1241
    iput-boolean v4, p0, Landroid/webkit/WebView;->mStopSelection:Z

    .line 1242
    iput-boolean v8, p0, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    .line 1243
    iput v4, p0, Landroid/webkit/WebView;->mController:I

    .line 1244
    iput-boolean v4, p0, Landroid/webkit/WebView;->mLongPress:Z

    move v0, v8

    .line 1248
    goto :goto_7
.end method

.method public ClearWebTextSelection()V
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1327
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v0

    if-ne v0, v2, :cond_2f

    .line 1328
    iget-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v0}, Landroid/webkit/WebMagnifier;->hide()V

    .line 1329
    iput-boolean v2, p0, Landroid/webkit/WebView;->mStopSelection:Z

    .line 1330
    iget-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_2f

    .line 1331
    iput-boolean v1, p0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    .line 1332
    const/4 v5, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v6

    .line 1333
    .local v6, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xd3

    invoke-virtual {v0, v1, v6}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1334
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    .line 1338
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 1341
    .end local v6           #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    :cond_2f
    return-void
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6
    .parameter "obj"
    .parameter "interfaceName"

    .prologue
    .line 4116
    new-instance v0, Landroid/webkit/WebViewCore$JSInterfaceData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$JSInterfaceData;-><init>()V

    .line 4117
    .local v0, arg:Landroid/webkit/WebViewCore$JSInterfaceData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mObject:Ljava/lang/Object;

    .line 4118
    iput-object p2, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    .line 4119
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8a

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4120
    return-void
.end method

.method public addPackageName(Ljava/lang/String;)V
    .registers 4
    .parameter "packageName"

    .prologue
    .line 4160
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xb9

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4161
    return-void
.end method

.method public addPackageNames(Ljava/util/Set;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4147
    .local p1, packageNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xb8

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4148
    return-void
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .registers 2
    .parameter "watcher"

    .prologue
    .line 5850
    iput-object p1, p0, Landroid/webkit/WebView;->textWatcher:Landroid/text/TextWatcher;

    .line 5851
    return-void
.end method

.method public canGoBack()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2285
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 2286
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 2287
    :try_start_8
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2288
    monitor-exit v0

    move v1, v2

    .line 2290
    :goto_10
    return v1

    :cond_11
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    if-lez v1, :cond_1d

    const/4 v1, 0x1

    :goto_18
    monitor-exit v0

    goto :goto_10

    .line 2292
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_1a

    throw v1

    :cond_1d
    move v1, v2

    .line 2290
    goto :goto_18
.end method

.method public canGoBackOrForward(I)Z
    .registers 6
    .parameter "steps"

    .prologue
    const/4 v3, 0x0

    .line 2331
    iget-object v2, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 2332
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 2333
    :try_start_8
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2334
    monitor-exit v0

    move v2, v3

    .line 2337
    :goto_10
    return v2

    .line 2336
    :cond_11
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v2

    add-int v1, v2, p1

    .line 2337
    .local v1, newIndex:I
    if-ltz v1, :cond_25

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_25

    const/4 v2, 0x1

    :goto_20
    monitor-exit v0

    goto :goto_10

    .line 2339
    .end local v1           #newIndex:I
    :catchall_22
    move-exception v2

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_22

    throw v2

    .restart local v1       #newIndex:I
    :cond_25
    move v2, v3

    .line 2337
    goto :goto_20
.end method

.method public canGoForward()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2307
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 2308
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 2309
    :try_start_9
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2310
    monitor-exit v0

    move v1, v3

    .line 2312
    :goto_11
    return v1

    :cond_12
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_23

    move v1, v4

    :goto_1e
    monitor-exit v0

    goto :goto_11

    .line 2314
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_20

    throw v1

    :cond_23
    move v1, v3

    .line 2312
    goto :goto_1e
.end method

.method public canRedo()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    const-string/jumbo v3, "webview"

    .line 5792
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v3, :cond_14

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_14

    move v3, v4

    .line 5809
    .end local p0
    :goto_13
    return v3

    .line 5794
    .restart local p0
    :cond_14
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 5795
    .local v0, canRedo:Ljava/lang/Boolean;
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5797
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v2

    .line 5799
    :try_start_1f
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x20f

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_49

    .line 5802
    :try_start_26
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_49
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_29} :catch_35

    .line 5808
    :goto_29
    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_49

    .line 5809
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_13

    .line 5804
    .restart local p0
    :catch_35
    move-exception v1

    .line 5805
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_36
    const-string/jumbo v3, "webview"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5806
    const-string/jumbo v3, "webview"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 5808
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_49
    move-exception v3

    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_36 .. :try_end_4b} :catchall_49

    throw v3
.end method

.method public canUndo()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    const-string/jumbo v3, "webview"

    .line 5771
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v3, :cond_14

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_14

    move v3, v4

    .line 5788
    .end local p0
    :goto_13
    return v3

    .line 5773
    .restart local p0
    :cond_14
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 5774
    .local v0, canUndo:Ljava/lang/Boolean;
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5776
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v2

    .line 5778
    :try_start_1f
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x20d

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_49

    .line 5781
    :try_start_26
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_49
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_29} :catch_35

    .line 5787
    :goto_29
    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_49

    .line 5788
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_13

    .line 5783
    .restart local p0
    :catch_35
    move-exception v1

    .line 5784
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_36
    const-string/jumbo v3, "webview"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5785
    const-string/jumbo v3, "webview"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 5787
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_49
    move-exception v3

    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_36 .. :try_end_4b} :catchall_49

    throw v3
.end method

.method public cancelTouch()V
    .registers 3

    .prologue
    const/4 v1, 0x3

    .line 7447
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    if-eqz v0, :cond_a

    .line 7448
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    invoke-virtual {v0}, Landroid/webkit/WebView$DragTrackerHandler;->stopDrag()V

    .line 7453
    :cond_a
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_16

    .line 7454
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 7455
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 7459
    :cond_16
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v0, :cond_2e

    .line 7460
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 7461
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 7462
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 7463
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 7466
    :cond_2e
    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    if-ne v0, v1, :cond_3a

    .line 7467
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 7468
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 7470
    :cond_3a
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7471
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7472
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7473
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7474
    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 7475
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 7476
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHideCursor()V

    .line 7477
    return-void
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .registers 2

    .prologue
    .line 2445
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 2446
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->copyContentPicture()Landroid/graphics/Picture;

    move-result-object v0

    goto :goto_5
.end method

.method centerKeyPressOnTextField()V
    .registers 5

    .prologue
    .line 8165
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x76

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 8167
    return-void
.end method

.method centerKeyPressOnTextFieldEx(II)V
    .registers 7
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v3, 0x0

    .line 8174
    new-instance v0, Landroid/webkit/WebViewCore$SelectAndClickData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$SelectAndClickData;-><init>()V

    .line 8175
    .local v0, data:Landroid/webkit/WebViewCore$SelectAndClickData;
    iput p1, v0, Landroid/webkit/WebViewCore$SelectAndClickData;->selectionStart:I

    .line 8176
    iput p2, v0, Landroid/webkit/WebViewCore$SelectAndClickData;->selectionEnd:I

    .line 8177
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v1

    iput v1, v0, Landroid/webkit/WebViewCore$SelectAndClickData;->cursorFrame:I

    .line 8178
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v1

    iput v1, v0, Landroid/webkit/WebViewCore$SelectAndClickData;->cursorNode:I

    .line 8179
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0xbe

    invoke-virtual {v1, v2, v3, v3, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 8180
    return-void
.end method

.method public changeProgressState(Z)V
    .registers 3
    .parameter "state"

    .prologue
    .line 6403
    iget-object v0, p0, Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/webkit/WebviewScaleGestureDetector;->setIsInProgress(Z)V

    .line 6404
    return-void
.end method

.method public ckeckIfSelectionAtBoundry()I
    .registers 5

    .prologue
    const-string/jumbo v2, "webview"

    .line 5894
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v2, :cond_11

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_13

    :cond_11
    const/4 v2, -0x1

    .line 5906
    .end local p0
    :goto_12
    return v2

    .line 5896
    .restart local p0
    :cond_13
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5897
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 5898
    :try_start_1f
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x217

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_49

    .line 5900
    :try_start_26
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_49
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_29} :catch_35

    .line 5905
    :goto_29
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_49

    .line 5906
    invoke-virtual {v1}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_12

    .line 5901
    .restart local p0
    :catch_35
    move-exception v0

    .line 5902
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_36
    const-string/jumbo v2, "webview"

    const-string v3, "Caught exception while waiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5903
    const-string/jumbo v2, "webview"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 5905
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_49
    move-exception v2

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_36 .. :try_end_4b} :catchall_49

    throw v2
.end method

.method public clearCache(Z)V
    .registers 6
    .parameter "includeDiskFiles"

    .prologue
    const/4 v3, 0x0

    .line 3529
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6f

    if-eqz p1, :cond_c

    const/4 v2, 0x1

    :goto_8
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 3531
    return-void

    :cond_c
    move v2, v3

    .line 3529
    goto :goto_8
.end method

.method public clearFormData()V
    .registers 3

    .prologue
    .line 3538
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3539
    const/4 v0, 0x0

    .line 3540
    .local v0, adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    iget-object v1, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    .line 3542
    .end local v0           #adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    :cond_c
    return-void
.end method

.method public clearHistory()V
    .registers 3

    .prologue
    .line 3548
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->setClearPending()V

    .line 3549
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3550
    return-void
.end method

.method public clearMatches()V
    .registers 2

    .prologue
    .line 3683
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;

    .line 3684
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_9

    .line 3688
    :goto_8
    return-void

    .line 3686
    :cond_9
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSetFindIsEmpty()V

    .line 3687
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_8
.end method

.method public clearSslPreferences()V
    .registers 3

    .prologue
    .line 3557
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3558
    return-void
.end method

.method clearTextEntry(Z)V
    .registers 3
    .parameter "disableFocusController"

    .prologue
    .line 2462
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2463
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->remove()V

    .line 2464
    if-eqz p1, :cond_10

    .line 2465
    invoke-virtual {p0}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 2468
    :cond_10
    return-void
.end method

.method public clearView()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 2430
    iput v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    .line 2431
    iput v0, p0, Landroid/webkit/WebView;->mContentHeight:I

    .line 2432
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2433
    return-void
.end method

.method public commitInputMethodText(Ljava/lang/String;I)V
    .registers 6
    .parameter "text"
    .parameter "numOfcharsToDeleteFromCursorPos"

    .prologue
    .line 5593
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_f

    .line 5602
    :cond_e
    :goto_e
    return-void

    .line 5595
    :cond_f
    if-lez p2, :cond_30

    .line 5596
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commitInputMethodText "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5597
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1fc

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .line 5599
    :cond_30
    if-eqz p1, :cond_e

    const-string v0, ""

    if-eq p1, v0, :cond_e

    .line 5600
    const-string v0, "InsertText"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/WebView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 5601
    invoke-virtual {p0}, Landroid/webkit/WebView;->drawSelectionControl()V

    goto :goto_e
.end method

.method protected computeHorizontalScrollOffset()I
    .registers 3

    .prologue
    .line 3268
    iget v0, p0, Landroid/view/View;->mScrollX:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .registers 5

    .prologue
    .line 3252
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v1

    .line 3255
    .local v1, range:I
    iget v2, p0, Landroid/view/View;->mScrollX:I

    .line 3256
    .local v2, scrollX:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v0

    .line 3257
    .local v0, overscrollRight:I
    if-gez v2, :cond_e

    .line 3258
    sub-int/2addr v1, v2

    .line 3263
    :cond_d
    :goto_d
    return v1

    .line 3259
    :cond_e
    if-le v2, v0, :cond_d

    .line 3260
    sub-int v3, v2, v0

    add-int/2addr v1, v3

    goto :goto_d
.end method

.method public computeScroll()V
    .registers 13

    .prologue
    .line 3732
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 3733
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 3734
    .local v3, oldX:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 3735
    .local v4, oldY:I
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v10

    .line 3736
    .local v10, x:I
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v11

    .line 3737
    .local v11, y:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3739
    if-ne v3, v10, :cond_1f

    if-eq v4, v11, :cond_7c

    .line 3740
    :cond_1f
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v5

    .line 3741
    .local v5, rangeX:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v6

    .line 3742
    .local v6, rangeY:I
    sub-int v1, v10, v3

    sub-int v2, v11, v4

    iget v7, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    iget v8, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    const/4 v9, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    .line 3746
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v0, :cond_7c

    .line 3747
    if-gtz v6, :cond_40

    invoke-virtual {p0}, Landroid/webkit/WebView;->getOverScrollMode()I

    move-result v0

    if-nez v0, :cond_5d

    .line 3748
    :cond_40
    if-gez v11, :cond_8b

    if-ltz v4, :cond_8b

    .line 3749
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    iget-object v1, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    .line 3750
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 3751
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 3761
    :cond_5d
    :goto_5d
    if-lez v5, :cond_7c

    .line 3762
    if-gez v10, :cond_a9

    if-ltz v3, :cond_a9

    .line 3763
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    iget-object v1, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    .line 3764
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 3765
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 3776
    .end local v5           #rangeX:I
    .end local v6           #rangeY:I
    :cond_7c
    :goto_7c
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 3777
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3782
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_8a
    :goto_8a
    return-void

    .line 3753
    .restart local v3       #oldX:I
    .restart local v4       #oldY:I
    .restart local v5       #rangeX:I
    .restart local v6       #rangeY:I
    .restart local v10       #x:I
    .restart local v11       #y:I
    :cond_8b
    if-le v11, v6, :cond_5d

    if-gt v4, v6, :cond_5d

    .line 3754
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    iget-object v1, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    .line 3755
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 3756
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_5d

    .line 3767
    :cond_a9
    if-le v10, v5, :cond_7c

    if-gt v3, v5, :cond_7c

    .line 3768
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    iget-object v1, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    .line 3769
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 3770
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_7c

    .line 3780
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v5           #rangeX:I
    .end local v6           #rangeY:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_c7
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->computeScroll()V

    goto :goto_8a
.end method

.method protected computeVerticalScrollExtent()I
    .registers 2

    .prologue
    .line 3307
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .registers 3

    .prologue
    .line 3302
    iget v0, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .registers 5

    .prologue
    .line 3286
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v1

    .line 3289
    .local v1, range:I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 3290
    .local v2, scrollY:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v0

    .line 3291
    .local v0, overscrollBottom:I
    if-gez v2, :cond_e

    .line 3292
    sub-int/2addr v1, v2

    .line 3297
    :cond_d
    :goto_d
    return v1

    .line 3293
    :cond_e
    if-le v2, v0, :cond_d

    .line 3294
    sub-int v3, v2, v0

    add-int/2addr v1, v3

    goto :goto_d
.end method

.method contentToViewDimension(I)I
    .registers 4
    .parameter "d"

    .prologue
    .line 2778
    int-to-float v0, p1

    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method contentToViewX(I)I
    .registers 3
    .parameter "x"

    .prologue
    .line 2786
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v0

    return v0
.end method

.method contentToViewY(I)I
    .registers 4
    .parameter "y"

    .prologue
    .line 2794
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public copyBackForwardList()Landroid/webkit/WebBackForwardList;
    .registers 2

    .prologue
    .line 3569
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->clone()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public copySelection()Z
    .registers 8

    .prologue
    .line 5385
    const/4 v1, 0x0

    .line 5386
    .local v1, copiedSomething:Z
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSelection()Ljava/lang/String;

    move-result-object v3

    .line 5387
    .local v3, selection:Ljava/lang/String;
    const-string v4, ""

    if-eq v3, v4, :cond_24

    .line 5391
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v5, 0x10403e6

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 5394
    const/4 v1, 0x1

    .line 5396
    :try_start_17
    const-string v4, "clipboard"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/text/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/text/IClipboard;

    move-result-object v0

    .line 5398
    .local v0, clip:Landroid/text/IClipboard;
    invoke-interface {v0, v3}, Landroid/text/IClipboard;->setClipboardText(Ljava/lang/CharSequence;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_24} :catch_28

    .line 5403
    .end local v0           #clip:Landroid/text/IClipboard;
    :cond_24
    :goto_24
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 5404
    return v1

    .line 5399
    :catch_28
    move-exception v4

    move-object v2, v4

    .line 5400
    .local v2, e:Landroid/os/RemoteException;
    const-string/jumbo v4, "webview"

    const-string v5, "Clipboard failed"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24
.end method

.method cursorData()Landroid/webkit/WebViewCore$CursorData;
    .registers 4

    .prologue
    .line 4753
    new-instance v1, Landroid/webkit/WebViewCore$CursorData;

    invoke-direct {v1}, Landroid/webkit/WebViewCore$CursorData;-><init>()V

    .line 4754
    .local v1, result:Landroid/webkit/WebViewCore$CursorData;
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeMoveGeneration()I

    move-result v2

    iput v2, v1, Landroid/webkit/WebViewCore$CursorData;->mMoveGeneration:I

    .line 4755
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v2

    iput v2, v1, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    .line 4756
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorPosition()Landroid/graphics/Point;

    move-result-object v0

    .line 4757
    .local v0, position:Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/webkit/WebViewCore$CursorData;->mX:I

    .line 4758
    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/webkit/WebViewCore$CursorData;->mY:I

    .line 4759
    return-object v1
.end method

.method public cursorIsAnchor()Z
    .registers 2

    .prologue
    .line 2608
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_6

    .line 2609
    const/4 v0, 0x0

    .line 2611
    :goto_5
    return v0

    :cond_6
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsAnchor()Z

    move-result v0

    goto :goto_5
.end method

.method public debugDump()V
    .registers 3

    .prologue
    .line 10519
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeDebugDump()V

    .line 10520
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 10521
    return-void
.end method

.method deleteSelection(II)V
    .registers 8
    .parameter "start"
    .parameter "end"

    .prologue
    .line 4770
    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 4771
    new-instance v0, Landroid/webkit/WebViewCore$TextSelectionData;

    invoke-direct {v0, p1, p2}, Landroid/webkit/WebViewCore$TextSelectionData;-><init>(II)V

    .line 4773
    .local v0, data:Landroid/webkit/WebViewCore$TextSelectionData;
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x7a

    iget v3, p0, Landroid/webkit/WebView;->mTextGeneration:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 4775
    return-void
.end method

.method public deleteSurroundingText(II)V
    .registers 5
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    .line 5695
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_f

    .line 5699
    :cond_e
    :goto_e
    return-void

    .line 5697
    :cond_f
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1ff

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_e
.end method

.method public destroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1845
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 1847
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissWebSelectDialog()V

    .line 1848
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v1, :cond_32

    .line 1851
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v2}, Landroid/webkit/CallbackProxy;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1852
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v2}, Landroid/webkit/CallbackProxy;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1854
    monitor-enter p0

    .line 1855
    :try_start_16
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 1856
    .local v0, webViewCore:Landroid/webkit/WebViewCore;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 1857
    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->destroy()V

    .line 1858
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_3d

    .line 1860
    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1861
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v2}, Landroid/webkit/CallbackProxy;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1864
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    monitor-enter v1

    .line 1865
    :try_start_2c
    iget-object v2, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1866
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_40

    .line 1868
    .end local v0           #webViewCore:Landroid/webkit/WebViewCore;
    :cond_32
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v1, :cond_3c

    .line 1869
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeDestroy()V

    .line 1870
    const/4 v1, 0x0

    iput v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    .line 1872
    :cond_3c
    return-void

    .line 1858
    :catchall_3d
    move-exception v1

    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v1

    .line 1866
    .restart local v0       #webViewCore:Landroid/webkit/WebViewCore;
    :catchall_40
    move-exception v2

    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v2
.end method

.method dismissZoomControl()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 8320
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v1, :cond_18

    .line 8323
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v1, :cond_e

    .line 8324
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v1, v2}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 8326
    :cond_e
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    if-eqz v1, :cond_17

    .line 8327
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    invoke-virtual {v1}, Landroid/webkit/WebView$ExtendedZoomControls;->hide()V

    .line 8344
    :cond_17
    :goto_17
    return-void

    .line 8331
    :cond_18
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 8332
    .local v0, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 8333
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v1, :cond_17

    .line 8334
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v1, v2}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    goto :goto_17

    .line 8337
    :cond_2c
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_37

    .line 8338
    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8340
    :cond_37
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    if-eqz v1, :cond_17

    .line 8341
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    invoke-virtual {v1}, Landroid/webkit/WebView$ExtendedZoomControls;->hide()V

    goto :goto_17
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 6152
    const/4 v0, 0x1

    .line 6156
    .local v0, dispatch:Z
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v1

    if-nez v1, :cond_1b

    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v1, :cond_12

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 6157
    :cond_12
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_22

    .line 6158
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    .line 6171
    :cond_1b
    :goto_1b
    if-eqz v0, :cond_2a

    .line 6172
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 6175
    :goto_21
    return v1

    .line 6160
    :cond_22
    iget-boolean v1, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    if-nez v1, :cond_27

    .line 6165
    const/4 v0, 0x0

    .line 6167
    :cond_27
    iput-boolean v2, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    goto :goto_1b

    :cond_2a
    move v1, v2

    .line 6175
    goto :goto_21
.end method

.method public displaySoftKeyboardForHtmlComposer()V
    .registers 2

    .prologue
    .line 5573
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->displaySoftKeyboard(Z)V

    .line 5574
    return-void
.end method

.method public documentAsText(Landroid/os/Message;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 4093
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4094
    return-void
.end method

.method public documentHasImages(Landroid/os/Message;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 3724
    if-nez p1, :cond_3

    .line 3728
    :goto_2
    return-void

    .line 3727
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x78

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 8
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    const/4 v1, 0x1

    .line 4209
    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v0}, Landroid/webkit/OnPinchZoomListener;->isVisible()Z

    move-result v0

    if-eq v0, v1, :cond_19

    :cond_d
    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v0}, Landroid/webkit/OnPinchZoomListener;->isDrawingWebView()Z

    move-result v0

    if-ne v0, v1, :cond_1b

    .line 4211
    :cond_19
    const/4 v0, 0x0

    .line 4218
    :goto_1a
    return v0

    .line 4213
    :cond_1b
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-ne p2, v0, :cond_2d

    .line 4216
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget-object v2, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4218
    :cond_2d
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_1a
.end method

.method drawHistory()Z
    .registers 2

    .prologue
    .line 4727
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    return v0
.end method

.method public drawPage(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 10531
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/webkit/WebViewCore;->drawContentPicture(Landroid/graphics/Canvas;IZZ)V

    .line 10532
    return-void
.end method

.method public drawSelectionControl()V
    .registers 2

    .prologue
    .line 5860
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->drawSelectionControl(Z)V

    .line 5861
    return-void
.end method

.method public drawSelectionControl(Z)V
    .registers 4
    .parameter "isTextChanged"

    .prologue
    .line 5864
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_f

    .line 5872
    :cond_e
    :goto_e
    return-void

    .line 5866
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    .line 5867
    const/4 v0, 0x4

    iput v0, p0, Landroid/webkit/WebView;->mController:I

    .line 5868
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x205

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 5869
    if-eqz p1, :cond_e

    .line 5870
    invoke-virtual {p0}, Landroid/webkit/WebView;->textChangedForWatcher()V

    goto :goto_e
.end method

.method public dumpDisplayTree()V
    .registers 2

    .prologue
    .line 4998
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->nativeDumpDisplayTree(Ljava/lang/String;)V

    .line 4999
    return-void
.end method

.method public dumpDomTree(Z)V
    .registers 6
    .parameter "toFile"

    .prologue
    const/4 v3, 0x0

    .line 5008
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xaa

    if-eqz p1, :cond_c

    const/4 v2, 0x1

    :goto_8
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 5009
    return-void

    :cond_c
    move v2, v3

    .line 5008
    goto :goto_8
.end method

.method public dumpRenderTree(Z)V
    .registers 6
    .parameter "toFile"

    .prologue
    const/4 v3, 0x0

    .line 5018
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xab

    if-eqz p1, :cond_c

    const/4 v2, 0x1

    :goto_8
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 5019
    return-void

    :cond_c
    move v2, v3

    .line 5018
    goto :goto_8
.end method

.method public dumpV8Counters()V
    .registers 3

    .prologue
    .line 5029
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xad

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 5030
    return-void
.end method

.method public emulateShiftHeld()V
    .registers 3

    .prologue
    .line 5333
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_5

    .line 5339
    :cond_4
    :goto_4
    return-void

    .line 5335
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 5338
    invoke-virtual {p0}, Landroid/webkit/WebView;->setUpSelect()V

    goto :goto_4
.end method

.method public execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "command"
    .parameter "value"

    .prologue
    const-string/jumbo v2, "webview"

    .line 5751
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_8

    .line 5767
    :cond_7
    :goto_7
    return-void

    .line 5753
    :cond_8
    new-instance v0, Landroid/webkit/WebView$CmdVal;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$CmdVal;-><init>(Landroid/webkit/WebView;)V

    .line 5754
    .local v0, cmdVal:Landroid/webkit/WebView$CmdVal;
    iput-object p1, v0, Landroid/webkit/WebView$CmdVal;->command:Ljava/lang/String;

    .line 5755
    iput-object p2, v0, Landroid/webkit/WebView$CmdVal;->value:Ljava/lang/String;

    .line 5756
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "Copy"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5757
    :cond_23
    monitor-enter v0

    .line 5758
    :try_start_24
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x203

    invoke-virtual {v2, v3, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_30

    .line 5760
    :try_start_2b
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_30
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2e} :catch_33

    .line 5765
    :goto_2e
    :try_start_2e
    monitor-exit v0

    goto :goto_7

    :catchall_30
    move-exception v2

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_30

    throw v2

    .line 5761
    :catch_33
    move-exception v1

    .line 5762
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_34
    const-string/jumbo v2, "webview"

    const-string v3, "Caught exception while waiting for overrideUrl"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5763
    const-string/jumbo v2, "webview"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_34 .. :try_end_46} :catchall_30

    goto :goto_2e
.end method

.method public externalRepresentation(Landroid/os/Message;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 4085
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4086
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 4200
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 4202
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 4204
    return-void

    .line 4202
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public findAll(Ljava/lang/String;)I
    .registers 5
    .parameter "find"

    .prologue
    const/4 v2, 0x0

    .line 3591
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v1, :cond_7

    move v1, v2

    .line 3596
    :goto_6
    return v1

    .line 3592
    :cond_7
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/webkit/WebView;->nativeFindAll(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .line 3594
    .local v0, result:I
    :goto_16
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3595
    iput-object p1, p0, Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;

    move v1, v0

    .line 3596
    goto :goto_6

    .end local v0           #result:I
    :cond_1d
    move v0, v2

    .line 3592
    goto :goto_16
.end method

.method public findIndex()I
    .registers 2

    .prologue
    .line 3616
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_6

    const/4 v0, -0x1

    .line 3617
    :goto_5
    return v0

    :cond_6
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFindIndex()I

    move-result v0

    goto :goto_5
.end method

.method public findNext(Z)V
    .registers 3
    .parameter "forward"

    .prologue
    .line 3580
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_5

    .line 3582
    :goto_4
    return-void

    .line 3581
    :cond_5
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeFindNext(Z)V

    goto :goto_4
.end method

.method public flingScroll(II)V
    .registers 14
    .parameter "vx"
    .parameter "vy"

    .prologue
    const/4 v5, 0x0

    .line 7798
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v6

    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v8

    iget v9, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    iget v10, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    move v3, p1

    move v4, p2

    move v7, v5

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 7800
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 7801
    return-void
.end method

.method public freeMemory()V
    .registers 3

    .prologue
    .line 3516
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3517
    return-void
.end method

.method public getBodyHTML()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    const-string/jumbo v2, "webview"

    .line 5673
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v2, :cond_12

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_14

    :cond_12
    move-object v2, v3

    .line 5686
    .end local p0
    :goto_13
    return-object v2

    .line 5675
    .restart local p0
    :cond_14
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    invoke-direct {v1, p0, v3, v3}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5676
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v1

    .line 5677
    :try_start_1a
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x200

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_41

    .line 5680
    :try_start_21
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_41
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_24} :catch_2d

    .line 5685
    :goto_24
    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_41

    .line 5686
    invoke-virtual {v1}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v2, p0

    goto :goto_13

    .line 5681
    .restart local p0
    :catch_2d
    move-exception v0

    .line 5682
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2e
    const-string/jumbo v2, "webview"

    const-string v3, "Caught exception while waiting for overrideUrl"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5683
    const-string/jumbo v2, "webview"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 5685
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_41
    move-exception v2

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_2e .. :try_end_43} :catchall_41

    throw v2
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .registers 2

    .prologue
    .line 1778
    iget-object v0, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    return-object v0
.end method

.method public getContentHeight()I
    .registers 2

    .prologue
    .line 3447
    iget v0, p0, Landroid/webkit/WebView;->mContentHeight:I

    return v0
.end method

.method public getContentWidth()I
    .registers 2

    .prologue
    .line 3455
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    return v0
.end method

.method public getCursorRect(Z)Landroid/graphics/Rect;
    .registers 8
    .parameter "giveContentRect"

    .prologue
    const/4 v5, 0x0

    const-string/jumbo v3, "webview"

    .line 5911
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v3, :cond_14

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_14

    move-object v3, v5

    .line 5925
    .end local p0
    :goto_13
    return-object v3

    .line 5913
    .restart local p0
    :cond_14
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v3

    .line 5914
    .local v1, paramArray:[Ljava/lang/Object;
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    invoke-direct {v2, p0, v1, v5}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5915
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    monitor-enter v2

    .line 5916
    :try_start_24
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x209

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_4b

    .line 5919
    :try_start_2b
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_4b
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2e} :catch_37

    .line 5924
    :goto_2e
    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_4b

    .line 5925
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Rect;

    move-object v3, p0

    goto :goto_13

    .line 5920
    .restart local p0
    :catch_37
    move-exception v0

    .line 5921
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_38
    const-string/jumbo v3, "webview"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5922
    const-string/jumbo v3, "webview"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 5924
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_4b
    move-exception v3

    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_38 .. :try_end_4d} :catchall_4b

    throw v3
.end method

.method public getDragTracker()Landroid/webkit/WebView$DragTracker;
    .registers 2

    .prologue
    .line 6379
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTracker:Landroid/webkit/WebView$DragTracker;

    return-object v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 3422
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 3423
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getHitTestResult()Landroid/webkit/WebView$HitTestResult;
    .registers 11

    .prologue
    const/4 v6, 0x7

    const-string/jumbo v9, "tel:"

    const-string v8, "mailto:"

    const-string v7, "geo:0,0?q="

    .line 2547
    iget v5, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v5, :cond_e

    .line 2548
    const/4 v5, 0x0

    .line 2589
    :goto_d
    return-object v5

    .line 2551
    :cond_e
    new-instance v2, Landroid/webkit/WebView$HitTestResult;

    invoke-direct {v2, p0}, Landroid/webkit/WebView$HitTestResult;-><init>(Landroid/webkit/WebView;)V

    .line 2552
    .local v2, result:Landroid/webkit/WebView$HitTestResult;
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2553
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v5

    if-eqz v5, :cond_51

    .line 2554
    const/16 v5, 0x9

    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$400(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2575
    :cond_24
    :goto_24
    invoke-virtual {v2}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v4

    .line 2576
    .local v4, type:I
    if-eqz v4, :cond_2c

    if-ne v4, v6, :cond_4f

    .line 2579
    :cond_2c
    iget v5, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v5, v5

    iget v6, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 2580
    .local v0, contentX:I
    iget v5, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v5, v5

    iget v6, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 2581
    .local v1, contentY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->nativeImageURI(II)Ljava/lang/String;

    move-result-object v3

    .line 2582
    .local v3, text:Ljava/lang/String;
    if-eqz v3, :cond_4f

    .line 2583
    if-nez v4, :cond_ba

    const/4 v5, 0x5

    :goto_49
    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$400(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2586
    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    .end local v0           #contentX:I
    .end local v1           #contentY:I
    .end local v3           #text:Ljava/lang/String;
    :cond_4f
    move-object v5, v2

    .line 2589
    goto :goto_d

    .line 2556
    .end local v4           #type:I
    :cond_51
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorText()Ljava/lang/String;

    move-result-object v3

    .line 2557
    .restart local v3       #text:Ljava/lang/String;
    if-eqz v3, :cond_24

    .line 2558
    const-string/jumbo v5, "tel:"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 2559
    const/4 v5, 0x2

    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$400(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2560
    const-string/jumbo v5, "tel:"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto :goto_24

    .line 2561
    :cond_73
    const-string v5, "mailto:"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 2562
    const/4 v5, 0x4

    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$400(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2563
    const-string v5, "mailto:"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto :goto_24

    .line 2564
    :cond_8d
    const-string v5, "geo:0,0?q="

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ac

    .line 2565
    const/4 v5, 0x3

    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$400(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2566
    const-string v5, "geo:0,0?q="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto/16 :goto_24

    .line 2568
    :cond_ac
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsAnchor()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2569
    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v2, v6}, Landroid/webkit/WebView$HitTestResult;->access$400(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2570
    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto/16 :goto_24

    .line 2583
    .restart local v0       #contentX:I
    .restart local v1       #contentY:I
    .restart local v4       #type:I
    :cond_ba
    const/16 v5, 0x8

    goto :goto_49
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 1831
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewDatabase;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMailHTML()Landroid/webkit/WebHTMLMarkupData;
    .registers 6

    .prologue
    const/4 v4, 0x0

    const-string/jumbo v3, "webview"

    .line 5821
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v3, :cond_14

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_14

    move-object v3, v4

    .line 5835
    .end local p0
    :goto_13
    return-object v3

    .line 5823
    .restart local p0
    :cond_14
    new-instance v1, Landroid/webkit/WebHTMLMarkupData;

    invoke-direct {v1}, Landroid/webkit/WebHTMLMarkupData;-><init>()V

    .line 5824
    .local v1, mailMarkupData:Landroid/webkit/WebHTMLMarkupData;
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    invoke-direct {v2, p0, v4, v1}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5825
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/webkit/WebHTMLMarkupData;>;"
    monitor-enter v2

    .line 5826
    :try_start_1f
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x206

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_46

    .line 5829
    :try_start_26
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_46
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_29} :catch_32

    .line 5834
    :goto_29
    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_46

    .line 5835
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/webkit/WebHTMLMarkupData;

    move-object v3, p0

    goto :goto_13

    .line 5830
    .restart local p0
    :catch_32
    move-exception v0

    .line 5831
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_33
    const-string/jumbo v3, "webview"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5832
    const-string/jumbo v3, "webview"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 5834
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_46
    move-exception v3

    monitor-exit v2
    :try_end_48
    .catchall {:try_start_33 .. :try_end_48} :catchall_46

    throw v3
.end method

.method public getMaxZoomScale()F
    .registers 2

    .prologue
    .line 427
    iget v0, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    return v0
.end method

.method public getMinZoomScale()F
    .registers 2

    .prologue
    .line 431
    iget v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    return v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3402
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 3403
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getPlainText()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    const-string/jumbo v2, "webview"

    .line 5654
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v2, :cond_12

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_14

    :cond_12
    move-object v2, v3

    .line 5667
    .end local p0
    :goto_13
    return-object v2

    .line 5656
    .restart local p0
    :cond_14
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    invoke-direct {v1, p0, v3, v3}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5657
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v1

    .line 5658
    :try_start_1a
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x202

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_41

    .line 5661
    :try_start_21
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_41
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_24} :catch_2d

    .line 5666
    :goto_24
    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_41

    .line 5667
    invoke-virtual {v1}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v2, p0

    goto :goto_13

    .line 5662
    .restart local p0
    :catch_2d
    move-exception v0

    .line 5663
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2e
    const-string/jumbo v2, "webview"

    const-string v3, "Caught exception while waiting for overrideUrl"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5664
    const-string/jumbo v2, "webview"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 5666
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_41
    move-exception v2

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_2e .. :try_end_43} :catchall_41

    throw v2
.end method

.method public getProgress()I
    .registers 2

    .prologue
    .line 3440
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getProgress()I

    move-result v0

    return v0
.end method

.method public getScale()F
    .registers 2

    .prologue
    .line 2493
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    return v0
.end method

.method public getSelection()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5411
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_7

    const-string v0, ""

    .line 5412
    :goto_6
    return-object v0

    :cond_7
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetSelection()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const-string/jumbo v3, "webview"

    .line 5715
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_13

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_19

    :cond_13
    new-instance v3, Landroid/webkit/WebView$SelectionOffset;

    invoke-direct {v3, p0, v4, v4}, Landroid/webkit/WebView$SelectionOffset;-><init>(Landroid/webkit/WebView;II)V

    .line 5733
    :goto_18
    return-object v3

    .line 5718
    :cond_19
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    invoke-direct {v2, p0, v5, v5}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5720
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Point;>;"
    monitor-enter v2

    .line 5722
    :try_start_1f
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x201

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_4e

    .line 5725
    :try_start_26
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_4e
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_29} :catch_3a

    .line 5731
    :goto_29
    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_4e

    .line 5732
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 5733
    .local v1, pnt:Landroid/graphics/Point;
    new-instance v3, Landroid/webkit/WebView$SelectionOffset;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v3, p0, v4, v5}, Landroid/webkit/WebView$SelectionOffset;-><init>(Landroid/webkit/WebView;II)V

    goto :goto_18

    .line 5727
    .end local v1           #pnt:Landroid/graphics/Point;
    :catch_3a
    move-exception v0

    .line 5728
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3b
    const-string/jumbo v3, "webview"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5729
    const-string/jumbo v3, "webview"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 5731
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_4e
    move-exception v3

    monitor-exit v2
    :try_end_50
    .catchall {:try_start_3b .. :try_end_50} :catchall_4e

    throw v3
.end method

.method public getSelectionType(IIZ)I
    .registers 23
    .parameter "ptX"
    .parameter "ptY"
    .parameter "isScreenCoords"

    .prologue
    .line 10602
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object/from16 v16, v0

    if-nez v16, :cond_b

    .line 10606
    const/16 v16, 0x0

    .line 10708
    :goto_a
    return v16

    .line 10609
    :cond_b
    const/high16 v5, 0x3f80

    .line 10611
    .local v5, MIN_SCALE_LEVEL:F
    const/4 v7, 0x0

    .local v7, controllerWidth:I
    const/4 v6, 0x0

    .line 10612
    .local v6, controllerHeight:I
    const/4 v11, 0x0

    .local v11, selectX:I
    const/4 v12, 0x0

    .line 10614
    .local v12, selectY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/webkit/WebTextSelectionControls;->getControllerWidth()I

    move-result v7

    .line 10615
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/webkit/WebTextSelectionControls;->getControllerHeight()I

    move-result v6

    .line 10617
    const/16 v16, 0x1

    move/from16 v0, v16

    move/from16 v1, p3

    if-ne v0, v1, :cond_4d

    .line 10618
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v16, v0

    add-int v16, v16, p1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result p1

    .line 10619
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v16, v0

    add-int v16, v16, p2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result p2

    .line 10623
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    move/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_15c

    .line 10624
    move v0, v7

    int-to-float v0, v0

    move/from16 v16, v0

    const v17, 0x3f99999a

    mul-float v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 10625
    move v0, v6

    int-to-float v0, v0

    move/from16 v16, v0

    const v17, 0x3f99999a

    mul-float v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 10626
    new-instance v13, Landroid/graphics/Rect;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v0, v13

    move/from16 v1, v16

    move/from16 v2, v17

    move v3, v7

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 10628
    .local v13, selectionCtrl:Landroid/graphics/Rect;
    const/4 v10, 0x0

    .line 10629
    .local v10, selectRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    move-object/from16 v16, v0

    if-eqz v16, :cond_aa

    .line 10630
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    .line 10633
    :cond_aa
    if-eqz v10, :cond_293

    .line 10635
    div-int/lit8 v14, v7, 0x2

    .line 10636
    .local v14, xRadius:I
    div-int/lit8 v15, v6, 0x2

    .line 10639
    .local v15, yRadius:I
    move-object v0, v10

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move-object v0, v10

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    add-int v16, v16, v17

    div-int/lit8 v11, v16, 0x2

    .line 10640
    iget v12, v10, Landroid/graphics/Rect;->bottom:I

    .line 10641
    sub-int v16, v11, v14

    sub-int v17, v12, v15

    move-object v0, v13

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 10642
    move-object v0, v13

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v16

    if-eqz v16, :cond_db

    .line 10643
    const/16 v16, 0x5

    goto/16 :goto_a

    .line 10646
    :cond_db
    iget v11, v10, Landroid/graphics/Rect;->left:I

    .line 10647
    move-object v0, v10

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move-object v0, v10

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    add-int v16, v16, v17

    div-int/lit8 v12, v16, 0x2

    .line 10648
    sub-int v16, v11, v14

    sub-int v17, v12, v15

    move-object v0, v13

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 10649
    move-object v0, v13

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v16

    if-eqz v16, :cond_106

    .line 10650
    const/16 v16, 0x3

    goto/16 :goto_a

    .line 10653
    :cond_106
    iget v11, v10, Landroid/graphics/Rect;->right:I

    .line 10654
    move-object v0, v10

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move-object v0, v10

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    add-int v16, v16, v17

    div-int/lit8 v12, v16, 0x2

    .line 10655
    sub-int v16, v11, v14

    sub-int v17, v12, v15

    move-object v0, v13

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 10656
    move-object v0, v13

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v16

    if-eqz v16, :cond_131

    .line 10657
    const/16 v16, 0x4

    goto/16 :goto_a

    .line 10660
    :cond_131
    move-object v0, v10

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move-object v0, v10

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    add-int v16, v16, v17

    div-int/lit8 v11, v16, 0x2

    .line 10661
    iget v12, v10, Landroid/graphics/Rect;->top:I

    .line 10662
    sub-int v16, v11, v14

    sub-int v17, v12, v15

    move-object v0, v13

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 10663
    move-object v0, v13

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v16

    if-eqz v16, :cond_293

    .line 10664
    const/16 v16, 0x6

    goto/16 :goto_a

    .line 10668
    .end local v10           #selectRect:Landroid/graphics/Rect;
    .end local v13           #selectionCtrl:Landroid/graphics/Rect;
    .end local v14           #xRadius:I
    .end local v15           #yRadius:I
    :cond_15c
    div-int/lit8 v16, v6, 0x2

    add-int v8, v6, v16

    .line 10669
    .local v8, nTouchAreaHeight:I
    new-instance v9, Landroid/graphics/Rect;

    const/16 v16, 0x0

    const/16 v17, 0x0

    div-int/lit8 v18, v7, 0x2

    add-int v18, v18, v7

    move-object v0, v9

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 10672
    .local v9, rtCtrlTouchArea:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    if-eqz v16, :cond_204

    .line 10673
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v11, v0

    .line 10674
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/webkit/WebTextSelectionControls;->isReversed(I)Z

    move-result v16

    if-nez v16, :cond_1d9

    .line 10675
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v12, v0

    .line 10676
    div-int/lit8 v16, v7, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v16

    sub-int v16, v11, v16

    sub-int v17, v12, v6

    move-object v0, v9

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 10685
    :goto_1ca
    move-object v0, v9

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v16

    if-eqz v16, :cond_204

    .line 10686
    const/16 v16, 0x1

    goto/16 :goto_a

    .line 10678
    :cond_1d9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v12, v0

    .line 10679
    div-int/lit8 v16, v7, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v16

    sub-int v16, v11, v16

    div-int/lit8 v17, v6, 0x2

    sub-int v17, v12, v17

    move-object v0, v9

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1ca

    .line 10690
    :cond_204
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    if-eqz v16, :cond_293

    .line 10691
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v11, v0

    .line 10692
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/webkit/WebTextSelectionControls;->isReversed(I)Z

    move-result v16

    if-nez v16, :cond_26a

    .line 10693
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v12, v0

    .line 10694
    div-int/lit8 v16, v7, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v16

    sub-int v16, v11, v16

    div-int/lit8 v17, v6, 0x2

    sub-int v17, v12, v17

    move-object v0, v9

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 10703
    :goto_25b
    move-object v0, v9

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v16

    if-eqz v16, :cond_293

    .line 10704
    const/16 v16, 0x2

    goto/16 :goto_a

    .line 10696
    :cond_26a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v12, v0

    .line 10697
    div-int/lit8 v16, v7, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v16

    sub-int v16, v11, v16

    sub-int v17, v12, v6

    move-object v0, v9

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_25b

    .line 10708
    .end local v8           #nTouchAreaHeight:I
    .end local v9           #rtCtrlTouchArea:Landroid/graphics/Rect;
    :cond_293
    const/16 v16, 0x0

    goto/16 :goto_a
.end method

.method public getSettings()Landroid/webkit/WebSettings;
    .registers 2

    .prologue
    .line 4129
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getTextAroundCursor(ILandroid/webkit/WebView$CursorDirection;)Ljava/lang/String;
    .registers 9
    .parameter "n"
    .parameter "cursorDirection"

    .prologue
    const/4 v5, 0x0

    const-string/jumbo v3, "webview"

    .line 5635
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_12

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_14

    :cond_12
    move-object v3, v5

    .line 5649
    .end local p0
    :goto_13
    return-object v3

    .line 5637
    .restart local p0
    :cond_14
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aput-object p2, v1, v3

    .line 5638
    .local v1, paramArray:[Ljava/lang/Object;
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    invoke-direct {v2, p0, v1, v5}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5639
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v2

    .line 5640
    :try_start_27
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x1fd

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_4e

    .line 5643
    :try_start_2e
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_4e
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_31} :catch_3a

    .line 5648
    :goto_31
    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_4e

    .line 5649
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v3, p0

    goto :goto_13

    .line 5644
    .restart local p0
    :catch_3a
    move-exception v0

    .line 5645
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3b
    const-string/jumbo v3, "webview"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5646
    const-string/jumbo v3, "webview"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 5648
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_4e
    move-exception v3

    monitor-exit v2
    :try_end_50
    .catchall {:try_start_3b .. :try_end_50} :catchall_4e

    throw v3
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3412
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 3413
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getTitleHeight()I
    .registers 2

    .prologue
    .line 1745
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3431
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 3432
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v1

    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3389
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 3390
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method getViewHeight()I
    .registers 3

    .prologue
    .line 1762
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getViewManager()Landroid/webkit/ViewManager;
    .registers 2

    .prologue
    .line 8478
    iget-object v0, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    return-object v0
.end method

.method getViewWidth()I
    .registers 3

    .prologue
    .line 1733
    invoke-virtual {p0}, Landroid/webkit/WebView;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    if-eqz v0, :cond_f

    .line 1734
    :cond_a
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    .line 1736
    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getVerticalScrollbarWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_e
.end method

.method public getVisibleTitleHeight()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1753
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getWebBackForwardListClient()Landroid/webkit/WebBackForwardListClient;
    .registers 2

    .prologue
    .line 4068
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebBackForwardListClient()Landroid/webkit/WebBackForwardListClient;

    move-result-object v0

    return-object v0
.end method

.method public getWebChromeClient()Landroid/webkit/WebChromeClient;
    .registers 2

    .prologue
    .line 4037
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    return-object v0
.end method

.method public getWebClipboard()Landroid/webkit/WebClipboard;
    .registers 2

    .prologue
    .line 4134
    iget-object v0, p0, Landroid/webkit/WebView;->mWebClipboard:Landroid/webkit/WebClipboard;

    return-object v0
.end method

.method public getWebFeedLinks()[Landroid/webkit/WebFeedLink;
    .registers 2

    .prologue
    .line 4048
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebFeedLinks()[Landroid/webkit/WebFeedLink;

    move-result-object v0

    return-object v0
.end method

.method public getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;
    .registers 9

    .prologue
    .line 1179
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v4, :cond_8

    iget-object v4, p0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    if-nez v4, :cond_a

    .line 1180
    :cond_8
    const/4 v4, 0x0

    .line 1191
    :goto_9
    return-object v4

    .line 1181
    :cond_a
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1182
    .local v3, value:Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v4}, Landroid/webkit/WebViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v2

    .line 1183
    .local v2, textSelected:Ljava/lang/String;
    new-instance v1, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    invoke-direct {v1, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1184
    .local v1, startRect:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    invoke-direct {v0, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1186
    .local v0, EndRect:Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    invoke-direct {p0, v3}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {p0, v1}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/webkit/WebTextSelectionControls;->SetTextSelectionData(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1191
    iget-object v4, p0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    goto :goto_9
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .registers 2

    .prologue
    .line 4007
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getWebViewCore()Landroid/webkit/WebViewCore;
    .registers 2

    .prologue
    .line 9030
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getZoomButtonsController()Landroid/widget/ZoomButtonsController;
    .registers 7

    .prologue
    .line 8036
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-nez v4, :cond_27

    .line 8037
    new-instance v4, Landroid/widget/ZoomButtonsController;

    invoke-direct {v4, p0}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    .line 8038
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    iget-object v5, p0, Landroid/webkit/WebView;->mZoomListener:Landroid/widget/ZoomButtonsController$OnZoomListener;

    invoke-virtual {v4, v5}, Landroid/widget/ZoomButtonsController;->setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V

    .line 8042
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v4}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v1

    .line 8043
    .local v1, controls:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 8044
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v3, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v4, :cond_27

    .line 8045
    move-object v0, v3

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    move-object v2, v0

    .line 8046
    .local v2, frameParams:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v4, 0x5

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 8049
    .end local v1           #controls:Landroid/view/View;
    .end local v2           #frameParams:Landroid/widget/FrameLayout$LayoutParams;
    .end local v3           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_27
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-object v4
.end method

.method public getZoomControls()Landroid/view/View;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7971
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v0

    if-nez v0, :cond_14

    .line 7972
    const-string/jumbo v0, "webview"

    const-string v1, "This WebView doesn\'t support zoom."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7973
    const/4 v0, 0x0

    .line 8000
    :goto_13
    return-object v0

    .line 7975
    :cond_14
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    if-nez v0, :cond_2b

    .line 7976
    invoke-direct {p0}, Landroid/webkit/WebView;->createZoomControls()Landroid/webkit/WebView$ExtendedZoomControls;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    .line 7983
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ExtendedZoomControls;->setVisibility(I)V

    .line 7984
    new-instance v0, Landroid/webkit/WebView$9;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$9;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    .line 8000
    :cond_2b
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    goto :goto_13
.end method

.method public goBack()V
    .registers 2

    .prologue
    .line 2299
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->goBackOrForward(I)V

    .line 2300
    return-void
.end method

.method public goBackOrForward(I)V
    .registers 3
    .parameter "steps"

    .prologue
    .line 2350
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;->goBackOrForward(IZ)V

    .line 2351
    return-void
.end method

.method public goForward()V
    .registers 2

    .prologue
    .line 2321
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->goBackOrForward(I)V

    .line 2322
    return-void
.end method

.method public grabScreen(Landroid/graphics/Canvas;IIF)V
    .registers 13
    .parameter "canvas"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "scale"

    .prologue
    const/4 v7, 0x0

    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 361
    .local v3, start:J
    iget v1, p0, Landroid/view/View;->mScrollX:I

    .line 362
    .local v1, savedScrollX:I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 363
    .local v2, savedScrollY:I
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 364
    .local v0, savedScale:F
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/webkit/WebView;->mIsGrabbingScreen:Z

    .line 365
    neg-int v5, p2

    iput v5, p0, Landroid/view/View;->mScrollX:I

    .line 366
    neg-int v5, p3

    iput v5, p0, Landroid/view/View;->mScrollY:I

    .line 367
    iput p4, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 369
    :try_start_16
    iget v5, p0, Landroid/view/View;->mScrollX:I

    int-to-float v5, v5

    iget v6, p0, Landroid/view/View;->mScrollY:I

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 370
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_2b

    .line 372
    iput-boolean v7, p0, Landroid/webkit/WebView;->mIsGrabbingScreen:Z

    .line 373
    iput v1, p0, Landroid/view/View;->mScrollX:I

    .line 374
    iput v2, p0, Landroid/view/View;->mScrollY:I

    .line 375
    iput v0, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 378
    return-void

    .line 372
    :catchall_2b
    move-exception v5

    iput-boolean v7, p0, Landroid/webkit/WebView;->mIsGrabbingScreen:Z

    .line 373
    iput v1, p0, Landroid/view/View;->mScrollX:I

    .line 374
    iput v2, p0, Landroid/view/View;->mScrollY:I

    .line 375
    iput v0, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 372
    throw v5
.end method

.method public hideSoftKeyboardForHtmlComposer()V
    .registers 1

    .prologue
    .line 5577
    invoke-direct {p0}, Landroid/webkit/WebView;->hideSoftKeyboard()V

    .line 5578
    return-void
.end method

.method public imageCopy(Ljava/lang/String;)V
    .registers 4
    .parameter "url"

    .prologue
    .line 5739
    if-eqz p1, :cond_9

    .line 5740
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x204

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5742
    :cond_9
    return-void
.end method

.method inAnimateZoom()Z
    .registers 3

    .prologue
    .line 4442
    iget v0, p0, Landroid/webkit/WebView;->mZoomScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method initiateTextFieldDrag(FFJ)V
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 8116
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 8129
    :goto_6
    return-void

    .line 8119
    :cond_7
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->getLeft()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p1

    iput v0, p0, Landroid/webkit/WebView;->mLastTouchX:F

    .line 8120
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->getTop()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p2

    iput v0, p0, Landroid/webkit/WebView;->mLastTouchY:F

    .line 8121
    iput-wide p3, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    .line 8122
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_34

    .line 8123
    invoke-direct {p0}, Landroid/webkit/WebView;->abortAnimation()V

    .line 8124
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8126
    :cond_34
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 8127
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 8128
    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    goto :goto_6
.end method

.method public invalidate()V
    .registers 2

    .prologue
    .line 11216
    invoke-direct {p0}, Landroid/webkit/WebView;->skipInvalidates()Z

    move-result v0

    if-nez v0, :cond_9

    .line 11217
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->invalidate()V

    .line 11219
    :cond_9
    return-void
.end method

.method public invalidate(IIII)V
    .registers 6
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 11223
    invoke-direct {p0}, Landroid/webkit/WebView;->skipInvalidates()Z

    move-result v0

    if-nez v0, :cond_9

    .line 11224
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->invalidate(IIII)V

    .line 11226
    :cond_9
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .registers 3
    .parameter "dirty"

    .prologue
    .line 11209
    invoke-direct {p0}, Landroid/webkit/WebView;->skipInvalidates()Z

    move-result v0

    if-nez v0, :cond_9

    .line 11210
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->invalidate(Landroid/graphics/Rect;)V

    .line 11212
    :cond_9
    return-void
.end method

.method public invokeZoomPicker()V
    .registers 5

    .prologue
    .line 2514
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2515
    const-string/jumbo v0, "webview"

    const-string v1, "This WebView doesn\'t support zoom."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    :goto_12
    return-void

    .line 2518
    :cond_13
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 2519
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2520
    invoke-virtual {p0}, Landroid/webkit/WebView;->getZoomButtonsController()Landroid/widget/ZoomButtonsController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    goto :goto_12

    .line 2522
    :cond_2a
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2523
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    sget-wide v2, Landroid/webkit/WebView;->ZOOM_CONTROLS_TIMEOUT:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_12
.end method

.method public isEditableView()Z
    .registers 2

    .prologue
    .line 5560
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    return v0
.end method

.method public isMagnifierVisible()Z
    .registers 2

    .prologue
    .line 5565
    iget-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget-boolean v0, v0, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-eqz v0, :cond_c

    .line 5566
    const/4 v0, 0x1

    .line 5569
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isPaused()Z
    .registers 2

    .prologue
    .line 3508
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    return v0
.end method

.method public isPluginFullScreen()Z
    .registers 2

    .prologue
    .line 350
    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"

    .prologue
    .line 2215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2216
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "baseUrl"
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"
    .parameter "historyUrl"

    .prologue
    .line 2242
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2243
    invoke-virtual {p0, p2, p3, p4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2257
    :goto_11
    return-void

    .line 2246
    :cond_12
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 2247
    new-instance v0, Landroid/webkit/WebViewCore$BaseUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$BaseUrlData;-><init>()V

    .line 2248
    .local v0, arg:Landroid/webkit/WebViewCore$BaseUrlData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mBaseUrl:Ljava/lang/String;

    .line 2249
    iput-object p2, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mData:Ljava/lang/String;

    .line 2250
    iput-object p3, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mMimeType:Ljava/lang/String;

    .line 2251
    iput-object p4, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mEncoding:Ljava/lang/String;

    .line 2252
    iput-object p5, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mHistoryUrl:Ljava/lang/String;

    .line 2253
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8b

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2254
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 2256
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissWebSelectDialog()V

    goto :goto_11
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 3
    .parameter "url"

    .prologue
    .line 2175
    if-nez p1, :cond_3

    .line 2179
    :goto_2
    return-void

    .line 2178
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2160
    .local p2, extraHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 2161
    new-instance v0, Landroid/webkit/WebViewCore$GetUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$GetUrlData;-><init>()V

    .line 2162
    .local v0, arg:Landroid/webkit/WebViewCore$GetUrlData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$GetUrlData;->mUrl:Ljava/lang/String;

    .line 2163
    iput-object p2, v0, Landroid/webkit/WebViewCore$GetUrlData;->mExtraHeaders:Ljava/util/Map;

    .line 2164
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2165
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 2167
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissWebSelectDialog()V

    .line 2168
    return-void
.end method

.method moveSelection(FF)V
    .registers 15
    .parameter "xRate"
    .parameter "yRate"

    .prologue
    const/16 v11, -0x10

    const/4 v10, 0x0

    const/16 v9, 0x10

    .line 7619
    iget v7, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v7, :cond_a

    .line 7652
    :goto_9
    return-void

    .line 7621
    :cond_a
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v6

    .line 7622
    .local v6, width:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    .line 7623
    .local v0, height:I
    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    int-to-float v7, v7

    add-float/2addr v7, p1

    float-to-int v7, v7

    iput v7, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 7624
    iget v7, p0, Landroid/webkit/WebView;->mSelectY:I

    int-to-float v7, v7

    add-float/2addr v7, p2

    float-to-int v7, v7

    iput v7, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 7625
    iget v7, p0, Landroid/view/View;->mScrollX:I

    add-int v1, v6, v7

    .line 7626
    .local v1, maxX:I
    iget v7, p0, Landroid/view/View;->mScrollY:I

    add-int v2, v0, v7

    .line 7627
    .local v2, maxY:I
    iget v7, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v7, v9

    iget v8, p0, Landroid/webkit/WebView;->mSelectX:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 7629
    iget v7, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v7, v9

    iget v8, p0, Landroid/webkit/WebView;->mSelectY:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 7641
    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    invoke-virtual {p0, v7}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v7

    iget v8, p0, Landroid/webkit/WebView;->mSelectY:I

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v8

    invoke-direct {p0, v7, v8}, Landroid/webkit/WebView;->nativeMoveSelection(II)V

    .line 7642
    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    iget v8, p0, Landroid/view/View;->mScrollX:I

    if-ge v7, v8, :cond_7f

    move v3, v11

    .line 7645
    .local v3, scrollX:I
    :goto_5c
    iget v7, p0, Landroid/webkit/WebView;->mSelectY:I

    iget v8, p0, Landroid/view/View;->mScrollY:I

    if-ge v7, v8, :cond_89

    move v4, v11

    .line 7648
    .local v4, scrollY:I
    :goto_63
    const/4 v7, 0x1

    invoke-direct {p0, v3, v4, v7, v10}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    .line 7649
    new-instance v5, Landroid/graphics/Rect;

    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    iget v8, p0, Landroid/webkit/WebView;->mSelectY:I

    iget v9, p0, Landroid/webkit/WebView;->mSelectX:I

    add-int/lit8 v9, v9, 0x1

    iget v10, p0, Landroid/webkit/WebView;->mSelectY:I

    add-int/lit8 v10, v10, 0x1

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 7650
    .local v5, select:Landroid/graphics/Rect;
    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 7651
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_9

    .line 7642
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    .end local v5           #select:Landroid/graphics/Rect;
    :cond_7f
    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    sub-int v8, v1, v9

    if-le v7, v8, :cond_87

    move v3, v9

    goto :goto_5c

    :cond_87
    move v3, v10

    goto :goto_5c

    .line 7645
    .restart local v3       #scrollX:I
    :cond_89
    iget v7, p0, Landroid/webkit/WebView;->mSelectY:I

    sub-int v8, v2, v9

    if-le v7, v8, :cond_91

    move v4, v9

    goto :goto_63

    :cond_91
    move v4, v10

    goto :goto_63
.end method

.method native nativeClearCursor()V
.end method

.method native nativeCursorMatchesFocus()Z
.end method

.method native nativeFocusCandidateFramePointer()I
.end method

.method native nativeFocusCandidateHasNextTextfield()Z
.end method

.method native nativeFocusCandidateIsPassword()Z
.end method

.method native nativeFocusCandidateMaxLength()I
.end method

.method native nativeFocusCandidateName()Ljava/lang/String;
.end method

.method native nativeFocusCandidatePointer()I
.end method

.method native nativeFocusNodePointer()I
.end method

.method native nativeInputFieldAction(Ljava/lang/String;I)I
.end method

.method native nativeMoveCursorToInput(Ljava/lang/String;II)I
.end method

.method native nativeMoveCursorToNextTextInput()Z
.end method

.method public notifyFindDialogDismissed()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 3694
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_6

    .line 3705
    :goto_5
    return-void

    .line 3697
    :cond_6
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearMatches()V

    .line 3698
    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->setFindIsUp(Z)V

    .line 3699
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    iget v2, p0, Landroid/webkit/WebView;->mFindHeight:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1, v3}, Landroid/webkit/WebView;->recordNewContentSize(IIZ)V

    .line 3703
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-direct {p0, v0, v1, v3, v3}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 3704
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_5
.end method

.method public notifySelectDialogDismissed()V
    .registers 2

    .prologue
    .line 5365
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    .line 5366
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 5367
    return-void
.end method

.method public onAdaptiveZoomFinished(F)V
    .registers 6
    .parameter "scale"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 8463
    iget v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_12

    .line 8465
    iget v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    invoke-direct {p0, v0, v2, v1, v3}, Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 8472
    :goto_e
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 8473
    return-void

    .line 8470
    :cond_12
    invoke-direct {p0, p1, v2, v1, v3}, Landroid/webkit/WebView;->setNewZoomScaleEx(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    goto :goto_e
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 5417
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onAttachedToWindow()V

    .line 5418
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->setActive(Z)V

    .line 5419
    :cond_d
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .parameter "parent"
    .parameter "child"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5436
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .parameter "p"
    .parameter "child"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5443
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7
    .parameter "newConfig"

    .prologue
    .line 6030
    const-string/jumbo v0, "webview"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6033
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget-boolean v1, v1, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-ne v0, v1, :cond_15

    .line 6034
    iget-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v0}, Landroid/webkit/WebMagnifier;->hide()V

    .line 6036
    :cond_15
    iget-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

    if-eqz v0, :cond_23

    .line 6037
    iget-object v0, p0, Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroid/webkit/WebView$WebTextSelectionListener;->onSelectionChanged(I)V

    .line 6039
    :cond_23
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 6041
    iget-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_40

    iget-object v0, p0, Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

    if-eqz v0, :cond_40

    .line 6042
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x8d

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6046
    :cond_40
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 5
    .parameter "outAttrs"

    .prologue
    .line 4790
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4791
    .local v0, connection:Landroid/view/inputmethod/InputConnection;
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, -0x8000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4792
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 5423
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 5425
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissWebSelectDialog()V

    .line 5426
    invoke-virtual {p0}, Landroid/webkit/WebView;->dismissZoomControl()V

    .line 5427
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->setActive(Z)V

    .line 5428
    :cond_13
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onDetachedFromWindow()V

    .line 5429
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    .line 4246
    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->_onDraw(Landroid/graphics/Canvas;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_d

    .line 4248
    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v0, :cond_c

    .line 4249
    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v0}, Landroid/webkit/OnPinchZoomListener;->onWebViewDrawFinished()V

    .line 4252
    :cond_c
    return-void

    .line 4248
    :catchall_d
    move-exception v0

    iget-object v1, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v1, :cond_17

    .line 4249
    iget-object v1, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v1}, Landroid/webkit/OnPinchZoomListener;->onWebViewDrawFinished()V

    .line 4248
    :cond_17
    throw v0
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .registers 8
    .parameter "canvas"
    .parameter "scrollBar"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 3315
    iget v0, p0, Landroid/view/View;->mScrollY:I

    if-gez v0, :cond_7

    .line 3316
    iget v0, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr p4, v0

    .line 3318
    :cond_7
    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v0

    add-int/2addr v0, p4

    invoke-virtual {p2, p3, v0, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3319
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3320
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 8
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5944
    if-eqz p1, :cond_27

    .line 5947
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 5948
    instance-of v0, p0, Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_24

    .line 5949
    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 5950
    const-string/jumbo v0, "webview"

    const-string/jumbo v1, "setActive, has Focus() mDrawCursorRing set to false for HTMLComposer only"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5955
    :goto_19
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_20

    .line 5956
    invoke-direct {p0, v3, v2, v3}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 5976
    :cond_20
    :goto_20
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 5977
    return-void

    .line 5953
    :cond_24
    iput-boolean v3, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    goto :goto_19

    .line 5966
    :cond_27
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-nez v0, :cond_39

    .line 5967
    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 5968
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_36

    .line 5969
    invoke-direct {p0, v2, v2, v3}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 5971
    :cond_36
    invoke-virtual {p0}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 5973
    :cond_39
    iput-boolean v2, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    goto :goto_20
.end method

.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .parameter "oldFocus"
    .parameter "newFocus"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5452
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v5, 0x16

    const/16 v4, 0x13

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5056
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_d

    move v0, v3

    .line 5185
    :goto_c
    return v0

    .line 5072
    :cond_d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p2}, Landroid/webkit/CallbackProxy;->uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1b
    move v0, v3

    .line 5074
    goto :goto_c

    .line 5077
    :cond_1d
    const/16 v0, 0x3b

    if-eq p1, v0, :cond_25

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_2d

    .line 5079
    :cond_25
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 5080
    iput-boolean v2, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 5086
    :cond_2d
    :goto_2d
    if-lt p1, v4, :cond_95

    if-gt p1, v5, :cond_95

    .line 5088
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 5089
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 5090
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/webkit/WebView;->letPluginHandleNavKey(IJZ)V

    move v0, v2

    .line 5091
    goto :goto_c

    .line 5081
    :cond_43
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorWantsKeyEvents()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v0, :cond_2d

    .line 5082
    invoke-virtual {p0}, Landroid/webkit/WebView;->setUpSelect()V

    goto :goto_2d

    .line 5093
    :cond_51
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v0, :cond_7c

    .line 5094
    const/16 v0, 0x15

    if-ne p1, v0, :cond_6e

    move v7, v1

    .line 5096
    .local v7, xRate:I
    :goto_5a
    if-ne p1, v4, :cond_74

    move v8, v1

    .line 5098
    .local v8, yRate:I
    :goto_5d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    add-int/lit8 v6, v0, 0x1

    .line 5099
    .local v6, multiplier:I
    mul-int v0, v7, v6

    int-to-float v0, v0

    mul-int v1, v8, v6

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->moveSelection(FF)V

    move v0, v2

    .line 5100
    goto :goto_c

    .line 5094
    .end local v6           #multiplier:I
    .end local v7           #xRate:I
    .end local v8           #yRate:I
    :cond_6e
    if-ne p1, v5, :cond_72

    move v7, v2

    goto :goto_5a

    :cond_72
    move v7, v3

    goto :goto_5a

    .line 5096
    .restart local v7       #xRate:I
    :cond_74
    const/16 v0, 0x14

    if-ne p1, v0, :cond_7a

    move v8, v2

    goto :goto_5d

    :cond_7a
    move v8, v3

    goto :goto_5d

    .line 5102
    .end local v7           #xRate:I
    :cond_7c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 5103
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->keyCodeToSoundsEffect(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->playSoundEffect(I)V

    move v0, v2

    .line 5104
    goto/16 :goto_c

    :cond_92
    move v0, v3

    .line 5107
    goto/16 :goto_c

    .line 5110
    :cond_95
    const/16 v0, 0x17

    if-eq p1, v0, :cond_9d

    const/16 v0, 0x42

    if-ne p1, v0, :cond_d6

    .line 5111
    :cond_9d
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 5112
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_d3

    .line 5113
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v0, :cond_ad

    move v0, v2

    .line 5114
    goto/16 :goto_c

    .line 5116
    :cond_ad
    iput-boolean v2, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    .line 5117
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x72

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5121
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_d1

    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_d1

    move v0, v2

    :goto_cb
    invoke-direct {p0, v0, v2, v2}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    move v0, v2

    .line 5122
    goto/16 :goto_c

    :cond_d1
    move v0, v3

    .line 5121
    goto :goto_cb

    :cond_d3
    move v0, v3

    .line 5125
    goto/16 :goto_c

    .line 5128
    :cond_d6
    const/16 v0, 0x3b

    if-eq p1, v0, :cond_e3

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_e3

    .line 5131
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    .line 5132
    iput-boolean v3, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 5135
    :cond_e3
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getNavDump()Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 5136
    packed-switch p1, :pswitch_data_16a

    .line 5154
    :cond_f0
    :goto_f0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v0

    if-eqz v0, :cond_13b

    .line 5157
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x76

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v3

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 5161
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 5163
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_157

    .line 5164
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    .line 5165
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_c

    .line 5138
    :pswitch_11b
    invoke-virtual {p0}, Landroid/webkit/WebView;->dumpDisplayTree()V

    goto :goto_f0

    .line 5142
    :pswitch_11f
    const/16 v0, 0xc

    if-ne p1, v0, :cond_128

    move v0, v2

    :goto_124
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->dumpDomTree(Z)V

    goto :goto_f0

    :cond_128
    move v0, v3

    goto :goto_124

    .line 5146
    :pswitch_12a
    const/16 v0, 0xe

    if-ne p1, v0, :cond_133

    move v0, v2

    :goto_12f
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->dumpRenderTree(Z)V

    goto :goto_f0

    :cond_133
    move v0, v3

    goto :goto_12f

    .line 5149
    :pswitch_135
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeInstrumentReport()V

    move v0, v2

    .line 5150
    goto/16 :goto_c

    .line 5167
    :cond_13b
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasFocusNode()Z

    move-result v0

    if-eqz v0, :cond_157

    .line 5170
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 5171
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_157

    .line 5172
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    .line 5173
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_c

    .line 5178
    :cond_157
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorWantsKeyEvents()Z

    move-result v0

    if-nez v0, :cond_15d

    .line 5180
    :cond_15d
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5182
    invoke-virtual {p0}, Landroid/webkit/WebView;->drawSelectionControl()V

    move v0, v2

    .line 5185
    goto/16 :goto_c

    .line 5136
    :pswitch_data_16a
    .packed-switch 0xb
        :pswitch_11b
        :pswitch_11f
        :pswitch_11f
        :pswitch_12a
        :pswitch_12a
        :pswitch_135
    .end packed-switch
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 5039
    if-nez p1, :cond_18

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 5041
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, p3}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5042
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p3}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5044
    const/4 v0, 0x1

    .line 5046
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 5199
    iget v4, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v4, :cond_8

    move v4, v6

    .line 5291
    :goto_7
    return v4

    .line 5204
    :cond_8
    const/4 v4, 0x5

    if-ne p1, v4, :cond_3a

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 5205
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorText()Ljava/lang/String;

    move-result-object v2

    .line 5206
    .local v2, text:Ljava/lang/String;
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v4

    if-nez v4, :cond_3a

    if-eqz v2, :cond_3a

    const-string/jumbo v4, "tel:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 5208
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5209
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v8

    .line 5210
    goto :goto_7

    .line 5217
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #text:Ljava/lang/String;
    :cond_3a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v4

    if-nez v4, :cond_48

    iget-object v4, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v4, p2}, Landroid/webkit/CallbackProxy;->uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_4a

    :cond_48
    move v4, v6

    .line 5218
    goto :goto_7

    .line 5221
    :cond_4a
    const/16 v4, 0x3b

    if-eq p1, v4, :cond_52

    const/16 v4, 0x3c

    if-ne p1, v4, :cond_5a

    .line 5223
    :cond_52
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v4

    if-eqz v4, :cond_71

    .line 5224
    iput-boolean v6, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 5231
    :cond_5a
    const/16 v4, 0x13

    if-lt p1, v4, :cond_7e

    const/16 v4, 0x16

    if-gt p1, v4, :cond_7e

    .line 5233
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 5234
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5, v6}, Landroid/webkit/WebView;->letPluginHandleNavKey(IJZ)V

    move v4, v8

    .line 5235
    goto :goto_7

    .line 5225
    :cond_71
    invoke-virtual {p0}, Landroid/webkit/WebView;->copySelection()Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 5226
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    move v4, v8

    .line 5227
    goto :goto_7

    :cond_7c
    move v4, v6

    .line 5239
    goto :goto_7

    .line 5242
    :cond_7e
    const/16 v4, 0x17

    if-eq p1, v4, :cond_86

    const/16 v4, 0x42

    if-ne p1, v4, :cond_100

    .line 5244
    :cond_86
    iget-object v4, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x72

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 5245
    iput-boolean v6, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    .line 5247
    iget-boolean v4, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v4, :cond_a9

    .line 5248
    iget-boolean v4, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    if-eqz v4, :cond_a0

    .line 5249
    invoke-virtual {p0}, Landroid/webkit/WebView;->copySelection()Z

    .line 5250
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    :goto_9d
    move v4, v8

    .line 5256
    goto/16 :goto_7

    .line 5252
    :cond_a0
    iput-boolean v8, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 5253
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSetExtendSelection()V

    .line 5254
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_9d

    .line 5260
    :cond_a9
    invoke-direct {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 5263
    .local v3, visibleRect:Landroid/graphics/Rect;
    invoke-direct {p0, v3}, Landroid/webkit/WebView;->nativeCursorIntersects(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_b6

    move v4, v6

    .line 5264
    goto/16 :goto_7

    .line 5266
    :cond_b6
    invoke-virtual {p0}, Landroid/webkit/WebView;->cursorData()Landroid/webkit/WebViewCore$CursorData;

    move-result-object v0

    .line 5267
    .local v0, data:Landroid/webkit/WebViewCore$CursorData;
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x87

    invoke-virtual {v4, v5, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5268
    invoke-virtual {p0, v6}, Landroid/webkit/WebView;->playSoundEffect(I)V

    .line 5269
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v4

    if-eqz v4, :cond_de

    .line 5270
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 5271
    invoke-virtual {p0}, Landroid/webkit/WebView;->centerKeyPressOnTextField()V

    .line 5272
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v4

    if-eqz v4, :cond_db

    .line 5273
    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v4}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    :cond_db
    move v4, v8

    .line 5275
    goto/16 :goto_7

    .line 5277
    :cond_de
    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 5278
    invoke-direct {p0, v8}, Landroid/webkit/WebView;->nativeSetFollowedLink(Z)V

    .line 5279
    iget-object v4, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/CallbackProxy;->uiOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_fd

    .line 5280
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x76

    iget v6, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    :cond_fd
    move v4, v8

    .line 5283
    goto/16 :goto_7

    .line 5287
    .end local v0           #data:Landroid/webkit/WebViewCore$CursorData;
    .end local v3           #visibleRect:Landroid/graphics/Rect;
    :cond_100
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorWantsKeyEvents()Z

    move-result v4

    if-nez v4, :cond_106

    .line 5289
    :cond_106
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x68

    invoke-virtual {v4, v5, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    move v4, v8

    .line 5291
    goto/16 :goto_7
.end method

.method protected onMeasure(II)V
    .registers 14
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 8836
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onMeasure(II)V

    .line 8838
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 8839
    .local v2, heightMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 8840
    .local v3, heightSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 8841
    .local v6, widthMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 8843
    .local v7, widthSize:I
    move v4, v3

    .line 8844
    .local v4, measuredHeight:I
    move v5, v7

    .line 8847
    .local v5, measuredWidth:I
    iget v8, p0, Landroid/webkit/WebView;->mContentHeight:I

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v0

    .line 8848
    .local v0, contentHeight:I
    iget v8, p0, Landroid/webkit/WebView;->mContentWidth:I

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v1

    .line 8852
    .local v1, contentWidth:I
    const/high16 v8, 0x4000

    if-eq v2, v8, :cond_47

    .line 8853
    iput-boolean v10, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    .line 8854
    move v4, v0

    .line 8855
    const/high16 v8, -0x8000

    if-ne v2, v8, :cond_33

    .line 8858
    if-le v4, v3, :cond_33

    .line 8859
    move v4, v3

    .line 8860
    iput-boolean v9, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    .line 8866
    :cond_33
    :goto_33
    iget v8, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v8, :cond_3c

    .line 8867
    iget-boolean v8, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    invoke-direct {p0, v8}, Landroid/webkit/WebView;->nativeSetHeightCanMeasure(Z)V

    .line 8870
    :cond_3c
    if-nez v6, :cond_4a

    .line 8871
    iput-boolean v10, p0, Landroid/webkit/WebView;->mWidthCanMeasure:Z

    .line 8872
    move v5, v1

    .line 8877
    :goto_41
    monitor-enter p0

    .line 8878
    :try_start_42
    invoke-virtual {p0, v5, v4}, Landroid/webkit/WebView;->setMeasuredDimension(II)V

    .line 8879
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_4d

    .line 8880
    return-void

    .line 8864
    :cond_47
    iput-boolean v9, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    goto :goto_33

    .line 8874
    :cond_4a
    iput-boolean v9, p0, Landroid/webkit/WebView;->mWidthCanMeasure:Z

    goto :goto_41

    .line 8879
    :catchall_4d
    move-exception v8

    :try_start_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v8
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 15
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 3325
    iput-boolean v9, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    .line 3326
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v0

    .line 3327
    .local v0, maxX:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v1

    .line 3328
    .local v1, maxY:I
    if-nez v0, :cond_7c

    .line 3330
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result p1

    .line 3334
    :cond_12
    :goto_12
    if-ltz p2, :cond_16

    if-le p2, v1, :cond_18

    .line 3335
    :cond_16
    iput-boolean v6, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    .line 3338
    :cond_18
    iget v2, p0, Landroid/view/View;->mScrollX:I

    .line 3339
    .local v2, oldX:I
    iget v3, p0, Landroid/view/View;->mScrollY:I

    .line 3341
    .local v3, oldY:I
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->scrollTo(II)V

    .line 3345
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v6, :cond_7b

    iget v6, p0, Landroid/view/View;->mScrollY:I

    if-ne v3, v6, :cond_7b

    iget v6, p0, Landroid/view/View;->mScrollX:I

    if-ne v2, v6, :cond_7b

    .line 3348
    if-lez v0, :cond_50

    .line 3349
    iget v6, p0, Landroid/webkit/WebView;->mOverscrollDeltaX:I

    add-int v4, v2, v6

    .line 3350
    .local v4, pulledToX:I
    if-gez v4, :cond_83

    .line 3351
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    iget v7, p0, Landroid/webkit/WebView;->mOverscrollDeltaX:I

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 3352
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v6

    if-nez v6, :cond_4e

    .line 3353
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 3361
    :cond_4e
    :goto_4e
    iput v9, p0, Landroid/webkit/WebView;->mOverscrollDeltaX:I

    .line 3364
    .end local v4           #pulledToX:I
    :cond_50
    if-gtz v1, :cond_58

    invoke-virtual {p0}, Landroid/webkit/WebView;->getOverScrollMode()I

    move-result v6

    if-nez v6, :cond_7b

    .line 3365
    :cond_58
    iget v6, p0, Landroid/webkit/WebView;->mOverscrollDeltaY:I

    add-int v5, v3, v6

    .line 3366
    .local v5, pulledToY:I
    if-gez v5, :cond_a1

    .line 3367
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    iget v7, p0, Landroid/webkit/WebView;->mOverscrollDeltaY:I

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 3368
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v6

    if-nez v6, :cond_79

    .line 3369
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 3377
    :cond_79
    :goto_79
    iput v9, p0, Landroid/webkit/WebView;->mOverscrollDeltaY:I

    .line 3380
    .end local v5           #pulledToY:I
    :cond_7b
    return-void

    .line 3331
    .end local v2           #oldX:I
    .end local v3           #oldY:I
    :cond_7c
    if-ltz p1, :cond_80

    if-le p1, v0, :cond_12

    .line 3332
    :cond_80
    iput-boolean v6, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    goto :goto_12

    .line 3355
    .restart local v2       #oldX:I
    .restart local v3       #oldY:I
    .restart local v4       #pulledToX:I
    :cond_83
    if-le v4, v0, :cond_4e

    .line 3356
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    iget v7, p0, Landroid/webkit/WebView;->mOverscrollDeltaX:I

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 3357
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v6

    if-nez v6, :cond_4e

    .line 3358
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_4e

    .line 3371
    .end local v4           #pulledToX:I
    .restart local v5       #pulledToY:I
    :cond_a1
    if-le v5, v1, :cond_79

    .line 3372
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    iget v7, p0, Landroid/webkit/WebView;->mOverscrollDeltaY:I

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 3373
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v6

    if-nez v6, :cond_79

    .line 3374
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_79
.end method

.method onPageFinished(Ljava/lang/String;)V
    .registers 6
    .parameter "url"

    .prologue
    .line 3855
    iget-object v0, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 3859
    iget-object v0, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget v0, p0, Landroid/view/View;->mScrollX:I

    if-nez v0, :cond_1d

    iget v0, p0, Landroid/view/View;->mScrollY:I

    if-nez v0, :cond_1d

    .line 3861
    const/4 v0, 0x0

    iget v1, p0, Landroid/webkit/WebView;->mYDistanceToSlideTitleOffScreen:I

    const/4 v2, 0x1

    const/16 v3, 0x1f4

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 3864
    :cond_1d
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    .line 3866
    :cond_20
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 3485
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    if-nez v0, :cond_e

    .line 3486
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    .line 3487
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x8f

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3489
    :cond_e
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 3496
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    if-eqz v0, :cond_e

    .line 3497
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    .line 3498
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3500
    :cond_e
    return-void
.end method

.method onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .registers 13
    .parameter "schemePlusHost"
    .parameter "username"
    .parameter "password"
    .parameter "resumeMsg"

    .prologue
    const-string/jumbo v7, "username"

    const-string/jumbo v6, "password"

    const-string v5, "host"

    .line 1632
    const/4 v1, 0x0

    .line 1633
    .local v1, rVal:Z
    if-nez p4, :cond_11

    .line 1635
    iget-object v3, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v3, p1, p2, p3}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    :goto_10
    return v1

    .line 1637
    :cond_11
    iget-object v3, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1639
    .local v2, remember:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "username"

    invoke-virtual {v3, v7, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "password"

    invoke-virtual {v3, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    iput-object p4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1644
    iget-object v3, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1646
    .local v0, neverRemember:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "username"

    invoke-virtual {v3, v7, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "password"

    invoke-virtual {v3, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1651
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x10403d7

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x10403e1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x10403e2

    new-instance v5, Landroid/webkit/WebView$6;

    invoke-direct {v5, p0, p4}, Landroid/webkit/WebView$6;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x10403e3

    new-instance v5, Landroid/webkit/WebView$5;

    invoke-direct {v5, p0, v2}, Landroid/webkit/WebView$5;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x10403e4

    new-instance v5, Landroid/webkit/WebView$4;

    invoke-direct {v5, p0, v0}, Landroid/webkit/WebView$4;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Landroid/webkit/WebView$3;

    invoke-direct {v4, p0, p4}, Landroid/webkit/WebView$3;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1679
    const/4 v1, 0x1

    goto/16 :goto_10
.end method

.method protected onScrollChanged(IIII)V
    .registers 11
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 6129
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_5

    .line 6131
    :goto_4
    return-void

    .line 6130
    :cond_5
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->onScrollChangedAnchorDiff(IIIIZ)V

    goto :goto_4
.end method

.method protected onScrollChangedAnchorDiff(IIIIZ)V
    .registers 10
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"
    .parameter "needAnchorDiff"

    .prologue
    const/4 v3, 0x0

    .line 6134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onScrollChanged(IIII)V

    .line 6135
    invoke-direct {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    .line 6138
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    .line 6139
    .local v0, titleHeight:I
    sub-int v1, v0, p2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int v2, v0, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eq v1, v2, :cond_1c

    .line 6140
    invoke-direct {p0, p5}, Landroid/webkit/WebView;->sendViewSizeZoom(Z)Z

    .line 6142
    :cond_1c
    iget-object v1, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v1}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2e

    .line 6144
    iget-object v1, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/webkit/OnPinchZoomListener;->onScrollChanged(IIII)V

    .line 6147
    :cond_2e
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 14
    .parameter "w"
    .parameter "h"
    .parameter "ow"
    .parameter "oh"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 6051
    const-string/jumbo v0, "webview"

    const-string v1, "OnSizeChanged: Enter "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6053
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIgnoreViewSizeChanged:Z

    if-eqz v0, :cond_15

    if-ne p1, p3, :cond_15

    .line 6054
    iput-boolean v4, p0, Landroid/webkit/WebView;->mIgnoreViewSizeChanged:Z

    .line 6124
    :cond_14
    :goto_14
    return-void

    .line 6058
    :cond_15
    iget-object v0, p0, Landroid/webkit/WebView;->mSizeChangedCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1e

    .line 6059
    iget-object v0, p0, Landroid/webkit/WebView;->mSizeChangedCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 6063
    :cond_1e
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onSizeChanged(IIII)V

    .line 6065
    iget v0, p0, Landroid/webkit/WebView;->mZoomScale:F

    cmpl-float v0, v0, v8

    if-nez v0, :cond_48

    .line 6067
    iput v8, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 6068
    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 6069
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    float-to-int v0, v0

    iget v1, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mAnchorX:I

    .line 6070
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    float-to-int v0, v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mAnchorY:I

    .line 6076
    :cond_48
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    sget v1, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    div-float/2addr v0, v1

    float-to-int v7, v0

    .line 6077
    .local v7, newMaxViewportWidth:I
    sget v0, Landroid/webkit/WebView;->sMaxViewportWidth:I

    if-le v7, v0, :cond_57

    .line 6078
    sput v7, Landroid/webkit/WebView;->sMaxViewportWidth:I

    .line 6082
    :cond_57
    iget-boolean v0, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    if-nez v0, :cond_87

    .line 6087
    const/high16 v0, 0x3f80

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v1

    int-to-float v1, v1

    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_aa

    iget-object v2, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    invoke-virtual {v2}, Landroid/graphics/Picture;->getWidth()I

    move-result v2

    :goto_6c
    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 6090
    iget v0, p0, Landroid/webkit/WebView;->mInitialScaleInPercent:I

    if-lez v0, :cond_87

    .line 6092
    iget v0, p0, Landroid/webkit/WebView;->mInitialScaleInPercent:I

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float v6, v0, v1

    .line 6093
    .local v6, initialScale:F
    iget v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_87

    .line 6094
    iput v6, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 6099
    .end local v6           #initialScale:F
    :cond_87
    invoke-virtual {p0}, Landroid/webkit/WebView;->dismissZoomControl()V

    .line 6108
    iget-boolean v0, p0, Landroid/webkit/WebView;->mHasRotateSupport:Z

    if-nez v0, :cond_af

    .line 6109
    new-instance v0, Landroid/webkit/WebView$PostScale;

    if-eq p1, p3, :cond_ad

    move v1, v3

    :goto_93
    sget-object v2, Landroid/webkit/WebView$ZoomMode;->ZOOM_NORMAL:Landroid/webkit/WebView$ZoomMode;

    invoke-direct {v0, p0, v1, v2}, Landroid/webkit/WebView$PostScale;-><init>(Landroid/webkit/WebView;ZLandroid/webkit/WebView$ZoomMode;)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 6120
    :goto_9b
    iget-boolean v0, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    if-eqz v0, :cond_14

    .line 6121
    iget-object v0, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    invoke-virtual {v0}, Landroid/webkit/WebSelectDialog;->onWebViewSizeChanged()V

    goto/16 :goto_14

    .line 6087
    :cond_aa
    iget v2, p0, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    goto :goto_6c

    :cond_ad
    move v1, v4

    .line 6109
    goto :goto_93

    .line 6112
    :cond_af
    if-lez p3, :cond_bb

    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    int-to-float v1, p3

    div-float/2addr v0, v1

    cmpg-float v0, v0, v8

    if-gtz v0, :cond_d0

    .line 6113
    :cond_bb
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    if-eq p1, p3, :cond_ca

    move v2, v3

    :goto_c0
    if-eq p1, p3, :cond_cc

    sget-object v0, Landroid/webkit/WebView$ZoomMode;->ZOOM_ROTATE:Landroid/webkit/WebView$ZoomMode;

    move-object v4, v0

    :goto_c5
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/WebView$ZoomMode;Landroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    goto :goto_9b

    :cond_ca
    move v2, v4

    goto :goto_c0

    :cond_cc
    sget-object v0, Landroid/webkit/WebView$ZoomMode;->ZOOM_NORMAL:Landroid/webkit/WebView$ZoomMode;

    move-object v4, v0

    goto :goto_c5

    .line 6115
    :cond_d0
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    int-to-float v1, p3

    div-float v1, v0, v1

    if-eq p1, p3, :cond_e4

    move v2, v3

    :goto_da
    if-eq p1, p3, :cond_e6

    sget-object v0, Landroid/webkit/WebView$ZoomMode;->ZOOM_ROTATE:Landroid/webkit/WebView$ZoomMode;

    move-object v4, v0

    :goto_df
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/WebView$ZoomMode;Landroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    goto :goto_9b

    :cond_e4
    move v2, v4

    goto :goto_da

    :cond_e6
    sget-object v0, Landroid/webkit/WebView$ZoomMode;->ZOOM_NORMAL:Landroid/webkit/WebView$ZoomMode;

    move-object v4, v0

    goto :goto_df
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 39
    .parameter "ev"

    .prologue
    .line 6684
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mNativeClass:I

    move v5, v0

    if-eqz v5, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->isLongClickable()Z

    move-result v5

    if-nez v5, :cond_15

    .line 6685
    :cond_13
    const/4 v5, 0x0

    .line 7323
    :goto_14
    return v5

    .line 6691
    :cond_15
    const/4 v5, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v5, v6, :cond_50

    .line 6692
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mFirstTouchPosX:F

    move v6, v0

    sub-float v20, v5, v6

    .line 6693
    .local v20, dX:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mFirstTouchPosY:F

    move v6, v0

    sub-float v21, v5, v6

    .line 6694
    .local v21, dY:F
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchSlop:I

    move v6, v0

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_50

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchSlop:I

    move v6, v0

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_50

    .line 6697
    const/4 v5, 0x1

    goto :goto_14

    .line 6701
    .end local v20           #dX:F
    .end local v21           #dY:F
    :cond_50
    const/16 v19, 0x0

    .line 6702
    .local v19, consumeEvent:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    if-eqz v5, :cond_8a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    invoke-interface {v5}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8a

    .line 6703
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/webkit/OnPinchZoomListener;->onWebViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    const/4 v5, 0x1

    move/from16 v0, v19

    move v1, v5

    if-ne v0, v1, :cond_8a

    .line 6707
    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v5, v6, :cond_f0

    .line 6708
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mExtendSelectionPressed:Z

    .line 6709
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    .line 6718
    :cond_8a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move-object v5, v0

    iget-boolean v5, v5, Landroid/webkit/WebMagnifier;->mbShow:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a3

    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v5, v6, :cond_a3

    .line 6719
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebMagnifier;->hide()V

    .line 6723
    :cond_a3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v25

    .line 6727
    .local v25, eventTime:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSupportMultiTouch:Z

    move v5, v0

    if-eqz v5, :cond_203

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_203

    .line 6728
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaxZoomScale:F

    move v6, v0

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_ca

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    if-eqz v5, :cond_200

    .line 6730
    :cond_ca
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6731
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebviewScaleGestureDetector;->isInProgress()Z

    move-result v5

    if-eqz v5, :cond_105

    .line 6732
    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchTime:J

    .line 6733
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mAllowPanAndScale:Z

    move v5, v0

    if-nez v5, :cond_f3

    .line 6734
    const/4 v5, 0x1

    goto/16 :goto_14

    .line 6711
    .end local v25           #eventTime:J
    :cond_f0
    const/4 v5, 0x1

    goto/16 :goto_14

    .line 6736
    .restart local v25       #eventTime:J
    :cond_f3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 6737
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 6739
    :cond_105
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusX()F

    move-result v10

    .line 6740
    .local v10, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusY()F

    move-result v11

    .line 6741
    .local v11, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v7, v5, 0xff

    .line 6742
    .local v7, action:I
    const/4 v5, 0x5

    if-ne v7, v5, :cond_1e1

    .line 6743
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->cancelTouch()V

    .line 6744
    const/4 v7, 0x0

    .line 6769
    :cond_124
    :goto_124
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, v10, v5

    if-lez v5, :cond_136

    .line 6770
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    int-to-float v10, v5

    .line 6772
    :cond_136
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, v11, v5

    if-lez v5, :cond_148

    .line 6773
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    int-to-float v11, v5

    .line 6776
    :cond_148
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastTouchX:F

    move v5, v0

    sub-float v27, v5, v10

    .line 6777
    .local v27, fDeltaX:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastTouchY:F

    move v5, v0

    sub-float v28, v5, v11

    .line 6778
    .local v28, fDeltaY:F
    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v22, v0

    .line 6779
    .local v22, deltaX:I
    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v23, v0

    .line 6780
    .local v23, deltaY:I
    float-to-int v5, v10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v6, v0

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v8

    .line 6781
    .local v8, contentX:I
    float-to-int v5, v11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v6, v0

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v9

    .line 6791
    .local v9, contentY:I
    if-eqz v19, :cond_211

    .line 6797
    const/16 v5, 0x8

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 6798
    invoke-direct/range {v5 .. v11}, Landroid/webkit/WebView;->textSelectionTouchEvent(Landroid/view/MotionEvent;IIIFF)Z

    move-result v5

    if-nez v5, :cond_1de

    .line 6799
    const/4 v5, 0x1

    if-ne v5, v7, :cond_1de

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v5

    if-eqz v5, :cond_1de

    .line 6800
    new-instance v35, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v35 .. v35}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 6801
    .local v35, ted:Landroid/webkit/WebViewCore$TouchEventData;
    move v0, v7

    move-object/from16 v1, v35

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 6802
    move v0, v8

    move-object/from16 v1, v35

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 6803
    move v0, v9

    move-object/from16 v1, v35

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 6804
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    move v0, v5

    move-object/from16 v1, v35

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 6805
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    move v0, v5

    move-object/from16 v1, v35

    iput-boolean v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 6806
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    if-eqz v5, :cond_1d0

    .line 6807
    move v0, v10

    move-object/from16 v1, v35

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    .line 6808
    move v0, v11

    move-object/from16 v1, v35

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    .line 6810
    :cond_1d0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 6813
    .end local v35           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_1de
    const/4 v5, 0x1

    goto/16 :goto_14

    .line 6745
    .end local v8           #contentX:I
    .end local v9           #contentY:I
    .end local v22           #deltaX:I
    .end local v23           #deltaY:I
    .end local v27           #fDeltaX:F
    .end local v28           #fDeltaY:F
    :cond_1e1
    const/4 v5, 0x6

    if-ne v7, v5, :cond_1f0

    .line 6747
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 6748
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    goto/16 :goto_124

    .line 6749
    :cond_1f0
    const/4 v5, 0x2

    if-ne v7, v5, :cond_124

    .line 6751
    const/4 v5, 0x0

    cmpg-float v5, v10, v5

    if-ltz v5, :cond_1fd

    const/4 v5, 0x0

    cmpg-float v5, v11, v5

    if-gez v5, :cond_124

    .line 6752
    :cond_1fd
    const/4 v5, 0x1

    goto/16 :goto_14

    .line 6757
    .end local v7           #action:I
    .end local v10           #x:F
    .end local v11           #y:F
    :cond_200
    const/4 v5, 0x1

    goto/16 :goto_14

    .line 6760
    :cond_203
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 6761
    .restart local v7       #action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    .line 6762
    .restart local v10       #x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    .restart local v11       #y:F
    goto/16 :goto_124

    .line 6816
    .restart local v8       #contentX:I
    .restart local v9       #contentY:I
    .restart local v22       #deltaX:I
    .restart local v23       #deltaY:I
    .restart local v27       #fDeltaX:F
    .restart local v28       #fDeltaY:F
    :cond_211
    packed-switch v7, :pswitch_data_9a0

    .line 7323
    .end local v7           #action:I
    .end local v8           #contentX:I
    .end local v9           #contentY:I
    :cond_214
    :goto_214
    const/4 v5, 0x1

    goto/16 :goto_14

    .line 6818
    .restart local v7       #action:I
    .restart local v8       #contentX:I
    .restart local v9       #contentY:I
    :pswitch_217
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mPreventDefault:I

    .line 6819
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mConfirmMove:Z

    .line 6821
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mFirstTouchPosX:F

    .line 6822
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mFirstTouchPosY:F

    .line 6825
    const/4 v12, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v11}, Landroid/webkit/WebView;->textSelectionTouchEvent(Landroid/view/MotionEvent;IIIFF)Z

    move-result v5

    if-eq v12, v5, :cond_214

    .line 6829
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_2f1

    .line 6833
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 6834
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 6835
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mConfirmMove:Z

    .line 6836
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 6871
    :cond_260
    :goto_260
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_270

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x6

    if-ne v5, v6, :cond_428

    .line 6873
    :cond_270
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x3

    const-wide/16 v12, 0xc8

    invoke-virtual {v5, v6, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6875
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x4

    const-wide/16 v12, 0x3e8

    invoke-virtual {v5, v6, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6877
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_293

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    if-eqz v5, :cond_3c1

    .line 6878
    :cond_293
    const/4 v5, 0x3

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mPreventDefault:I

    .line 6901
    :goto_299
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v5

    if-eqz v5, :cond_428

    .line 6902
    new-instance v35, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v35 .. v35}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 6903
    .restart local v35       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    move v0, v7

    move-object/from16 v1, v35

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 6904
    move v0, v8

    move-object/from16 v1, v35

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 6905
    move v0, v9

    move-object/from16 v1, v35

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 6906
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    move v0, v5

    move-object/from16 v1, v35

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 6907
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    move v0, v5

    move-object/from16 v1, v35

    iput-boolean v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 6908
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    if-eqz v5, :cond_3fa

    .line 6910
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 6911
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    .line 6912
    move v0, v10

    move-object/from16 v1, v35

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    .line 6913
    move v0, v11

    move-object/from16 v1, v35

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    .line 6914
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_214

    .line 6837
    .end local v35           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_2f1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_341

    .line 6838
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 6839
    mul-int v5, v22, v22

    mul-int v6, v23, v23

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mDoubleTapSlopSquare:I

    move v6, v0

    if-ge v5, v6, :cond_31a

    .line 6840
    const/4 v5, 0x6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    goto/16 :goto_260

    .line 6843
    :cond_31a
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doShortPress()V

    .line 6844
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 6845
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_33f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    move v5, v0

    if-eqz v5, :cond_33f

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->hitFocusedPlugin(II)Z

    move-result v5

    :goto_338
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    goto/16 :goto_260

    :cond_33f
    const/4 v5, 0x0

    goto :goto_338

    .line 6850
    :cond_341
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    .line 6851
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 6852
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_3bf

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    move v5, v0

    if-eqz v5, :cond_3bf

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->hitFocusedPlugin(II)Z

    move-result v5

    :goto_362
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    .line 6855
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x62

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 6857
    sget-boolean v5, Landroid/webkit/WebView;->mLogEvent:Z

    if-eqz v5, :cond_3a0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mLastTouchUpTime:J

    move-wide v5, v0

    sub-long v5, v25, v5

    const-wide/16 v12, 0x3e8

    cmp-long v5, v5, v12

    if-gez v5, :cond_3a0

    .line 6858
    const v5, 0x111d6

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mLastTouchUpTime:J

    move-wide v13, v0

    sub-long v13, v25, v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v6, v12

    const/4 v12, 0x1

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v6, v12

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 6861
    :cond_3a0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSelectingText:Z

    move v5, v0

    if-eqz v5, :cond_260

    .line 6862
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    .line 6863
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->nativeStartSelection(II)Z

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mSelectionStarted:Z

    .line 6867
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_260

    .line 6852
    :cond_3bf
    const/4 v5, 0x0

    goto :goto_362

    .line 6879
    :cond_3c1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    move v5, v0

    if-eqz v5, :cond_3f2

    .line 6882
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mForwardTouchEvents_others:Z

    move v5, v0

    if-eqz v5, :cond_3d7

    .line 6883
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mPreventDefault:I

    goto/16 :goto_299

    .line 6885
    :cond_3d7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    move-object v5, v0

    invoke-virtual {v5, v8, v9}, Landroid/webkit/ViewManager;->hitTest(II)Landroid/webkit/ViewManager$ChildView;

    move-result-object v5

    if-nez v5, :cond_3ea

    .line 6888
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mPreventDefault:I

    goto/16 :goto_299

    .line 6890
    :cond_3ea
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mPreventDefault:I

    goto/16 :goto_299

    .line 6898
    :cond_3f2
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mPreventDefault:I

    goto/16 :goto_299

    .line 6917
    .restart local v35       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_3fa
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 6918
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_428

    .line 6919
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v6, v0

    const/16 v8, 0xa

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v7, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .end local v8           #contentX:I
    .end local v9           #contentY:I
    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefaultTimeout:I

    move v7, v0

    .end local v7           #action:I
    int-to-long v7, v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6925
    .end local v35           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_428
    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move-wide/from16 v3, v25

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->startTouch(FFJ)V

    goto/16 :goto_214

    .line 6929
    .restart local v7       #action:I
    .restart local v8       #contentX:I
    .restart local v9       #contentY:I
    :pswitch_433
    const/4 v12, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v11}, Landroid/webkit/WebView;->textSelectionTouchEvent(Landroid/view/MotionEvent;IIIFF)Z

    move-result v5

    if-eq v12, v5, :cond_214

    .line 6932
    const/16 v29, 0x0

    .line 6935
    .local v29, firstMove:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    if-eqz v5, :cond_4f4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    invoke-interface {v5}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4f4

    .line 6937
    const/16 v36, 0x1

    .line 6944
    .local v36, touchSlopSquare:Z
    :goto_455
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    move v5, v0

    if-nez v5, :cond_486

    if-eqz v36, :cond_486

    .line 6945
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 6946
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 6947
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mConfirmMove:Z

    .line 6948
    const/16 v29, 0x1

    .line 6949
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x6

    if-ne v5, v6, :cond_486

    .line 6950
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 6954
    :cond_486
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v5

    if-eqz v5, :cond_539

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    move v5, v0

    if-eqz v5, :cond_539

    if-nez v29, :cond_4a6

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mLastSentTouchTime:J

    move-wide v5, v0

    sub-long v5, v25, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mCurrentTouchInterval:I

    move v12, v0

    int-to-long v12, v12

    cmp-long v5, v5, v12

    if-lez v5, :cond_539

    .line 6956
    :cond_4a6
    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastSentTouchTime:J

    .line 6957
    new-instance v35, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v35 .. v35}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 6958
    .restart local v35       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    move v0, v7

    move-object/from16 v1, v35

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 6959
    move v0, v8

    move-object/from16 v1, v35

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 6960
    move v0, v9

    move-object/from16 v1, v35

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 6961
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    move v0, v5

    move-object/from16 v1, v35

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 6962
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    move v0, v5

    move-object/from16 v1, v35

    iput-boolean v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 6963
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    if-eqz v5, :cond_509

    .line 6964
    move v0, v10

    move-object/from16 v1, v35

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    .line 6965
    move v0, v11

    move-object/from16 v1, v35

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    .line 6966
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_214

    .line 6941
    .end local v35           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    .end local v36           #touchSlopSquare:Z
    :cond_4f4
    mul-int v5, v22, v22

    mul-int v6, v23, v23

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchSlopSquare:I

    move v6, v0

    if-lt v5, v6, :cond_505

    const/4 v5, 0x1

    move/from16 v36, v5

    .restart local v36       #touchSlopSquare:Z
    :goto_503
    goto/16 :goto_455

    .end local v36           #touchSlopSquare:Z
    :cond_505
    const/4 v5, 0x0

    move/from16 v36, v5

    goto :goto_503

    .line 6969
    .restart local v35       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    .restart local v36       #touchSlopSquare:Z
    :cond_509
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 6970
    if-eqz v29, :cond_539

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_539

    .line 6971
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v6, v0

    const/16 v12, 0xa

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v7, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefaultTimeout:I

    move v7, v0

    .end local v7           #action:I
    int-to-long v12, v7

    invoke-virtual {v5, v6, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6976
    .end local v35           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_539
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x7

    if-eq v5, v6, :cond_214

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_214

    .line 6982
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    if-nez v5, :cond_595

    .line 6983
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got null mVelocityTracker when mPreventDefault = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mDeferTouchProcess = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mTouchMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6988
    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move-wide/from16 v3, v25

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->startTouch(FFJ)V

    .line 6991
    :cond_595
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 6992
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSelectingText:Z

    move v5, v0

    if-eqz v5, :cond_5ba

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSelectionStarted:Z

    move v5, v0

    if-eqz v5, :cond_5ba

    .line 6996
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->nativeExtendSelection(II)V

    .line 6997
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_214

    .line 7001
    :cond_5ba
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_5fc

    .line 7003
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    move v5, v0

    if-eqz v5, :cond_214

    .line 7006
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v5, v0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5d9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5e1

    .line 7010
    :cond_5d9
    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchTime:J

    goto/16 :goto_214

    .line 7034
    :cond_5e1
    const/4 v5, 0x3

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 7035
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 7036
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    .line 7037
    const/16 v27, 0x0

    .line 7038
    const/16 v28, 0x0

    .line 7039
    const/16 v22, 0x0

    .line 7040
    const/16 v23, 0x0

    .line 7042
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->startDrag()V

    .line 7045
    :cond_5fc
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    move-object v5, v0

    if-eqz v5, :cond_60b

    .line 7046
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    move-object v5, v0

    invoke-virtual {v5, v10, v11}, Landroid/webkit/WebView$DragTrackerHandler;->dragTo(FF)V

    .line 7050
    :cond_60b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    if-eqz v5, :cond_684

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    invoke-interface {v5}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_684

    .line 7066
    :cond_61e
    :goto_61e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    if-eqz v5, :cond_6a8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    invoke-interface {v5}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6a8

    .line 7081
    :cond_631
    :goto_631
    const/16 v24, 0x0

    .line 7082
    .local v24, done:Z
    const/16 v30, 0x0

    .line 7083
    .local v30, keepScrollBarsVisible:Z
    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f80

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6cc

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f80

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6cc

    .line 7084
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 7085
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    .line 7086
    const/16 v24, 0x1

    move/from16 v30, v24

    .line 7150
    :goto_657
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->doDrag(II)V

    .line 7152
    if-eqz v30, :cond_214

    .line 7153
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    move v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_673

    .line 7154
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 7155
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 7158
    :cond_673
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->awakenScrollBars(IZ)Z

    .line 7162
    if-nez v24, :cond_715

    const/4 v5, 0x1

    goto/16 :goto_14

    .line 7057
    .end local v24           #done:Z
    .end local v30           #keepScrollBarsVisible:Z
    :cond_684
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v5, v0

    add-int v5, v5, v22

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v33

    .line 7059
    .local v33, newScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v5, v0

    sub-int v31, v33, v5

    .line 7060
    .local v31, newDeltaX:I
    move/from16 v0, v22

    move/from16 v1, v31

    if-eq v0, v1, :cond_61e

    .line 7061
    move/from16 v22, v31

    .line 7062
    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v27, v0

    goto/16 :goto_61e

    .line 7073
    .end local v31           #newDeltaX:I
    .end local v33           #newScrollX:I
    :cond_6a8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v5, v0

    add-int v5, v5, v23

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v34

    .line 7075
    .local v34, newScrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v5, v0

    sub-int v32, v34, v5

    .line 7076
    .local v32, newDeltaY:I
    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_631

    .line 7077
    move/from16 v23, v32

    .line 7078
    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v28, v0

    goto/16 :goto_631

    .line 7124
    .end local v32           #newDeltaY:I
    .end local v34           #newScrollY:I
    .restart local v24       #done:Z
    .restart local v30       #keepScrollBarsVisible:Z
    :cond_6cc
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v5, v0

    if-eqz v5, :cond_6df

    .line 7125
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v5, v0

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_705

    .line 7126
    const/16 v23, 0x0

    .line 7131
    :cond_6df
    :goto_6df
    or-int v5, v22, v23

    if-eqz v5, :cond_708

    .line 7132
    if-eqz v22, :cond_6ea

    .line 7133
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 7135
    :cond_6ea
    if-eqz v23, :cond_6f1

    .line 7136
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    .line 7138
    :cond_6f1
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 7146
    :goto_6f7
    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchTime:J

    .line 7147
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mUserScroll:Z

    goto/16 :goto_657

    .line 7128
    :cond_705
    const/16 v22, 0x0

    goto :goto_6df

    .line 7142
    :cond_708
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 7143
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    .line 7144
    const/16 v30, 0x1

    goto :goto_6f7

    .line 7162
    :cond_715
    const/4 v5, 0x0

    goto/16 :goto_14

    .line 7168
    .end local v24           #done:Z
    .end local v29           #firstMove:Z
    .end local v30           #keepScrollBarsVisible:Z
    .end local v36           #touchSlopSquare:Z
    .restart local v7       #action:I
    :pswitch_718
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mFirstTouchPosX:F

    .line 7169
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mFirstTouchPosY:F

    .line 7171
    const/4 v12, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v11}, Landroid/webkit/WebView;->textSelectionTouchEvent(Landroid/view/MotionEvent;IIIFF)Z

    move-result v5

    if-eq v12, v5, :cond_214

    .line 7176
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v5

    if-eqz v5, :cond_77b

    .line 7177
    new-instance v35, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v35 .. v35}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 7178
    .restart local v35       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    move v0, v7

    move-object/from16 v1, v35

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 7179
    move v0, v8

    move-object/from16 v1, v35

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 7180
    move v0, v9

    move-object/from16 v1, v35

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 7181
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    move v0, v5

    move-object/from16 v1, v35

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 7182
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    move v0, v5

    move-object/from16 v1, v35

    iput-boolean v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 7183
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    if-eqz v5, :cond_76d

    .line 7184
    move v0, v10

    move-object/from16 v1, v35

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    .line 7185
    move v0, v11

    move-object/from16 v1, v35

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    .line 7187
    :cond_76d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7189
    .end local v35           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_77b
    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchUpTime:J

    .line 7190
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    packed-switch v5, :pswitch_data_9ac

    .line 7309
    .end local v7           #action:I
    :cond_789
    :goto_789
    :pswitch_789
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->stopTouch()V

    goto/16 :goto_214

    .line 7192
    .restart local v7       #action:I
    :pswitch_78e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 7193
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 7194
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_7ad

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    if-eqz v5, :cond_7f6

    .line 7195
    :cond_7ad
    new-instance v35, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v35 .. v35}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 7196
    .restart local v35       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    const/16 v5, 0x200

    move v0, v5

    move-object/from16 v1, v35

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 7197
    move v0, v8

    move-object/from16 v1, v35

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 7198
    move v0, v9

    move-object/from16 v1, v35

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 7199
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    move v0, v5

    move-object/from16 v1, v35

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 7200
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    move v0, v5

    move-object/from16 v1, v35

    iput-boolean v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 7201
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    if-eqz v5, :cond_7e7

    .line 7202
    move v0, v10

    move-object/from16 v1, v35

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    .line 7203
    move v0, v11

    move-object/from16 v1, v35

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    .line 7205
    :cond_7e7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_789

    .line 7206
    .end local v35           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_7f6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_789

    .line 7207
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doDoubleTap()V

    .line 7208
    const/4 v5, 0x7

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    goto :goto_789

    .line 7214
    :pswitch_808
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 7215
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 7216
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    move v5, v0

    if-eqz v5, :cond_8ca

    .line 7217
    const-string/jumbo v5, "webview"

    const-string v6, "Miss a drag as we are waiting for WebCore\'s response for touch down."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7219
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_8c5

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v5

    if-gtz v5, :cond_83d

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v5

    if-lez v5, :cond_8c5

    .line 7223
    :cond_83d
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->cancelWebCoreTouchEvent(IIZ)V

    .line 7227
    invoke-static {}, Landroid/webkit/WebViewCore;->reducePriority()V

    .line 7230
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 7258
    :pswitch_851
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 7259
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 7262
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mLastTouchTime:J

    move-wide v5, v0

    sub-long v5, v25, v5

    const-wide/16 v7, 0xfa

    cmp-long v5, v5, v7

    if-gtz v5, :cond_900

    .line 7263
    .end local v7           #action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    if-nez v5, :cond_8af

    .line 7264
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got null mVelocityTracker when mPreventDefault = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mDeferTouchProcess = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7270
    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move-wide/from16 v3, v25

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->startTouch(FFJ)V

    .line 7273
    :cond_8af
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 7277
    const/4 v5, 0x3

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 7278
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doFling()V

    goto/16 :goto_789

    .line 7237
    .restart local v7       #action:I
    :cond_8c5
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_789

    .line 7241
    :cond_8ca
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSelectingText:Z

    move v5, v0

    if-eqz v5, :cond_8e3

    .line 7242
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->nativeHitSelection(II)Z

    move-result v5

    if-eqz v5, :cond_8de

    .line 7243
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->copySelection()Z

    .line 7245
    :cond_8de
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->selectionDone()V

    goto/16 :goto_789

    .line 7248
    :cond_8e3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8fb

    .line 7249
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x5

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    .end local v7           #action:I
    int-to-long v7, v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_789

    .line 7253
    .restart local v7       #action:I
    :cond_8fb
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doShortPress()V

    goto/16 :goto_789

    .line 7282
    .end local v7           #action:I
    :cond_900
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    if-eqz v5, :cond_939

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    invoke-interface {v5}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_939

    .line 7283
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/webkit/OnPinchZoomListener;->doFling(II)Z

    .line 7291
    :cond_91d
    :goto_91d
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 7292
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 7298
    :pswitch_926
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastVelocity:F

    .line 7299
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 7300
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_789

    .line 7284
    :cond_939
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v14, v0

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v16

    const/16 v17, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v18

    invoke-virtual/range {v12 .. v18}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v5

    if-eqz v5, :cond_91d

    .line 7287
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_91d

    .line 7304
    .restart local v7       #action:I
    :pswitch_95d
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 7305
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_789

    .line 7313
    :pswitch_96a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_992

    .line 7314
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v14, v0

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v16

    const/16 v17, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v18

    invoke-virtual/range {v12 .. v18}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 7316
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 7318
    :cond_992
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->cancelWebCoreTouchEvent(IIZ)V

    .line 7319
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->cancelTouch()V

    goto/16 :goto_214

    .line 6816
    :pswitch_data_9a0
    .packed-switch 0x0
        :pswitch_217
        :pswitch_718
        :pswitch_433
        :pswitch_96a
    .end packed-switch

    .line 7190
    :pswitch_data_9ac
    .packed-switch 0x1
        :pswitch_808
        :pswitch_926
        :pswitch_851
        :pswitch_808
        :pswitch_808
        :pswitch_78e
        :pswitch_789
        :pswitch_95d
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    const-wide/16 v6, 0xc8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 7536
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 7537
    .local v0, time:J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_29

    .line 7538
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1c

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->pageDown(Z)Z

    .line 7539
    :cond_1c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_27

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->pageUp(Z)Z

    :cond_27
    move v2, v4

    .line 7615
    :goto_28
    return v2

    .line 7542
    :cond_29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_73

    .line 7543
    iget-boolean v2, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v2, :cond_35

    move v2, v4

    .line 7544
    goto :goto_28

    .line 7546
    :cond_35
    iput-boolean v4, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    .line 7547
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_3d

    move v2, v5

    .line 7548
    goto :goto_28

    .line 7550
    :cond_3d
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_71

    move v2, v4

    :goto_4a
    invoke-direct {p0, v2, v4, v4}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 7551
    iget-wide v2, p0, Landroid/webkit/WebView;->mLastCursorTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-gtz v2, :cond_66

    iget-object v2, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetCursorRingBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    .line 7553
    iget-object v2, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->nativeSelectBestAt(Landroid/graphics/Rect;)V

    .line 7560
    :cond_66
    invoke-virtual {p0}, Landroid/webkit/WebView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-virtual {p0}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    :cond_6f
    move v2, v5

    .line 7561
    goto :goto_28

    :cond_71
    move v2, v5

    .line 7550
    goto :goto_4a

    .line 7563
    :cond_73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_9f

    .line 7565
    iget-object v2, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x72

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 7566
    iput-boolean v5, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    .line 7567
    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballUpTime:J

    .line 7568
    iget-boolean v2, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v2, :cond_9d

    .line 7569
    iget-boolean v2, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    if-eqz v2, :cond_94

    .line 7570
    invoke-virtual {p0}, Landroid/webkit/WebView;->copySelection()Z

    .line 7571
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    :goto_92
    move v2, v4

    .line 7577
    goto :goto_28

    .line 7573
    :cond_94
    iput-boolean v4, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 7574
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSetExtendSelection()V

    .line 7575
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_92

    :cond_9d
    move v2, v5

    .line 7584
    goto :goto_28

    .line 7586
    :cond_9f
    iget-boolean v2, p0, Landroid/webkit/WebView;->mMapTrackballToArrowKeys:Z

    if-eqz v2, :cond_a9

    iget-boolean v2, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    if-nez v2, :cond_a9

    move v2, v5

    .line 7588
    goto :goto_28

    .line 7590
    :cond_a9
    iget-boolean v2, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    if-eqz v2, :cond_b0

    move v2, v4

    .line 7592
    goto/16 :goto_28

    .line 7594
    :cond_b0
    iget-wide v2, p0, Landroid/webkit/WebView;->mTrackballUpTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-gez v2, :cond_bb

    move v2, v4

    .line 7596
    goto/16 :goto_28

    .line 7599
    :cond_bb
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 7600
    iget-wide v2, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_cc

    .line 7605
    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballFirstTime:J

    .line 7606
    iput v5, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    iput v5, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    .line 7608
    :cond_cc
    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    .line 7612
    iget v2, p0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 7613
    iget v2, p0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    .line 7614
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->doTrackball(J)V

    move v2, v4

    .line 7615
    goto/16 :goto_28
.end method

.method public onWindowFocusChanged(Z)V
    .registers 7
    .parameter "hasWindowFocus"

    .prologue
    const/16 v4, 0x8d

    const/4 v3, 0x0

    .line 5514
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->setActive(Z)V

    .line 5515
    if-eqz p1, :cond_2e

    .line 5516
    invoke-static {p0}, Landroid/webkit/JWebCoreJavaBridge;->setActiveWebView(Landroid/webkit/WebView;)V

    .line 5522
    :goto_b
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget-boolean v1, v1, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-ne v0, v1, :cond_17

    .line 5523
    iget-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v0}, Landroid/webkit/WebMagnifier;->hide()V

    .line 5525
    :cond_17
    iget-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_2a

    .line 5527
    if-nez p1, :cond_32

    .line 5530
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5541
    :cond_2a
    :goto_2a
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onWindowFocusChanged(Z)V

    .line 5542
    return-void

    .line 5518
    :cond_2e
    invoke-static {p0}, Landroid/webkit/JWebCoreJavaBridge;->removeActiveWebView(Landroid/webkit/WebView;)V

    goto :goto_b

    .line 5533
    :cond_32
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2a
.end method

.method public overlayHorizontalScrollbar()Z
    .registers 2

    .prologue
    .line 1716
    iget-boolean v0, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .registers 2

    .prologue
    .line 1724
    iget-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    return v0
.end method

.method public pageDown(Z)Z
    .registers 8
    .parameter "bottom"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2405
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_8

    move v2, v4

    .line 2421
    :goto_7
    return v2

    .line 2408
    :cond_8
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeClearCursor()V

    .line 2409
    if-eqz p1, :cond_18

    .line 2410
    iget v2, p0, Landroid/view/View;->mScrollX:I

    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v3

    invoke-direct {p0, v2, v3, v5, v4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v2

    goto :goto_7

    .line 2413
    :cond_18
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 2415
    .local v0, h:I
    const/16 v2, 0x30

    if-le v0, v2, :cond_33

    .line 2416
    const/16 v2, 0x18

    sub-int v1, v0, v2

    .line 2420
    .local v1, y:I
    :goto_24
    iput-boolean v5, p0, Landroid/webkit/WebView;->mUserScroll:Z

    .line 2421
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-direct {p0, v4, v1, v5, v4}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v2

    goto :goto_7

    .line 2418
    .end local v1           #y:I
    :cond_33
    div-int/lit8 v1, v0, 0x2

    .restart local v1       #y:I
    goto :goto_24

    .line 2421
    :cond_36
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->extendScroll(I)Z

    move-result v2

    goto :goto_7
.end method

.method public pageUp(Z)Z
    .registers 7
    .parameter "top"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2378
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_8

    move v2, v3

    .line 2395
    :goto_7
    return v2

    .line 2381
    :cond_8
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeClearCursor()V

    .line 2382
    if-eqz p1, :cond_14

    .line 2384
    iget v2, p0, Landroid/view/View;->mScrollX:I

    invoke-direct {p0, v2, v3, v4, v3}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v2

    goto :goto_7

    .line 2387
    :cond_14
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 2389
    .local v0, h:I
    const/16 v2, 0x30

    if-le v0, v2, :cond_2e

    .line 2390
    neg-int v2, v0

    add-int/lit8 v1, v2, 0x18

    .line 2394
    .local v1, y:I
    :goto_1f
    iput-boolean v4, p0, Landroid/webkit/WebView;->mUserScroll:Z

    .line 2395
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-direct {p0, v3, v1, v4, v3}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v2

    goto :goto_7

    .line 2392
    .end local v1           #y:I
    :cond_2e
    neg-int v2, v0

    div-int/lit8 v1, v2, 0x2

    .restart local v1       #y:I
    goto :goto_1f

    .line 2395
    :cond_32
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->extendScroll(I)Z

    move-result v2

    goto :goto_7
.end method

.method passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V
    .registers 9
    .parameter "currentText"
    .parameter "event"

    .prologue
    const/16 v5, 0x80

    .line 9014
    new-instance v0, Landroid/webkit/WebViewCore$JSKeyData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$JSKeyData;-><init>()V

    .line 9015
    .local v0, arg:Landroid/webkit/WebViewCore$JSKeyData;
    iput-object p2, v0, Landroid/webkit/WebViewCore$JSKeyData;->mEvent:Landroid/view/KeyEvent;

    .line 9016
    iput-object p1, v0, Landroid/webkit/WebViewCore$JSKeyData;->mCurrentText:Ljava/lang/String;

    .line 9018
    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 9019
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x73

    iget v3, p0, Landroid/webkit/WebView;->mTextGeneration:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 9024
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v5}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 9025
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {p0}, Landroid/webkit/WebView;->cursorData()Landroid/webkit/WebViewCore$CursorData;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/webkit/WebViewCore;->sendMessageDelayed(ILjava/lang/Object;J)V

    .line 9027
    return-void
.end method

.method public pauseTimers()V
    .registers 3

    .prologue
    .line 3464
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3465
    return-void
.end method

.method public performLongClick()Z
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4400
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_a

    move v3, v5

    .line 4438
    :goto_9
    return v3

    .line 4401
    :cond_a
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_27

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 4403
    invoke-virtual {p0}, Landroid/webkit/WebView;->centerKeyPressOnTextField()V

    .line 4404
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 4408
    :goto_1a
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 4409
    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v3}, Landroid/webkit/WebTextView;->performLongClick()Z

    move-result v3

    goto :goto_9

    .line 4406
    :cond_27
    invoke-virtual {p0, v6}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    goto :goto_1a

    .line 4414
    :cond_2b
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->performLongClick()Z

    move-result v3

    if-eqz v3, :cond_33

    move v3, v6

    .line 4415
    goto :goto_9

    .line 4420
    :cond_33
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v3

    if-eqz v3, :cond_3f

    move v3, v5

    goto :goto_9

    .line 4427
    :cond_3f
    iget-boolean v3, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_45

    move v3, v5

    goto :goto_9

    .line 4428
    :cond_45
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v3, v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v1

    .line 4429
    .local v1, x:I
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v3, v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v2

    .line 4430
    .local v2, y:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->setUpSelect()V

    .line 4431
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_74

    invoke-direct {p0, v1, v2}, Landroid/webkit/WebView;->nativeWordSelection(II)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 4432
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSetExtendSelection()V

    .line 4433
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 4434
    .local v0, client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_72

    invoke-virtual {v0, p0}, Landroid/webkit/WebChromeClient;->onSelectionStart(Landroid/webkit/WebView;)V

    :cond_72
    move v3, v6

    .line 4435
    goto :goto_9

    .line 4437
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    :cond_74
    invoke-virtual {p0}, Landroid/webkit/WebView;->notifySelectDialogDismissed()V

    move v3, v5

    .line 4438
    goto :goto_9
.end method

.method public postInvalidateDelayed(J)V
    .registers 4
    .parameter "delayMilliseconds"

    .prologue
    .line 11230
    invoke-direct {p0}, Landroid/webkit/WebView;->skipInvalidates()Z

    move-result v0

    if-nez v0, :cond_9

    .line 11231
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->postInvalidateDelayed(J)V

    .line 11234
    :cond_9
    return-void
.end method

.method public postInvalidateDelayed(JIIII)V
    .registers 8
    .parameter "delayMilliseconds"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 11239
    invoke-direct {p0}, Landroid/webkit/WebView;->skipInvalidates()Z

    move-result v0

    if-nez v0, :cond_9

    .line 11240
    invoke-super/range {p0 .. p6}, Landroid/widget/AbsoluteLayout;->postInvalidateDelayed(JIIII)V

    .line 11243
    :cond_9
    return-void
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .registers 6
    .parameter "url"
    .parameter "postData"

    .prologue
    .line 2190
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2191
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 2192
    new-instance v0, Landroid/webkit/WebViewCore$PostUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$PostUrlData;-><init>()V

    .line 2193
    .local v0, arg:Landroid/webkit/WebViewCore$PostUrlData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$PostUrlData;->mUrl:Ljava/lang/String;

    .line 2194
    iput-object p2, v0, Landroid/webkit/WebViewCore$PostUrlData;->mPostData:[B

    .line 2195
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x84

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2196
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 2198
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissWebSelectDialog()V

    .line 2202
    .end local v0           #arg:Landroid/webkit/WebViewCore$PostUrlData;
    :goto_1f
    return-void

    .line 2200
    :cond_20
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method rebuildWebTextView()V
    .registers 16

    .prologue
    const/4 v14, 0x0

    .line 4851
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v9

    if-nez v9, :cond_14

    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    if-eqz v9, :cond_13

    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v9}, Landroid/webkit/WebTextView;->hasFocus()Z

    move-result v9

    if-nez v9, :cond_14

    .line 4933
    :cond_13
    :goto_13
    return-void

    .line 4854
    :cond_14
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    .line 4857
    .local v0, alreadyThere:Z
    iget v9, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v9, :cond_28

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsTextInput()Z

    move-result v9

    if-eqz v9, :cond_28

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsReadonlyTextInput()Z

    move-result v9

    if-eqz v9, :cond_30

    .line 4858
    :cond_28
    if-eqz v0, :cond_13

    .line 4859
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v9}, Landroid/webkit/WebTextView;->remove()V

    goto :goto_13

    .line 4865
    :cond_30
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    if-nez v9, :cond_3f

    .line 4866
    new-instance v9, Landroid/webkit/WebTextView;

    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10, p0}, Landroid/webkit/WebTextView;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    .line 4868
    iput v14, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 4870
    :cond_3f
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateTextSize()I

    move-result v10

    invoke-virtual {p0, v10}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v14, v10}, Landroid/webkit/WebTextView;->setTextSize(IF)V

    .line 4872
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 4873
    .local v8, visibleRect:Landroid/graphics/Rect;
    invoke-direct {p0, v8}, Landroid/webkit/WebView;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    .line 4876
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateNodeBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 4877
    .local v1, bounds:Landroid/graphics/Rect;
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 4878
    .local v7, vBox:Landroid/graphics/Rect;
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v10, v7, Landroid/graphics/Rect;->left:I

    iget v11, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/webkit/WebTextView;->setRect(IIII)V

    .line 4879
    invoke-static {v1, v8}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v9

    if-nez v9, :cond_79

    .line 4880
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v9}, Landroid/webkit/WebTextView;->bringIntoView()V

    .line 4882
    :cond_79
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateText()Ljava/lang/String;

    move-result-object v6

    .line 4883
    .local v6, text:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeFocusCandidatePointer()I

    move-result v4

    .line 4885
    .local v4, nodePointer:I
    iput v4, p0, Landroid/webkit/WebView;->mFocusedNodePointer:I

    .line 4886
    if-eqz v0, :cond_b3

    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v9, v4}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v9

    if-eqz v9, :cond_b3

    .line 4894
    if-eqz v6, :cond_ac

    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v9}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_ac

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeTextGeneration()I

    move-result v9

    iget v10, p0, Landroid/webkit/WebView;->mTextGeneration:I

    if-ne v9, v10, :cond_ac

    .line 4896
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v9, v6}, Landroid/webkit/WebTextView;->setTextAndKeepSelection(Ljava/lang/String;)V

    .line 4932
    :cond_ac
    :goto_ac
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v9}, Landroid/webkit/WebTextView;->requestFocus()Z

    goto/16 :goto_13

    .line 4899
    :cond_b3
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsRtlText()Z

    move-result v10

    if-eqz v10, :cond_118

    const/4 v10, 0x5

    :goto_bc
    invoke-virtual {v9, v10}, Landroid/webkit/WebTextView;->setGravity(I)V

    .line 4903
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v9, v4}, Landroid/webkit/WebTextView;->setNodePointer(I)V

    .line 4905
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeFocusCandidateName()Ljava/lang/String;

    move-result-object v3

    .line 4906
    .local v3, name:Ljava/lang/String;
    iput-object v3, p0, Landroid/webkit/WebView;->mFocusedNodeName:Ljava/lang/String;

    .line 4907
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v9, v3}, Landroid/webkit/WebTextView;->setNodeName(Ljava/lang/String;)V

    .line 4909
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateType()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/webkit/WebTextView;->setType(I)V

    .line 4910
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidatePaddingRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 4911
    .local v5, paddingRect:Landroid/graphics/Rect;
    if-eqz v5, :cond_fb

    .line 4914
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v10, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v10}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v10

    iget v11, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v11}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v11

    iget v12, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v12}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v12

    iget v13, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v13}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/webkit/WebTextView;->setPadding(IIII)V

    .line 4920
    :cond_fb
    if-nez v6, :cond_ff

    .line 4924
    const-string v6, ""

    .line 4926
    :cond_ff
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v9, v6}, Landroid/webkit/WebTextView;->setTextAndKeepSelection(Ljava/lang/String;)V

    .line 4927
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 4928
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_ac

    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v2, v9}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_ac

    .line 4929
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v2, v9}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    goto :goto_ac

    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #paddingRect:Landroid/graphics/Rect;
    :cond_118
    move v10, v14

    .line 4899
    goto :goto_bc
.end method

.method public reduceWebViewPriority()V
    .registers 2

    .prologue
    .line 4513
    invoke-static {}, Landroid/webkit/WebViewCore;->reducePriority()V

    .line 4514
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 4515
    return-void
.end method

.method public refreshPlugins(Z)V
    .registers 2
    .parameter "reloadOpenPages"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4191
    return-void
.end method

.method public reload()V
    .registers 3

    .prologue
    .line 2273
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 2275
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissWebSelectDialog()V

    .line 2276
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 2277
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2278
    return-void
.end method

.method public removePackageName(Ljava/lang/String;)V
    .registers 4
    .parameter "packageName"

    .prologue
    .line 4173
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xba

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4174
    return-void
.end method

.method replaceTextfieldText(IILjava/lang/String;II)V
    .registers 9
    .parameter "oldStart"
    .parameter "oldEnd"
    .parameter "replace"
    .parameter "newStart"
    .parameter "newEnd"

    .prologue
    .line 9004
    new-instance v0, Landroid/webkit/WebViewCore$ReplaceTextData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$ReplaceTextData;-><init>()V

    .line 9005
    .local v0, arg:Landroid/webkit/WebViewCore$ReplaceTextData;
    iput-object p3, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mReplace:Ljava/lang/String;

    .line 9006
    iput p4, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewStart:I

    .line 9007
    iput p5, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewEnd:I

    .line 9008
    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 9009
    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    iput v1, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mTextGeneration:I

    .line 9010
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x72

    invoke-virtual {v1, v2, p1, p2, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 9011
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 24
    .parameter "child"
    .parameter "rect"
    .parameter "immediate"

    .prologue
    .line 8886
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v17

    sub-int v16, v16, v17

    move-object/from16 v0, p2

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 8889
    new-instance v5, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v15, v0

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getVerticalScrollbarWidth()I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v18

    move-object v0, v5

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 8894
    .local v5, content:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->nativeSubtractLayers(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    .line 8895
    iget v15, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v11

    .line 8896
    .local v11, screenTop:I
    iget v15, v5, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v8

    .line 8897
    .local v8, screenBottom:I
    sub-int v6, v8, v11

    .line 8898
    .local v6, height:I
    const/4 v13, 0x0

    .line 8900
    .local v13, scrollYDelta:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    if-le v15, v8, :cond_f7

    .line 8901
    div-int/lit8 v7, v6, 0x3

    .line 8902
    .local v7, oneThirdOfScreenHeight:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v15

    mul-int/lit8 v16, v7, 0x2

    move v0, v15

    move/from16 v1, v16

    if-le v0, v1, :cond_ed

    .line 8905
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    sub-int v13, v15, v11

    .line 8915
    .end local v7           #oneThirdOfScreenHeight:I
    :cond_a8
    :goto_a8
    iget v15, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v9

    .line 8916
    .local v9, screenLeft:I
    iget v15, v5, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v10

    .line 8917
    .local v10, screenRight:I
    sub-int v14, v10, v9

    .line 8918
    .local v14, width:I
    const/4 v12, 0x0

    .line 8920
    .local v12, scrollXDelta:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    if-le v15, v10, :cond_10e

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    if-le v15, v9, :cond_10e

    .line 8921
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v15

    if-le v15, v14, :cond_106

    .line 8922
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    sub-int/2addr v15, v9

    add-int/2addr v12, v15

    .line 8930
    :cond_d8
    :goto_d8
    or-int v15, v13, v12

    if-eqz v15, :cond_120

    .line 8931
    if-nez p3, :cond_11e

    const/4 v15, 0x1

    :goto_df
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v15

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v15

    .line 8934
    :goto_ec
    return v15

    .line 8909
    .end local v9           #screenLeft:I
    .end local v10           #screenRight:I
    .end local v12           #scrollXDelta:I
    .end local v14           #width:I
    .restart local v7       #oneThirdOfScreenHeight:I
    :cond_ed
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    add-int v16, v11, v7

    sub-int v13, v15, v16

    goto :goto_a8

    .line 8911
    .end local v7           #oneThirdOfScreenHeight:I
    :cond_f7
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    if-ge v15, v11, :cond_a8

    .line 8912
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    sub-int v13, v15, v11

    goto :goto_a8

    .line 8924
    .restart local v9       #screenLeft:I
    .restart local v10       #screenRight:I
    .restart local v12       #scrollXDelta:I
    .restart local v14       #width:I
    :cond_106
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    sub-int/2addr v15, v10

    add-int/2addr v12, v15

    goto :goto_d8

    .line 8926
    :cond_10e
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    if-ge v15, v9, :cond_d8

    .line 8927
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    sub-int v15, v9, v15

    sub-int/2addr v12, v15

    goto :goto_d8

    .line 8931
    :cond_11e
    const/4 v15, 0x0

    goto :goto_df

    .line 8934
    :cond_120
    const/4 v15, 0x0

    goto :goto_ec
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .registers 11
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v2, 0x1

    .line 8799
    const/4 v6, 0x0

    .line 8800
    .local v6, result:Z
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 8801
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebTextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v6

    :cond_e
    :goto_e
    move v7, v6

    .line 8831
    .end local v6           #result:Z
    .local v7, result:Z
    :goto_f
    return v7

    .line 8804
    .end local v7           #result:Z
    .restart local v6       #result:Z
    :cond_10
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v6

    .line 8805
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getNeedInitialFocus()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 8809
    const/4 v1, 0x0

    .line 8810
    .local v1, fakeKeyDirection:I
    sparse-switch p1, :sswitch_data_44

    move v7, v6

    .line 8824
    .end local v6           #result:Z
    .restart local v7       #result:Z
    goto :goto_f

    .line 8812
    .end local v7           #result:Z
    .restart local v6       #result:Z
    :sswitch_26
    const/16 v1, 0x13

    .line 8826
    :goto_28
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_e

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v0

    if-nez v0, :cond_e

    .line 8827
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    goto :goto_e

    .line 8815
    :sswitch_3a
    const/16 v1, 0x14

    .line 8816
    goto :goto_28

    .line 8818
    :sswitch_3d
    const/16 v1, 0x15

    .line 8819
    goto :goto_28

    .line 8821
    :sswitch_40
    const/16 v1, 0x16

    .line 8822
    goto :goto_28

    .line 8810
    nop

    :sswitch_data_44
    .sparse-switch
        0x11 -> :sswitch_3d
        0x21 -> :sswitch_26
        0x42 -> :sswitch_40
        0x82 -> :sswitch_3a
    .end sparse-switch
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .registers 6
    .parameter "hrefMsg"

    .prologue
    .line 2629
    if-eqz p1, :cond_6

    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_7

    .line 2637
    :cond_6
    :goto_6
    return-void

    .line 2632
    :cond_7
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsAnchor()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2633
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x89

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_6
.end method

.method requestFormData(Ljava/lang/String;I)V
    .registers 8
    .parameter "name"
    .parameter "nodePointer"

    .prologue
    .line 4944
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v3}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getSaveFormData()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 4945
    iget-object v3, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4946
    .local v1, update:Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 4947
    new-instance v2, Landroid/webkit/WebView$RequestFormData;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3, v1}, Landroid/webkit/WebView$RequestFormData;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 4949
    .local v2, updater:Landroid/webkit/WebView$RequestFormData;
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4950
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4952
    .end local v0           #t:Ljava/lang/Thread;
    .end local v1           #update:Landroid/os/Message;
    .end local v2           #updater:Landroid/webkit/WebView$RequestFormData;
    :cond_26
    return-void
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    .line 2647
    iget v4, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v4, :cond_5

    .line 2655
    :goto_4
    return-void

    .line 2648
    :cond_5
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v4, v4

    iget v5, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 2649
    .local v0, contentX:I
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v4, v4

    iget v5, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 2650
    .local v1, contentY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->nativeImageURI(II)Ljava/lang/String;

    move-result-object v3

    .line 2651
    .local v3, ref:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 2652
    .local v2, data:Landroid/os/Bundle;
    const-string/jumbo v4, "url"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2653
    invoke-virtual {p1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2654
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4
.end method

.method requestLabel(II)V
    .registers 5
    .parameter "framePointer"
    .parameter "nodePointer"

    .prologue
    .line 4961
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x61

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 4963
    return-void
.end method

.method requestListBox([Ljava/lang/String;[IILjava/lang/String;I)V
    .registers 14
    .parameter "array"
    .parameter "enabledArray"
    .parameter "selection"
    .parameter "name"
    .parameter "pointer"

    .prologue
    .line 10326
    iput p5, p0, Landroid/webkit/WebView;->mFocusedNodePointer:I

    .line 10327
    iput-object p4, p0, Landroid/webkit/WebView;->mFocusedNodeName:Ljava/lang/String;

    .line 10328
    invoke-virtual {p0, p4, p5}, Landroid/webkit/WebView;->nativeInputFieldAction(Ljava/lang/String;I)I

    move-result v5

    .line 10336
    .local v5, action:I
    iget-object v7, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v0, Landroid/webkit/WebView$InvokeListBox;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebView$InvokeListBox;-><init>(Landroid/webkit/WebView;[Ljava/lang/String;[IIILandroid/webkit/WebView$1;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10338
    return-void
.end method

.method requestListBox([Ljava/lang/String;[I[ILjava/lang/String;I)V
    .registers 14
    .parameter "array"
    .parameter "enabledArray"
    .parameter "selectedArray"
    .parameter "name"
    .parameter "pointer"

    .prologue
    .line 10268
    iput p5, p0, Landroid/webkit/WebView;->mFocusedNodePointer:I

    .line 10269
    iput-object p4, p0, Landroid/webkit/WebView;->mFocusedNodeName:Ljava/lang/String;

    .line 10270
    invoke-virtual {p0, p4, p5}, Landroid/webkit/WebView;->nativeInputFieldAction(Ljava/lang/String;I)I

    move-result v5

    .line 10277
    .local v5, action:I
    iget-object v7, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v0, Landroid/webkit/WebView$InvokeListBox;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebView$InvokeListBox;-><init>(Landroid/webkit/WebView;[Ljava/lang/String;[I[IILandroid/webkit/WebView$1;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10279
    return-void
.end method

.method resetTrackballTime()V
    .registers 3

    .prologue
    .line 7531
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    .line 7532
    return-void
.end method

.method public restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .registers 8
    .parameter "b"
    .parameter "src"

    .prologue
    const/4 v4, 0x0

    .line 2054
    if-eqz p2, :cond_5

    if-nez p1, :cond_7

    :cond_5
    move v3, v4

    .line 2088
    :goto_6
    return v3

    .line 2057
    :cond_7
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_f

    move v3, v4

    .line 2058
    goto :goto_6

    .line 2061
    :cond_f
    :try_start_f
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2062
    .local v2, in:Ljava/io/FileInputStream;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 2063
    .local v0, copy:Landroid/os/Bundle;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Landroid/webkit/WebView$8;

    invoke-direct {v4, p0, v2, v0}, Landroid/webkit/WebView$8;-><init>(Landroid/webkit/WebView;Ljava/io/FileInputStream;Landroid/os/Bundle;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_26} :catch_28

    .line 2088
    .end local v0           #copy:Landroid/os/Bundle;
    .end local v2           #in:Ljava/io/FileInputStream;
    :goto_26
    const/4 v3, 0x1

    goto :goto_6

    .line 2085
    :catch_28
    move-exception v3

    move-object v1, v3

    .line 2086
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_26
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .registers 14
    .parameter "inState"

    .prologue
    const/4 v9, 0x0

    const-string v11, "index"

    const-string v10, "history"

    .line 2106
    const/4 v6, 0x0

    .line 2107
    .local v6, returnList:Landroid/webkit/WebBackForwardList;
    if-nez p1, :cond_a

    move-object v8, v6

    .line 2149
    :goto_9
    return-object v8

    .line 2110
    :cond_a
    const-string v8, "index"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_74

    const-string v8, "history"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_74

    .line 2111
    const-string v8, "certificate"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v8}, Landroid/net/http/SslCertificate;->restoreState(Landroid/os/Bundle;)Landroid/net/http/SslCertificate;

    move-result-object v8

    iput-object v8, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    .line 2114
    iget-object v8, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v8}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    .line 2115
    .local v5, list:Landroid/webkit/WebBackForwardList;
    const-string v8, "index"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 2119
    .local v3, index:I
    monitor-enter v5

    .line 2120
    :try_start_33
    const-string v8, "history"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2122
    .local v1, history:Ljava/util/List;,"Ljava/util/List<[B>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    .line 2125
    .local v7, size:I
    if-ltz v3, :cond_43

    if-lt v3, v7, :cond_46

    .line 2126
    :cond_43
    monitor-exit v5

    move-object v8, v9

    goto :goto_9

    .line 2128
    :cond_46
    const/4 v2, 0x0

    .local v2, i:I
    :goto_47
    if-ge v2, v7, :cond_60

    .line 2129
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 2130
    .local v0, data:[B
    if-nez v0, :cond_55

    .line 2133
    monitor-exit v5

    move-object v8, v9

    goto :goto_9

    .line 2135
    :cond_55
    new-instance v4, Landroid/webkit/WebHistoryItem;

    invoke-direct {v4, v0}, Landroid/webkit/WebHistoryItem;-><init>([B)V

    .line 2136
    .local v4, item:Landroid/webkit/WebHistoryItem;
    invoke-virtual {v5, v4}, Landroid/webkit/WebBackForwardList;->addHistoryItem(Landroid/webkit/WebHistoryItem;)V

    .line 2128
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 2139
    .end local v0           #data:[B
    .end local v4           #item:Landroid/webkit/WebHistoryItem;
    :cond_60
    invoke-virtual {p0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v6

    .line 2141
    invoke-virtual {v6, v3}, Landroid/webkit/WebBackForwardList;->setCurrentIndex(I)V

    .line 2142
    monitor-exit v5
    :try_end_68
    .catchall {:try_start_33 .. :try_end_68} :catchall_76

    .line 2145
    iget-object v8, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v8}, Landroid/webkit/WebViewCore;->removeMessages()V

    .line 2147
    iget-object v8, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v9, 0x6c

    invoke-virtual {v8, v9, v3}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .end local v1           #history:Ljava/util/List;,"Ljava/util/List<[B>;"
    .end local v2           #i:I
    .end local v3           #index:I
    .end local v5           #list:Landroid/webkit/WebBackForwardList;
    .end local v7           #size:I
    :cond_74
    move-object v8, v6

    .line 2149
    goto :goto_9

    .line 2142
    .restart local v3       #index:I
    .restart local v5       #list:Landroid/webkit/WebBackForwardList;
    :catchall_76
    move-exception v8

    :try_start_77
    monitor-exit v5
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw v8
.end method

.method public resumeTimers()V
    .registers 3

    .prologue
    .line 3472
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3473
    return-void
.end method

.method public resumeWebViewPriority()V
    .registers 2

    .prologue
    .line 4519
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 4520
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 4521
    return-void
.end method

.method public saveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "strUrl"
    .parameter "strPath"

    .prologue
    .line 5935
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewCore;->saveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "host"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 1804
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    return-void
.end method

.method public savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .registers 7
    .parameter "b"
    .parameter "dest"

    .prologue
    .line 1987
    if-eqz p2, :cond_4

    if-nez p1, :cond_6

    .line 1988
    :cond_4
    const/4 v2, 0x0

    .line 2023
    :goto_5
    return v2

    .line 1990
    :cond_6
    invoke-virtual {p0}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    .line 1993
    .local v0, p:Landroid/graphics/Picture;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".writing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1994
    .local v1, temp:Ljava/io/File;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Landroid/webkit/WebView$7;

    invoke-direct {v3, p0, v1, v0, p2}, Landroid/webkit/WebView$7;-><init>(Landroid/webkit/WebView;Ljava/io/File;Landroid/graphics/Picture;Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 2018
    const-string/jumbo v2, "scrollX"

    iget v3, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2019
    const-string/jumbo v2, "scrollY"

    iget v3, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2020
    const-string/jumbo v2, "scale"

    iget v3, p0, Landroid/webkit/WebView;->mActualScale:F

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2021
    const-string/jumbo v2, "textwrapScale"

    iget v3, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2022
    const-string/jumbo v2, "overview"

    iget-boolean v3, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2023
    const/4 v2, 0x1

    goto :goto_5
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .registers 12
    .parameter "outState"

    .prologue
    const/4 v9, 0x0

    .line 1935
    if-nez p1, :cond_5

    move-object v7, v9

    .line 1975
    :goto_4
    return-object v7

    .line 1940
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    .line 1941
    .local v5, list:Landroid/webkit/WebBackForwardList;
    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0

    .line 1942
    .local v0, currentIndex:I
    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v6

    .line 1945
    .local v6, size:I
    if-ltz v0, :cond_17

    if-ge v0, v6, :cond_17

    if-nez v6, :cond_19

    :cond_17
    move-object v7, v9

    .line 1946
    goto :goto_4

    .line 1948
    :cond_19
    const-string v7, "index"

    invoke-virtual {p1, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1952
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1953
    .local v2, history:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_24
    if-ge v3, v6, :cond_45

    .line 1954
    invoke-virtual {v5, v3}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v4

    .line 1955
    .local v4, item:Landroid/webkit/WebHistoryItem;
    if-nez v4, :cond_37

    .line 1958
    const-string/jumbo v7, "webview"

    const-string/jumbo v8, "saveState: Unexpected null history item."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v9

    .line 1959
    goto :goto_4

    .line 1961
    :cond_37
    invoke-virtual {v4}, Landroid/webkit/WebHistoryItem;->getFlattenedData()[B

    move-result-object v1

    .line 1962
    .local v1, data:[B
    if-nez v1, :cond_3f

    move-object v7, v9

    .line 1966
    goto :goto_4

    .line 1968
    :cond_3f
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1953
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 1970
    .end local v1           #data:[B
    .end local v4           #item:Landroid/webkit/WebHistoryItem;
    :cond_45
    const-string v7, "history"

    invoke-virtual {p1, v7, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1971
    iget-object v7, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    if-eqz v7, :cond_59

    .line 1972
    const-string v7, "certificate"

    iget-object v8, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    invoke-static {v8}, Landroid/net/http/SslCertificate;->saveState(Landroid/net/http/SslCertificate;)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_59
    move-object v7, v5

    .line 1975
    goto :goto_4
.end method

.method public scaleAllPlugins()V
    .registers 2

    .prologue
    .line 6566
    iget-object v0, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v0}, Landroid/webkit/ViewManager;->scaleAll()V

    .line 6567
    return-void
.end method

.method scrollFocusedTextInput(FI)V
    .registers 7
    .parameter "xPercent"
    .parameter "y"

    .prologue
    .line 8101
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_b

    .line 8110
    :cond_a
    :goto_a
    return-void

    .line 8104
    :cond_b
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x63

    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v2

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(IILjava/lang/Object;)V

    goto :goto_a
.end method

.method public scrollTo(II)V
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 11247
    invoke-direct {p0}, Landroid/webkit/WebView;->skipInvalidates()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 11253
    iget v2, p0, Landroid/view/View;->mScrollX:I

    if-ne v2, p1, :cond_e

    iget v2, p0, Landroid/view/View;->mScrollY:I

    if-eq v2, p2, :cond_1d

    .line 11254
    :cond_e
    iget v0, p0, Landroid/view/View;->mScrollX:I

    .line 11255
    .local v0, oldX:I
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 11256
    .local v1, oldY:I
    iput p1, p0, Landroid/view/View;->mScrollX:I

    .line 11257
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 11258
    iget v2, p0, Landroid/view/View;->mScrollX:I

    iget v3, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 11268
    .end local v0           #oldX:I
    .end local v1           #oldY:I
    :cond_1d
    :goto_1d
    return-void

    .line 11265
    :cond_1e
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "old scrollTo"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11266
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->scrollTo(II)V

    goto :goto_1d
.end method

.method public selectAll()V
    .registers 2

    .prologue
    .line 5345
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_5

    .line 5352
    :cond_4
    :goto_4
    return-void

    .line 5346
    :cond_5
    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5347
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v0, :cond_12

    invoke-virtual {p0}, Landroid/webkit/WebView;->setUpSelect()V

    .line 5348
    :cond_12
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSelectAll()V

    .line 5349
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    .line 5350
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 5351
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_4
.end method

.method public selectDialogIsUp()Z
    .registers 2

    .prologue
    .line 5358
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    return v0
.end method

.method public selectionDone()V
    .registers 3

    .prologue
    .line 5373
    iget-boolean v1, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v1, :cond_13

    .line 5374
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 5375
    .local v0, client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_d

    invoke-virtual {v0, p0}, Landroid/webkit/WebChromeClient;->onSelectionDone(Landroid/webkit/WebView;)V

    .line 5376
    :cond_d
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 5377
    invoke-virtual {p0}, Landroid/webkit/WebView;->notifySelectDialogDismissed()V

    .line 5379
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    :cond_13
    return-void
.end method

.method public sendPluginUpdate(Landroid/webkit/WebView$PluginUpdateData;)V
    .registers 4
    .parameter "data"

    .prologue
    .line 6398
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xd5

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 6399
    return-void
.end method

.method public sendTextSelectionMoveEvent()V
    .registers 6

    .prologue
    .line 1355
    iget-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_16

    .line 1356
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x8d

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1363
    :cond_16
    return-void
.end method

.method public setAutoTextSelection(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 1305
    iput-boolean p1, p0, Landroid/webkit/WebView;->mAutoSelection:Z

    .line 1306
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 4
    .parameter "color"

    .prologue
    .line 10514
    iput p1, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    .line 10515
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x7e

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .line 10516
    return-void
.end method

.method public setCaretForEdit(Z)V
    .registers 6
    .parameter "active"

    .prologue
    const/16 v1, 0x8e

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5581
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_13

    .line 5590
    :cond_12
    :goto_12
    return-void

    .line 5583
    :cond_13
    if-eqz p1, :cond_1b

    .line 5584
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v1, v3, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_12

    .line 5586
    :cond_1b
    iput-boolean v2, p0, Landroid/webkit/WebView;->isSelectionset:Z

    .line 5587
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v1, v2, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 5588
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x20b

    invoke-virtual {v0, v1, v3, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_12
.end method

.method public setCertificate(Landroid/net/http/SslCertificate;)V
    .registers 2
    .parameter "certificate"

    .prologue
    .line 1789
    iput-object p1, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    .line 1790
    return-void
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 4017
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 4018
    return-void
.end method

.method public setDragTracker(Landroid/webkit/WebView$DragTracker;)V
    .registers 2
    .parameter "tracker"

    .prologue
    .line 6384
    iput-object p1, p0, Landroid/webkit/WebView;->mDragTracker:Landroid/webkit/WebView$DragTracker;

    .line 6385
    return-void
.end method

.method protected setEditable(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    const/16 v2, 0x207

    .line 5840
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_11

    .line 5846
    :cond_10
    :goto_10
    return-void

    .line 5842
    :cond_11
    if-eqz p1, :cond_1a

    .line 5843
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    goto :goto_10

    .line 5845
    :cond_1a
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    goto :goto_10
.end method

.method public setEditableSelection(II)V
    .registers 7
    .parameter "start"
    .parameter "end"

    .prologue
    const-string/jumbo v2, "webview"

    .line 5875
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_12

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_12

    .line 5890
    :goto_11
    return-void

    .line 5876
    :cond_12
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebView;->isSelectionset:Z

    .line 5877
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 5879
    .local v1, sendTwoIntObj:Landroid/graphics/Point;
    monitor-enter v1

    .line 5880
    :try_start_1b
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x1fe

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_27

    .line 5882
    :try_start_22
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_27
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_2a

    .line 5887
    :goto_25
    :try_start_25
    monitor-exit v1

    goto :goto_11

    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_27

    throw v2

    .line 5883
    :catch_2a
    move-exception v0

    .line 5884
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2b
    const-string/jumbo v2, "webview"

    const-string v3, "Caught exception while waiting for setEditableSelection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5885
    const-string/jumbo v2, "webview"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_2b .. :try_end_3d} :catchall_27

    goto :goto_25
.end method

.method public setEmbeddedTitleBar(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 2710
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-ne v0, p1, :cond_6

    .line 2724
    :goto_5
    return-void

    .line 2711
    :cond_6
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2712
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    .line 2714
    :cond_f
    if-eqz p1, :cond_2e

    .line 2715
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2718
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleShadow:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2e

    .line 2719
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108036a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mTitleShadow:Landroid/graphics/drawable/Drawable;

    .line 2723
    :cond_2e
    iput-object p1, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    goto :goto_5
.end method

.method public setFindDialogHeight(I)V
    .registers 2
    .parameter "height"

    .prologue
    .line 3714
    iput p1, p0, Landroid/webkit/WebView;->mFindHeight:I

    .line 3715
    return-void
.end method

.method public setFindIsUp(Z)V
    .registers 5
    .parameter "isUp"

    .prologue
    .line 3603
    iput-boolean p1, p0, Landroid/webkit/WebView;->mFindIsUp:Z

    .line 3604
    if-eqz p1, :cond_f

    .line 3605
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    iget v2, p0, Landroid/webkit/WebView;->mFindHeight:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/webkit/WebView;->recordNewContentSize(IIZ)V

    .line 3608
    :cond_f
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_14

    .line 3610
    :goto_13
    return-void

    .line 3609
    :cond_14
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeSetFindIsUp(Z)V

    goto :goto_13
.end method

.method setFocusControllerInactive()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 5553
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_6

    .line 5555
    :goto_5
    return-void

    .line 5554
    :cond_6
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1, v2, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_5
.end method

.method protected setFrame(IIII)Z
    .registers 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 5984
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->setFrame(IIII)Z

    move-result v0

    .line 5985
    .local v0, changed:Z
    if-nez v0, :cond_d

    iget-boolean v1, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v1, :cond_d

    .line 5992
    invoke-direct {p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    .line 5994
    :cond_d
    return v0
.end method

.method public setHasRotateSupport(Z)V
    .registers 2
    .parameter "has"

    .prologue
    .line 414
    iput-boolean p1, p0, Landroid/webkit/WebView;->mHasRotateSupport:Z

    .line 415
    return-void
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .registers 2
    .parameter "overlay"

    .prologue
    .line 1700
    iput-boolean p1, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    .line 1701
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 1818
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewDatabase;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    return-void
.end method

.method public setIgnoreDoubleTap(Z)V
    .registers 2
    .parameter "ignore"

    .prologue
    .line 402
    iput-boolean p1, p0, Landroid/webkit/WebView;->mIgnoreDoubleTap:Z

    .line 403
    return-void
.end method

.method public setIgnoreFling(Z)V
    .registers 4
    .parameter "ignore"

    .prologue
    .line 420
    iput-boolean p1, p0, Landroid/webkit/WebView;->mIgnoreFling:Z

    .line 421
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIgnoreFling:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    if-eqz v0, :cond_10

    .line 422
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 424
    :cond_10
    return-void
.end method

.method public setIgnoreViewSizeChanged(Z)V
    .registers 2
    .parameter "ignore"

    .prologue
    .line 396
    iput-boolean p1, p0, Landroid/webkit/WebView;->mIgnoreViewSizeChanged:Z

    .line 397
    return-void
.end method

.method public setInitialScale(I)V
    .registers 2
    .parameter "scaleInPercent"

    .prologue
    .line 2505
    iput p1, p0, Landroid/webkit/WebView;->mInitialScaleInPercent:I

    .line 2506
    return-void
.end method

.method public setJsFlags(Ljava/lang/String;)V
    .registers 4
    .parameter "flags"

    .prologue
    .line 1897
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xae

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1898
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .parameter "params"

    .prologue
    .line 4389
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_8

    .line 4390
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mWrapContent:Z

    .line 4392
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4393
    return-void
.end method

.method public setMapTrackballToArrowKeys(Z)V
    .registers 2
    .parameter "setMap"

    .prologue
    .line 7527
    iput-boolean p1, p0, Landroid/webkit/WebView;->mMapTrackballToArrowKeys:Z

    .line 7528
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .registers 6
    .parameter "networkUp"

    .prologue
    const/4 v3, 0x0

    .line 1907
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x77

    if-eqz p1, :cond_c

    const/4 v2, 0x1

    :goto_8
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 1909
    return-void

    :cond_c
    move v2, v3

    .line 1907
    goto :goto_8
.end method

.method public setNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "type"
    .parameter "subtype"

    .prologue
    .line 1916
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1917
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1918
    const-string/jumbo v1, "subtype"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1919
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0xb7

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1920
    return-void
.end method

.method public setOverScrollMode(I)V
    .registers 7
    .parameter "mode"

    .prologue
    const/4 v4, 0x0

    .line 1594
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setOverScrollMode(I)V

    .line 1595
    const/4 v3, 0x2

    if-eq p1, v3, :cond_3e

    .line 1596
    iget-object v3, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-nez v3, :cond_3d

    .line 1597
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1598
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x1080251

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1599
    .local v0, edge:Landroid/graphics/drawable/Drawable;
    const v3, 0x1080252

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1600
    .local v1, glow:Landroid/graphics/drawable/Drawable;
    new-instance v3, Landroid/widget/EdgeGlow;

    invoke-direct {v3, v0, v1}, Landroid/widget/EdgeGlow;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    .line 1601
    new-instance v3, Landroid/widget/EdgeGlow;

    invoke-direct {v3, v0, v1}, Landroid/widget/EdgeGlow;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    .line 1602
    new-instance v3, Landroid/widget/EdgeGlow;

    invoke-direct {v3, v0, v1}, Landroid/widget/EdgeGlow;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    .line 1603
    new-instance v3, Landroid/widget/EdgeGlow;

    invoke-direct {v3, v0, v1}, Landroid/widget/EdgeGlow;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    .line 1611
    .end local v0           #edge:Landroid/graphics/drawable/Drawable;
    .end local v1           #glow:Landroid/graphics/drawable/Drawable;
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_3d
    :goto_3d
    return-void

    .line 1606
    :cond_3e
    iput-object v4, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    .line 1607
    iput-object v4, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    .line 1608
    iput-object v4, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    .line 1609
    iput-object v4, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    goto :goto_3d
.end method

.method public setPictureListener(Landroid/webkit/WebView$PictureListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 4077
    iput-object p1, p0, Landroid/webkit/WebView;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    .line 4078
    return-void
.end method

.method public setPinchZoomListener(Landroid/webkit/OnPinchZoomListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 6393
    iput-object p1, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    .line 6394
    return-void
.end method

.method public setPluginRefreshDelay(I)V
    .registers 2
    .parameter "ms"

    .prologue
    .line 8236
    invoke-static {p1}, Landroid/webkit/WebViewCore;->setPluginRefreshDelay(I)V

    .line 8237
    return-void
.end method

.method public setPreserveZoom(Z)V
    .registers 2
    .parameter "preserveZoom"

    .prologue
    .line 1309
    iput-boolean p1, p0, Landroid/webkit/WebView;->mPreserveZoom:Z

    .line 1310
    return-void
.end method

.method public setPreventDefaultTimeout(I)V
    .registers 2
    .parameter "timeout"

    .prologue
    .line 10550
    iput p1, p0, Landroid/webkit/WebView;->mPreventDefaultTimeout:I

    .line 10551
    return-void
.end method

.method public setScrollAndZoom(FIIFFZ)V
    .registers 15
    .parameter "newScale"
    .parameter "newScrollX"
    .parameter "newScrollY"
    .parameter "zoomCenterX"
    .parameter "zoomCenterY"
    .parameter "updatePlugins"

    .prologue
    .line 6582
    iput p4, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 6583
    iput p5, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 6585
    iget v2, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_c

    .line 6586
    iget p1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 6588
    :cond_c
    iget v2, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_14

    .line 6589
    iget p1, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    .line 6592
    :cond_14
    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    cmpl-float v2, p1, v2

    if-nez v2, :cond_9c

    const/4 v2, 0x1

    move v1, v2

    .line 6593
    .local v1, sameScale:Z
    :goto_1c
    if-nez v1, :cond_21

    .line 6594
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 6596
    :cond_21
    iput p1, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 6598
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    .line 6599
    iget v2, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    float-to-int v2, v2

    iget v3, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mAnchorX:I

    .line 6600
    iget v2, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    float-to-int v2, v2

    iget v3, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mAnchorY:I

    .line 6602
    if-nez v1, :cond_65

    .line 6605
    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v3, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    sub-float/2addr v2, v3

    sget v3, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v2, v2, v3

    if-lez v2, :cond_5b

    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    float-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL

    iget v6, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_a0

    :cond_5b
    const/4 v2, 0x1

    move v0, v2

    .line 6609
    .local v0, reflowNow:Z
    :goto_5d
    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 6613
    .end local v0           #reflowNow:Z
    :cond_65
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v2

    if-eqz v2, :cond_7e

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 6617
    iget-object v2, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 6623
    :cond_7e
    const/16 v2, 0x8

    iput v2, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 6624
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebView;->mConfirmMove:Z

    .line 6625
    iget-wide v2, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    invoke-direct {p0, p4, p5, v2, v3}, Landroid/webkit/WebView;->startTouch(FFJ)V

    .line 6641
    if-eqz p6, :cond_91

    .line 6642
    iget-object v2, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v2}, Landroid/webkit/ViewManager;->endZoom()V

    .line 6645
    :cond_91
    iput p2, p0, Landroid/view/View;->mScrollX:I

    .line 6646
    iput p3, p0, Landroid/view/View;->mScrollY:I

    .line 6648
    invoke-direct {p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    .line 6649
    invoke-direct {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    .line 6650
    return-void

    .line 6592
    .end local v1           #sameScale:Z
    :cond_9c
    const/4 v2, 0x0

    move v1, v2

    goto/16 :goto_1c

    .line 6605
    .restart local v1       #sameScale:Z
    :cond_a0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_5d
.end method

.method public setScrollBarStyle(I)V
    .registers 3
    .parameter "style"

    .prologue
    .line 1686
    const/high16 v0, 0x100

    if-eq p1, v0, :cond_8

    const/high16 v0, 0x300

    if-ne p1, v0, :cond_11

    .line 1688
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    .line 1692
    :goto_d
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setScrollBarStyle(I)V

    .line 1693
    return-void

    .line 1690
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    goto :goto_d
.end method

.method setSelection(II)V
    .registers 5
    .parameter "start"
    .parameter "end"

    .prologue
    .line 4784
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->isSelectionset:Z

    .line 4785
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 4786
    return-void
.end method

.method public setSizeChangedCallback(Ljava/lang/Runnable;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 408
    iput-object p1, p0, Landroid/webkit/WebView;->mSizeChangedCallback:Ljava/lang/Runnable;

    .line 409
    return-void
.end method

.method public setTextSelecitonAt(II)Z
    .registers 7
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    const/4 v3, 0x1

    .line 1260
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v2

    if-ne v2, v3, :cond_22

    iget-boolean v2, p0, Landroid/webkit/WebView;->mAutoSelection:Z

    if-nez v2, :cond_22

    .line 1261
    iget v2, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 1262
    .local v0, contentX:I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v2, p2

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 1263
    .local v1, contentY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->selectClosestWord(II)V

    move v2, v3

    .line 1266
    .end local v0           #contentX:I
    .end local v1           #contentY:I
    :goto_21
    return v2

    :cond_22
    const/4 v2, 0x0

    goto :goto_21
.end method

.method public setTextSelecitonManualAtContentPoint(II)Z
    .registers 11
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 1280
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v0

    if-ne v0, v7, :cond_2f

    iget-boolean v0, p0, Landroid/webkit/WebView;->mAutoSelection:Z

    if-nez v0, :cond_2f

    .line 1281
    invoke-virtual {p0}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 1282
    iget-boolean v3, p0, Landroid/webkit/WebView;->mSmartSelection:Z

    iget v5, p0, Landroid/webkit/WebView;->mActualScale:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v6

    .line 1284
    .local v6, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xd4

    invoke-virtual {v0, v1, v6}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1286
    iput-boolean v4, p0, Landroid/webkit/WebView;->mStopSelection:Z

    .line 1287
    iput-boolean v7, p0, Landroid/webkit/WebView;->mbIsNewWordSelected:Z

    .line 1288
    iput-boolean v4, p0, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    .line 1289
    iput v4, p0, Landroid/webkit/WebView;->mController:I

    move v0, v7

    .line 1295
    .end local v6           #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    :goto_2e
    return v0

    :cond_2f
    move v0, v4

    goto :goto_2e
.end method

.method public setTouchInterval(I)V
    .registers 2
    .parameter "interval"

    .prologue
    .line 10541
    iput p1, p0, Landroid/webkit/WebView;->mCurrentTouchInterval:I

    .line 10542
    return-void
.end method

.method public setUpSelect()V
    .registers 4

    .prologue
    .line 5302
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v1, :cond_5

    .line 5322
    :cond_4
    :goto_4
    return-void

    .line 5303
    :cond_5
    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 5304
    iget-boolean v1, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v1, :cond_4

    .line 5305
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 5306
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    iput-boolean v1, p0, Landroid/webkit/WebView;->mSelectingText:Z

    .line 5308
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v1}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 5309
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeResetSelection()V

    .line 5310
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 5311
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodeBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 5312
    .local v0, rect:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 5313
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 5321
    .end local v0           #rect:Landroid/graphics/Rect;
    :goto_39
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHideCursor()V

    goto :goto_4

    .line 5314
    :cond_3d
    iget v1, p0, Landroid/webkit/WebView;->mLastTouchY:F

    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_59

    .line 5315
    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 5316
    iget v1, p0, Landroid/view/View;->mScrollY:I

    iget v2, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebView;->mSelectY:I

    goto :goto_39

    .line 5318
    :cond_59
    iget v1, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 5319
    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebView;->mSelectY:I

    goto :goto_39
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .registers 2
    .parameter "overlay"

    .prologue
    .line 1708
    iput-boolean p1, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    .line 1709
    return-void
.end method

.method public setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V
    .registers 3
    .parameter "client"

    .prologue
    .line 4060
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V

    .line 4061
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .registers 3
    .parameter "client"

    .prologue
    .line 4027
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 4028
    return-void
.end method

.method public setWebTextSelectionListener(Landroid/webkit/WebView$WebTextSelectionListener;)V
    .registers 2
    .parameter "Listener"

    .prologue
    .line 1318
    iput-object p1, p0, Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

    .line 1319
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .registers 3
    .parameter "client"

    .prologue
    .line 3997
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 3998
    return-void
.end method

.method public shouldForwardTouchEvent()Z
    .registers 3

    .prologue
    .line 6669
    iget-object v0, p0, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    if-nez v0, :cond_11

    iget-boolean v0, p0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v0, :cond_13

    iget v0, p0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_13

    :cond_11
    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public stopLoading()V
    .registers 3

    .prologue
    .line 2265
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 2266
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2267
    return-void
.end method

.method switchOutDrawHistory()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 4732
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v2, :cond_6

    .line 4750
    :cond_5
    :goto_5
    return-void

    .line 4733
    :cond_6
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->pictureReady()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4734
    iput-boolean v3, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    .line 4735
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    .line 4736
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 4737
    iget v0, p0, Landroid/view/View;->mScrollX:I

    .line 4738
    .local v0, oldScrollX:I
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 4739
    .local v1, oldScrollY:I
    iget v2, p0, Landroid/view/View;->mScrollX:I

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v2

    iput v2, p0, Landroid/view/View;->mScrollX:I

    .line 4740
    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v2

    iput v2, p0, Landroid/view/View;->mScrollY:I

    .line 4741
    iget v2, p0, Landroid/view/View;->mScrollX:I

    if-ne v0, v2, :cond_36

    iget v2, p0, Landroid/view/View;->mScrollY:I

    if-eq v1, v2, :cond_47

    .line 4742
    :cond_36
    iput-boolean v3, p0, Landroid/webkit/WebView;->mUserScroll:Z

    .line 4743
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x83

    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 4745
    iget v2, p0, Landroid/view/View;->mScrollX:I

    iget v3, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    goto :goto_5

    .line 4747
    :cond_47
    invoke-direct {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    goto :goto_5
.end method

.method public textChangedForWatcher()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 5855
    iget-object v0, p0, Landroid/webkit/WebView;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_c

    .line 5856
    iget-object v0, p0, Landroid/webkit/WebView;->textWatcher:Landroid/text/TextWatcher;

    const-string v1, ""

    invoke-interface {v0, v1, v2, v2, v2}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 5857
    :cond_c
    return-void
.end method

.method textFieldDrag(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 8136
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v4

    .line 8144
    :goto_8
    return v1

    .line 8139
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebView;->mDragFromTextInput:Z

    .line 8140
    iget-object v1, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v1}, Landroid/webkit/WebTextView;->getLeft()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v2}, Landroid/webkit/WebTextView;->getTop()I

    move-result v2

    iget v3, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 8142
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 8143
    .local v0, result:Z
    iput-boolean v4, p0, Landroid/webkit/WebView;->mDragFromTextInput:Z

    move v1, v0

    .line 8144
    goto :goto_8
.end method

.method touchUpOnTextField(Landroid/view/MotionEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    .line 8153
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v2

    if-nez v2, :cond_7

    .line 8159
    :goto_6
    return-void

    .line 8156
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v3}, Landroid/webkit/WebTextView;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 8157
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v3}, Landroid/webkit/WebTextView;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 8158
    .local v1, y:I
    iget v2, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-direct {p0, v0, v1, v2}, Landroid/webkit/WebView;->nativeMotionUp(III)Z

    goto :goto_6
.end method

.method public transformPlugins(Landroid/graphics/Matrix;Z)V
    .registers 4
    .parameter "matrix"
    .parameter "zoomInProgress"

    .prologue
    .line 8482
    iget-object v0, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    if-nez v0, :cond_5

    .line 8486
    :goto_4
    return-void

    .line 8485
    :cond_5
    iget-object v0, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/ViewManager;->transformAll(Landroid/graphics/Matrix;Z)V

    goto :goto_4
.end method

.method public undoRedoStateReset()V
    .registers 3

    .prologue
    .line 5813
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_f

    .line 5817
    :goto_e
    return-void

    .line 5815
    :cond_f
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x211

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_e
.end method

.method updateCachedTextfield(Ljava/lang/String;)V
    .registers 3
    .parameter "updatedText"

    .prologue
    .line 10560
    iget v0, p0, Landroid/webkit/WebView;->mTextGeneration:I

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;->nativeUpdateCachedTextfield(Ljava/lang/String;I)V

    .line 10561
    return-void
.end method

.method updateDefaultZoomDensity(I)V
    .registers 9
    .parameter "zoomDensity"

    .prologue
    const/high16 v6, 0x42c8

    .line 1614
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v6

    int-to-float v3, p1

    div-float v0, v2, v3

    .line 1616
    .local v0, density:F
    iget v2, p0, Landroid/webkit/WebView;->mDefaultScale:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3f847ae147ae147bL

    cmpl-double v2, v2, v4

    if-lez v2, :cond_54

    .line 1617
    iget v2, p0, Landroid/webkit/WebView;->mDefaultScale:F

    div-float v1, v0, v2

    .line 1619
    .local v1, scaleFactor:F
    const/high16 v2, 0x4180

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Landroid/webkit/WebView;->mNavSlop:I

    .line 1620
    mul-float v2, v6, v0

    float-to-int v2, v2

    sput v2, Landroid/webkit/WebView;->DEFAULT_SCALE_PERCENT:I

    .line 1621
    const/high16 v2, 0x4080

    mul-float/2addr v2, v0

    sput v2, Landroid/webkit/WebView;->DEFAULT_MAX_ZOOM_SCALE:F

    .line 1622
    const/high16 v2, 0x3e80

    mul-float/2addr v2, v0

    sput v2, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    .line 1623
    iput v0, p0, Landroid/webkit/WebView;->mDefaultScale:F

    .line 1624
    iget v2, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    mul-float/2addr v2, v1

    iput v2, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    .line 1625
    iget v2, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    mul-float/2addr v2, v1

    iput v2, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 1626
    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    mul-float/2addr v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 1628
    .end local v1           #scaleFactor:F
    :cond_54
    return-void
.end method

.method updateMultiTouchSupport(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 1518
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 1523
    .local v1, settings:Landroid/webkit/WebSettings;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1525
    .local v0, pm:Landroid/content/pm/PackageManager;
    const-string v2, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v2

    if-nez v2, :cond_23

    :cond_1d
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getSupportZoomWithoutControls()Z

    move-result v2

    if-eqz v2, :cond_43

    :cond_23
    const/4 v2, 0x1

    :goto_24
    iput-boolean v2, p0, Landroid/webkit/WebView;->mSupportMultiTouch:Z

    .line 1527
    const-string v2, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/webkit/WebView;->mAllowPanAndScale:Z

    .line 1529
    iget-boolean v2, p0, Landroid/webkit/WebView;->mSupportMultiTouch:Z

    if-eqz v2, :cond_45

    iget-object v2, p0, Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    if-nez v2, :cond_45

    .line 1530
    new-instance v2, Landroid/webkit/WebviewScaleGestureDetector;

    new-instance v3, Landroid/webkit/WebView$ScaleDetectorListener;

    invoke-direct {v3, p0, v4}, Landroid/webkit/WebView$ScaleDetectorListener;-><init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V

    invoke-direct {v2, p1, v3}, Landroid/webkit/WebviewScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    .line 1535
    :cond_42
    :goto_42
    return-void

    .line 1525
    :cond_43
    const/4 v2, 0x0

    goto :goto_24

    .line 1532
    :cond_45
    iget-boolean v2, p0, Landroid/webkit/WebView;->mSupportMultiTouch:Z

    if-nez v2, :cond_42

    iget-object v2, p0, Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    if-eqz v2, :cond_42

    .line 1533
    iput-object v4, p0, Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    goto :goto_42
.end method

.method public updateScrollPosForPluginViews(Landroid/view/SurfaceView;IIFFFI)V
    .registers 18
    .parameter "parentView"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "zoomCenterX"
    .parameter "zoomCenterY"
    .parameter "scale"
    .parameter "serial"

    .prologue
    .line 8226
    iget-object v0, p0, Landroid/webkit/WebView;->mTmpLocations:[I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    .line 8227
    iget-object v0, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    iget-object v1, p0, Landroid/webkit/WebView;->mTmpLocations:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    iget-object v1, p0, Landroid/webkit/WebView;->mTmpLocations:[I

    const/4 v3, 0x1

    aget v3, v1, v3

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/ViewManager;->updateScrollPosForPluginViews(Landroid/view/SurfaceView;IIIIFFFI)V

    .line 8230
    return-void
.end method

.method public userScalable()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 383
    iget-boolean v0, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    if-eqz v0, :cond_7

    move v0, v2

    .line 389
    :goto_6
    return v0

    :cond_7
    iget v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    iget v1, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_6

    :cond_11
    move v0, v2

    goto :goto_6
.end method

.method public viewToContentDimension(I)I
    .registers 4
    .parameter "d"

    .prologue
    .line 2733
    int-to-float v0, p1

    iget v1, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method viewToContentX(I)I
    .registers 3
    .parameter "x"

    .prologue
    .line 2742
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v0

    return v0
.end method

.method viewToContentXf(I)F
    .registers 4
    .parameter "x"

    .prologue
    .line 2759
    int-to-float v0, p1

    iget v1, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method viewToContentY(I)I
    .registers 3
    .parameter "y"

    .prologue
    .line 2751
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v0

    return v0
.end method

.method viewToContentYf(I)F
    .registers 4
    .parameter "y"

    .prologue
    .line 2768
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public zoomIn()Z
    .registers 4

    .prologue
    const/high16 v1, 0x3f00

    .line 8058
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 8059
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 8061
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 8062
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 8063
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    float-to-int v0, v0

    iget v1, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mAnchorX:I

    .line 8064
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    float-to-int v0, v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mAnchorY:I

    .line 8065
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    const/high16 v1, 0x3fa0

    mul-float/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/webkit/WebView;->zoomWithPreview(FZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .registers 4

    .prologue
    const/high16 v1, 0x3f00

    .line 8074
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 8076
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 8077
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 8078
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    float-to-int v0, v0

    iget v1, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mAnchorX:I

    .line 8079
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    float-to-int v0, v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mAnchorY:I

    .line 8080
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    const v1, 0x3f4ccccd

    mul-float/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/webkit/WebView;->zoomWithPreview(FZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    move-result v0

    return v0
.end method
