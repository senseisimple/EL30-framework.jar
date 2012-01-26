.class public Landroid/view/View;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/accessibility/AccessibilityEventSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/View$ScrollabilityCache;,
        Landroid/view/View$AttachInfo;,
        Landroid/view/View$BaseSavedState;,
        Landroid/view/View$UnsetPressedState;,
        Landroid/view/View$OnCreateContextMenuListener;,
        Landroid/view/View$OnClickListener;,
        Landroid/view/View$OnFocusChangeListener;,
        Landroid/view/View$OnLongClickListener;,
        Landroid/view/View$OnTouchListener;,
        Landroid/view/View$OnKeyListener;,
        Landroid/view/View$PerformClick;,
        Landroid/view/View$CheckForTap;,
        Landroid/view/View$CheckForLongPress;,
        Landroid/view/View$MeasureSpec;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field static final ALPHA_SET:I = 0x40000

.field static final ANIMATION_STARTED:I = 0x10000

.field private static final AWAKEN_SCROLL_BARS_ON_ATTACH:I = 0x8000000

.field static final CANCEL_NEXT_UP_EVENT:I = 0x4000000

.field static final CLICKABLE:I = 0x4000

.field private static final DBG:Z = false

.field static final DIRTY:I = 0x200000

.field static final DIRTY_MASK:I = 0x600000

.field static final DIRTY_OPAQUE:I = 0x400000

.field static final DISABLED:I = 0x20

.field static final DRAWABLE_STATE_DIRTY:I = 0x400

.field static final DRAWING_CACHE_ENABLED:I = 0x8000

.field public static final DRAWING_CACHE_QUALITY_AUTO:I = 0x0

.field private static final DRAWING_CACHE_QUALITY_FLAGS:[I = null

.field public static final DRAWING_CACHE_QUALITY_HIGH:I = 0x100000

.field public static final DRAWING_CACHE_QUALITY_LOW:I = 0x80000

.field static final DRAWING_CACHE_QUALITY_MASK:I = 0x180000

.field static final DRAWING_CACHE_VALID:I = 0x8000

.field static final DRAWN:I = 0x20

.field static final DRAW_ANIMATION:I = 0x40

.field static final DRAW_MASK:I = 0x80

.field static final DUPLICATE_PARENT_STATE:I = 0x400000

.field protected static final EMPTY_STATE_SET:[I = null

.field static final ENABLED:I = 0x0

.field protected static final ENABLED_FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final ENABLED_FOCUSED_STATE_SET:[I = null

.field protected static final ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field static final ENABLED_MASK:I = 0x20

.field protected static final ENABLED_SELECTED_STATE_SET:[I = null

.field protected static final ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final ENABLED_STATE_SET:[I = null

.field protected static final ENABLED_WINDOW_FOCUSED_STATE_SET:[I = null

.field static final FADING_EDGE_HORIZONTAL:I = 0x1000

.field static final FADING_EDGE_MASK:I = 0x3000

.field static final FADING_EDGE_NONE:I = 0x0

.field static final FADING_EDGE_VERTICAL:I = 0x2000

.field static final FILTER_TOUCHES_WHEN_OBSCURED:I = 0x400

.field protected static final FIRST_STATE_SET:[I = null

.field private static final FITS_SYSTEM_WINDOWS:I = 0x2

.field private static final FOCUSABLE:I = 0x1

.field public static final FOCUSABLES_ALL:I = 0x0

.field public static final FOCUSABLES_TOUCH_MODE:I = 0x1

.field static final FOCUSABLE_IN_TOUCH_MODE:I = 0x40000

.field private static final FOCUSABLE_MASK:I = 0x1

.field static final FOCUSED:I = 0x2

.field protected static final FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final FOCUSED_STATE_SET:[I = null

.field protected static final FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field public static final FOCUS_BACKWARD:I = 0x1

.field public static final FOCUS_DOWN:I = 0x82

.field public static final FOCUS_FORWARD:I = 0x2

.field public static final FOCUS_LEFT:I = 0x11

.field public static final FOCUS_RIGHT:I = 0x42

.field public static final FOCUS_UP:I = 0x21

.field static final FORCE_LAYOUT:I = 0x1000

.field public static final GONE:I = 0x8

.field public static final HAPTIC_FEEDBACK_ENABLED:I = 0x10000000

.field static final HAS_BOUNDS:I = 0x10

.field public static final INVISIBLE:I = 0x4

.field static final IS_ROOT_NAMESPACE:I = 0x8

.field public static final KEEP_SCREEN_ON:I = 0x4000000

.field protected static final LAST_STATE_SET:[I = null

.field static final LAYOUT_REQUIRED:I = 0x2000

.field static final LONG_CLICKABLE:I = 0x200000

.field static final MEASURED_DIMENSION_SET:I = 0x800

.field protected static final MIDDLE_STATE_SET:[I = null

.field private static final NOT_FOCUSABLE:I = 0x0

.field public static final NO_ID:I = -0x1

.field static final ONLY_DRAWS_BACKGROUND:I = 0x100

.field static final OPAQUE_BACKGROUND:I = 0x800000

.field static final OPAQUE_MASK:I = 0x1800000

.field static final OPAQUE_SCROLLBARS:I = 0x1000000

.field public static final OVER_SCROLL_ALWAYS:I = 0x0

.field public static final OVER_SCROLL_IF_CONTENT_SCROLLS:I = 0x1

.field public static final OVER_SCROLL_NEVER:I = 0x2

.field private static final PREPRESSED:I = 0x2000000

.field private static final PRESSED:I = 0x4000

.field protected static final PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_FIRST_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_LAST_STATE_SET:[I = null

.field protected static final PRESSED_MIDDLE_STATE_SET:[I = null

.field protected static final PRESSED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_SINGLE_STATE_SET:[I = null

.field protected static final PRESSED_STATE_SET:[I = null

.field protected static final PRESSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field static final REQUEST_TRANSPARENT_REGIONS:I = 0x200

.field static final SAVE_DISABLED:I = 0x10000

.field static final SAVE_DISABLED_MASK:I = 0x10000

.field private static final SAVE_STATE_CALLED:I = 0x20000

.field static final SCROLLBARS_HORIZONTAL:I = 0x100

.field static final SCROLLBARS_INSET_MASK:I = 0x1000000

.field public static final SCROLLBARS_INSIDE_INSET:I = 0x1000000

.field public static final SCROLLBARS_INSIDE_OVERLAY:I = 0x0

.field static final SCROLLBARS_MASK:I = 0x300

.field static final SCROLLBARS_NONE:I = 0x0

.field public static final SCROLLBARS_OUTSIDE_INSET:I = 0x3000000

.field static final SCROLLBARS_OUTSIDE_MASK:I = 0x2000000

.field public static final SCROLLBARS_OUTSIDE_OVERLAY:I = 0x2000000

.field static final SCROLLBARS_STYLE_MASK:I = 0x3000000

.field static final SCROLLBARS_VERTICAL:I = 0x200

.field static final SCROLL_CONTAINER:I = 0x80000

.field static final SCROLL_CONTAINER_ADDED:I = 0x100000

.field static final SELECTED:I = 0x4

.field protected static final SELECTED_STATE_SET:[I = null

.field protected static final SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final SINGLE_STATE_SET:[I = null

.field static final SKIP_DRAW:I = 0x80

.field public static final SOUND_EFFECTS_ENABLED:I = 0x8000000

.field protected static final VIEW_LOG_TAG:Ljava/lang/String; = "View"

.field private static final VIEW_STATE_SETS:[[I = null

.field private static final VISIBILITY_FLAGS:[I = null

.field static final VISIBILITY_MASK:I = 0xc

.field public static final VISIBLE:I = 0x0

.field static final WANTS_FOCUS:I = 0x1

.field static final WILL_NOT_CACHE_DRAWING:I = 0x20000

.field static final WILL_NOT_DRAW:I = 0x80

.field protected static final WINDOW_FOCUSED_STATE_SET:[I

.field static sInstanceCount:J

.field private static sTags:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sTagsLock:Ljava/lang/Object;

.field static final sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAttachInfo:Landroid/view/View$AttachInfo;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBGDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundResource:I

.field private mBackgroundSizeChanged:Z

.field protected mBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mContentDescription:Ljava/lang/CharSequence;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentAnimation:Landroid/view/animation/Animation;

.field private mDrawableState:[I

.field private mDrawingCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawingCacheBackgroundColor:I

.field private mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

.field private mHasPerformedLongPress:Z

.field mID:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        resolveId = true
    .end annotation
.end field

.field protected mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field protected mLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field protected mMeasuredHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field protected mMeasuredWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mMinHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mMinWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mNextFocusDownId:I

.field private mNextFocusLeftId:I

.field private mNextFocusRightId:I

.field private mNextFocusUpId:I

.field mOldHeightMeasureSpec:I

.field mOldWidthMeasureSpec:I

.field protected mOnClickListener:Landroid/view/View$OnClickListener;

.field protected mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field protected mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnKeyListener:Landroid/view/View$OnKeyListener;

.field protected mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOverScrollMode:I

.field protected mPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mParent:Landroid/view/ViewParent;

.field private mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

.field private mPendingCheckForTap:Landroid/view/View$CheckForTap;

.field private mPerformClick:Landroid/view/View$PerformClick;

.field mPrivateFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "FORCE_LAYOUT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000
                mask = 0x2000
                name = "LAYOUT_REQUIRED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000
                mask = 0x8000
                name = "DRAWING_CACHE_INVALID"
                outputIf = false
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "DRAWN"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "NOT_DRAWN"
                outputIf = false
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400000
                mask = 0x600000
                name = "DIRTY_OPAQUE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200000
                mask = 0x600000
                name = "DIRTY"
            .end subannotation
        }
    .end annotation
.end field

.field private mResources:Landroid/content/res/Resources;

.field protected mRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mScrollCache:Landroid/view/View$ScrollabilityCache;

.field protected mScrollX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field protected mScrollY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field private mSoundEffect:I

.field protected mTag:Ljava/lang/Object;

.field protected mTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mTouchDelegate:Landroid/view/TouchDelegate;

.field private mTouchSlop:I

.field private mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mUnsetPressedState:Landroid/view/View$UnsetPressedState;

.field mUserPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field mUserPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field mViewFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mWindowAttachCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 619
    const-class v0, Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_25f

    move v0, v4

    :goto_d
    sput-boolean v0, Landroid/view/View;->$assertionsDisabled:Z

    .line 677
    new-array v0, v2, [I

    fill-array-data v0, :array_262

    sput-object v0, Landroid/view/View;->VISIBILITY_FLAGS:[I

    .line 828
    new-array v0, v2, [I

    fill-array-data v0, :array_26c

    sput-object v0, Landroid/view/View;->DRAWING_CACHE_QUALITY_FLAGS:[I

    .line 979
    new-array v0, v3, [I

    sput-object v0, Landroid/view/View;->EMPTY_STATE_SET:[I

    .line 988
    new-array v0, v4, [I

    const v1, 0x101009e

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    .line 997
    new-array v0, v4, [I

    const v1, 0x101009c

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->FOCUSED_STATE_SET:[I

    .line 1006
    new-array v0, v4, [I

    const v1, 0x10100a1

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->SELECTED_STATE_SET:[I

    .line 1016
    new-array v0, v4, [I

    const v1, 0x10100a7

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->PRESSED_STATE_SET:[I

    .line 1025
    new-array v0, v4, [I

    const v1, 0x101009d

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    .line 1034
    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_FOCUSED_STATE_SET:[I

    .line 1042
    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_SELECTED_STATE_SET:[I

    .line 1050
    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1058
    sget-object v0, Landroid/view/View;->FOCUSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->FOCUSED_SELECTED_STATE_SET:[I

    .line 1066
    sget-object v0, Landroid/view/View;->FOCUSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1074
    sget-object v0, Landroid/view/View;->SELECTED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1084
    sget-object v0, Landroid/view/View;->ENABLED_FOCUSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1093
    sget-object v0, Landroid/view/View;->ENABLED_FOCUSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1102
    sget-object v0, Landroid/view/View;->ENABLED_SELECTED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1111
    sget-object v0, Landroid/view/View;->FOCUSED_SELECTED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1122
    sget-object v0, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1132
    sget-object v0, Landroid/view/View;->PRESSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1141
    sget-object v0, Landroid/view/View;->PRESSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_SELECTED_STATE_SET:[I

    .line 1151
    sget-object v0, Landroid/view/View;->PRESSED_SELECTED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1160
    sget-object v0, Landroid/view/View;->PRESSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_FOCUSED_STATE_SET:[I

    .line 1170
    sget-object v0, Landroid/view/View;->PRESSED_FOCUSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1180
    sget-object v0, Landroid/view/View;->PRESSED_FOCUSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1191
    sget-object v0, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1200
    sget-object v0, Landroid/view/View;->PRESSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->ENABLED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    .line 1210
    sget-object v0, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1220
    sget-object v0, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    .line 1232
    sget-object v0, Landroid/view/View;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1242
    sget-object v0, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    .line 1254
    sget-object v0, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1265
    sget-object v0, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1278
    sget-object v0, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1284
    const/16 v0, 0x20

    new-array v0, v0, [[I

    sget-object v1, Landroid/view/View;->EMPTY_STATE_SET:[I

    aput-object v1, v0, v3

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    aput-object v1, v0, v4

    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    aput-object v1, v0, v5

    sget-object v1, Landroid/view/View;->SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v1, v0, v2

    const/4 v1, 0x4

    sget-object v2, Landroid/view/View;->FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/view/View;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/view/View;->FOCUSED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/view/View;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/view/View;->ENABLED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/view/View;->ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/view/View;->ENABLED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/view/View;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroid/view/View;->ENABLED_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Landroid/view/View;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Landroid/view/View;->PRESSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Landroid/view/View;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Landroid/view/View;->PRESSED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Landroid/view/View;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Landroid/view/View;->PRESSED_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Landroid/view/View;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Landroid/view/View;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Landroid/view/View;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Landroid/view/View;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/View;->VIEW_STATE_SETS:[[I

    .line 1324
    new-array v0, v4, [I

    const v1, 0x10100a6

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->LAST_STATE_SET:[I

    .line 1330
    new-array v0, v4, [I

    const v1, 0x10100a4

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->FIRST_STATE_SET:[I

    .line 1336
    new-array v0, v4, [I

    const v1, 0x10100a5

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->MIDDLE_STATE_SET:[I

    .line 1342
    new-array v0, v4, [I

    const v1, 0x10100a3

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->SINGLE_STATE_SET:[I

    .line 1348
    new-array v0, v5, [I

    fill-array-data v0, :array_276

    sput-object v0, Landroid/view/View;->PRESSED_LAST_STATE_SET:[I

    .line 1354
    new-array v0, v5, [I

    fill-array-data v0, :array_27e

    sput-object v0, Landroid/view/View;->PRESSED_FIRST_STATE_SET:[I

    .line 1360
    new-array v0, v5, [I

    fill-array-data v0, :array_286

    sput-object v0, Landroid/view/View;->PRESSED_MIDDLE_STATE_SET:[I

    .line 1366
    new-array v0, v5, [I

    fill-array-data v0, :array_28e

    sput-object v0, Landroid/view/View;->PRESSED_SINGLE_STATE_SET:[I

    .line 1373
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    .line 1383
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/View;->sTagsLock:Ljava/lang/Object;

    .line 1868
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/view/View;->sInstanceCount:J

    return-void

    :cond_25f
    move v0, v3

    .line 619
    goto/16 :goto_d

    .line 677
    :array_262
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 828
    :array_26c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x8t 0x0t
        0x0t 0x0t 0x10t 0x0t
    .end array-data

    .line 1348
    :array_276
    .array-data 0x4
        0xa6t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 1354
    :array_27e
    .array-data 0x4
        0xa4t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 1360
    :array_286
    .array-data 0x4
        0xa5t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 1366
    :array_28e
    .array-data 0x4
        0xa3t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x8000

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 2218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1389
    iput-object v1, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 1412
    iput v0, p0, Landroid/view/View;->mID:I

    .line 1734
    iput v2, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 1738
    iput v2, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 1740
    iput-object v1, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    .line 1788
    iput-object v1, p0, Landroid/view/View;->mDrawableState:[I

    .line 1797
    iput v0, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 1803
    iput v0, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 1809
    iput v0, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 1815
    iput v0, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 1818
    iput-object v1, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 1849
    iput-object v1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 1855
    iput v3, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 2495
    iput v3, p0, Landroid/view/View;->mSoundEffect:I

    .line 2219
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x8000

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 1882
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1389
    iput-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 1412
    iput v1, p0, Landroid/view/View;->mID:I

    .line 1734
    iput v2, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 1738
    iput v2, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 1740
    iput-object v0, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    .line 1788
    iput-object v0, p0, Landroid/view/View;->mDrawableState:[I

    .line 1797
    iput v1, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 1803
    iput v1, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 1809
    iput v1, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 1815
    iput v1, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 1818
    iput-object v0, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 1849
    iput-object v0, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 1855
    iput v3, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 2495
    iput v3, p0, Landroid/view/View;->mSoundEffect:I

    .line 1883
    iput-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 1884
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_2c
    iput-object v0, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    .line 1885
    const/high16 v0, 0x1800

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 1888
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mTouchSlop:I

    .line 1889
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setOverScrollMode(I)V

    .line 1890
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1909
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1910
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 35
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 1931
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1933
    sget-object v27, Lcom/android/internal/R$styleable;->View:[I

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v27

    move/from16 v3, p3

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 1936
    .local v6, a:Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    .line 1938
    .local v8, background:Landroid/graphics/drawable/Drawable;
    const/4 v14, -0x1

    .line 1939
    .local v14, leftPadding:I
    const/16 v21, -0x1

    .line 1940
    .local v21, topPadding:I
    const/16 v17, -0x1

    .line 1941
    .local v17, rightPadding:I
    const/4 v9, -0x1

    .line 1943
    .local v9, bottomPadding:I
    const/16 v16, -0x1

    .line 1945
    .local v16, padding:I
    const/16 v23, 0x0

    .line 1946
    .local v23, viewFlagValues:I
    const/16 v22, 0x0

    .line 1948
    .local v22, viewFlagMasks:I
    const/16 v20, 0x0

    .line 1950
    .local v20, setScrollContainer:Z
    const/16 v25, 0x0

    .line 1951
    .local v25, x:I
    const/16 v26, 0x0

    .line 1953
    .local v26, y:I
    const/16 v18, 0x0

    .line 1955
    .local v18, scrollbarStyle:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mOverScrollMode:I

    move v15, v0

    .line 1956
    .local v15, overScrollMode:I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    .line 1957
    .local v5, N:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_34
    if-ge v13, v5, :cond_2e6

    .line 1958
    invoke-virtual {v6, v13}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    .line 1959
    .local v7, attr:I
    packed-switch v7, :pswitch_data_380

    .line 1957
    :cond_3d
    :goto_3d
    :pswitch_3d
    add-int/lit8 v13, v13, 0x1

    goto :goto_34

    .line 1961
    :pswitch_40
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 1962
    goto :goto_3d

    .line 1964
    :pswitch_45
    const/16 v27, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    .line 1965
    goto :goto_3d

    .line 1967
    :pswitch_50
    const/16 v27, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    .line 1968
    goto :goto_3d

    .line 1970
    :pswitch_5b
    const/16 v27, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v21

    .line 1971
    goto :goto_3d

    .line 1973
    :pswitch_66
    const/16 v27, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    .line 1974
    goto :goto_3d

    .line 1976
    :pswitch_71
    const/16 v27, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 1977
    goto :goto_3d

    .line 1979
    :pswitch_7c
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v25

    .line 1980
    goto :goto_3d

    .line 1982
    :pswitch_87
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v26

    .line 1983
    goto :goto_3d

    .line 1985
    :pswitch_92
    const/16 v27, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mID:I

    goto :goto_3d

    .line 1988
    :pswitch_a3
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mTag:Ljava/lang/Object;

    goto :goto_3d

    .line 1991
    :pswitch_ae
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v27

    if-eqz v27, :cond_3d

    .line 1992
    or-int/lit8 v23, v23, 0x2

    .line 1993
    or-int/lit8 v22, v22, 0x2

    goto/16 :goto_3d

    .line 1997
    :pswitch_c0
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v27

    if-eqz v27, :cond_3d

    .line 1998
    or-int/lit8 v23, v23, 0x1

    .line 1999
    or-int/lit8 v22, v22, 0x1

    goto/16 :goto_3d

    .line 2003
    :pswitch_d2
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v27

    if-eqz v27, :cond_3d

    .line 2004
    const v27, 0x40001

    or-int v23, v23, v27

    .line 2005
    const v27, 0x40001

    or-int v22, v22, v27

    goto/16 :goto_3d

    .line 2009
    :pswitch_ea
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v27

    if-eqz v27, :cond_3d

    .line 2010
    move/from16 v0, v23

    or-int/lit16 v0, v0, 0x4000

    move/from16 v23, v0

    .line 2011
    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x4000

    move/from16 v22, v0

    goto/16 :goto_3d

    .line 2015
    :pswitch_104
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v27

    if-eqz v27, :cond_3d

    .line 2016
    const/high16 v27, 0x20

    or-int v23, v23, v27

    .line 2017
    const/high16 v27, 0x20

    or-int v22, v22, v27

    goto/16 :goto_3d

    .line 2021
    :pswitch_11a
    const/16 v27, 0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v27

    if-nez v27, :cond_3d

    .line 2022
    const/high16 v27, 0x1

    or-int v23, v23, v27

    .line 2023
    const/high16 v27, 0x1

    or-int v22, v22, v27

    goto/16 :goto_3d

    .line 2027
    :pswitch_130
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v27

    if-eqz v27, :cond_3d

    .line 2028
    const/high16 v27, 0x40

    or-int v23, v23, v27

    .line 2029
    const/high16 v27, 0x40

    or-int v22, v22, v27

    goto/16 :goto_3d

    .line 2033
    :pswitch_146
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v24

    .line 2034
    .local v24, visibility:I
    if-eqz v24, :cond_3d

    .line 2035
    sget-object v27, Landroid/view/View;->VISIBILITY_FLAGS:[I

    aget v27, v27, v24

    or-int v23, v23, v27

    .line 2036
    or-int/lit8 v22, v22, 0xc

    goto/16 :goto_3d

    .line 2040
    .end local v24           #visibility:I
    :pswitch_15c
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 2041
    .local v10, cacheQuality:I
    if-eqz v10, :cond_3d

    .line 2042
    sget-object v27, Landroid/view/View;->DRAWING_CACHE_QUALITY_FLAGS:[I

    aget v27, v27, v10

    or-int v23, v23, v27

    .line 2043
    const/high16 v27, 0x18

    or-int v22, v22, v27

    goto/16 :goto_3d

    .line 2047
    .end local v10           #cacheQuality:I
    :pswitch_174
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    goto/16 :goto_3d

    .line 2050
    :pswitch_180
    const/16 v27, 0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v27

    if-nez v27, :cond_3d

    .line 2051
    const v27, -0x8000001

    and-int v23, v23, v27

    .line 2052
    const/high16 v27, 0x800

    or-int v22, v22, v27

    goto/16 :goto_3d

    .line 2056
    :pswitch_197
    const/16 v27, 0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v27

    if-nez v27, :cond_3d

    .line 2057
    const v27, -0x10000001

    and-int v23, v23, v27

    .line 2058
    const/high16 v27, 0x1000

    or-int v22, v22, v27

    goto/16 :goto_3d

    .line 2062
    :pswitch_1ae
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    .line 2063
    .local v19, scrollbars:I
    if-eqz v19, :cond_3d

    .line 2064
    or-int v23, v23, v19

    .line 2065
    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x300

    move/from16 v22, v0

    .line 2066
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    goto/16 :goto_3d

    .line 2070
    .end local v19           #scrollbars:I
    :pswitch_1ca
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 2071
    .local v11, fadingEdge:I
    if-eqz v11, :cond_3d

    .line 2072
    or-int v23, v23, v11

    .line 2073
    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x3000

    move/from16 v22, v0

    .line 2074
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->initializeFadingEdge(Landroid/content/res/TypedArray;)V

    goto/16 :goto_3d

    .line 2078
    .end local v11           #fadingEdge:I
    :pswitch_1e6
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    .line 2079
    if-eqz v18, :cond_3d

    .line 2080
    const/high16 v27, 0x300

    and-int v27, v27, v18

    or-int v23, v23, v27

    .line 2081
    const/high16 v27, 0x300

    or-int v22, v22, v27

    goto/16 :goto_3d

    .line 2085
    :pswitch_1fe
    const/16 v20, 0x1

    .line 2086
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v27

    if-eqz v27, :cond_3d

    .line 2087
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollContainer(Z)V

    goto/16 :goto_3d

    .line 2091
    :pswitch_217
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v27

    if-eqz v27, :cond_3d

    .line 2092
    const/high16 v27, 0x400

    or-int v23, v23, v27

    .line 2093
    const/high16 v27, 0x400

    or-int v22, v22, v27

    goto/16 :goto_3d

    .line 2097
    :pswitch_22d
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v27

    if-eqz v27, :cond_3d

    .line 2098
    move/from16 v0, v23

    or-int/lit16 v0, v0, 0x400

    move/from16 v23, v0

    .line 2099
    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x400

    move/from16 v22, v0

    goto/16 :goto_3d

    .line 2103
    :pswitch_247
    const/16 v27, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusLeftId:I

    goto/16 :goto_3d

    .line 2106
    :pswitch_259
    const/16 v27, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusRightId:I

    goto/16 :goto_3d

    .line 2109
    :pswitch_26b
    const/16 v27, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusUpId:I

    goto/16 :goto_3d

    .line 2112
    :pswitch_27d
    const/16 v27, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusDownId:I

    goto/16 :goto_3d

    .line 2115
    :pswitch_28f
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mMinWidth:I

    goto/16 :goto_3d

    .line 2118
    :pswitch_2a1
    const/16 v27, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mMinHeight:I

    goto/16 :goto_3d

    .line 2121
    :pswitch_2b3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->isRestricted()Z

    move-result v27

    if-eqz v27, :cond_2c1

    .line 2122
    new-instance v27, Ljava/lang/IllegalStateException;

    const-string v28, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 2126
    :cond_2c1
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2127
    .local v12, handlerName:Ljava/lang/String;
    if-eqz v12, :cond_3d

    .line 2128
    new-instance v27, Landroid/view/View$1;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Landroid/view/View$1;-><init>(Landroid/view/View;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3d

    .line 2162
    .end local v12           #handlerName:Ljava/lang/String;
    :pswitch_2da
    const/16 v27, 0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    goto/16 :goto_3d

    .line 2167
    .end local v7           #attr:I
    :cond_2e6
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 2169
    if-eqz v8, :cond_2f4

    .line 2170
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2173
    :cond_2f4
    if-ltz v16, :cond_2fe

    .line 2174
    move/from16 v14, v16

    .line 2175
    move/from16 v21, v16

    .line 2176
    move/from16 v17, v16

    .line 2177
    move/from16 v9, v16

    .line 2184
    :cond_2fe
    if-ltz v14, :cond_364

    move/from16 v27, v14

    :goto_302
    if-ltz v21, :cond_36b

    move/from16 v28, v21

    :goto_306
    if-ltz v17, :cond_372

    move/from16 v29, v17

    :goto_30a
    if-ltz v9, :cond_379

    move/from16 v30, v9

    :goto_30e
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 2189
    if-eqz v22, :cond_326

    .line 2190
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setFlags(II)V

    .line 2194
    :cond_326
    if-eqz v18, :cond_32b

    .line 2195
    invoke-direct/range {p0 .. p0}, Landroid/view/View;->recomputePadding()V

    .line 2198
    :cond_32b
    if-nez v25, :cond_32f

    if-eqz v26, :cond_338

    .line 2199
    :cond_32f
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 2202
    :cond_338
    if-nez v20, :cond_34b

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x200

    move/from16 v27, v0

    if-eqz v27, :cond_34b

    .line 2203
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollContainer(Z)V

    .line 2206
    :cond_34b
    invoke-direct/range {p0 .. p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 2208
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 2211
    const-string v27, "audio"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/media/AudioManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mAudioManager:Landroid/media/AudioManager;

    .line 2213
    return-void

    .line 2184
    .restart local p1
    :cond_364
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v27, v0

    goto :goto_302

    :cond_36b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v28, v0

    goto :goto_306

    :cond_372
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v29, v0

    goto :goto_30a

    :cond_379
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v30, v0

    goto :goto_30e

    .line 1959
    :pswitch_data_380
    .packed-switch 0x7
        :pswitch_1e6
        :pswitch_92
        :pswitch_a3
        :pswitch_7c
        :pswitch_87
        :pswitch_40
        :pswitch_45
        :pswitch_50
        :pswitch_5b
        :pswitch_66
        :pswitch_71
        :pswitch_c0
        :pswitch_d2
        :pswitch_146
        :pswitch_ae
        :pswitch_1ae
        :pswitch_1ca
        :pswitch_3d
        :pswitch_247
        :pswitch_259
        :pswitch_26b
        :pswitch_27d
        :pswitch_ea
        :pswitch_104
        :pswitch_11a
        :pswitch_15c
        :pswitch_130
        :pswitch_28f
        :pswitch_2a1
        :pswitch_180
        :pswitch_217
        :pswitch_1fe
        :pswitch_197
        :pswitch_2b3
        :pswitch_174
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_2da
        :pswitch_22d
    .end packed-switch
.end method

.method static synthetic access$302(Landroid/view/View;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 619
    iput-boolean p1, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$400(Landroid/view/View;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 619
    invoke-direct {p0, p1}, Landroid/view/View;->postCheckForLongClick(I)V

    return-void
.end method

.method private static captureViewInfo(Ljava/lang/String;Landroid/view/View;)V
    .registers 4
    .parameter "subTag"
    .parameter "v"

    .prologue
    .line 3855
    if-eqz p1, :cond_b

    const-string v0, "debug.captureview"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_c

    .line 3859
    :cond_b
    :goto_b
    return-void

    .line 3858
    :cond_c
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->dumpCapturedView(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_b
.end method

.method private computeOpaqueFlags()V
    .registers 4

    .prologue
    .line 5359
    iget-object v1, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2b

    .line 5360
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x80

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5365
    :goto_14
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .line 5366
    .local v0, flags:I
    and-int/lit16 v1, v0, 0x200

    if-nez v1, :cond_1e

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_23

    :cond_1e
    const/high16 v1, 0x300

    and-int/2addr v1, v0

    if-nez v1, :cond_34

    .line 5368
    :cond_23
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x100

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5372
    :goto_2a
    return-void

    .line 5362
    .end local v0           #flags:I
    :cond_2b
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x800001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_14

    .line 5370
    .restart local v0       #flags:I
    :cond_34
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x1000001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_2a
.end method

.method protected static debugIndent(I)Ljava/lang/String;
    .registers 5
    .parameter "depth"

    .prologue
    const/16 v3, 0x20

    .line 8287
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8288
    .local v1, spaces:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v2, v2, 0x3

    if-ge v0, v2, :cond_1e

    .line 8289
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8288
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 8291
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static findViewShouldExist(Landroid/view/View;I)Landroid/view/View;
    .registers 6
    .parameter "root"
    .parameter "childViewId"

    .prologue
    .line 3595
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3596
    .local v0, result:Landroid/view/View;
    if-nez v0, :cond_1e

    .line 3597
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t find next focus view specified by user for id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3600
    :cond_1e
    return-object v0
.end method

.method public static getDefaultSize(II)I
    .registers 5
    .parameter "size"
    .parameter "measureSpec"

    .prologue
    .line 8485
    move v0, p0

    .line 8486
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 8487
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 8489
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_12

    .line 8498
    :goto_c
    return v0

    .line 8491
    :sswitch_d
    move v0, p0

    .line 8492
    goto :goto_c

    .line 8495
    :sswitch_f
    move v0, v2

    goto :goto_c

    .line 8489
    nop

    :sswitch_data_12
    .sparse-switch
        -0x80000000 -> :sswitch_f
        0x0 -> :sswitch_d
        0x40000000 -> :sswitch_f
    .end sparse-switch
.end method

.method private hasAncestorThatBlocksDescendantFocus()Z
    .registers 6

    .prologue
    .line 3805
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3806
    .local v1, ancestor:Landroid/view/ViewParent;
    :goto_2
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_19

    .line 3807
    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 3808
    .local v2, vgAncestor:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    const/high16 v4, 0x6

    if-ne v3, v4, :cond_14

    .line 3809
    const/4 v3, 0x1

    .line 3814
    .end local v2           #vgAncestor:Landroid/view/ViewGroup;
    :goto_13
    return v3

    .line 3811
    .restart local v2       #vgAncestor:Landroid/view/ViewGroup;
    :cond_14
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 3813
    goto :goto_2

    .line 3814
    .end local v2           #vgAncestor:Landroid/view/ViewGroup;
    :cond_19
    const/4 v3, 0x0

    goto :goto_13
.end method

.method public static inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "context"
    .parameter "resource"
    .parameter "root"

    .prologue
    .line 8878
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 8879
    .local v0, factory:Landroid/view/LayoutInflater;
    invoke-virtual {v0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private initScrollCache()V
    .registers 3

    .prologue
    .line 2421
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_11

    .line 2422
    new-instance v0, Landroid/view/View$ScrollabilityCache;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/View$ScrollabilityCache;-><init>(Landroid/view/ViewConfiguration;Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 2424
    :cond_11
    return-void
.end method

.method private initialAwakenScrollBars()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 5130
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method protected static mergeDrawableStates([I[I)[I
    .registers 7
    .parameter "baseState"
    .parameter "additionalState"

    .prologue
    .line 7554
    array-length v0, p0

    .line 7555
    .local v0, N:I
    const/4 v2, 0x1

    sub-int v1, v0, v2

    .line 7556
    .local v1, i:I
    :goto_4
    if-ltz v1, :cond_d

    aget v2, p0, v1

    if-nez v2, :cond_d

    .line 7557
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 7559
    :cond_d
    const/4 v2, 0x0

    add-int/lit8 v3, v1, 0x1

    array-length v4, p1

    invoke-static {p1, v2, p0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7560
    return-object p0
.end method

.method private postCheckForLongClick(I)V
    .registers 5
    .parameter "delayOffset"

    .prologue
    .line 8832
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    .line 8834
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    if-nez v0, :cond_e

    .line 8835
    new-instance v0, Landroid/view/View$CheckForLongPress;

    invoke-direct {v0, p0}, Landroid/view/View$CheckForLongPress;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    .line 8837
    :cond_e
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-virtual {v0}, Landroid/view/View$CheckForLongPress;->rememberWindowAttachCount()V

    .line 8838
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    sub-int/2addr v1, p1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8840
    return-void
.end method

.method private static printFlags(I)Ljava/lang/String;
    .registers 6
    .parameter "flags"

    .prologue
    const-string v4, " "

    .line 7106
    const-string v1, ""

    .line 7107
    .local v1, output:Ljava/lang/String;
    const/4 v0, 0x0

    .line 7108
    .local v0, numFlags:I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    .line 7109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TAKES_FOCUS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7110
    add-int/lit8 v0, v0, 0x1

    .line 7113
    :cond_1f
    and-int/lit8 v2, p0, 0xc

    sparse-switch v2, :sswitch_data_78

    .line 7131
    :goto_24
    return-object v1

    .line 7115
    :sswitch_25
    if-lez v0, :cond_3a

    .line 7116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7118
    :cond_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "INVISIBLE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7120
    goto :goto_24

    .line 7122
    :sswitch_4e
    if-lez v0, :cond_63

    .line 7123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7125
    :cond_63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GONE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7127
    goto :goto_24

    .line 7113
    nop

    :sswitch_data_78
    .sparse-switch
        0x4 -> :sswitch_25
        0x8 -> :sswitch_4e
    .end sparse-switch
.end method

.method private static printPrivateFlags(I)Ljava/lang/String;
    .registers 6
    .parameter "privateFlags"

    .prologue
    const-string v4, " "

    .line 7142
    const-string v1, ""

    .line 7143
    .local v1, output:Ljava/lang/String;
    const/4 v0, 0x0

    .line 7145
    .local v0, numFlags:I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    .line 7146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "WANTS_FOCUS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7147
    add-int/lit8 v0, v0, 0x1

    .line 7150
    :cond_1f
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4e

    .line 7151
    if-lez v0, :cond_39

    .line 7152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7154
    :cond_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FOCUSED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7155
    add-int/lit8 v0, v0, 0x1

    .line 7158
    :cond_4e
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7d

    .line 7159
    if-lez v0, :cond_68

    .line 7160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7162
    :cond_68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SELECTED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7163
    add-int/lit8 v0, v0, 0x1

    .line 7166
    :cond_7d
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_ad

    .line 7167
    if-lez v0, :cond_98

    .line 7168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7170
    :cond_98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "IS_ROOT_NAMESPACE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7171
    add-int/lit8 v0, v0, 0x1

    .line 7174
    :cond_ad
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_dd

    .line 7175
    if-lez v0, :cond_c8

    .line 7176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7178
    :cond_c8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HAS_BOUNDS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7179
    add-int/lit8 v0, v0, 0x1

    .line 7182
    :cond_dd
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_10b

    .line 7183
    if-lez v0, :cond_f8

    .line 7184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7186
    :cond_f8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DRAWN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7189
    :cond_10b
    return-object v1
.end method

.method private recomputePadding()V
    .registers 5

    .prologue
    .line 5741
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    iget v2, p0, Landroid/view/View;->mUserPaddingRight:I

    iget v3, p0, Landroid/view/View;->mUserPaddingBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 5742
    return-void
.end method

.method private removeLongPressCallback()V
    .registers 2

    .prologue
    .line 4582
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    if-eqz v0, :cond_9

    .line 4583
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4585
    :cond_9
    return-void
.end method

.method private removeTapCallback()V
    .registers 3

    .prologue
    .line 4601
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    if-eqz v0, :cond_11

    .line 4602
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4603
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4605
    :cond_11
    return-void
.end method

.method private removeUnsetPressCallback()V
    .registers 2

    .prologue
    .line 4591
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    if-eqz v0, :cond_13

    .line 4592
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4593
    iget-object v0, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4595
    :cond_13
    return-void
.end method

.method private resetPressedState()V
    .registers 3

    .prologue
    .line 2894
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_9

    .line 2905
    :cond_8
    :goto_8
    return-void

    .line 2898
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2899
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2901
    iget-boolean v0, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v0, :cond_8

    .line 2902
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    goto :goto_8
.end method

.method public static resolveSize(II)I
    .registers 5
    .parameter "size"
    .parameter "measureSpec"

    .prologue
    .line 8458
    move v0, p0

    .line 8459
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 8460
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 8461
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_16

    .line 8472
    :goto_c
    return v0

    .line 8463
    :sswitch_d
    move v0, p0

    .line 8464
    goto :goto_c

    .line 8466
    :sswitch_f
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 8467
    goto :goto_c

    .line 8469
    :sswitch_14
    move v0, v2

    goto :goto_c

    .line 8461
    :sswitch_data_16
    .sparse-switch
        -0x80000000 -> :sswitch_f
        0x0 -> :sswitch_d
        0x40000000 -> :sswitch_14
    .end sparse-switch
.end method

.method private static setTagInternal(Landroid/view/View;ILjava/lang/Object;)V
    .registers 7
    .parameter "view"
    .parameter "key"
    .parameter "tag"

    .prologue
    .line 8127
    const/4 v1, 0x0

    .line 8128
    .local v1, tags:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Object;>;"
    sget-object v3, Landroid/view/View;->sTagsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 8129
    :try_start_4
    sget-object v2, Landroid/view/View;->sTags:Ljava/util/WeakHashMap;

    if-nez v2, :cond_25

    .line 8130
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v2, Landroid/view/View;->sTags:Ljava/util/WeakHashMap;

    .line 8134
    :goto_f
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_30

    .line 8136
    if-nez v1, :cond_21

    .line 8137
    new-instance v1, Landroid/util/SparseArray;

    .end local v1           #tags:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Object;>;"
    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 8138
    .restart local v1       #tags:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Object;>;"
    sget-object v2, Landroid/view/View;->sTagsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 8139
    :try_start_1b
    sget-object v3, Landroid/view/View;->sTags:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8140
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_33

    .line 8143
    :cond_21
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8144
    return-void

    .line 8132
    :cond_25
    :try_start_25
    sget-object v2, Landroid/view/View;->sTags:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/util/SparseArray;

    move-object v1, v0

    goto :goto_f

    .line 8134
    :catchall_30
    move-exception v2

    monitor-exit v3
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_30

    throw v2

    .line 8140
    :catchall_33
    move-exception v3

    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v3
.end method

.method private static stateSetUnion([I[I)[I
    .registers 16
    .parameter "stateSet1"
    .parameter "stateSet2"

    .prologue
    const/4 v13, 0x1

    .line 8844
    array-length v8, p0

    .line 8845
    .local v8, stateSet1Length:I
    array-length v9, p1

    .line 8846
    .local v9, stateSet2Length:I
    add-int v11, v8, v9

    new-array v7, v11, [I

    .line 8847
    .local v7, newSet:[I
    const/4 v4, 0x0

    .line 8848
    .local v4, k:I
    const/4 v1, 0x0

    .line 8849
    .local v1, i:I
    const/4 v3, 0x0

    .line 8852
    .local v3, j:I
    sget-object v0, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    .local v0, arr$:[I
    array-length v6, v0

    .local v6, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v5, v4

    .end local v4           #k:I
    .local v5, k:I
    :goto_f
    if-ge v2, v6, :cond_47

    aget v10, v0, v2

    .line 8853
    .local v10, viewState:I
    if-ge v1, v8, :cond_36

    aget v11, p0, v1

    if-ne v11, v10, :cond_36

    .line 8854
    add-int/lit8 v4, v5, 0x1

    .end local v5           #k:I
    .restart local v4       #k:I
    aput v10, v7, v5

    .line 8855
    add-int/lit8 v1, v1, 0x1

    .line 8860
    :goto_1f
    if-le v4, v13, :cond_43

    .line 8861
    sget-boolean v11, Landroid/view/View;->$assertionsDisabled:Z

    if-nez v11, :cond_43

    sub-int v11, v4, v13

    aget v11, v7, v11

    const/4 v12, 0x2

    sub-int v12, v4, v12

    aget v12, v7, v12

    if-gt v11, v12, :cond_43

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 8856
    .end local v4           #k:I
    .restart local v5       #k:I
    :cond_36
    if-ge v3, v9, :cond_48

    aget v11, p1, v3

    if-ne v11, v10, :cond_48

    .line 8857
    add-int/lit8 v4, v5, 0x1

    .end local v5           #k:I
    .restart local v4       #k:I
    aput v10, v7, v5

    .line 8858
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 8852
    :cond_43
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v4           #k:I
    .restart local v5       #k:I
    goto :goto_f

    .line 8864
    .end local v10           #viewState:I
    :cond_47
    return-object v7

    .restart local v10       #viewState:I
    :cond_48
    move v4, v5

    .end local v5           #k:I
    .restart local v4       #k:I
    goto :goto_1f
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;I)V
    .registers 4
    .parameter
    .parameter "direction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 3625
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3626
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 6
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 3644
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3656
    :cond_6
    :goto_6
    return-void

    .line 3648
    :cond_7
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3653
    :cond_18
    if-eqz p1, :cond_6

    .line 3654
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/high16 v3, 0x20

    .line 3677
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .line 3679
    .local v0, viewFlags:I
    and-int/lit16 v1, v0, 0x4000

    const/16 v2, 0x4000

    if-eq v1, v2, :cond_e

    and-int v1, v0, v3

    if-ne v1, v3, :cond_15

    :cond_e
    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_15

    .line 3681
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3683
    :cond_15
    return-void
.end method

.method public applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V
    .registers 20
    .parameter "dr"
    .parameter "region"

    .prologue
    .line 8800
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v3

    .line 8801
    .local v3, r:Landroid/graphics/Region;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    .line 8802
    .local v15, db:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v14, v0

    .line 8803
    .local v14, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v3, :cond_79

    if-eqz v14, :cond_79

    .line 8804
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v11, v4, v5

    .line 8805
    .local v11, w:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v7, v4, v5

    .line 8806
    .local v7, h:I
    iget v4, v15, Landroid/graphics/Rect;->left:I

    if-lez v4, :cond_32

    .line 8808
    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v15, Landroid/graphics/Rect;->left:I

    sget-object v8, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 8810
    :cond_32
    iget v4, v15, Landroid/graphics/Rect;->right:I

    if-ge v4, v11, :cond_3f

    .line 8812
    iget v4, v15, Landroid/graphics/Rect;->right:I

    const/4 v5, 0x0

    sget-object v8, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move v6, v11

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 8814
    :cond_3f
    iget v4, v15, Landroid/graphics/Rect;->top:I

    if-lez v4, :cond_4d

    .line 8816
    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v12, v15, Landroid/graphics/Rect;->top:I

    sget-object v13, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v8, v3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 8818
    :cond_4d
    iget v4, v15, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v7, :cond_5a

    .line 8820
    const/4 v4, 0x0

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    sget-object v8, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move v6, v11

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 8822
    :cond_5a
    move-object v0, v14

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    move-object/from16 v16, v0

    .line 8823
    .local v16, location:[I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 8824
    const/4 v4, 0x0

    aget v4, v16, v4

    const/4 v5, 0x1

    aget v5, v16, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Region;->translate(II)V

    .line 8825
    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 8829
    .end local v7           #h:I
    .end local v11           #w:I
    .end local v16           #location:[I
    :goto_78
    return-void

    .line 8827
    :cond_79
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    move-object v1, v15

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_78
.end method

.method assignParent(Landroid/view/ViewParent;)V
    .registers 5
    .parameter "parent"

    .prologue
    .line 6103
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v0, :cond_7

    .line 6104
    iput-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 6111
    :goto_6
    return-void

    .line 6105
    :cond_7
    if-nez p1, :cond_d

    .line 6106
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_6

    .line 6108
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " being added, but"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " it already has a parent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected awakenScrollBars()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 5117
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method protected awakenScrollBars(I)Z
    .registers 3
    .parameter "startDelay"

    .prologue
    .line 5169
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method protected awakenScrollBars(IZ)Z
    .registers 12
    .parameter "startDelay"
    .parameter "invalidate"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 5211
    iget-object v3, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 5213
    .local v3, scrollCache:Landroid/view/View$ScrollabilityCache;
    if-eqz v3, :cond_a

    iget-boolean v4, v3, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    if-nez v4, :cond_c

    :cond_a
    move v4, v5

    .line 5251
    :goto_b
    return v4

    .line 5217
    :cond_c
    iget-object v4, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    if-nez v4, :cond_17

    .line 5218
    new-instance v4, Landroid/widget/ScrollBarDrawable;

    invoke-direct {v4}, Landroid/widget/ScrollBarDrawable;-><init>()V

    iput-object v4, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 5221
    :cond_17
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v4

    if-nez v4, :cond_23

    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 5223
    :cond_23
    if-eqz p2, :cond_28

    .line 5225
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 5228
    :cond_28
    iget v4, v3, Landroid/view/View$ScrollabilityCache;->state:I

    if-nez v4, :cond_34

    .line 5232
    const/16 v0, 0x2ee

    .line 5233
    .local v0, KEY_REPEAT_FIRST_DELAY:I
    const/16 v4, 0x2ee

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5238
    .end local v0           #KEY_REPEAT_FIRST_DELAY:I
    :cond_34
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    int-to-long v6, p1

    add-long v1, v4, v6

    .line 5239
    .local v1, fadeStartTime:J
    iput-wide v1, v3, Landroid/view/View$ScrollabilityCache;->fadeStartTime:J

    .line 5240
    iput v8, v3, Landroid/view/View$ScrollabilityCache;->state:I

    .line 5243
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_51

    .line 5244
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5245
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_51
    move v4, v8

    .line 5248
    goto :goto_b

    .end local v1           #fadeStartTime:J
    :cond_53
    move v4, v5

    .line 5251
    goto :goto_b
.end method

.method public bringToFront()V
    .registers 2

    .prologue
    .line 4767
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_9

    .line 4768
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->bringChildToFront(Landroid/view/View;)V

    .line 4770
    :cond_9
    return-void
.end method

.method public buildDrawingCache()V
    .registers 2

    .prologue
    .line 6543
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 6544
    return-void
.end method

.method public buildDrawingCache(Z)V
    .registers 21
    .parameter "autoScale"

    .prologue
    .line 6565
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v17, v0

    const v18, 0x8000

    and-int v17, v17, v18

    if-eqz v17, :cond_23

    if-eqz p1, :cond_c1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_c0

    .line 6576
    :cond_23
    :goto_23
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v18, v0

    sub-int v16, v17, v18

    .line 6577
    .local v16, width:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v18, v0

    sub-int v9, v17, v18

    .line 6579
    .local v9, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v3, v0

    .line 6580
    .local v3, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v3, :cond_d7

    move-object v0, v3

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    move/from16 v17, v0

    if-eqz v17, :cond_d7

    const/16 v17, 0x1

    move/from16 v14, v17

    .line 6582
    .local v14, scalingRequired:Z
    :goto_51
    if-eqz p1, :cond_7d

    if-eqz v14, :cond_7d

    .line 6583
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    move-object v0, v3

    iget v0, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    const/high16 v18, 0x3f00

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .line 6584
    move v0, v9

    int-to-float v0, v0

    move/from16 v17, v0

    move-object v0, v3

    iget v0, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    const/high16 v18, 0x3f00

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move v9, v0

    .line 6587
    :cond_7d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    move v7, v0

    .line 6588
    .local v7, drawingCacheBackgroundColor:I
    if-nez v7, :cond_8a

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isOpaque()Z

    move-result v17

    if-eqz v17, :cond_dd

    :cond_8a
    const/16 v17, 0x1

    move/from16 v10, v17

    .line 6589
    .local v10, opaque:Z
    :goto_8e
    if-eqz v3, :cond_e2

    move-object v0, v3

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e2

    const/16 v17, 0x1

    move/from16 v15, v17

    .line 6591
    .local v15, use32BitCache:Z
    :goto_9b
    if-lez v16, :cond_bd

    if-lez v9, :cond_bd

    mul-int v17, v16, v9

    if-eqz v10, :cond_e7

    if-nez v15, :cond_e7

    const/16 v18, 0x2

    :goto_a7
    mul-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewConfiguration;->getScaledMaximumDrawingCacheSize()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_ea

    .line 6595
    :cond_bd
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 6705
    .end local v3           #attachInfo:Landroid/view/View$AttachInfo;
    .end local v7           #drawingCacheBackgroundColor:I
    .end local v9           #height:I
    .end local v10           #opaque:Z
    .end local v14           #scalingRequired:Z
    .end local v15           #use32BitCache:Z
    .end local v16           #width:I
    :cond_c0
    :goto_c0
    return-void

    .line 6565
    :cond_c1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_c0

    goto/16 :goto_23

    .line 6580
    .restart local v3       #attachInfo:Landroid/view/View$AttachInfo;
    .restart local v9       #height:I
    .restart local v16       #width:I
    :cond_d7
    const/16 v17, 0x0

    move/from16 v14, v17

    goto/16 :goto_51

    .line 6588
    .restart local v7       #drawingCacheBackgroundColor:I
    .restart local v14       #scalingRequired:Z
    :cond_dd
    const/16 v17, 0x0

    move/from16 v10, v17

    goto :goto_8e

    .line 6589
    .restart local v10       #opaque:Z
    :cond_e2
    const/16 v17, 0x0

    move/from16 v15, v17

    goto :goto_9b

    .line 6591
    .restart local v15       #use32BitCache:Z
    :cond_e7
    const/16 v18, 0x4

    goto :goto_a7

    .line 6599
    :cond_ea
    const/4 v6, 0x1

    .line 6600
    .local v6, clear:Z
    if-eqz p1, :cond_215

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    if-nez v17, :cond_207

    const/16 v17, 0x0

    move-object/from16 v4, v17

    .line 6603
    .local v4, bitmap:Landroid/graphics/Bitmap;
    :goto_f9
    if-eqz v4, :cond_10e

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_10e

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    move v1, v9

    if-eq v0, v1, :cond_162

    .line 6605
    :cond_10e
    if-nez v10, :cond_23d

    .line 6606
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v17, v0

    const/high16 v18, 0x18

    and-int v17, v17, v18

    sparse-switch v17, :sswitch_data_288

    .line 6617
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 6627
    .local v11, quality:Landroid/graphics/Bitmap$Config;
    :goto_11f
    if-eqz v4, :cond_124

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 6630
    :cond_124
    :try_start_124
    move/from16 v0, v16

    move v1, v9

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 6631
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v17, v0

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 6632
    if-eqz p1, :cond_24a

    .line 6633
    new-instance v17, Ljava/lang/ref/SoftReference;

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    .line 6637
    :goto_150
    if-eqz v10, :cond_15c

    if-eqz v15, :cond_15c

    const/16 v17, 0x0

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V
    :try_end_15c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_124 .. :try_end_15c} :catch_25a

    .line 6650
    :cond_15c
    if-eqz v7, :cond_273

    const/16 v17, 0x1

    move/from16 v6, v17

    .line 6654
    .end local v11           #quality:Landroid/graphics/Bitmap$Config;
    :cond_162
    :goto_162
    if-eqz v3, :cond_279

    .line 6655
    iget-object v5, v3, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 6656
    .local v5, canvas:Landroid/graphics/Canvas;
    if-nez v5, :cond_16d

    .line 6657
    new-instance v5, Landroid/graphics/Canvas;

    .end local v5           #canvas:Landroid/graphics/Canvas;
    invoke-direct {v5}, Landroid/graphics/Canvas;-><init>()V

    .line 6659
    .restart local v5       #canvas:Landroid/graphics/Canvas;
    :cond_16d
    invoke-virtual {v5, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 6664
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object v1, v3

    iput-object v0, v1, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 6670
    :goto_177
    if-eqz v6, :cond_17c

    .line 6671
    invoke-virtual {v4, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 6674
    :cond_17c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeScroll()V

    .line 6675
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 6677
    .local v12, restoreCount:I
    if-eqz p1, :cond_18c

    if-eqz v14, :cond_18c

    .line 6678
    iget v13, v3, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 6679
    .local v13, scale:F
    invoke-virtual {v5, v13, v13}, Landroid/graphics/Canvas;->scale(FF)V

    .line 6682
    .end local v13           #scale:F
    :cond_18c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object v0, v5

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6684
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x20

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 6685
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v17, v0

    const v18, 0x8000

    or-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 6688
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    const/16 v18, 0x80

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_280

    .line 6692
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v17, v0

    const v18, -0x600001

    and-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 6693
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 6698
    :goto_1fe
    invoke-virtual {v5, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 6700
    if-eqz v3, :cond_c0

    .line 6702
    iput-object v5, v3, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    goto/16 :goto_c0

    .line 6600
    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #canvas:Landroid/graphics/Canvas;
    .end local v12           #restoreCount:I
    :cond_207
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    goto/16 :goto_f9

    :cond_215
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    if-nez v17, :cond_223

    const/16 v17, 0x0

    move-object/from16 v4, v17

    goto/16 :goto_f9

    :cond_223
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    goto/16 :goto_f9

    .line 6608
    .restart local v4       #bitmap:Landroid/graphics/Bitmap;
    :sswitch_231
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 6609
    .restart local v11       #quality:Landroid/graphics/Bitmap$Config;
    goto/16 :goto_11f

    .line 6611
    .end local v11           #quality:Landroid/graphics/Bitmap$Config;
    :sswitch_235
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 6612
    .restart local v11       #quality:Landroid/graphics/Bitmap$Config;
    goto/16 :goto_11f

    .line 6614
    .end local v11           #quality:Landroid/graphics/Bitmap$Config;
    :sswitch_239
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 6615
    .restart local v11       #quality:Landroid/graphics/Bitmap$Config;
    goto/16 :goto_11f

    .line 6623
    .end local v11           #quality:Landroid/graphics/Bitmap$Config;
    :cond_23d
    if-eqz v15, :cond_245

    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v11, v17

    .restart local v11       #quality:Landroid/graphics/Bitmap$Config;
    :goto_243
    goto/16 :goto_11f

    .end local v11           #quality:Landroid/graphics/Bitmap$Config;
    :cond_245
    sget-object v17, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v11, v17

    goto :goto_243

    .line 6635
    .restart local v11       #quality:Landroid/graphics/Bitmap$Config;
    :cond_24a
    :try_start_24a
    new-instance v17, Ljava/lang/ref/SoftReference;

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;
    :try_end_258
    .catch Ljava/lang/OutOfMemoryError; {:try_start_24a .. :try_end_258} :catch_25a

    goto/16 :goto_150

    .line 6638
    :catch_25a
    move-exception v17

    move-object/from16 v8, v17

    .line 6642
    .local v8, e:Ljava/lang/OutOfMemoryError;
    if-eqz p1, :cond_269

    .line 6643
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    goto/16 :goto_c0

    .line 6645
    :cond_269
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    goto/16 :goto_c0

    .line 6650
    .end local v8           #e:Ljava/lang/OutOfMemoryError;
    :cond_273
    const/16 v17, 0x0

    move/from16 v6, v17

    goto/16 :goto_162

    .line 6667
    .end local v11           #quality:Landroid/graphics/Bitmap$Config;
    :cond_279
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v5       #canvas:Landroid/graphics/Canvas;
    goto/16 :goto_177

    .line 6695
    .restart local v12       #restoreCount:I
    :cond_280
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1fe

    .line 6606
    :sswitch_data_288
    .sparse-switch
        0x0 -> :sswitch_231
        0x80000 -> :sswitch_235
        0x100000 -> :sswitch_239
    .end sparse-switch
.end method

.method public cancelLongPress()V
    .registers 1

    .prologue
    .line 4614
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 4621
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .line 4622
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .registers 3
    .parameter "view"

    .prologue
    .line 4393
    const/4 v0, 0x0

    return v0
.end method

.method public clearAnimation()V
    .registers 2

    .prologue
    .line 8596
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_9

    .line 8597
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->detach()V

    .line 8599
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 8600
    return-void
.end method

.method public clearFocus()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2685
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1d

    .line 2686
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2688
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_16

    .line 2689
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    .line 2692
    :cond_16
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2693
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 2695
    :cond_1d
    return-void
.end method

.method clearFocusForRemoval()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2703
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_14

    .line 2704
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2706
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2707
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 2709
    :cond_14
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .registers 2

    .prologue
    .line 5868
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .registers 2

    .prologue
    .line 5847
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .registers 2

    .prologue
    .line 5826
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .registers 1

    .prologue
    .line 5550
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .registers 2

    .prologue
    .line 5929
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .registers 2

    .prologue
    .line 5908
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .registers 2

    .prologue
    .line 5887
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .registers 6
    .parameter "menu"

    .prologue
    .line 4407
    invoke-virtual {p0}, Landroid/view/View;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    .line 4411
    .local v1, menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    move-object v2, v0

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 4413
    invoke-virtual {p0, p1}, Landroid/view/View;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 4414
    iget-object v2, p0, Landroid/view/View;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v2, :cond_17

    .line 4415
    iget-object v2, p0, Landroid/view/View;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-interface {v2, p1, p0, v1}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 4420
    :cond_17
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 4422
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_28

    .line 4423
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p1}, Landroid/view/ViewParent;->createContextMenu(Landroid/view/ContextMenu;)V

    .line 4425
    :cond_28
    return-void
.end method

.method createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .registers 16
    .parameter "quality"
    .parameter "backgroundColor"
    .parameter "skipChildren"

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x3f00

    .line 6712
    iget v8, p0, Landroid/view/View;->mRight:I

    iget v9, p0, Landroid/view/View;->mLeft:I

    sub-int v7, v8, v9

    .line 6713
    .local v7, width:I
    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int v4, v8, v9

    .line 6715
    .local v4, height:I
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 6716
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_30

    iget v8, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move v6, v8

    .line 6717
    .local v6, scale:F
    :goto_16
    int-to-float v8, v7

    mul-float/2addr v8, v6

    add-float/2addr v8, v10

    float-to-int v7, v8

    .line 6718
    int-to-float v8, v4

    mul-float/2addr v8, v6

    add-float/2addr v8, v10

    float-to-int v4, v8

    .line 6720
    if-lez v7, :cond_34

    move v8, v7

    :goto_21
    if-lez v4, :cond_36

    move v9, v4

    :goto_24
    invoke-static {v8, v9, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 6721
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_38

    .line 6722
    new-instance v8, Ljava/lang/OutOfMemoryError;

    invoke-direct {v8}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v8

    .line 6716
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #scale:F
    :cond_30
    const/high16 v8, 0x3f80

    move v6, v8

    goto :goto_16

    .restart local v6       #scale:F
    :cond_34
    move v8, v11

    .line 6720
    goto :goto_21

    :cond_36
    move v9, v11

    goto :goto_24

    .line 6725
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :cond_38
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v8}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 6728
    if-eqz v0, :cond_92

    .line 6729
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 6730
    .local v2, canvas:Landroid/graphics/Canvas;
    if-nez v2, :cond_50

    .line 6731
    new-instance v2, Landroid/graphics/Canvas;

    .end local v2           #canvas:Landroid/graphics/Canvas;
    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 6733
    .restart local v2       #canvas:Landroid/graphics/Canvas;
    :cond_50
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 6738
    const/4 v8, 0x0

    iput-object v8, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 6744
    :goto_56
    const/high16 v8, -0x100

    and-int/2addr v8, p2

    if-eqz v8, :cond_5e

    .line 6745
    invoke-virtual {v1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 6748
    :cond_5e
    invoke-virtual {p0}, Landroid/view/View;->computeScroll()V

    .line 6749
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 6750
    .local v5, restoreCount:I
    invoke-virtual {v2, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 6751
    iget v8, p0, Landroid/view/View;->mScrollX:I

    neg-int v8, v8

    int-to-float v8, v8

    iget v9, p0, Landroid/view/View;->mScrollY:I

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6754
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6755
    .local v3, flags:I
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    const v9, -0x600001

    and-int/2addr v8, v9

    iput v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6758
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v8, v8, 0x80

    const/16 v9, 0x80

    if-ne v8, v9, :cond_98

    .line 6759
    invoke-virtual {p0, v2}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 6764
    :goto_88
    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6766
    invoke-virtual {v2, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 6768
    if-eqz v0, :cond_91

    .line 6770
    iput-object v2, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 6773
    :cond_91
    return-object v1

    .line 6741
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #flags:I
    .end local v5           #restoreCount:I
    :cond_92
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v2       #canvas:Landroid/graphics/Canvas;
    goto :goto_56

    .line 6761
    .restart local v3       #flags:I
    .restart local v5       #restoreCount:I
    :cond_98
    invoke-virtual {p0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_88
.end method

.method public debug()V
    .registers 2

    .prologue
    .line 8207
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->debug(I)V

    .line 8208
    return-void
.end method

.method protected debug(I)V
    .registers 11
    .parameter "depth"

    .prologue
    const-string v8, ")"

    const-string/jumbo v7, "}"

    const-string v6, ", "

    const-string v5, "View"

    .line 8220
    const/4 v3, 0x1

    sub-int v3, p1, v3

    invoke-static {v3}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 8222
    .local v1, output:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8223
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    .line 8224
    .local v0, id:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_4b

    .line 8225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8227
    :cond_4b
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 8228
    .local v2, tag:Ljava/lang/Object;
    if-eqz v2, :cond_6e

    .line 8229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8231
    :cond_6e
    const-string v3, "View"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8233
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_95

    .line 8234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " FOCUSED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8235
    const-string v3, "View"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8238
    :cond_95
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 8239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "frame={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mLeft:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mTop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mRight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "} scroll={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "} "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8242
    const-string v3, "View"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8244
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    if-nez v3, :cond_10b

    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    if-nez v3, :cond_10b

    iget v3, p0, Landroid/view/View;->mPaddingRight:I

    if-nez v3, :cond_10b

    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    if-eqz v3, :cond_159

    .line 8246
    :cond_10b
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 8247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "padding={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8249
    const-string v3, "View"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8252
    :cond_159
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 8253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mMeasureWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mMeasuredWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMeasureHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mMeasuredHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8255
    const-string v3, "View"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8257
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 8258
    iget-object v3, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez v3, :cond_237

    .line 8259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BAD! no layout params"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8263
    :goto_1a2
    const-string v3, "View"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8265
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 8266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "flags={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mViewFlags:I

    invoke-static {v4}, Landroid/view/View;->printFlags(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8269
    const-string v3, "View"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8271
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 8272
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "privateFlags={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    invoke-static {v4}, Landroid/view/View;->printPrivateFlags(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8275
    const-string v3, "View"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8276
    return-void

    .line 8261
    :cond_237
    iget-object v3, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1a2
.end method

.method public destroyDrawingCache()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 6498
    iget-object v1, p0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_14

    .line 6499
    iget-object v1, p0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 6500
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 6501
    :cond_12
    iput-object v2, p0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    .line 6503
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_14
    iget-object v1, p0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_27

    .line 6504
    iget-object v1, p0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 6505
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 6506
    :cond_25
    iput-object v2, p0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    .line 6508
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_27
    return-void
.end method

.method dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .registers 6
    .parameter "info"
    .parameter "visibility"

    .prologue
    .line 6198
    iput-object p1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 6199
    iget v1, p0, Landroid/view/View;->mWindowAttachCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/view/View;->mWindowAttachCount:I

    .line 6200
    iget-object v1, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_16

    .line 6201
    iget-object v1, p1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v2, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->merge(Landroid/view/ViewTreeObserver;)V

    .line 6202
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    .line 6204
    :cond_16
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x8

    and-int/2addr v1, v2

    if-eqz v1, :cond_2b

    .line 6205
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6206
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x10

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6208
    :cond_2b
    invoke-virtual {p0, p2}, Landroid/view/View;->performCollectViewAttributes(I)V

    .line 6209
    invoke-virtual {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 6210
    iget v0, p1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 6211
    .local v0, vis:I
    const/16 v1, 0x8

    if-eq v0, v1, :cond_3a

    .line 6212
    invoke-virtual {p0, v0}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 6214
    :cond_3a
    return-void
.end method

.method dispatchCollectViewAttributes(I)V
    .registers 2
    .parameter "visibility"

    .prologue
    .line 4177
    invoke-virtual {p0, p1}, Landroid/view/View;->performCollectViewAttributes(I)V

    .line 4178
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 4156
    invoke-virtual {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4157
    return-void
.end method

.method protected dispatchConsistencyCheck(I)Z
    .registers 3
    .parameter "consistency"

    .prologue
    .line 8152
    invoke-virtual {p0, p1}, Landroid/view/View;->onConsistencyCheck(I)Z

    move-result v0

    return v0
.end method

.method dispatchDetachedFromWindow()V
    .registers 5

    .prologue
    const/16 v2, 0x8

    .line 6218
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 6219
    .local v0, info:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_d

    .line 6220
    iget v1, v0, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 6221
    .local v1, vis:I
    if-eq v1, v2, :cond_d

    .line 6222
    invoke-virtual {p0, v2}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 6226
    .end local v1           #vis:I
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 6227
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v3, 0x10

    and-int/2addr v2, v3

    if-eqz v2, :cond_26

    .line 6228
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6229
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    const v3, -0x100001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6231
    :cond_26
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 6232
    return-void
.end method

.method public dispatchDisplayHint(I)V
    .registers 2
    .parameter "hint"

    .prologue
    .line 4056
    invoke-virtual {p0, p1}, Landroid/view/View;->onDisplayHint(I)V

    .line 4057
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 4812
    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .registers 1

    .prologue
    .line 3839
    invoke-virtual {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 3840
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 3903
    iget-object v0, p0, Landroid/view/View;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    if-eqz v0, :cond_18

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_18

    iget-object v0, p0, Landroid/view/View;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-interface {v0, p0, v1, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3905
    const/4 v0, 0x1

    .line 3908
    :goto_17
    return v0

    :cond_18
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    :goto_20
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_17

    :cond_25
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 3882
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 3919
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 2843
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6325
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget v1, p0, Landroid/view/View;->mID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    .line 6326
    iget v1, p0, Landroid/view/View;->mID:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 6327
    .local v0, state:Landroid/os/Parcelable;
    if-eqz v0, :cond_29

    .line 6330
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6331
    invoke-virtual {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6332
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    if-nez v1, :cond_29

    .line 6333
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6338
    .end local v0           #state:Landroid/os/Parcelable;
    :cond_29
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6259
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget v1, p0, Landroid/view/View;->mID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2e

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_2e

    .line 6260
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6261
    invoke-virtual {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 6262
    .local v0, state:Landroid/os/Parcelable;
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    if-nez v1, :cond_27

    .line 6263
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6266
    :cond_27
    if-eqz v0, :cond_2e

    .line 6269
    iget v1, p0, Landroid/view/View;->mID:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6272
    .end local v0           #state:Landroid/os/Parcelable;
    :cond_2e
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .registers 2
    .parameter "pressed"

    .prologue
    .line 3432
    return-void
.end method

.method protected dispatchSetSelected(Z)V
    .registers 2
    .parameter "selected"

    .prologue
    .line 7818
    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .registers 1

    .prologue
    .line 3821
    invoke-virtual {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 3822
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 3930
    invoke-virtual {p0, p1}, Landroid/view/View;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 3931
    const/4 v0, 0x0

    .line 3938
    :goto_7
    return v0

    .line 3934
    :cond_8
    iget-object v0, p0, Landroid/view/View;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_1c

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroid/view/View;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3936
    const/4 v0, 0x1

    goto :goto_7

    .line 3938
    :cond_1c
    invoke-virtual {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_7
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 3966
    invoke-virtual {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 4
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 3565
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchVisibilityChanged(Landroid/view/View;I)V
    .registers 3
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 4026
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 4027
    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasFocus"

    .prologue
    .line 3977
    invoke-virtual {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 3978
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .registers 2
    .parameter "visibility"

    .prologue
    .line 4080
    invoke-virtual {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 4081
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 43
    .parameter "canvas"

    .prologue
    .line 6886
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v29, v0

    .line 6887
    .local v29, privateFlags:I
    const/high16 v3, 0x60

    and-int v3, v3, v29

    const/high16 v4, 0x40

    if-ne v3, v4, :cond_9d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v3, v0

    if-eqz v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v3, v0

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    if-nez v3, :cond_9d

    :cond_1e
    const/4 v3, 0x1

    move v13, v3

    .line 6889
    .local v13, dirtyOpaque:Z
    :goto_20
    const v3, -0x600001

    and-int v3, v3, v29

    or-int/lit8 v3, v3, 0x20

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 6906
    if-nez v13, :cond_73

    .line 6907
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    move-object v10, v0

    .line 6908
    .local v10, background:Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_73

    .line 6909
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v33, v0

    .line 6910
    .local v33, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v34, v0

    .line 6912
    .local v34, scrollY:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/View;->mBackgroundSizeChanged:Z

    move v3, v0

    if-eqz v3, :cond_69

    .line 6913
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move v6, v0

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move v7, v0

    sub-int/2addr v6, v7

    invoke-virtual {v10, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6914
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 6917
    :cond_69
    or-int v3, v33, v34

    if-nez v3, :cond_a0

    .line 6918
    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6928
    .end local v10           #background:Landroid/graphics/drawable/Drawable;
    .end local v33           #scrollX:I
    .end local v34           #scrollY:I
    :cond_73
    :goto_73
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v40, v0

    .line 6929
    .local v40, viewFlags:I
    move/from16 v0, v40

    and-int/lit16 v0, v0, 0x1000

    move v3, v0

    if-eqz v3, :cond_c7

    const/4 v3, 0x1

    move/from16 v21, v3

    .line 6930
    .local v21, horizontalEdges:Z
    :goto_83
    move/from16 v0, v40

    and-int/lit16 v0, v0, 0x2000

    move v3, v0

    if-eqz v3, :cond_cb

    const/4 v3, 0x1

    move/from16 v39, v3

    .line 6931
    .local v39, verticalEdges:Z
    :goto_8d
    if-nez v39, :cond_cf

    if-nez v21, :cond_cf

    .line 6933
    if-nez v13, :cond_96

    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 6936
    :cond_96
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 6939
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDrawScrollBars(Landroid/graphics/Canvas;)V

    .line 7082
    :goto_9c
    return-void

    .line 6887
    .end local v13           #dirtyOpaque:Z
    .end local v21           #horizontalEdges:Z
    .end local v39           #verticalEdges:Z
    .end local v40           #viewFlags:I
    :cond_9d
    const/4 v3, 0x0

    move v13, v3

    goto :goto_20

    .line 6920
    .restart local v10       #background:Landroid/graphics/drawable/Drawable;
    .restart local v13       #dirtyOpaque:Z
    .restart local v33       #scrollX:I
    .restart local v34       #scrollY:I
    :cond_a0
    move/from16 v0, v33

    int-to-float v0, v0

    move v3, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6921
    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6922
    move/from16 v0, v33

    neg-int v0, v0

    move v3, v0

    int-to-float v3, v3

    move/from16 v0, v34

    neg-int v0, v0

    move v4, v0

    int-to-float v4, v4

    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_73

    .line 6929
    .end local v10           #background:Landroid/graphics/drawable/Drawable;
    .end local v33           #scrollX:I
    .end local v34           #scrollY:I
    .restart local v40       #viewFlags:I
    :cond_c7
    const/4 v3, 0x0

    move/from16 v21, v3

    goto :goto_83

    .line 6930
    .restart local v21       #horizontalEdges:Z
    :cond_cb
    const/4 v3, 0x0

    move/from16 v39, v3

    goto :goto_8d

    .line 6952
    .restart local v39       #verticalEdges:Z
    :cond_cf
    const/16 v17, 0x0

    .line 6953
    .local v17, drawTop:Z
    const/4 v14, 0x0

    .line 6954
    .local v14, drawBottom:Z
    const/4 v15, 0x0

    .line 6955
    .local v15, drawLeft:Z
    const/16 v16, 0x0

    .line 6957
    .local v16, drawRight:Z
    const/16 v38, 0x0

    .line 6958
    .local v38, topFadeStrength:F
    const/4 v12, 0x0

    .line 6959
    .local v12, bottomFadeStrength:F
    const/16 v23, 0x0

    .line 6960
    .local v23, leftFadeStrength:F
    const/16 v31, 0x0

    .line 6963
    .local v31, rightFadeStrength:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v27, v0

    .line 6964
    .local v27, paddingLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v28, v0

    .line 6966
    .local v28, paddingTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isPaddingOffsetRequired()Z

    move-result v26

    .line 6967
    .local v26, offsetRequired:Z
    if-eqz v26, :cond_fa

    .line 6968
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeftPaddingOffset()I

    move-result v3

    add-int v27, v27, v3

    .line 6969
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTopPaddingOffset()I

    move-result v3

    add-int v28, v28, v3

    .line 6972
    :cond_fa
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v3, v0

    add-int v22, v3, v27

    .line 6973
    .local v22, left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move v3, v0

    add-int v3, v3, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move v4, v0

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move v4, v0

    sub-int/2addr v3, v4

    sub-int v30, v3, v27

    .line 6974
    .local v30, right:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v3, v0

    add-int v37, v3, v28

    .line 6975
    .local v37, top:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move v3, v0

    add-int v3, v3, v37

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move v4, v0

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move v4, v0

    sub-int/2addr v3, v4

    sub-int v11, v3, v28

    .line 6977
    .local v11, bottom:I
    if-eqz v26, :cond_13f

    .line 6978
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRightPaddingOffset()I

    move-result v3

    add-int v30, v30, v3

    .line 6979
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottomPaddingOffset()I

    move-result v3

    add-int/2addr v11, v3

    .line 6982
    :cond_13f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    move-object/from16 v35, v0

    .line 6983
    .local v35, scrollabilityCache:Landroid/view/View$ScrollabilityCache;
    move-object/from16 v0, v35

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    move/from16 v24, v0

    .line 6987
    .local v24, length:I
    if-eqz v39, :cond_157

    add-int v3, v37, v24

    sub-int v4, v11, v24

    if-le v3, v4, :cond_157

    .line 6988
    sub-int v3, v11, v37

    div-int/lit8 v24, v3, 0x2

    .line 6992
    :cond_157
    if-eqz v21, :cond_163

    add-int v3, v22, v24

    sub-int v4, v30, v24

    if-le v3, v4, :cond_163

    .line 6993
    sub-int v3, v30, v22

    div-int/lit8 v24, v3, 0x2

    .line 6996
    :cond_163
    if-eqz v39, :cond_192

    .line 6997
    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTopFadingEdgeStrength()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v38

    .line 6998
    const/4 v3, 0x0

    cmpl-float v3, v38, v3

    if-ltz v3, :cond_33a

    const/4 v3, 0x1

    move/from16 v17, v3

    .line 6999
    :goto_17c
    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottomFadingEdgeStrength()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 7000
    const/4 v3, 0x0

    cmpl-float v3, v12, v3

    if-ltz v3, :cond_33f

    const/4 v3, 0x1

    move v14, v3

    .line 7003
    :cond_192
    :goto_192
    if-eqz v21, :cond_1c1

    .line 7004
    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v23

    .line 7005
    const/4 v3, 0x0

    cmpl-float v3, v23, v3

    if-ltz v3, :cond_343

    const/4 v3, 0x1

    move v15, v3

    .line 7006
    :goto_1aa
    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v31

    .line 7007
    const/4 v3, 0x0

    cmpl-float v3, v31, v3

    if-ltz v3, :cond_347

    const/4 v3, 0x1

    move/from16 v16, v3

    .line 7010
    :cond_1c1
    :goto_1c1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v32

    .line 7012
    .local v32, saveCount:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSolidColor()I

    move-result v36

    .line 7013
    .local v36, solidColor:I
    if-nez v36, :cond_34c

    .line 7014
    const/16 v20, 0x4

    .line 7016
    .local v20, flags:I
    if-eqz v17, :cond_1e5

    .line 7017
    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    add-int v3, v37, v24

    int-to-float v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x4

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 7020
    :cond_1e5
    if-eqz v14, :cond_1fa

    .line 7021
    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    sub-int v3, v11, v24

    int-to-float v5, v3

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    int-to-float v7, v11

    const/4 v8, 0x0

    const/4 v9, 0x4

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 7024
    :cond_1fa
    if-eqz v15, :cond_20f

    .line 7025
    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v5, v0

    add-int v3, v22, v24

    int-to-float v6, v3

    int-to-float v7, v11

    const/4 v8, 0x0

    const/4 v9, 0x4

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 7028
    :cond_20f
    if-eqz v16, :cond_224

    .line 7029
    sub-int v3, v30, v24

    int-to-float v4, v3

    move/from16 v0, v37

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    int-to-float v7, v11

    const/4 v8, 0x0

    const/4 v9, 0x4

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 7036
    .end local v20           #flags:I
    :cond_224
    :goto_224
    if-nez v13, :cond_229

    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 7039
    :cond_229
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 7042
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    move-object v8, v0

    .line 7043
    .local v8, p:Landroid/graphics/Paint;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v25, v0

    .line 7044
    .local v25, matrix:Landroid/graphics/Matrix;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    move-object/from16 v18, v0

    .line 7045
    .local v18, fade:Landroid/graphics/Shader;
    move-object/from16 v0, v35

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    move v3, v0

    move v0, v3

    int-to-float v0, v0

    move/from16 v19, v0

    .line 7047
    .local v19, fadeHeight:F
    if-eqz v17, :cond_27d

    .line 7048
    const/high16 v3, 0x3f80

    mul-float v4, v19, v38

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 7049
    move/from16 v0, v22

    int-to-float v0, v0

    move v3, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 7050
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 7051
    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    add-int v3, v37, v24

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 7054
    :cond_27d
    if-eqz v14, :cond_2b6

    .line 7055
    const/high16 v3, 0x3f80

    mul-float v4, v19, v12

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 7056
    const/high16 v3, 0x4334

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 7057
    move/from16 v0, v22

    int-to-float v0, v0

    move v3, v0

    int-to-float v4, v11

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 7058
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 7059
    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    sub-int v3, v11, v24

    int-to-float v5, v3

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    int-to-float v7, v11

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 7062
    :cond_2b6
    if-eqz v15, :cond_2f2

    .line 7063
    const/high16 v3, 0x3f80

    mul-float v4, v19, v23

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 7064
    const/high16 v3, -0x3d4c

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 7065
    move/from16 v0, v22

    int-to-float v0, v0

    move v3, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 7066
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 7067
    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v5, v0

    add-int v3, v22, v24

    int-to-float v6, v3

    int-to-float v7, v11

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 7070
    :cond_2f2
    if-eqz v16, :cond_32e

    .line 7071
    const/high16 v3, 0x3f80

    mul-float v4, v19, v31

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 7072
    const/high16 v3, 0x42b4

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 7073
    move/from16 v0, v30

    int-to-float v0, v0

    move v3, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 7074
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 7075
    sub-int v3, v30, v24

    int-to-float v4, v3

    move/from16 v0, v37

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    int-to-float v7, v11

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 7078
    :cond_32e
    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 7081
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDrawScrollBars(Landroid/graphics/Canvas;)V

    goto/16 :goto_9c

    .line 6998
    .end local v8           #p:Landroid/graphics/Paint;
    .end local v18           #fade:Landroid/graphics/Shader;
    .end local v19           #fadeHeight:F
    .end local v25           #matrix:Landroid/graphics/Matrix;
    .end local v32           #saveCount:I
    .end local v36           #solidColor:I
    :cond_33a
    const/4 v3, 0x0

    move/from16 v17, v3

    goto/16 :goto_17c

    .line 7000
    :cond_33f
    const/4 v3, 0x0

    move v14, v3

    goto/16 :goto_192

    .line 7005
    :cond_343
    const/4 v3, 0x0

    move v15, v3

    goto/16 :goto_1aa

    .line 7007
    :cond_347
    const/4 v3, 0x0

    move/from16 v16, v3

    goto/16 :goto_1c1

    .line 7032
    .restart local v32       #saveCount:I
    .restart local v36       #solidColor:I
    :cond_34c
    invoke-virtual/range {v35 .. v36}, Landroid/view/View$ScrollabilityCache;->setFadeColor(I)V

    goto/16 :goto_224
.end method

.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 7425
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 7426
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 7427
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 7429
    :cond_11
    return-void
.end method

.method public findFocus()Landroid/view/View;
    .registers 2

    .prologue
    .line 2925
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    move-object v0, p0

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;
    .registers 6
    .parameter "root"
    .parameter "direction"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 3577
    sparse-switch p2, :sswitch_data_3c

    move-object v0, v1

    .line 3591
    :goto_6
    return-object v0

    .line 3579
    :sswitch_7
    iget v0, p0, Landroid/view/View;->mNextFocusLeftId:I

    if-ne v0, v2, :cond_d

    move-object v0, v1

    goto :goto_6

    .line 3580
    :cond_d
    iget v0, p0, Landroid/view/View;->mNextFocusLeftId:I

    invoke-static {p1, v0}, Landroid/view/View;->findViewShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_6

    .line 3582
    :sswitch_14
    iget v0, p0, Landroid/view/View;->mNextFocusRightId:I

    if-ne v0, v2, :cond_1a

    move-object v0, v1

    goto :goto_6

    .line 3583
    :cond_1a
    iget v0, p0, Landroid/view/View;->mNextFocusRightId:I

    invoke-static {p1, v0}, Landroid/view/View;->findViewShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_6

    .line 3585
    :sswitch_21
    iget v0, p0, Landroid/view/View;->mNextFocusUpId:I

    if-ne v0, v2, :cond_27

    move-object v0, v1

    goto :goto_6

    .line 3586
    :cond_27
    iget v0, p0, Landroid/view/View;->mNextFocusUpId:I

    invoke-static {p1, v0}, Landroid/view/View;->findViewShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_6

    .line 3588
    :sswitch_2e
    iget v0, p0, Landroid/view/View;->mNextFocusDownId:I

    if-ne v0, v2, :cond_34

    move-object v0, v1

    goto :goto_6

    .line 3589
    :cond_34
    iget v0, p0, Landroid/view/View;->mNextFocusDownId:I

    invoke-static {p1, v0}, Landroid/view/View;->findViewShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_6

    .line 3577
    nop

    :sswitch_data_3c
    .sparse-switch
        0x11 -> :sswitch_7
        0x21 -> :sswitch_21
        0x42 -> :sswitch_14
        0x82 -> :sswitch_2e
    .end sparse-switch
.end method

.method public final findViewById(I)Landroid/view/View;
    .registers 3
    .parameter "id"

    .prologue
    .line 7954
    if-gez p1, :cond_4

    .line 7955
    const/4 v0, 0x0

    .line 7957
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    goto :goto_3
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .registers 3
    .parameter "id"

    .prologue
    .line 7928
    iget v0, p0, Landroid/view/View;->mID:I

    if-ne p1, v0, :cond_6

    move-object v0, p0

    .line 7931
    :goto_5
    return-object v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    .registers 3
    .parameter "tag"

    .prologue
    .line 7968
    if-nez p1, :cond_4

    .line 7969
    const/4 v0, 0x0

    .line 7971
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    goto :goto_3
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .registers 3
    .parameter "tag"

    .prologue
    .line 7940
    if-eqz p1, :cond_c

    iget-object v0, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, p0

    .line 7943
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .registers 4
    .parameter "insets"

    .prologue
    .line 3125
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    .line 3126
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 3127
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/view/View;->mPaddingTop:I

    .line 3128
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/view/View;->mPaddingRight:I

    .line 3129
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Landroid/view/View;->mPaddingBottom:I

    .line 3130
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 3131
    const/4 v0, 0x1

    .line 3133
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public focusSearch(I)Landroid/view/View;
    .registers 3
    .parameter "direction"

    .prologue
    .line 3546
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_b

    .line 3547
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3549
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public forceLayout()V
    .registers 2

    .prologue
    .line 8330
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8331
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 12
    .parameter "region"

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 8675
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 8676
    .local v6, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz p1, :cond_2f

    if-eqz v6, :cond_2f

    .line 8677
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8678
    .local v8, pflags:I
    and-int/lit16 v0, v8, 0x80

    if-nez v0, :cond_30

    .line 8681
    iget-object v7, v6, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    .line 8682
    .local v7, location:[I
    invoke-virtual {p0, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 8683
    aget v1, v7, v3

    aget v2, v7, v9

    aget v0, v7, v3

    iget v3, p0, Landroid/view/View;->mRight:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v0, v3

    aget v0, v7, v9

    iget v4, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v0, v4

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int v4, v0, v4

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 8692
    .end local v7           #location:[I
    .end local v8           #pflags:I
    :cond_2f
    :goto_2f
    return v9

    .line 8685
    .restart local v8       #pflags:I
    :cond_30
    and-int/lit16 v0, v8, 0x100

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2f

    .line 8689
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V

    goto :goto_2f
.end method

.method public getAnimation()Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 8578
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getApplicationWindowToken()Landroid/os/IBinder;
    .registers 4

    .prologue
    .line 6172
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 6173
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_c

    .line 6174
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    .line 6175
    .local v1, appWindowToken:Landroid/os/IBinder;
    if-nez v1, :cond_a

    .line 6176
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    :cond_a
    move-object v2, v1

    .line 6180
    .end local v1           #appWindowToken:Landroid/os/IBinder;
    :goto_b
    return-object v2

    :cond_c
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 7687
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBaseline()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 8304
    const/4 v0, -0x1

    return v0
.end method

.method public final getBottom()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 4920
    iget v0, p0, Landroid/view/View;->mBottom:I

    return v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 3

    .prologue
    .line 5647
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_12

    const/high16 v0, 0x3f80

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected getBottomPaddingOffset()I
    .registers 2

    .prologue
    .line 6870
    const/4 v0, 0x0

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 2858
    iget-object v0, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 4221
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .prologue
    .line 4438
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDrawableState()[I
    .registers 2

    .prologue
    .line 7460
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    if-eqz v0, :cond_d

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_d

    .line 7461
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    .line 7465
    :goto_c
    return-object v0

    .line 7463
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/View;->mDrawableState:[I

    .line 7464
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7465
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    goto :goto_c
.end method

.method public getDrawingCache()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 6446
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDrawingCache(Z)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "autoScale"

    .prologue
    const/high16 v3, 0x2

    const v2, 0x8000

    const/4 v1, 0x0

    .line 6477
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_d

    move-object v0, v1

    .line 6483
    .end local p0
    :goto_c
    return-object v0

    .line 6480
    .restart local p0
    :cond_d
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_15

    .line 6481
    invoke-virtual {p0, p1}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 6483
    :cond_15
    if-eqz p1, :cond_27

    iget-object v0, p0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_1d

    move-object v0, v1

    goto :goto_c

    :cond_1d
    iget-object v0, p0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    move-object v0, p0

    goto :goto_c

    .restart local p0
    :cond_27
    iget-object v0, p0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_2d

    move-object v0, v1

    goto :goto_c

    :cond_2d
    iget-object v0, p0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    move-object v0, p0

    goto :goto_c
.end method

.method public getDrawingCacheBackgroundColor()I
    .registers 2

    .prologue
    .line 6534
    iget v0, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    return v0
.end method

.method public getDrawingCacheQuality()I
    .registers 3

    .prologue
    .line 2963
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x18

    and-int/2addr v0, v1

    return v0
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .registers 5
    .parameter "outRect"

    .prologue
    .line 4875
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 4876
    iget v0, p0, Landroid/view/View;->mScrollY:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 4877
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 4878
    iget v0, p0, Landroid/view/View;->mScrollY:I

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 4879
    return-void
.end method

.method public getDrawingTime()J
    .registers 3

    .prologue
    .line 6369
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-wide v0, v0, Landroid/view/View$AttachInfo;->mDrawingTime:J

    :goto_8
    return-wide v0

    :cond_9
    const-wide/16 v0, 0x0

    goto :goto_8
.end method

.method public getFilterTouchesWhenObscured()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 3494
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getFocusables(I)Ljava/util/ArrayList;
    .registers 4
    .parameter "direction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3611
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3612
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 3613
    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .registers 2
    .parameter "r"

    .prologue
    .line 4963
    invoke-virtual {p0, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4964
    return-void
.end method

.method public final getGlobalVisibleRect(Landroid/graphics/Rect;)Z
    .registers 3
    .parameter "r"

    .prologue
    .line 4994
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    return v0
.end method

.method public getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .registers 8
    .parameter "r"
    .parameter "globalOffset"

    .prologue
    const/4 v4, 0x0

    .line 4981
    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int v1, v2, v3

    .line 4982
    .local v1, width:I
    iget v2, p0, Landroid/view/View;->mBottom:I

    iget v3, p0, Landroid/view/View;->mTop:I

    sub-int v0, v2, v3

    .line 4983
    .local v0, height:I
    if-lez v1, :cond_2f

    if-lez v0, :cond_2f

    .line 4984
    invoke-virtual {p1, v4, v4, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 4985
    if-eqz p2, :cond_1f

    .line 4986
    iget v2, p0, Landroid/view/View;->mScrollX:I

    neg-int v2, v2

    iget v3, p0, Landroid/view/View;->mScrollY:I

    neg-int v3, v3

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 4988
    :cond_1f
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p0, p1, p2}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_2b
    const/4 v2, 0x1

    .line 4990
    :goto_2c
    return v2

    :cond_2d
    move v2, v4

    .line 4988
    goto :goto_2c

    :cond_2f
    move v2, v4

    .line 4990
    goto :goto_2c
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 5386
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    .line 5387
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 5389
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final getHeight()I
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 4864
    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .registers 6
    .parameter "outRect"

    .prologue
    .line 4949
    iget v0, p0, Landroid/view/View;->mLeft:I

    iget v1, p0, Landroid/view/View;->mTop:I

    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 4950
    return-void
.end method

.method public getHorizontalFadingEdgeLength()I
    .registers 3

    .prologue
    .line 2290
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalFadingEdgeEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2291
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 2292
    .local v0, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_d

    .line 2293
    iget v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 2296
    .end local v0           #cache:Landroid/view/View$ScrollabilityCache;
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method protected getHorizontalScrollbarHeight()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2328
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 2329
    .local v0, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_12

    .line 2330
    iget-object v1, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 2331
    .local v1, scrollBar:Landroid/widget/ScrollBarDrawable;
    if-eqz v1, :cond_12

    .line 2332
    invoke-virtual {v1, v3}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v2

    .line 2333
    .local v2, size:I
    if-gtz v2, :cond_11

    .line 2334
    iget v2, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    :cond_11
    move v3, v2

    .line 2340
    .end local v1           #scrollBar:Landroid/widget/ScrollBarDrawable;
    .end local v2           #size:I
    :cond_12
    return v3
.end method

.method public getId()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 8026
    iget v0, p0, Landroid/view/View;->mID:I

    return v0
.end method

.method public getKeepScreenOn()Z
    .registers 3

    .prologue
    .line 2994
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;
    .registers 2

    .prologue
    .line 3868
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "layout_"
    .end annotation

    .prologue
    .line 5036
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method public final getLeft()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 4930
    iget v0, p0, Landroid/view/View;->mLeft:I

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .registers 2

    .prologue
    .line 5662
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    if-lez v0, :cond_9

    const/high16 v0, 0x3f80

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected getLeftPaddingOffset()I
    .registers 2

    .prologue
    .line 6828
    const/4 v0, 0x0

    return v0
.end method

.method public final getLocalVisibleRect(Landroid/graphics/Rect;)Z
    .registers 5
    .parameter "r"

    .prologue
    .line 4998
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4999
    .local v0, offset:Landroid/graphics/Point;
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 5000
    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 5001
    const/4 v1, 0x1

    .line 5003
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public getLocationInWindow([I)V
    .registers 11
    .parameter "location"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 7899
    if-eqz p1, :cond_8

    array-length v4, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_10

    .line 7900
    :cond_8
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "location must be an array of two integers"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 7904
    :cond_10
    iget v4, p0, Landroid/view/View;->mLeft:I

    aput v4, p1, v8

    .line 7905
    iget v4, p0, Landroid/view/View;->mTop:I

    aput v4, p1, v7

    .line 7907
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 7908
    .local v2, viewParent:Landroid/view/ViewParent;
    :goto_1a
    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_39

    .line 7909
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 7910
    .local v1, view:Landroid/view/View;
    aget v4, p1, v8

    iget v5, v1, Landroid/view/View;->mLeft:I

    iget v6, v1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    aput v4, p1, v8

    .line 7911
    aget v4, p1, v7

    iget v5, v1, Landroid/view/View;->mTop:I

    iget v6, v1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    aput v4, p1, v7

    .line 7912
    iget-object v2, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 7913
    goto :goto_1a

    .line 7915
    .end local v1           #view:Landroid/view/View;
    :cond_39
    instance-of v4, v2, Landroid/view/ViewRoot;

    if-eqz v4, :cond_48

    .line 7917
    move-object v0, v2

    check-cast v0, Landroid/view/ViewRoot;

    move-object v3, v0

    .line 7918
    .local v3, vr:Landroid/view/ViewRoot;
    aget v4, p1, v7

    iget v5, v3, Landroid/view/ViewRoot;->mCurScrollY:I

    sub-int/2addr v4, v5

    aput v4, p1, v7

    .line 7920
    .end local v3           #vr:Landroid/view/ViewRoot;
    :cond_48
    return-void
.end method

.method public getLocationOnScreen([I)V
    .registers 6
    .parameter "location"

    .prologue
    .line 7882
    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 7884
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 7885
    .local v0, info:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_17

    .line 7886
    const/4 v1, 0x0

    aget v2, p1, v1

    iget v3, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    add-int/2addr v2, v3

    aput v2, p1, v1

    .line 7887
    const/4 v1, 0x1

    aget v2, p1, v1

    iget v3, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    add-int/2addr v2, v3

    aput v2, p1, v1

    .line 7889
    :cond_17
    return-void
.end method

.method public final getMeasuredHeight()I
    .registers 2

    .prologue
    .line 4900
    iget v0, p0, Landroid/view/View;->mMeasuredHeight:I

    return v0
.end method

.method public final getMeasuredWidth()I
    .registers 2

    .prologue
    .line 4889
    iget v0, p0, Landroid/view/View;->mMeasuredWidth:I

    return v0
.end method

.method public getNextFocusDownId()I
    .registers 2

    .prologue
    .line 3077
    iget v0, p0, Landroid/view/View;->mNextFocusDownId:I

    return v0
.end method

.method public getNextFocusLeftId()I
    .registers 2

    .prologue
    .line 3017
    iget v0, p0, Landroid/view/View;->mNextFocusLeftId:I

    return v0
.end method

.method public getNextFocusRightId()I
    .registers 2

    .prologue
    .line 3037
    iget v0, p0, Landroid/view/View;->mNextFocusRightId:I

    return v0
.end method

.method public getNextFocusUpId()I
    .registers 2

    .prologue
    .line 3057
    iget v0, p0, Landroid/view/View;->mNextFocusUpId:I

    return v0
.end method

.method public getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .registers 2

    .prologue
    .line 2441
    iget-object v0, p0, Landroid/view/View;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method public getOverScrollMode()I
    .registers 2

    .prologue
    .line 8981
    iget v0, p0, Landroid/view/View;->mOverScrollMode:I

    return v0
.end method

.method public getPaddingBottom()I
    .registers 2

    .prologue
    .line 7767
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .registers 2

    .prologue
    .line 7778
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .registers 2

    .prologue
    .line 7789
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    return v0
.end method

.method public getPaddingTop()I
    .registers 2

    .prologue
    .line 7756
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method public final getParent()Landroid/view/ViewParent;
    .registers 2

    .prologue
    .line 4821
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 7332
    iget-object v0, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public final getRight()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 4940
    iget v0, p0, Landroid/view/View;->mRight:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .registers 3

    .prologue
    .line 5676
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_12

    const/high16 v0, 0x3f80

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected getRightPaddingOffset()I
    .registers 2

    .prologue
    .line 6842
    const/4 v0, 0x0

    return v0
.end method

.method public getRootView()Landroid/view/View;
    .registers 4

    .prologue
    .line 7858
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_c

    .line 7859
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v2, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 7860
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_c

    move-object v2, v1

    .line 7871
    .end local v1           #v:Landroid/view/View;
    :goto_b
    return-object v2

    .line 7865
    :cond_c
    move-object v0, p0

    .line 7867
    .local v0, parent:Landroid/view/View;
    :goto_d
    iget-object v2, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_1c

    iget-object v2, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1c

    .line 7868
    iget-object v0, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .end local v0           #parent:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0       #parent:Landroid/view/View;
    goto :goto_d

    :cond_1c
    move-object v2, v0

    .line 7871
    goto :goto_b
.end method

.method public getScrollBarStyle()I
    .registers 3

    .prologue
    .line 5805
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x300

    and-int/2addr v0, v1

    return v0
.end method

.method public final getScrollX()I
    .registers 2

    .prologue
    .line 4833
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method public final getScrollY()I
    .registers 2

    .prologue
    .line 4844
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method public getSolidColor()I
    .registers 2

    .prologue
    .line 7096
    const/4 v0, 0x0

    return v0
.end method

.method public getSoundEffect()I
    .registers 2

    .prologue
    .line 2518
    iget v0, p0, Landroid/view/View;->mSoundEffect:I

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .registers 4

    .prologue
    .line 8513
    iget v1, p0, Landroid/view/View;->mMinHeight:I

    .line 8515
    .local v1, suggestedMinHeight:I
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_f

    .line 8516
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 8517
    .local v0, bgMinHeight:I
    if-ge v1, v0, :cond_f

    .line 8518
    move v1, v0

    .line 8522
    .end local v0           #bgMinHeight:I
    :cond_f
    return v1
.end method

.method protected getSuggestedMinimumWidth()I
    .registers 4

    .prologue
    .line 8537
    iget v1, p0, Landroid/view/View;->mMinWidth:I

    .line 8539
    .local v1, suggestedMinWidth:I
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_f

    .line 8540
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 8541
    .local v0, bgMinWidth:I
    if-ge v1, v0, :cond_f

    .line 8542
    move v1, v0

    .line 8546
    .end local v0           #bgMinWidth:I
    :cond_f
    return v1
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 8039
    iget-object v0, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getTag(I)Ljava/lang/Object;
    .registers 6
    .parameter "key"

    .prologue
    .line 8068
    const/4 v1, 0x0

    .line 8069
    .local v1, tags:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Object;>;"
    sget-object v3, Landroid/view/View;->sTagsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 8070
    :try_start_4
    sget-object v2, Landroid/view/View;->sTags:Ljava/util/WeakHashMap;

    if-eqz v2, :cond_12

    .line 8071
    sget-object v2, Landroid/view/View;->sTags:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/util/SparseArray;

    move-object v1, v0

    .line 8073
    :cond_12
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_1a

    .line 8075
    if-eqz v1, :cond_1d

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 8076
    :goto_19
    return-object v2

    .line 8073
    :catchall_1a
    move-exception v2

    :try_start_1b
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v2

    .line 8076
    :cond_1d
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public final getTop()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 4910
    iget v0, p0, Landroid/view/View;->mTop:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 2

    .prologue
    .line 5633
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    if-lez v0, :cond_9

    const/high16 v0, 0x3f80

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected getTopPaddingOffset()I
    .registers 2

    .prologue
    .line 6856
    const/4 v0, 0x0

    return v0
.end method

.method public getTouchDelegate()Landroid/view/TouchDelegate;
    .registers 2

    .prologue
    .line 4635
    iget-object v0, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    return-object v0
.end method

.method public getTouchables()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3665
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3666
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0, v0}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 3667
    return-object v0
.end method

.method public getVerticalFadingEdgeLength()I
    .registers 3

    .prologue
    .line 2258
    invoke-virtual {p0}, Landroid/view/View;->isVerticalFadingEdgeEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2259
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 2260
    .local v0, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_d

    .line 2261
    iget v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 2264
    .end local v0           #cache:Landroid/view/View$ScrollabilityCache;
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public getVerticalScrollbarWidth()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2306
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 2307
    .local v0, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_13

    .line 2308
    iget-object v1, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 2309
    .local v1, scrollBar:Landroid/widget/ScrollBarDrawable;
    if-eqz v1, :cond_13

    .line 2310
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v2

    .line 2311
    .local v2, size:I
    if-gtz v2, :cond_12

    .line 2312
    iget v2, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    :cond_12
    move v3, v2

    .line 2318
    .end local v1           #scrollBar:Landroid/widget/ScrollBarDrawable;
    .end local v2           #size:I
    :cond_13
    return v3
.end method

.method public getViewTreeObserver()Landroid/view/ViewTreeObserver;
    .registers 2

    .prologue
    .line 7843
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    .line 7844
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 7849
    :goto_8
    return-object v0

    .line 7846
    :cond_9
    iget-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_14

    .line 7847
    new-instance v0, Landroid/view/ViewTreeObserver;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    .line 7849
    :cond_14
    iget-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    goto :goto_8
.end method

.method public getVisibility()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "VISIBLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "INVISIBLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8
                to = "GONE"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 3158
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public final getWidth()I
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 4854
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getWindowAttachCount()I
    .registers 2

    .prologue
    .line 6149
    iget v0, p0, Landroid/view/View;->mWindowAttachCount:I

    return v0
.end method

.method getWindowSession()Landroid/view/IWindowSession;
    .registers 2

    .prologue
    .line 6189
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 6158
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getWindowVisibility()I
    .registers 2

    .prologue
    .line 4106
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    :goto_8
    return v0

    :cond_9
    const/16 v0, 0x8

    goto :goto_8
.end method

.method public getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
    .registers 8
    .parameter "outRect"

    .prologue
    const/4 v5, 0x0

    .line 4126
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_34

    .line 4128
    :try_start_5
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    invoke-interface {v3, v4, p1}, Landroid/view/IWindowSession;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_31

    .line 4135
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v3, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 4136
    .local v2, insets:Landroid/graphics/Rect;
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 4137
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 4138
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 4139
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 4144
    .end local v2           #insets:Landroid/graphics/Rect;
    :goto_30
    return-void

    .line 4129
    :catch_31
    move-exception v3

    move-object v1, v3

    .line 4130
    .local v1, e:Landroid/os/RemoteException;
    goto :goto_30

    .line 4142
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_34
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 4143
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_30
.end method

.method handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .registers 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2611
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1c

    .line 2612
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2614
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_15

    .line 2615
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p0}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2618
    :cond_15
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2619
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 2621
    :cond_1c
    return-void
.end method

.method public hasFocus()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    .line 2736
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasFocusable()Z
    .registers 2

    .prologue
    .line 2752
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected hasOpaqueScrollbars()Z
    .registers 3

    .prologue
    const/high16 v1, 0x100

    .line 5378
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasWindowFocus()Z
    .registers 2

    .prologue
    .line 4014
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected initializeFadingEdge(Landroid/content/res/TypedArray;)V
    .registers 5
    .parameter "a"

    .prologue
    .line 2242
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 2244
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    const/16 v1, 0x18

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 2247
    return-void
.end method

.method protected initializeScrollbars(Landroid/content/res/TypedArray;)V
    .registers 11
    .parameter "a"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2355
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 2357
    iget-object v2, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 2359
    .local v2, scrollabilityCache:Landroid/view/View$ScrollabilityCache;
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    if-nez v5, :cond_12

    .line 2360
    new-instance v5, Landroid/widget/ScrollBarDrawable;

    invoke-direct {v5}, Landroid/widget/ScrollBarDrawable;-><init>()V

    iput-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 2363
    :cond_12
    const/16 v5, 0x2c

    invoke-virtual {p1, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 2365
    .local v1, fadeScrollbars:Z
    if-nez v1, :cond_1c

    .line 2366
    iput v7, v2, Landroid/view/View$ScrollabilityCache;->state:I

    .line 2368
    :cond_1c
    iput-boolean v1, v2, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    .line 2371
    const/16 v5, 0x2a

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    .line 2374
    const/16 v5, 0x2b

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    .line 2379
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    move-result v5

    invoke-virtual {p1, v8, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 2383
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2384
    .local v4, track:Landroid/graphics/drawable/Drawable;
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v4}, Landroid/widget/ScrollBarDrawable;->setHorizontalTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2386
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2387
    .local v3, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_5b

    .line 2388
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v3}, Landroid/widget/ScrollBarDrawable;->setHorizontalThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2391
    :cond_5b
    const/4 v5, 0x5

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 2393
    .local v0, alwaysDraw:Z
    if-eqz v0, :cond_67

    .line 2394
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v7}, Landroid/widget/ScrollBarDrawable;->setAlwaysDrawHorizontalTrack(Z)V

    .line 2397
    :cond_67
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2398
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v4}, Landroid/widget/ScrollBarDrawable;->setVerticalTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2400
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2401
    if-eqz v3, :cond_7d

    .line 2402
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v3}, Landroid/widget/ScrollBarDrawable;->setVerticalThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2405
    :cond_7d
    const/4 v5, 0x6

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 2407
    if-eqz v0, :cond_89

    .line 2408
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v7}, Landroid/widget/ScrollBarDrawable;->setAlwaysDrawVerticalTrack(Z)V

    .line 2412
    :cond_89
    invoke-direct {p0}, Landroid/view/View;->recomputePadding()V

    .line 2413
    return-void
.end method

.method public invalidate()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 5323
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x30

    const/16 v4, 0x30

    if-ne v3, v4, :cond_2b

    .line 5324
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    const v4, -0x8021

    and-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5325
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5326
    .local v1, p:Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 5327
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_2b

    if-eqz v0, :cond_2b

    .line 5328
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 5329
    .local v2, r:Landroid/graphics/Rect;
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 5332
    invoke-interface {v1, p0, v2}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 5335
    .end local v0           #ai:Landroid/view/View$AttachInfo;
    .end local v1           #p:Landroid/view/ViewParent;
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_2b
    return-void
.end method

.method public invalidate(IIII)V
    .registers 14
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 5299
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v5, v5, 0x30

    const/16 v6, 0x30

    if-ne v5, v6, :cond_30

    .line 5300
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const v6, -0x8001

    and-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5301
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5302
    .local v1, p:Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 5303
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_30

    if-eqz v0, :cond_30

    if-ge p1, p3, :cond_30

    if-ge p2, p4, :cond_30

    .line 5304
    iget v2, p0, Landroid/view/View;->mScrollX:I

    .line 5305
    .local v2, scrollX:I
    iget v3, p0, Landroid/view/View;->mScrollY:I

    .line 5306
    .local v3, scrollY:I
    iget-object v4, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 5307
    .local v4, tmpr:Landroid/graphics/Rect;
    sub-int v5, p1, v2

    sub-int v6, p2, v3

    sub-int v7, p3, v2

    sub-int v8, p4, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 5308
    invoke-interface {v1, p0, v4}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 5311
    .end local v0           #ai:Landroid/view/View$AttachInfo;
    .end local v1           #p:Landroid/view/ViewParent;
    .end local v2           #scrollX:I
    .end local v3           #scrollY:I
    .end local v4           #tmpr:Landroid/graphics/Rect;
    :cond_30
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .registers 11
    .parameter "dirty"

    .prologue
    .line 5268
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v5, v5, 0x30

    const/16 v6, 0x30

    if-ne v5, v6, :cond_32

    .line 5269
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const v6, -0x8001

    and-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5270
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5271
    .local v1, p:Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 5272
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_32

    if-eqz v0, :cond_32

    .line 5273
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 5274
    .local v3, scrollX:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 5275
    .local v4, scrollY:I
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 5276
    .local v2, r:Landroid/graphics/Rect;
    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v3

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v3

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 5278
    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v5, p0, v2}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 5281
    .end local v0           #ai:Landroid/view/View$AttachInfo;
    .end local v1           #p:Landroid/view/ViewParent;
    .end local v2           #r:Landroid/graphics/Rect;
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    :cond_32
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 9
    .parameter "drawable"

    .prologue
    .line 7341
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 7342
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 7343
    .local v0, dirty:Landroid/graphics/Rect;
    iget v1, p0, Landroid/view/View;->mScrollX:I

    .line 7344
    .local v1, scrollX:I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 7346
    .local v2, scrollY:I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    .line 7349
    .end local v0           #dirty:Landroid/graphics/Rect;
    .end local v1           #scrollX:I
    .end local v2           #scrollY:I
    :cond_1d
    return-void
.end method

.method public isClickable()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 3361
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isDrawingCacheEnabled()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const v1, 0x8000

    .line 6435
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isDuplicateParentStateEnabled()Z
    .registers 3

    .prologue
    const/high16 v1, 0x40

    .line 6404
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 3181
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isFitsSystemWindowsFlagSet()Z
    .registers 3

    .prologue
    .line 3143
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isFocusable()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 3520
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x1

    if-ne v1, v0, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isFocusableInTouchMode()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x4

    .line 3533
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isFocused()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    .line 2914
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isHapticFeedbackEnabled()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x1000

    .line 3302
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isHorizontalFadingEdgeEnabled()Z
    .registers 3

    .prologue
    .line 5563
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isHorizontalScrollBarEnabled()Z
    .registers 3

    .prologue
    .line 5690
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isInEditMode()Z
    .registers 2

    .prologue
    .line 6792
    const/4 v0, 0x0

    return v0
.end method

.method public isInTouchMode()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 4206
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    .line 4207
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 4209
    :goto_8
    return v0

    :cond_9
    invoke-static {}, Landroid/view/ViewRoot;->isInTouchMode()Z

    move-result v0

    goto :goto_8
.end method

.method public isLayoutRequested()Z
    .registers 3

    .prologue
    .line 7199
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isLongClickable()Z
    .registers 3

    .prologue
    const/high16 v1, 0x20

    .line 3388
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isOpaque()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const/high16 v1, 0x180

    .line 5350
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected isPaddingOffsetRequired()Z
    .registers 2

    .prologue
    .line 6814
    const/4 v0, 0x0

    return v0
.end method

.method public isPressed()Z
    .registers 3

    .prologue
    .line 3446
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isRootNamespace()Z
    .registers 2

    .prologue
    .line 8011
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isSaveEnabled()Z
    .registers 3

    .prologue
    const/high16 v1, 0x1

    .line 3459
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isScrollbarFadingEnabled()Z
    .registers 2

    .prologue
    .line 5768
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget-boolean v0, v0, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isSelected()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 7827
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isShown()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 3097
    move-object v1, p0

    .line 3100
    .local v1, current:Landroid/view/View;
    :cond_2
    iget v3, v1, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    if-eqz v3, :cond_a

    move v3, v4

    .line 3113
    :goto_9
    return v3

    .line 3103
    :cond_a
    iget-object v2, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3104
    .local v2, parent:Landroid/view/ViewParent;
    if-nez v2, :cond_10

    move v3, v4

    .line 3105
    goto :goto_9

    .line 3107
    :cond_10
    instance-of v3, v2, Landroid/view/View;

    if-nez v3, :cond_16

    .line 3108
    const/4 v3, 0x1

    goto :goto_9

    .line 3110
    :cond_16
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 3111
    if-nez v1, :cond_2

    move v3, v4

    .line 3113
    goto :goto_9
.end method

.method public isSoundEffectsEnabled()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x800

    .line 3273
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isVerticalFadingEdgeEnabled()Z
    .registers 3

    .prologue
    .line 5598
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isVerticalScrollBarEnabled()Z
    .registers 3

    .prologue
    .line 5720
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected isVerticalScrollBarHidden()Z
    .registers 2

    .prologue
    .line 6045
    const/4 v0, 0x0

    return v0
.end method

.method public final layout(IIII)V
    .registers 11
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 7222
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v1

    .line 7223
    .local v1, changed:Z
    if-nez v1, :cond_e

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v2, 0x2000

    if-ne v0, v2, :cond_1c

    :cond_e
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 7228
    invoke-virtual/range {v0 .. v5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 7229
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7231
    :cond_1c
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7232
    return-void
.end method

.method public final measure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 8354
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_10

    iget v0, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    if-ne p1, v0, :cond_10

    iget v0, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    if-eq p2, v0, :cond_30

    .line 8359
    :cond_10
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8366
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 8370
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-eq v0, v1, :cond_2a

    .line 8371
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onMeasure() did not set the measured dimension by calling setMeasuredDimension()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8376
    :cond_2a
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8379
    :cond_30
    iput p1, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 8380
    iput p2, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 8381
    return-void
.end method

.method needGlobalAttributesUpdate(Z)V
    .registers 4
    .parameter "force"

    .prologue
    .line 4189
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 4190
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_d

    .line 4191
    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-nez v1, :cond_a

    if-eqz p1, :cond_d

    .line 4192
    :cond_a
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 4195
    :cond_d
    return-void
.end method

.method public offsetLeftAndRight(I)V
    .registers 3
    .parameter "offset"

    .prologue
    .line 5022
    iget v0, p0, Landroid/view/View;->mLeft:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/view/View;->mLeft:I

    .line 5023
    iget v0, p0, Landroid/view/View;->mRight:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/view/View;->mRight:I

    .line 5024
    return-void
.end method

.method public offsetTopAndBottom(I)V
    .registers 3
    .parameter "offset"

    .prologue
    .line 5012
    iget v0, p0, Landroid/view/View;->mTop:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/view/View;->mTop:I

    .line 5013
    iget v0, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/view/View;->mBottom:I

    .line 5014
    return-void
.end method

.method protected onAnimationEnd()V
    .registers 3

    .prologue
    .line 8641
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8642
    return-void
.end method

.method protected onAnimationStart()V
    .registers 3

    .prologue
    .line 8629
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8630
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 6123
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_b

    .line 6124
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 6126
    :cond_b
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x800

    and-int/2addr v0, v1

    if-eqz v0, :cond_1d

    .line 6127
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    .line 6128
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6130
    :cond_1d
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .registers 2

    .prologue
    .line 4363
    const/4 v0, 0x0

    return v0
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .registers 2
    .parameter "reason"

    .prologue
    .line 8780
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 4170
    return-void
.end method

.method protected onConsistencyCheck(I)Z
    .registers 11
    .parameter "consistency"

    .prologue
    const v8, 0x8000

    const/4 v7, 0x1

    const/4 v4, 0x0

    const-string v6, "ViewConsistency"

    const-string v5, "View "

    .line 8166
    const/4 v2, 0x1

    .line 8168
    .local v2, result:Z
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_8d

    move v1, v7

    .line 8169
    .local v1, checkLayout:Z
    :goto_f
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_8f

    move v0, v7

    .line 8171
    .local v0, checkDrawing:Z
    :goto_14
    if-eqz v1, :cond_5e

    .line 8172
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_3b

    .line 8173
    const/4 v2, 0x0

    .line 8174
    const-string v3, "ViewConsistency"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not have a parent."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8178
    :cond_3b
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v3, :cond_5e

    .line 8179
    const/4 v2, 0x0

    .line 8180
    const-string v3, "ViewConsistency"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not attached to a window."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8185
    :cond_5e
    if-eqz v0, :cond_8c

    .line 8189
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-eq v3, v4, :cond_8c

    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v8

    if-ne v3, v8, :cond_8c

    .line 8191
    const/4 v2, 0x0

    .line 8192
    const-string v3, "ViewConsistency"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was invalidated but its drawing cache is valid."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8197
    :cond_8c
    return v2

    .end local v0           #checkDrawing:Z
    .end local v1           #checkLayout:Z
    :cond_8d
    move v1, v4

    .line 8168
    goto :goto_f

    .restart local v1       #checkLayout:Z
    :cond_8f
    move v0, v4

    .line 8169
    goto :goto_14
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 4448
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 11
    .parameter "extraSpace"

    .prologue
    const/high16 v6, 0x40

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 7485
    iget v5, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_18

    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_18

    .line 7487
    iget-object p0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .end local p0
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v5

    .line 7533
    :goto_17
    return-object v5

    .line 7492
    .restart local p0
    :cond_18
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7494
    .local v3, privateFlags:I
    and-int/lit16 v5, v3, 0x4000

    if-eqz v5, :cond_51

    move v4, v8

    .line 7496
    .local v4, viewStateIndex:I
    :goto_1f
    shl-int/lit8 v5, v4, 0x1

    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0x20

    if-nez v6, :cond_53

    move v6, v8

    :goto_28
    add-int v4, v5, v6

    .line 7499
    shl-int/lit8 v5, v4, 0x1

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_55

    move v6, v8

    :goto_33
    add-int v4, v5, v6

    .line 7501
    shl-int/lit8 v5, v4, 0x1

    and-int/lit8 v6, v3, 0x4

    if-eqz v6, :cond_57

    move v6, v8

    :goto_3c
    add-int v4, v5, v6

    .line 7504
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    .line 7505
    .local v2, hasWindowFocus:Z
    shl-int/lit8 v5, v4, 0x1

    if-eqz v2, :cond_59

    move v6, v8

    :goto_47
    add-int v4, v5, v6

    .line 7507
    sget-object v5, Landroid/view/View;->VIEW_STATE_SETS:[[I

    aget-object v0, v5, v4

    .line 7521
    .local v0, drawableState:[I
    if-nez p1, :cond_5b

    move-object v5, v0

    .line 7522
    goto :goto_17

    .end local v0           #drawableState:[I
    .end local v2           #hasWindowFocus:Z
    .end local v4           #viewStateIndex:I
    :cond_51
    move v4, v7

    .line 7494
    goto :goto_1f

    .restart local v4       #viewStateIndex:I
    :cond_53
    move v6, v7

    .line 7496
    goto :goto_28

    :cond_55
    move v6, v7

    .line 7499
    goto :goto_33

    :cond_57
    move v6, v7

    .line 7501
    goto :goto_3c

    .restart local v2       #hasWindowFocus:Z
    :cond_59
    move v6, v7

    .line 7505
    goto :goto_47

    .line 7526
    .restart local v0       #drawableState:[I
    :cond_5b
    if-eqz v0, :cond_67

    .line 7527
    array-length v5, v0

    add-int/2addr v5, p1

    new-array v1, v5, [I

    .line 7528
    .local v1, fullState:[I
    array-length v5, v0

    invoke-static {v0, v7, v1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_65
    move-object v5, v1

    .line 7533
    goto :goto_17

    .line 7530
    .end local v1           #fullState:[I
    :cond_67
    new-array v1, p1, [I

    .restart local v1       #fullState:[I
    goto :goto_65
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 3
    .parameter "outAttrs"

    .prologue
    .line 4379
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 6139
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6140
    invoke-direct {p0}, Landroid/view/View;->removeUnsetPressCallback()V

    .line 6141
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 6142
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 6143
    return-void
.end method

.method protected onDisplayHint(I)V
    .registers 2
    .parameter "hint"

    .prologue
    .line 4069
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 6096
    return-void
.end method

.method protected onDrawHorizontalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .registers 7
    .parameter "canvas"
    .parameter "scrollBar"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 6065
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6066
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6067
    return-void
.end method

.method protected final onDrawScrollBars(Landroid/graphics/Canvas;)V
    .registers 28
    .parameter "canvas"

    .prologue
    .line 5942
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    move-object v12, v0

    .line 5943
    .local v12, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v12, :cond_e

    .line 5945
    move-object v0, v12

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->state:I

    move/from16 v21, v0

    .line 5947
    .local v21, state:I
    if-nez v21, :cond_f

    .line 6036
    .end local v21           #state:I
    :cond_e
    :goto_e
    return-void

    .line 5951
    .restart local v21       #state:I
    :cond_f
    const/16 v17, 0x0

    .line 5953
    .local v17, invalidate:Z
    const/4 v5, 0x2

    move/from16 v0, v21

    move v1, v5

    if-ne v0, v1, :cond_13f

    .line 5955
    iget-object v5, v12, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    if-nez v5, :cond_20

    .line 5956
    const/4 v5, 0x1

    new-array v5, v5, [F

    iput-object v5, v12, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    .line 5959
    :cond_20
    move-object v0, v12

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    move-object/from16 v22, v0

    .line 5962
    .local v22, values:[F
    iget-object v5, v12, Landroid/view/View$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Interpolator;->timeToValues([F)Landroid/graphics/Interpolator$Result;

    move-result-object v5

    sget-object v6, Landroid/graphics/Interpolator$Result;->FREEZE_END:Landroid/graphics/Interpolator$Result;

    if-ne v5, v6, :cond_131

    .line 5964
    const/4 v5, 0x0

    iput v5, v12, Landroid/view/View$ScrollabilityCache;->state:I

    .line 5972
    :goto_35
    const/16 v17, 0x1

    .line 5980
    .end local v22           #values:[F
    :goto_37
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v24, v0

    .line 5982
    .local v24, viewFlags:I
    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x100

    move v5, v0

    const/16 v6, 0x100

    if-ne v5, v6, :cond_148

    const/4 v5, 0x1

    move v13, v5

    .line 5984
    .local v13, drawHorizontalScrollBar:Z
    :goto_48
    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x200

    move v5, v0

    const/16 v6, 0x200

    if-ne v5, v6, :cond_14c

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isVerticalScrollBarHidden()Z

    move-result v5

    if-nez v5, :cond_14c

    const/4 v5, 0x1

    move v14, v5

    .line 5988
    .local v14, drawVerticalScrollBar:Z
    :goto_59
    if-nez v14, :cond_5d

    if-eqz v13, :cond_e

    .line 5989
    :cond_5d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move v6, v0

    sub-int v25, v5, v6

    .line 5990
    .local v25, width:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move v6, v0

    sub-int v15, v5, v6

    .line 5992
    .local v15, height:I
    iget-object v7, v12, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 5993
    .local v7, scrollBar:Landroid/widget/ScrollBarDrawable;
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v20

    .line 5994
    .local v20, size:I
    if-gtz v20, :cond_83

    .line 5995
    move-object v0, v12

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    move/from16 v20, v0

    .line 5998
    :cond_83
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v18, v0

    .line 5999
    .local v18, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v19, v0

    .line 6000
    .local v19, scrollY:I
    const/high16 v5, 0x200

    and-int v5, v5, v24

    if-nez v5, :cond_150

    const/4 v5, -0x1

    move/from16 v16, v5

    .line 6004
    .local v16, inside:I
    :goto_98
    if-eqz v13, :cond_e8

    .line 6005
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/widget/ScrollBarDrawable;->setParameters(IIIZ)V

    .line 6008
    if-eqz v14, :cond_155

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v5

    move/from16 v23, v5

    .line 6010
    .local v23, verticalScrollBarGap:I
    :goto_b2
    add-int v5, v19, v15

    sub-int v5, v5, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingBottom:I

    move v6, v0

    and-int v6, v6, v16

    sub-int v9, v5, v6

    .line 6011
    .local v9, top:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move v5, v0

    and-int v5, v5, v16

    add-int v8, v18, v5

    .line 6012
    .local v8, left:I
    add-int v5, v18, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingRight:I

    move v6, v0

    and-int v6, v6, v16

    sub-int/2addr v5, v6

    sub-int v10, v5, v23

    .line 6013
    .local v10, right:I
    add-int v11, v9, v20

    .local v11, bottom:I
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 6014
    invoke-virtual/range {v5 .. v11}, Landroid/view/View;->onDrawHorizontalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 6015
    if-eqz v17, :cond_e8

    .line 6016
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    .line 6020
    .end local v8           #left:I
    .end local v9           #top:I
    .end local v10           #right:I
    .end local v11           #bottom:I
    .end local v23           #verticalScrollBarGap:I
    :cond_e8
    if-eqz v14, :cond_e

    .line 6021
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/widget/ScrollBarDrawable;->setParameters(IIIZ)V

    .line 6025
    add-int v5, v18, v25

    sub-int v5, v5, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingRight:I

    move v6, v0

    and-int v6, v6, v16

    sub-int v8, v5, v6

    .line 6026
    .restart local v8       #left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move v5, v0

    and-int v5, v5, v16

    add-int v9, v19, v5

    .line 6027
    .restart local v9       #top:I
    add-int v10, v8, v20

    .line 6028
    .restart local v10       #right:I
    add-int v5, v19, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingBottom:I

    move v6, v0

    and-int v6, v6, v16

    sub-int v11, v5, v6

    .restart local v11       #bottom:I
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 6029
    invoke-virtual/range {v5 .. v11}, Landroid/view/View;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 6030
    if-eqz v17, :cond_e

    .line 6031
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_e

    .line 5966
    .end local v7           #scrollBar:Landroid/widget/ScrollBarDrawable;
    .end local v8           #left:I
    .end local v9           #top:I
    .end local v10           #right:I
    .end local v11           #bottom:I
    .end local v13           #drawHorizontalScrollBar:Z
    .end local v14           #drawVerticalScrollBar:Z
    .end local v15           #height:I
    .end local v16           #inside:I
    .end local v18           #scrollX:I
    .end local v19           #scrollY:I
    .end local v20           #size:I
    .end local v24           #viewFlags:I
    .end local v25           #width:I
    .restart local v22       #values:[F
    :cond_131
    iget-object v5, v12, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    const/4 v6, 0x0

    aget v6, v22, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ScrollBarDrawable;->setAlpha(I)V

    goto/16 :goto_35

    .line 5976
    .end local v22           #values:[F
    :cond_13f
    iget-object v5, v12, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/widget/ScrollBarDrawable;->setAlpha(I)V

    goto/16 :goto_37

    .line 5982
    .restart local v24       #viewFlags:I
    :cond_148
    const/4 v5, 0x0

    move v13, v5

    goto/16 :goto_48

    .line 5984
    .restart local v13       #drawHorizontalScrollBar:Z
    :cond_14c
    const/4 v5, 0x0

    move v14, v5

    goto/16 :goto_59

    .line 6000
    .restart local v7       #scrollBar:Landroid/widget/ScrollBarDrawable;
    .restart local v14       #drawVerticalScrollBar:Z
    .restart local v15       #height:I
    .restart local v18       #scrollX:I
    .restart local v19       #scrollY:I
    .restart local v20       #size:I
    .restart local v25       #width:I
    :cond_150
    const/4 v5, 0x0

    move/from16 v16, v5

    goto/16 :goto_98

    .line 6008
    .restart local v16       #inside:I
    :cond_155
    const/4 v5, 0x0

    move/from16 v23, v5

    goto/16 :goto_b2
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .registers 7
    .parameter "canvas"
    .parameter "scrollBar"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 6086
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6087
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6088
    return-void
.end method

.method public onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 3950
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_10

    .line 3953
    const/4 v0, 0x0

    .line 3955
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 7324
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .registers 1

    .prologue
    .line 3847
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 6
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2774
    if-eqz p1, :cond_7

    .line 2775
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2778
    :cond_7
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2779
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-nez p1, :cond_41

    .line 2780
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2781
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2783
    :cond_17
    if-eqz v0, :cond_26

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_26

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v1, :cond_26

    .line 2785
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusOut(Landroid/view/View;)V

    .line 2787
    :cond_26
    invoke-virtual {p0}, Landroid/view/View;->onFocusLost()V

    .line 2793
    :cond_29
    :goto_29
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2794
    iget-object v1, p0, Landroid/view/View;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v1, :cond_35

    .line 2795
    iget-object v1, p0, Landroid/view/View;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 2798
    :cond_35
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_40

    .line 2799
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v1, p0}, Landroid/view/KeyEvent$DispatcherState;->reset(Ljava/lang/Object;)V

    .line 2801
    :cond_40
    return-void

    .line 2788
    :cond_41
    if-eqz v0, :cond_29

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_29

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v1, :cond_29

    .line 2790
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    goto :goto_29
.end method

.method protected onFocusLost()V
    .registers 1

    .prologue
    .line 2890
    invoke-direct {p0}, Landroid/view/View;->resetPressedState()V

    .line 2891
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x20

    .line 4251
    const/4 v0, 0x0

    .line 4253
    .local v0, result:Z
    sparse-switch p1, :sswitch_data_34

    :cond_7
    move v1, v0

    .line 4272
    :goto_8
    return v1

    .line 4256
    :sswitch_9
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_13

    move v1, v4

    .line 4257
    goto :goto_8

    .line 4260
    :cond_13
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-eq v1, v2, :cond_20

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_7

    :cond_20
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_7

    .line 4263
    invoke-virtual {p0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 4264
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_32

    .line 4265
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/view/View;->postCheckForLongClick(I)V

    :cond_32
    move v1, v4

    .line 4267
    goto :goto_8

    .line 4253
    :sswitch_data_34
    .sparse-switch
        0x17 -> :sswitch_9
        0x42 -> :sswitch_9
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 4281
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 4330
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 4237
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 4342
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 4295
    const/4 v0, 0x0

    .line 4297
    .local v0, result:Z
    sparse-switch p1, :sswitch_data_2e

    :cond_4
    :goto_4
    move v1, v0

    .line 4316
    :goto_5
    return v1

    .line 4300
    :sswitch_6
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_10

    .line 4301
    const/4 v1, 0x1

    goto :goto_5

    .line 4303
    :cond_10
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4304
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 4306
    iget-boolean v1, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v1, :cond_4

    .line 4308
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 4310
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    goto :goto_4

    .line 4297
    :sswitch_data_2e
    .sparse-switch
        0x17 -> :sswitch_6
        0x42 -> :sswitch_6
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 7248
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 8430
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 8432
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 5
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    .line 8970
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .parameter "state"

    .prologue
    .line 6353
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6354
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_5c

    if-eqz p1, :cond_5c

    .line 6355
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong state class, expecting View State but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instead. This usually happens "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "when two views of different type have the same id in the same hierarchy. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "This view\'s id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Make sure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "other views do not use the same id."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6361
    :cond_5c
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 6296
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6297
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .registers 7
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    const/4 v1, 0x1

    .line 4784
    iput-boolean v1, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 4786
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 4787
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_9

    .line 4788
    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    .line 4790
    :cond_9
    return-void
.end method

.method protected onSetAlpha(I)Z
    .registers 3
    .parameter "alpha"

    .prologue
    .line 8656
    const/4 v0, 0x0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 4803
    return-void
.end method

.method public onStartTemporaryDetach()V
    .registers 3

    .prologue
    .line 3831
    invoke-direct {p0}, Landroid/view/View;->removeUnsetPressCallback()V

    .line 3832
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 3833
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "event"

    .prologue
    const/16 v12, 0x4000

    const/4 v11, 0x0

    const/high16 v10, 0x20

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4473
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    .line 4475
    .local v3, viewFlags:I
    and-int/lit8 v6, v3, 0x20

    const/16 v7, 0x20

    if-ne v6, v7, :cond_1b

    .line 4478
    and-int/lit16 v6, v3, 0x4000

    if-eq v6, v12, :cond_17

    and-int v6, v3, v10

    if-ne v6, v10, :cond_19

    :cond_17
    move v6, v9

    .line 4575
    :goto_18
    return v6

    :cond_19
    move v6, v8

    .line 4478
    goto :goto_18

    .line 4482
    :cond_1b
    iget-object v6, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    if-eqz v6, :cond_29

    .line 4483
    iget-object v6, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    invoke-virtual {v6, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_29

    move v6, v9

    .line 4484
    goto :goto_18

    .line 4488
    :cond_29
    and-int/lit16 v6, v3, 0x4000

    if-eq v6, v12, :cond_31

    and-int v6, v3, v10

    if-ne v6, v10, :cond_11b

    .line 4490
    :cond_31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_11e

    :cond_38
    :goto_38
    move v6, v9

    .line 4572
    goto :goto_18

    .line 4492
    :pswitch_3a
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x200

    and-int/2addr v6, v7

    if-eqz v6, :cond_a4

    move v1, v9

    .line 4493
    .local v1, prepressed:Z
    :goto_42
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x4000

    if-nez v6, :cond_4a

    if-eqz v1, :cond_38

    .line 4496
    :cond_4a
    const/4 v0, 0x0

    .line 4497
    .local v0, focusTaken:Z
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_61

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v6

    if-eqz v6, :cond_61

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-nez v6, :cond_61

    .line 4498
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    .line 4501
    :cond_61
    iget-boolean v6, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v6, :cond_80

    .line 4503
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 4506
    if-nez v0, :cond_80

    .line 4510
    iget-object v6, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    if-nez v6, :cond_75

    .line 4511
    new-instance v6, Landroid/view/View$PerformClick;

    invoke-direct {v6, p0, v11}, Landroid/view/View$PerformClick;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v6, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    .line 4513
    :cond_75
    iget-object v6, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_80

    .line 4514
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 4519
    :cond_80
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    if-nez v6, :cond_8b

    .line 4520
    new-instance v6, Landroid/view/View$UnsetPressedState;

    invoke-direct {v6, p0, v11}, Landroid/view/View$UnsetPressedState;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    .line 4523
    :cond_8b
    if-eqz v1, :cond_a6

    .line 4524
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v6, v6, 0x4000

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4525
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 4526
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {p0, v6, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4532
    :cond_a0
    :goto_a0
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    goto :goto_38

    .end local v0           #focusTaken:Z
    .end local v1           #prepressed:Z
    :cond_a4
    move v1, v8

    .line 4492
    goto :goto_42

    .line 4528
    .restart local v0       #focusTaken:Z
    .restart local v1       #prepressed:Z
    :cond_a6
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_a0

    .line 4530
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {v6}, Landroid/view/View$UnsetPressedState;->run()V

    goto :goto_a0

    .line 4537
    .end local v0           #focusTaken:Z
    .end local v1           #prepressed:Z
    :pswitch_b4
    iget-object v6, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    if-nez v6, :cond_bf

    .line 4538
    new-instance v6, Landroid/view/View$CheckForTap;

    invoke-direct {v6, p0, v11}, Landroid/view/View$CheckForTap;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v6, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 4540
    :cond_bf
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x200

    or-int/2addr v6, v7

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4541
    iput-boolean v8, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    .line 4542
    iget-object v6, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {p0, v6, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_38

    .line 4546
    :pswitch_d4
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, -0x4001

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4547
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 4548
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    goto/16 :goto_38

    .line 4552
    :pswitch_e2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 4553
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 4556
    .local v5, y:I
    iget v2, p0, Landroid/view/View;->mTouchSlop:I

    .line 4557
    .local v2, slop:I
    sub-int v6, v8, v2

    if-lt v4, v6, :cond_104

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v2

    if-ge v4, v6, :cond_104

    sub-int v6, v8, v2

    if-lt v5, v6, :cond_104

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v2

    if-lt v5, v6, :cond_38

    .line 4560
    :cond_104
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .line 4561
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_38

    .line 4563
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 4566
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, -0x4001

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4567
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    goto/16 :goto_38

    .end local v2           #slop:I
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_11b
    move v6, v8

    .line 4575
    goto/16 :goto_18

    .line 4490
    :pswitch_data_11e
    .packed-switch 0x0
        :pswitch_b4
        :pswitch_3a
        :pswitch_e2
        :pswitch_d4
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 4463
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 5
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 4037
    if-nez p2, :cond_9

    .line 4038
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_a

    .line 4039
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    .line 4044
    :cond_9
    :goto_9
    return-void

    .line 4041
    :cond_a
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x800

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_9
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .parameter "hasWindowFocus"

    .prologue
    .line 3991
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3992
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-nez p1, :cond_25

    .line 3993
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3994
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 3996
    :cond_10
    if-eqz v0, :cond_1b

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1b

    .line 3997
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusOut(Landroid/view/View;)V

    .line 3999
    :cond_1b
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 4000
    invoke-virtual {p0}, Landroid/view/View;->onFocusLost()V

    .line 4004
    :cond_21
    :goto_21
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 4005
    return-void

    .line 4001
    :cond_25
    if-eqz v0, :cond_21

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_21

    .line 4002
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    goto :goto_21
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2
    .parameter "visibility"

    .prologue
    .line 4094
    if-nez p1, :cond_5

    .line 4095
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    .line 4097
    :cond_5
    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .registers 30
    .parameter "deltaX"
    .parameter "deltaY"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "scrollRangeX"
    .parameter "scrollRangeY"
    .parameter "maxOverScrollX"
    .parameter "maxOverScrollY"
    .parameter "isTouchEvent"

    .prologue
    .line 8909
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mOverScrollMode:I

    move v14, v0

    .line 8910
    .local v14, overScrollMode:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_7e

    const/16 v18, 0x1

    move/from16 v6, v18

    .line 8912
    .local v6, canScrollHorizontal:Z
    :goto_17
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_83

    const/16 v18, 0x1

    move/from16 v7, v18

    .line 8914
    .local v7, canScrollVertical:Z
    :goto_29
    if-eqz v14, :cond_34

    const/16 v18, 0x1

    move v0, v14

    move/from16 v1, v18

    if-ne v0, v1, :cond_88

    if-eqz v6, :cond_88

    :cond_34
    const/16 v18, 0x1

    move/from16 v13, v18

    .line 8916
    .local v13, overScrollHorizontal:Z
    :goto_38
    if-eqz v14, :cond_43

    const/16 v18, 0x1

    move v0, v14

    move/from16 v1, v18

    if-ne v0, v1, :cond_8d

    if-eqz v7, :cond_8d

    :cond_43
    const/16 v18, 0x1

    move/from16 v15, v18

    .line 8919
    .local v15, overScrollVertical:Z
    :goto_47
    add-int v11, p3, p1

    .line 8920
    .local v11, newScrollX:I
    if-nez v13, :cond_4d

    .line 8921
    const/16 p7, 0x0

    .line 8924
    :cond_4d
    add-int v12, p4, p2

    .line 8925
    .local v12, newScrollY:I
    if-nez v15, :cond_53

    .line 8926
    const/16 p8, 0x0

    .line 8930
    :cond_53
    move/from16 v0, p7

    neg-int v0, v0

    move v10, v0

    .line 8931
    .local v10, left:I
    add-int v16, p7, p5

    .line 8932
    .local v16, right:I
    move/from16 v0, p8

    neg-int v0, v0

    move/from16 v17, v0

    .line 8933
    .local v17, top:I
    add-int v5, p8, p6

    .line 8935
    .local v5, bottom:I
    const/4 v8, 0x0

    .line 8936
    .local v8, clampedX:Z
    move v0, v11

    move/from16 v1, v16

    if-le v0, v1, :cond_92

    .line 8937
    move/from16 v11, v16

    .line 8938
    const/4 v8, 0x1

    .line 8944
    :cond_69
    :goto_69
    const/4 v9, 0x0

    .line 8945
    .local v9, clampedY:Z
    if-le v12, v5, :cond_97

    .line 8946
    move v12, v5

    .line 8947
    const/4 v9, 0x1

    .line 8953
    :cond_6e
    :goto_6e
    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->onOverScrolled(IIZZ)V

    .line 8955
    if-nez v8, :cond_7b

    if-eqz v9, :cond_a0

    :cond_7b
    const/16 v18, 0x1

    :goto_7d
    return v18

    .line 8910
    .end local v5           #bottom:I
    .end local v6           #canScrollHorizontal:Z
    .end local v7           #canScrollVertical:Z
    .end local v8           #clampedX:Z
    .end local v9           #clampedY:Z
    .end local v10           #left:I
    .end local v11           #newScrollX:I
    .end local v12           #newScrollY:I
    .end local v13           #overScrollHorizontal:Z
    .end local v15           #overScrollVertical:Z
    .end local v16           #right:I
    .end local v17           #top:I
    :cond_7e
    const/16 v18, 0x0

    move/from16 v6, v18

    goto :goto_17

    .line 8912
    .restart local v6       #canScrollHorizontal:Z
    :cond_83
    const/16 v18, 0x0

    move/from16 v7, v18

    goto :goto_29

    .line 8914
    .restart local v7       #canScrollVertical:Z
    :cond_88
    const/16 v18, 0x0

    move/from16 v13, v18

    goto :goto_38

    .line 8916
    .restart local v13       #overScrollHorizontal:Z
    :cond_8d
    const/16 v18, 0x0

    move/from16 v15, v18

    goto :goto_47

    .line 8939
    .restart local v5       #bottom:I
    .restart local v8       #clampedX:Z
    .restart local v10       #left:I
    .restart local v11       #newScrollX:I
    .restart local v12       #newScrollY:I
    .restart local v15       #overScrollVertical:Z
    .restart local v16       #right:I
    .restart local v17       #top:I
    :cond_92
    if-ge v11, v10, :cond_69

    .line 8940
    move v11, v10

    .line 8941
    const/4 v8, 0x1

    goto :goto_69

    .line 8948
    .restart local v9       #clampedY:Z
    :cond_97
    move v0, v12

    move/from16 v1, v17

    if-ge v0, v1, :cond_6e

    .line 8949
    move/from16 v12, v17

    .line 8950
    const/4 v9, 0x1

    goto :goto_6e

    .line 8955
    :cond_a0
    const/16 v18, 0x0

    goto :goto_7d
.end method

.method public performClick()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2531
    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2533
    iget-object v0, p0, Landroid/view/View;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_14

    .line 2536
    iget v0, p0, Landroid/view/View;->mSoundEffect:I

    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 2538
    iget-object v0, p0, Landroid/view/View;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    move v0, v1

    .line 2542
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method performCollectViewAttributes(I)V
    .registers 4
    .parameter "visibility"

    .prologue
    .line 4182
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    or-int/2addr v0, p1

    const v1, 0x400000c

    and-int/2addr v0, v1

    const/high16 v1, 0x400

    if-ne v0, v1, :cond_10

    .line 4184
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 4186
    :cond_10
    return-void
.end method

.method public performHapticFeedback(I)Z
    .registers 3
    .parameter "feedbackConstant"

    .prologue
    .line 8749
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->performHapticFeedback(II)Z

    move-result v0

    return v0
.end method

.method public performHapticFeedback(II)Z
    .registers 6
    .parameter "feedbackConstant"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    .line 8762
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_7

    move v0, v2

    .line 8769
    :goto_6
    return v0

    .line 8765
    :cond_7
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_13

    invoke-virtual {p0}, Landroid/view/View;->isHapticFeedbackEnabled()Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v2

    .line 8767
    goto :goto_6

    .line 8769
    :cond_13
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    :goto_1c
    invoke-interface {v0, p1, v1}, Landroid/view/View$AttachInfo$Callbacks;->performHapticFeedback(IZ)Z

    move-result v0

    goto :goto_6

    :cond_21
    move v1, v2

    goto :goto_1c
.end method

.method public performLongClick()Z
    .registers 3

    .prologue
    .line 2552
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2554
    const/4 v0, 0x0

    .line 2555
    .local v0, handled:Z
    iget-object v1, p0, Landroid/view/View;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v1, :cond_f

    .line 2556
    iget-object v1, p0, Landroid/view/View;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-interface {v1, p0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    .line 2558
    :cond_f
    if-nez v0, :cond_15

    .line 2559
    invoke-virtual {p0}, Landroid/view/View;->showContextMenu()Z

    move-result v0

    .line 2561
    :cond_15
    if-eqz v0, :cond_1b

    .line 2562
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 2564
    :cond_1b
    return v0
.end method

.method public playSoundEffect(I)V
    .registers 5
    .parameter "soundConstant"

    .prologue
    .line 8708
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->isSoundEffectsEnabled()Z

    move-result v1

    if-nez v1, :cond_11

    .line 8731
    :cond_10
    :goto_10
    return-void

    .line 8714
    :cond_11
    iget-object v1, p0, Landroid/view/View;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_21

    .line 8715
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Landroid/view/View;->mAudioManager:Landroid/media/AudioManager;

    .line 8718
    :cond_21
    iget-object v1, p0, Landroid/view/View;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 8719
    .local v0, ringerMode:I
    if-eqz v0, :cond_10

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    .line 8725
    if-ltz p1, :cond_10

    .line 8730
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    invoke-interface {v1, p1}, Landroid/view/View$AttachInfo$Callbacks;->playSoundEffect(I)V

    goto :goto_10
.end method

.method public post(Ljava/lang/Runnable;)Z
    .registers 4
    .parameter "action"

    .prologue
    .line 5404
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_d

    .line 5405
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 5412
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .end local v0           #handler:Landroid/os/Handler;
    :goto_c
    return v1

    .line 5408
    :cond_d
    invoke-static {}, Landroid/view/ViewRoot;->getRunQueue()Landroid/view/ViewRoot$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRoot$RunQueue;->post(Ljava/lang/Runnable;)V

    .line 5409
    const/4 v1, 0x1

    goto :goto_c
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .registers 6
    .parameter "action"
    .parameter "delayMillis"

    .prologue
    .line 5433
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_d

    .line 5434
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 5441
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    .end local v0           #handler:Landroid/os/Handler;
    :goto_c
    return v1

    .line 5437
    :cond_d
    invoke-static {}, Landroid/view/ViewRoot;->getRunQueue()Landroid/view/ViewRoot$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/view/ViewRoot$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    .line 5438
    const/4 v1, 0x1

    goto :goto_c
.end method

.method public postInvalidate()V
    .registers 3

    .prologue
    .line 5475
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 5476
    return-void
.end method

.method public postInvalidate(IIII)V
    .registers 12
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 5491
    const-wide/16 v1, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/view/View;->postInvalidateDelayed(JIIII)V

    .line 5492
    return-void
.end method

.method public postInvalidateDelayed(J)V
    .registers 5
    .parameter "delayMilliseconds"

    .prologue
    .line 5504
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_14

    .line 5505
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 5506
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 5507
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5508
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5510
    .end local v0           #msg:Landroid/os/Message;
    :cond_14
    return-void
.end method

.method public postInvalidateDelayed(JIIII)V
    .registers 10
    .parameter "delayMilliseconds"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 5528
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_22

    .line 5529
    invoke-static {}, Landroid/view/View$AttachInfo$InvalidateInfo;->acquire()Landroid/view/View$AttachInfo$InvalidateInfo;

    move-result-object v0

    .line 5530
    .local v0, info:Landroid/view/View$AttachInfo$InvalidateInfo;
    iput-object p0, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    .line 5531
    iput p3, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    .line 5532
    iput p4, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    .line 5533
    iput p5, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    .line 5534
    iput p6, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    .line 5536
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 5537
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 5538
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5539
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5541
    .end local v0           #info:Landroid/view/View$AttachInfo$InvalidateInfo;
    .end local v1           #msg:Landroid/os/Message;
    :cond_22
    return-void
.end method

.method public refreshDrawableState()V
    .registers 3

    .prologue
    .line 7440
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7441
    invoke-virtual {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 7443
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 7444
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_10

    .line 7445
    invoke-interface {v0, p0}, Landroid/view/ViewParent;->childDrawableStateChanged(Landroid/view/View;)V

    .line 7447
    :cond_10
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .registers 5
    .parameter "action"

    .prologue
    const/4 v2, 0x1

    .line 5456
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_e

    .line 5457
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 5464
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move v1, v2

    .line 5465
    .end local v0           #handler:Landroid/os/Handler;
    :goto_d
    return v1

    .line 5460
    :cond_e
    invoke-static {}, Landroid/view/ViewRoot;->getRunQueue()Landroid/view/ViewRoot$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRoot$RunQueue;->removeCallbacks(Ljava/lang/Runnable;)V

    move v1, v2

    .line 5461
    goto :goto_d
.end method

.method public final requestFocus()Z
    .registers 2

    .prologue
    .line 3702
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    return v0
.end method

.method public final requestFocus(I)Z
    .registers 3
    .parameter "direction"

    .prologue
    .line 3724
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .registers 7
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/high16 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3757
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_10

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_12

    :cond_10
    move v0, v1

    .line 3774
    :goto_11
    return v0

    .line 3763
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v3

    if-eq v3, v0, :cond_1f

    move v0, v1

    .line 3765
    goto :goto_11

    .line 3769
    :cond_1f
    invoke-direct {p0}, Landroid/view/View;->hasAncestorThatBlocksDescendantFocus()Z

    move-result v0

    if-eqz v0, :cond_27

    move v0, v1

    .line 3770
    goto :goto_11

    .line 3773
    :cond_27
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    move v0, v2

    .line 3774
    goto :goto_11
.end method

.method public final requestFocusFromTouch()Z
    .registers 4

    .prologue
    .line 3789
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 3790
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 3791
    .local v0, root:Landroid/view/View;
    if-eqz v0, :cond_18

    .line 3792
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRoot;

    .line 3793
    .local v1, viewRoot:Landroid/view/ViewRoot;
    if-eqz v1, :cond_18

    .line 3794
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewRoot;->ensureTouchMode(Z)Z

    .line 3798
    .end local v0           #root:Landroid/view/View;
    .end local v1           #viewRoot:Landroid/view/ViewRoot;
    :cond_18
    const/16 v2, 0x82

    invoke-virtual {p0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    return v2
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 8317
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8319
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_17

    .line 8320
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 8322
    :cond_17
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;)Z
    .registers 3
    .parameter "rectangle"

    .prologue
    .line 2635
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z
    .registers 9
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 2654
    move-object v1, p0

    .line 2655
    .local v1, child:Landroid/view/View;
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2656
    .local v2, parent:Landroid/view/ViewParent;
    const/4 v3, 0x0

    .line 2657
    .local v3, scrolled:Z
    :goto_4
    if-eqz v2, :cond_27

    .line 2658
    invoke-interface {v2, v1, p1, p2}, Landroid/view/ViewParent;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v4

    or-int/2addr v3, v4

    .line 2663
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2664
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2666
    instance-of v4, v2, Landroid/view/View;

    if-nez v4, :cond_28

    .line 2673
    :cond_27
    return v3

    .line 2670
    :cond_28
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 2671
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_4
.end method

.method public restoreHierarchyState(Landroid/util/SparseArray;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6310
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 6311
    return-void
.end method

.method public saveHierarchyState(Landroid/util/SparseArray;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6244
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 6245
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 7360
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz p2, :cond_13

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_13

    .line 7361
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2, p1, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 7363
    :cond_13
    return-void
.end method

.method public scrollBy(II)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 5084
    iget v0, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 5085
    return-void
.end method

.method public scrollTo(II)V
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 5064
    iget v2, p0, Landroid/view/View;->mScrollX:I

    if-ne v2, p1, :cond_8

    iget v2, p0, Landroid/view/View;->mScrollY:I

    if-eq v2, p2, :cond_20

    .line 5065
    :cond_8
    iget v0, p0, Landroid/view/View;->mScrollX:I

    .line 5066
    .local v0, oldX:I
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 5067
    .local v1, oldY:I
    iput p1, p0, Landroid/view/View;->mScrollX:I

    .line 5068
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 5069
    iget v2, p0, Landroid/view/View;->mScrollX:I

    iget v3, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 5070
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_20

    .line 5071
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 5074
    .end local v0           #oldX:I
    .end local v1           #oldY:I
    :cond_20
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .registers 3
    .parameter "eventType"

    .prologue
    .line 2807
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2808
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2810
    :cond_13
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    .line 2816
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2817
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2818
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 2819
    iget-object v1, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2821
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4c

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_4c

    .line 2822
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mFocusablesTempList:Ljava/util/ArrayList;

    .line 2823
    .local v0, focusablesTempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2824
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2825
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 2826
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2829
    .end local v0           #focusablesTempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_4c
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2831
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2832
    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 8614
    iput-object p1, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 8615
    if-eqz p1, :cond_7

    .line 8616
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 8618
    :cond_7
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 7569
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7570
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 10
    .parameter "d"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7604
    const/4 v1, 0x0

    .line 7606
    .local v1, requestLayout:Z
    iput v6, p0, Landroid/view/View;->mBackgroundResource:I

    .line 7612
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_14

    .line 7613
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 7614
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7617
    :cond_14
    if-eqz p1, :cond_97

    .line 7618
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 7619
    .local v0, padding:Landroid/graphics/Rect;
    if-nez v0, :cond_2a

    .line 7620
    new-instance v0, Landroid/graphics/Rect;

    .end local v0           #padding:Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7621
    .restart local v0       #padding:Landroid/graphics/Rect;
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 7623
    :cond_2a
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 7624
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 7629
    :cond_3b
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_57

    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    if-ne v2, v3, :cond_57

    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    if-eq v2, v3, :cond_58

    .line 7631
    :cond_57
    const/4 v1, 0x1

    .line 7634
    :cond_58
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 7635
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 7636
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 7638
    :cond_68
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_95

    move v2, v7

    :goto_6f
    invoke-virtual {p1, v2, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 7639
    iput-object p1, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 7641
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_87

    .line 7642
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7643
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7644
    const/4 v1, 0x1

    .line 7672
    .end local v0           #padding:Landroid/graphics/Rect;
    :cond_87
    :goto_87
    invoke-direct {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 7674
    if-eqz v1, :cond_8f

    .line 7675
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 7678
    :cond_8f
    iput-boolean v7, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 7679
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7680
    return-void

    .restart local v0       #padding:Landroid/graphics/Rect;
    :cond_95
    move v2, v6

    .line 7638
    goto :goto_6f

    .line 7648
    .end local v0           #padding:Landroid/graphics/Rect;
    :cond_97
    iput-object v3, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 7650
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_ab

    .line 7656
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7657
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7669
    :cond_ab
    const/4 v1, 0x1

    goto :goto_87
.end method

.method public setBackgroundResource(I)V
    .registers 4
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 7580
    if-eqz p1, :cond_7

    iget v1, p0, Landroid/view/View;->mBackgroundResource:I

    if-ne p1, v1, :cond_7

    .line 7591
    :goto_6
    return-void

    .line 7584
    :cond_7
    const/4 v0, 0x0

    .line 7585
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_10

    .line 7586
    iget-object v1, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 7588
    :cond_10
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7590
    iput p1, p0, Landroid/view/View;->mBackgroundResource:I

    goto :goto_6
.end method

.method public setClickable(Z)V
    .registers 4
    .parameter "clickable"

    .prologue
    const/16 v1, 0x4000

    .line 3376
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3377
    return-void

    .line 3376
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "contentDescription"

    .prologue
    .line 2873
    iput-object p1, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    .line 2874
    return-void
.end method

.method public setDrawingCacheBackgroundColor(I)V
    .registers 4
    .parameter "color"

    .prologue
    .line 6522
    iget v0, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    if-eq p1, v0, :cond_e

    .line 6523
    iput p1, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 6524
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6526
    :cond_e
    return-void
.end method

.method public setDrawingCacheEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    const v1, 0x8000

    .line 6422
    if-eqz p1, :cond_a

    move v0, v1

    :goto_6
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6423
    return-void

    .line 6422
    :cond_a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setDrawingCacheQuality(I)V
    .registers 3
    .parameter "quality"

    .prologue
    .line 2980
    const/high16 v0, 0x18

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    .line 2981
    return-void
.end method

.method public setDuplicateParentStateEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    const/high16 v1, 0x40

    .line 6391
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6392
    return-void

    .line 6391
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setEnabled(Z)V
    .registers 4
    .parameter "enabled"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/16 v1, 0x20

    .line 3192
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_9

    .line 3205
    :goto_8
    return-void

    .line 3194
    :cond_9
    if-eqz p1, :cond_16

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3200
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 3204
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_8

    :cond_16
    move v0, v1

    .line 3194
    goto :goto_c
.end method

.method public setFadingEdgeLength(I)V
    .registers 3
    .parameter "length"

    .prologue
    .line 2277
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 2278
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 2279
    return-void
.end method

.method public setFilterTouchesWhenObscured(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    const/16 v1, 0x400

    .line 3508
    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3510
    return-void

    :cond_9
    move v0, v1

    .line 3508
    goto :goto_5
.end method

.method setFlags(II)V
    .registers 11
    .parameter "flags"
    .parameter "mask"

    .prologue
    const/4 v7, 0x0

    const v6, -0x8001

    const/4 v5, 0x1

    .line 4645
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    .line 4646
    .local v1, old:I
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit8 v4, p2, -0x1

    and-int/2addr v3, v4

    and-int v4, p1, p2

    or-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mViewFlags:I

    .line 4648
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    xor-int v0, v3, v1

    .line 4649
    .local v0, changed:I
    if-nez v0, :cond_18

    .line 4760
    :cond_17
    :goto_17
    return-void

    .line 4652
    :cond_18
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4655
    .local v2, privateFlags:I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2d

    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_2d

    .line 4657
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v5, :cond_100

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_100

    .line 4660
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 4671
    :cond_2d
    :goto_2d
    and-int/lit8 v3, p1, 0xc

    if-nez v3, :cond_53

    .line 4672
    and-int/lit8 v3, v0, 0xc

    if-eqz v3, :cond_53

    .line 4677
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4679
    invoke-virtual {p0, v5}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 4685
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_53

    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    if-le v3, v4, :cond_53

    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    if-le v3, v4, :cond_53

    .line 4686
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    .line 4692
    :cond_53
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_7c

    .line 4693
    invoke-virtual {p0, v7}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 4694
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4695
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4697
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    const/16 v4, 0x8

    if-ne v3, v4, :cond_74

    .line 4698
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 4699
    :cond_71
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 4701
    :cond_74
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_7c

    .line 4702
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v5, v3, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 4707
    :cond_7c
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_a4

    .line 4708
    invoke-virtual {p0, v7}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 4709
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4711
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    const/4 v4, 0x4

    if-ne v3, v4, :cond_9c

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 4713
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    if-eq v3, p0, :cond_9c

    .line 4714
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 4717
    :cond_9c
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_a4

    .line 4718
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v5, v3, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 4722
    :cond_a4
    and-int/lit8 v3, v0, 0xc

    if-eqz v3, :cond_ad

    .line 4723
    and-int/lit8 v3, p1, 0xc

    invoke-virtual {p0, p0, v3}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 4726
    :cond_ad
    const/high16 v3, 0x2

    and-int/2addr v3, v0

    if-eqz v3, :cond_b5

    .line 4727
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 4730
    :cond_b5
    const v3, 0x8000

    and-int/2addr v3, v0

    if-eqz v3, :cond_c3

    .line 4731
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 4732
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v6

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4735
    :cond_c3
    const/high16 v3, 0x18

    and-int/2addr v3, v0

    if-eqz v3, :cond_d0

    .line 4736
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 4737
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v6

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4740
    :cond_d0
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_f0

    .line 4741
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_11a

    .line 4742
    iget-object v3, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_113

    .line 4743
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4744
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4751
    :goto_ea
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4752
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4755
    :cond_f0
    const/high16 v3, 0x400

    and-int/2addr v3, v0

    if-eqz v3, :cond_17

    .line 4756
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_17

    .line 4757
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    goto/16 :goto_17

    .line 4661
    :cond_100
    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_2d

    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_2d

    .line 4667
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_2d

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    goto/16 :goto_2d

    .line 4746
    :cond_113
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_ea

    .line 4749
    :cond_11a
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_ea
.end method

.method public setFocusable(Z)V
    .registers 5
    .parameter "focusable"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3219
    if-nez p1, :cond_9

    .line 3220
    const/high16 v0, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setFlags(II)V

    .line 3222
    :cond_9
    if-eqz p1, :cond_10

    move v0, v2

    :goto_c
    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setFlags(II)V

    .line 3223
    return-void

    :cond_10
    move v0, v1

    .line 3222
    goto :goto_c
.end method

.method public setFocusableInTouchMode(Z)V
    .registers 5
    .parameter "focusableInTouchMode"

    .prologue
    const/high16 v2, 0x4

    const/4 v1, 0x1

    .line 3241
    if-eqz p1, :cond_f

    move v0, v2

    :goto_6
    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setFlags(II)V

    .line 3242
    if-eqz p1, :cond_e

    .line 3243
    invoke-virtual {p0, v1, v1}, Landroid/view/View;->setFlags(II)V

    .line 3245
    :cond_e
    return-void

    .line 3241
    :cond_f
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected setFrame(IIII)Z
    .registers 13
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 7264
    const/4 v0, 0x0

    .line 7271
    .local v0, changed:Z
    iget v6, p0, Landroid/view/View;->mLeft:I

    if-ne v6, p1, :cond_11

    iget v6, p0, Landroid/view/View;->mRight:I

    if-ne v6, p3, :cond_11

    iget v6, p0, Landroid/view/View;->mTop:I

    if-ne v6, p2, :cond_11

    iget v6, p0, Landroid/view/View;->mBottom:I

    if-eq v6, p4, :cond_55

    .line 7272
    :cond_11
    const/4 v0, 0x1

    .line 7275
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v6, 0x20

    .line 7278
    .local v1, drawn:I
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7281
    iget v6, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int v5, v6, v7

    .line 7282
    .local v5, oldWidth:I
    iget v6, p0, Landroid/view/View;->mBottom:I

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int v4, v6, v7

    .line 7284
    .local v4, oldHeight:I
    iput p1, p0, Landroid/view/View;->mLeft:I

    .line 7285
    iput p2, p0, Landroid/view/View;->mTop:I

    .line 7286
    iput p3, p0, Landroid/view/View;->mRight:I

    .line 7287
    iput p4, p0, Landroid/view/View;->mBottom:I

    .line 7289
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7291
    sub-int v3, p3, p1

    .line 7292
    .local v3, newWidth:I
    sub-int v2, p4, p2

    .line 7294
    .local v2, newHeight:I
    if-ne v3, v5, :cond_3b

    if-eq v2, v4, :cond_3e

    .line 7295
    :cond_3b
    invoke-virtual {p0, v3, v2, v5, v4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 7298
    :cond_3e
    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_4d

    .line 7304
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7305
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7309
    :cond_4d
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v6, v1

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7311
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 7313
    .end local v1           #drawn:I
    .end local v2           #newHeight:I
    .end local v3           #newWidth:I
    .end local v4           #oldHeight:I
    .end local v5           #oldWidth:I
    :cond_55
    return v0
.end method

.method public setHapticFeedbackEnabled(Z)V
    .registers 4
    .parameter "hapticFeedbackEnabled"

    .prologue
    const/high16 v1, 0x1000

    .line 3289
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3290
    return-void

    .line 3289
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setHorizontalFadingEdgeEnabled(Z)V
    .registers 3
    .parameter "horizontalFadingEdgeEnabled"

    .prologue
    .line 5578
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalFadingEdgeEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_11

    .line 5579
    if-eqz p1, :cond_b

    .line 5580
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 5583
    :cond_b
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 5585
    :cond_11
    return-void
.end method

.method public setHorizontalScrollBarEnabled(Z)V
    .registers 3
    .parameter "horizontalScrollBarEnabled"

    .prologue
    .line 5703
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_12

    .line 5704
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 5705
    invoke-direct {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 5706
    invoke-direct {p0}, Landroid/view/View;->recomputePadding()V

    .line 5708
    :cond_12
    return-void
.end method

.method public setId(I)V
    .registers 2
    .parameter "id"

    .prologue
    .line 7988
    iput p1, p0, Landroid/view/View;->mID:I

    .line 7989
    return-void
.end method

.method public setIsRootNamespace(Z)V
    .registers 3
    .parameter "isRoot"

    .prologue
    .line 7998
    if-eqz p1, :cond_9

    .line 7999
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8003
    :goto_8
    return-void

    .line 8001
    :cond_9
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_8
.end method

.method public setKeepScreenOn(Z)V
    .registers 4
    .parameter "keepScreenOn"

    .prologue
    const/high16 v1, 0x400

    .line 3008
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3009
    return-void

    .line 3008
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .parameter "params"

    .prologue
    .line 5049
    if-nez p1, :cond_b

    .line 5050
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "params == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5052
    :cond_b
    iput-object p1, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 5053
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5054
    return-void
.end method

.method public setLongClickable(Z)V
    .registers 4
    .parameter "longClickable"

    .prologue
    const/high16 v1, 0x20

    .line 3402
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3403
    return-void

    .line 3402
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected final setMeasuredDimension(II)V
    .registers 4
    .parameter "measuredWidth"
    .parameter "measuredHeight"

    .prologue
    .line 8443
    iput p1, p0, Landroid/view/View;->mMeasuredWidth:I

    .line 8444
    iput p2, p0, Landroid/view/View;->mMeasuredHeight:I

    .line 8446
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8447
    return-void
.end method

.method public setMinimumHeight(I)V
    .registers 2
    .parameter "minHeight"

    .prologue
    .line 8557
    iput p1, p0, Landroid/view/View;->mMinHeight:I

    .line 8558
    return-void
.end method

.method public setMinimumWidth(I)V
    .registers 2
    .parameter "minWidth"

    .prologue
    .line 8568
    iput p1, p0, Landroid/view/View;->mMinWidth:I

    .line 8569
    return-void
.end method

.method public setNextFocusDownId(I)V
    .registers 2
    .parameter "nextFocusDownId"

    .prologue
    .line 3088
    iput p1, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 3089
    return-void
.end method

.method public setNextFocusLeftId(I)V
    .registers 2
    .parameter "nextFocusLeftId"

    .prologue
    .line 3028
    iput p1, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 3029
    return-void
.end method

.method public setNextFocusRightId(I)V
    .registers 2
    .parameter "nextFocusRightId"

    .prologue
    .line 3048
    iput p1, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 3049
    return-void
.end method

.method public setNextFocusUpId(I)V
    .registers 2
    .parameter "nextFocusUpId"

    .prologue
    .line 3068
    iput p1, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 3069
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 2453
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2454
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 2456
    :cond_a
    iput-object p1, p0, Landroid/view/View;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 2457
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 2482
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2483
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 2485
    :cond_a
    iput-object p1, p0, Landroid/view/View;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 2486
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 2432
    iput-object p1, p0, Landroid/view/View;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 2433
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 2581
    iput-object p1, p0, Landroid/view/View;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 2582
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 2468
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2469
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 2471
    :cond_a
    iput-object p1, p0, Landroid/view/View;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 2472
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 2589
    iput-object p1, p0, Landroid/view/View;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 2590
    return-void
.end method

.method public setOverScrollMode(I)V
    .registers 5
    .parameter "overScrollMode"

    .prologue
    .line 8996
    if-eqz p1, :cond_21

    const/4 v0, 0x1

    if-eq p1, v0, :cond_21

    const/4 v0, 0x2

    if-eq p1, v0, :cond_21

    .line 8999
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid overscroll mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9001
    :cond_21
    iput p1, p0, Landroid/view/View;->mOverScrollMode:I

    .line 9002
    return-void
.end method

.method public setPadding(IIII)V
    .registers 10
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/high16 v4, 0x100

    const/4 v3, 0x0

    .line 7708
    const/4 v0, 0x0

    .line 7710
    .local v0, changed:Z
    iput p3, p0, Landroid/view/View;->mUserPaddingRight:I

    .line 7711
    iput p4, p0, Landroid/view/View;->mUserPaddingBottom:I

    .line 7713
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    .line 7716
    .local v1, viewFlags:I
    and-int/lit16 v2, v1, 0x300

    if-eqz v2, :cond_22

    .line 7718
    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_18

    .line 7719
    and-int v2, v1, v4

    if-nez v2, :cond_44

    move v2, v3

    :goto_17
    add-int/2addr p3, v2

    .line 7722
    :cond_18
    and-int/lit16 v2, v1, 0x100

    if-nez v2, :cond_22

    .line 7723
    and-int v2, v1, v4

    if-nez v2, :cond_49

    move v2, v3

    :goto_21
    add-int/2addr p4, v2

    .line 7728
    :cond_22
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    if-eq v2, p1, :cond_29

    .line 7729
    const/4 v0, 0x1

    .line 7730
    iput p1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 7732
    :cond_29
    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    if-eq v2, p2, :cond_30

    .line 7733
    const/4 v0, 0x1

    .line 7734
    iput p2, p0, Landroid/view/View;->mPaddingTop:I

    .line 7736
    :cond_30
    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    if-eq v2, p3, :cond_37

    .line 7737
    const/4 v0, 0x1

    .line 7738
    iput p3, p0, Landroid/view/View;->mPaddingRight:I

    .line 7740
    :cond_37
    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    if-eq v2, p4, :cond_3e

    .line 7741
    const/4 v0, 0x1

    .line 7742
    iput p4, p0, Landroid/view/View;->mPaddingBottom:I

    .line 7745
    :cond_3e
    if-eqz v0, :cond_43

    .line 7746
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 7748
    :cond_43
    return-void

    .line 7719
    :cond_44
    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v2

    goto :goto_17

    .line 7723
    :cond_49
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalScrollbarHeight()I

    move-result v2

    goto :goto_21
.end method

.method public setPressed(Z)V
    .registers 3
    .parameter "pressed"

    .prologue
    .line 3415
    if-eqz p1, :cond_f

    .line 3416
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 3420
    :goto_8
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 3421
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetPressed(Z)V

    .line 3422
    return-void

    .line 3418
    :cond_f
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_8
.end method

.method public setSaveEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    const/high16 v1, 0x1

    .line 3479
    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3480
    return-void

    :cond_9
    move v0, v1

    .line 3479
    goto :goto_5
.end method

.method public setScrollBarStyle(I)V
    .registers 5
    .parameter "style"

    .prologue
    const/high16 v2, 0x300

    .line 5789
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v2

    if-eq p1, v0, :cond_18

    .line 5790
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const v1, -0x3000001

    and-int/2addr v0, v1

    and-int v1, p1, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 5791
    invoke-direct {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 5792
    invoke-direct {p0}, Landroid/view/View;->recomputePadding()V

    .line 5794
    :cond_18
    return-void
.end method

.method public setScrollContainer(Z)V
    .registers 4
    .parameter "isScrollContainer"

    .prologue
    const/high16 v1, 0x10

    .line 2936
    if-eqz p1, :cond_21

    .line 2937
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_19

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_19

    .line 2938
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2939
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2941
    :cond_19
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2948
    :goto_20
    return-void

    .line 2943
    :cond_21
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2d

    .line 2944
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2946
    :cond_2d
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x180001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_20
.end method

.method public setScrollbarFadingEnabled(Z)V
    .registers 4
    .parameter "fadeScrollbars"

    .prologue
    .line 5751
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 5752
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 5753
    .local v0, scrollabilityCache:Landroid/view/View$ScrollabilityCache;
    iput-boolean p1, v0, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    .line 5754
    if-eqz p1, :cond_d

    .line 5755
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->state:I

    .line 5759
    :goto_c
    return-void

    .line 5757
    :cond_d
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->state:I

    goto :goto_c
.end method

.method public setSelected(Z)V
    .registers 4
    .parameter "selected"

    .prologue
    const/4 v1, 0x0

    .line 7801
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    :goto_8
    if-eq v0, p1, :cond_22

    .line 7802
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_11

    const/4 v1, 0x4

    :cond_11
    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7803
    if-nez p1, :cond_19

    invoke-direct {p0}, Landroid/view/View;->resetPressedState()V

    .line 7804
    :cond_19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7805
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 7806
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetSelected(Z)V

    .line 7808
    :cond_22
    return-void

    :cond_23
    move v0, v1

    .line 7801
    goto :goto_8
.end method

.method public setSoundEffect(I)V
    .registers 2
    .parameter "soundEffect"

    .prologue
    .line 2508
    iput p1, p0, Landroid/view/View;->mSoundEffect:I

    .line 2509
    return-void
.end method

.method public setSoundEffectsEnabled(Z)V
    .registers 4
    .parameter "soundEffectsEnabled"

    .prologue
    const/high16 v1, 0x800

    .line 3260
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3261
    return-void

    .line 3260
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setTag(ILjava/lang/Object;)V
    .registers 5
    .parameter "key"
    .parameter "tag"

    .prologue
    .line 8103
    ushr-int/lit8 v0, p1, 0x18

    const/4 v1, 0x2

    if-ge v0, v1, :cond_d

    .line 8104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be an application-specific resource id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8108
    :cond_d
    invoke-static {p0, p1, p2}, Landroid/view/View;->setTagInternal(Landroid/view/View;ILjava/lang/Object;)V

    .line 8109
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .registers 2
    .parameter "tag"

    .prologue
    .line 8054
    iput-object p1, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    .line 8055
    return-void
.end method

.method public setTagInternal(ILjava/lang/Object;)V
    .registers 5
    .parameter "key"
    .parameter "tag"

    .prologue
    .line 8118
    ushr-int/lit8 v0, p1, 0x18

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    .line 8119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be a framework-specific resource id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8123
    :cond_d
    invoke-static {p0, p1, p2}, Landroid/view/View;->setTagInternal(Landroid/view/View;ILjava/lang/Object;)V

    .line 8124
    return-void
.end method

.method public setTouchDelegate(Landroid/view/TouchDelegate;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 4628
    iput-object p1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 4629
    return-void
.end method

.method public setVerticalFadingEdgeEnabled(Z)V
    .registers 3
    .parameter "verticalFadingEdgeEnabled"

    .prologue
    .line 5613
    invoke-virtual {p0}, Landroid/view/View;->isVerticalFadingEdgeEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_11

    .line 5614
    if-eqz p1, :cond_b

    .line 5615
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 5618
    :cond_b
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 5620
    :cond_11
    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .registers 3
    .parameter "verticalScrollBarEnabled"

    .prologue
    .line 5733
    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_12

    .line 5734
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x200

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 5735
    invoke-direct {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 5736
    invoke-direct {p0}, Landroid/view/View;->recomputePadding()V

    .line 5738
    :cond_12
    return-void
.end method

.method public setVisibility(I)V
    .registers 5
    .parameter "visibility"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3169
    const/16 v0, 0xc

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    .line 3170
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_13

    const/4 v1, 0x1

    :goto_f
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 3171
    :cond_12
    return-void

    :cond_13
    move v1, v2

    .line 3170
    goto :goto_f
.end method

.method public setWillNotCacheDrawing(Z)V
    .registers 4
    .parameter "willNotCacheDrawing"

    .prologue
    const/high16 v1, 0x2

    .line 3338
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3339
    return-void

    .line 3338
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setWillNotDraw(Z)V
    .registers 4
    .parameter "willNotDraw"

    .prologue
    const/16 v1, 0x80

    .line 3315
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3316
    return-void

    .line 3315
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public showContextMenu()Z
    .registers 2

    .prologue
    .line 2573
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 8587
    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 8588
    invoke-virtual {p0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 8589
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8590
    return-void
.end method

.method unFocus()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2720
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_14

    .line 2721
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2723
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2724
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 2726
    :cond_14
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "who"

    .prologue
    .line 7387
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_b

    .line 7388
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7390
    :cond_b
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4
    .parameter "who"
    .parameter "what"

    .prologue
    .line 7372
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz p2, :cond_13

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_13

    .line 7373
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 7375
    :cond_13
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .parameter "who"

    .prologue
    .line 7412
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public willNotCacheDrawing()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const/high16 v1, 0x2

    .line 3348
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public willNotDraw()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 3325
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
