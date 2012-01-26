.class Landroid/webkit/WebViewCore$EventHub;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventHub"
.end annotation


# static fields
.field static final ADD_JS_INTERFACE:I = 0x8a

.field static final ADD_PACKAGE_NAME:I = 0xb9

.field static final ADD_PACKAGE_NAMES:I = 0xb8

.field static final ADVANCE_TEXT_SELECTION_ALL:I = 0xd8

.field static final CAN_REDO:I = 0x20f

.field static final CAN_UNDO:I = 0x20d

.field static final CHECK_SELECTION_AT_BOUNDRY:I = 0x217

.field static final CLEAR_CACHE:I = 0x6f

.field static final CLEAR_CONTENT:I = 0x86

.field static final CLEAR_HISTORY:I = 0x70

.field static final CLEAR_REDO_UNDO:I = 0x211

.field static final CLEAR_SSL_PREF_TABLE:I = 0x96

.field static final CLEAR_TEXT_SELECTION:I = 0xd3

.field static final CLICK:I = 0x76

.field static final CLOSEST_WORD_SELECTION:I = 0xd4

.field static final COPY_MOVE_SELECTION:I = 0xd2

.field static final COPY_SAVE_IMAGE:I = 0x204

.field static final DELETE_SELECTION:I = 0x7a

.field static final DELETE_SURROUNDING_TEXT:I = 0x1ff

.field static final DELKEY_SIML_FOR_COUNT:I = 0x1fc

.field private static final DESTROY:I = 0xc8

.field static final DOC_HAS_IMAGES:I = 0x78

.field static final DRAW_SELECTION:I = 0x205

.field static final DUMP_DOMTREE:I = 0xaa

.field static final DUMP_NAVTREE:I = 0xac

.field static final DUMP_RENDERTREE:I = 0xab

.field static final DUMP_V8COUNTERS:I = 0xad

.field static final EXEC_COMMAND:I = 0x203

.field static final FREE_MEMORY:I = 0x91

.field static final GEOLOCATION_PERMISSIONS_PROVIDE:I = 0xb4

.field static final GET_BLOCK_BOUNDS:I = 0xbb

.field static final GET_BODY_HTML:I = 0x200

.field static final GET_BODY_PLAIN_TEXT:I = 0x202

.field static final GET_CARET_RECT:I = 0x209

.field static final GET_EMAIL_MARKUP:I = 0x206

.field static final GET_SLECTION_OFFSET:I = 0x201

.field static final GET_TEXT_AROUND_CURSOR:I = 0x1fd

.field static final GO_BACK_FORWARD:I = 0x6a

.field static final HIDE_FULLSCREEN:I = 0xb6

.field static final KEY_DOWN:I = 0x67

.field static final KEY_UP:I = 0x68

.field static final LISTBOX_CHOICES:I = 0x7b

.field static final LOAD_DATA:I = 0x8b

.field static final LOAD_URL:I = 0x64

.field static final MESSAGE_RELAY:I = 0x7d

.field static final MULTI_TOUCH_EVENT:I = 0xbd

.field static final ON_PAUSE:I = 0x8f

.field static final ON_RESUME:I = 0x90

.field static final PASS_TO_JS:I = 0x73

.field static final PAUSE_TIMERS:I = 0x6d

.field static final POPULATE_VISITED_LINKS:I = 0xb5

.field static final POST_URL:I = 0x84

.field static final RELOAD:I = 0x66

.field static final REMOVE_PACKAGE_NAME:I = 0xba

.field static final REPLACE_TEXT:I = 0x72

.field static final REQUEST_CURSOR_HREF:I = 0x89

.field static final REQUEST_DOC_AS_TEXT:I = 0xa1

.field static final REQUEST_EXT_REPRESENTATION:I = 0xa0

.field static final REQUEST_LABEL:I = 0x61

.field static final RESTORE_STATE:I = 0x6c

.field static final RESUME_TIMERS:I = 0x6e

.field static final SAVE_DOCUMENT_STATE:I = 0x80

.field static final SCROLL_TEXT_INPUT:I = 0x63

.field static final SELECT_AND_CLICK:I = 0xbe

.field static final SET_ACTIVE:I = 0x8e

.field static final SET_BACKGROUND_COLOR:I = 0x7e

.field static final SET_CLICK_MOUSE:I = 0xbc

.field static final SET_EDITABLE:I = 0x207

.field static final SET_GLOBAL_BOUNDS:I = 0x74

.field static final SET_JS_FLAGS:I = 0xae

.field static final SET_MOVE_FOCUS:I = 0x7f

.field static final SET_MOVE_MOUSE:I = 0x87

.field static final SET_MOVE_MOUSE_IF_LATEST:I = 0x88

.field static final SET_NETWORK_STATE:I = 0x77

.field static final SET_NETWORK_TYPE:I = 0xb7

.field static final SET_SCROLL_OFFSET:I = 0x6b

.field static final SET_SELECTION:I = 0x71

.field static final SET_SELECTION_FOR_EDITING:I = 0x1fe

.field static final SET_SELECTION_NONE:I = 0x20b

.field static final SINGLE_LISTBOX_CHOICE:I = 0x7c

.field static final SPLIT_PICTURE_SET:I = 0x85

.field static final STOP_LOADING:I = 0x65

.field static final SYNC_SCROLL:I = 0x83

.field static final TOUCH_EVENT:I = 0x8d

.field static final TOUCH_UP:I = 0x8c

.field static final UPDATE_CACHE_AND_TEXT_ENTRY:I = 0x75

.field static final UPDATE_FRAME_CACHE_IF_LOADING:I = 0x62

.field static final UPDATE_PLUGINS:I = 0xd5

.field static final VALID_NODE_BOUNDS:I = 0x92

.field static final VIEW_SIZE_CHANGED:I = 0x69

.field static final WEBKIT_DRAW:I = 0x82


# instance fields
.field private mBlockMessages:Z

.field private mHandler:Landroid/os/Handler;

.field private mMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedPriority:I

.field private mTid:I

.field final synthetic this$0:Landroid/webkit/WebViewCore;


# direct methods
.method private constructor <init>(Landroid/webkit/WebViewCore;)V
    .registers 3
    .parameter

    .prologue
    .line 1070
    iput-object p1, p0, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1059
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    .line 1070
    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewCore;Landroid/webkit/WebViewCore$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 922
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore$EventHub;-><init>(Landroid/webkit/WebViewCore;)V

    return-void
.end method

.method static synthetic access$200(Landroid/webkit/WebViewCore$EventHub;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 922
    invoke-direct {p0}, Landroid/webkit/WebViewCore$EventHub;->transferMessages()V

    return-void
.end method

.method static synthetic access$2300(Landroid/webkit/WebViewCore$EventHub;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 922
    iget v0, p0, Landroid/webkit/WebViewCore$EventHub;->mSavedPriority:I

    return v0
.end method

.method static synthetic access$2302(Landroid/webkit/WebViewCore$EventHub;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 922
    iput p1, p0, Landroid/webkit/WebViewCore$EventHub;->mSavedPriority:I

    return p1
.end method

.method static synthetic access$2400(Landroid/webkit/WebViewCore$EventHub;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 922
    iget v0, p0, Landroid/webkit/WebViewCore$EventHub;->mTid:I

    return v0
.end method

.method static synthetic access$8900(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 922
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$9000(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 922
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$9100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;J)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 922
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore$EventHub;->sendMessageDelayed(Landroid/os/Message;J)V

    return-void
.end method

.method static synthetic access$9200(Landroid/webkit/WebViewCore$EventHub;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 922
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$9300(Landroid/webkit/WebViewCore$EventHub;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 922
    invoke-direct {p0}, Landroid/webkit/WebViewCore$EventHub;->removeMessages()V

    return-void
.end method

.method static synthetic access$9400(Landroid/webkit/WebViewCore$EventHub;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 922
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore$EventHub;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9500(Landroid/webkit/WebViewCore$EventHub;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 922
    invoke-direct {p0}, Landroid/webkit/WebViewCore$EventHub;->blockMessages()V

    return-void
.end method

.method private declared-synchronized blockMessages()V
    .registers 2

    .prologue
    .line 1898
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/webkit/WebViewCore$EventHub;->mBlockMessages:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 1899
    monitor-exit p0

    return-void

    .line 1898
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized hasMessages(I)Z
    .registers 5
    .parameter "what"

    .prologue
    const/4 v2, 0x0

    .line 1848
    monitor-enter p0

    :try_start_2
    iget-boolean v0, p0, Landroid/webkit/WebViewCore$EventHub;->mBlockMessages:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_1e

    if-eqz v0, :cond_9

    move v0, v2

    .line 1855
    :goto_7
    monitor-exit p0

    return v0

    .line 1851
    :cond_9
    :try_start_9
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    .line 1852
    const-string/jumbo v0, "webcore"

    const-string v1, "hasMessages() is not supported in this case."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 1853
    goto :goto_7

    .line 1855
    :cond_17
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_1e

    move-result v0

    goto :goto_7

    .line 1848
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeMessages()V
    .registers 3

    .prologue
    .line 1885
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v1, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->access$8802(Landroid/webkit/WebViewCore;Z)Z

    .line 1886
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v1, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mSplitPictureIsScheduled:Z
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->access$7602(Landroid/webkit/WebViewCore;Z)Z

    .line 1887
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    .line 1888
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1f

    .line 1892
    :goto_16
    monitor-exit p0

    return-void

    .line 1890
    :cond_18
    :try_start_18
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_1f

    goto :goto_16

    .line 1885
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeMessages(I)V
    .registers 4
    .parameter "what"

    .prologue
    .line 1834
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebViewCore$EventHub;->mBlockMessages:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1e

    if-eqz v0, :cond_7

    .line 1845
    :goto_5
    monitor-exit p0

    return-void

    .line 1837
    :cond_7
    const/16 v0, 0x82

    if-ne p1, v0, :cond_11

    .line 1838
    :try_start_b
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v1, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->access$8802(Landroid/webkit/WebViewCore;Z)Z

    .line 1840
    :cond_11
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    if-eqz v0, :cond_21

    .line 1841
    const-string/jumbo v0, "webcore"

    const-string v1, "Not supported in this case."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_1e

    goto :goto_5

    .line 1834
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1843
    :cond_21
    :try_start_21
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_1e

    goto :goto_5
.end method

.method private declared-synchronized sendMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 1823
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebViewCore$EventHub;->mBlockMessages:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    if-eqz v0, :cond_7

    .line 1831
    :goto_5
    monitor-exit p0

    return-void

    .line 1826
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    .line 1827
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_11

    goto :goto_5

    .line 1823
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1829
    :cond_14
    :try_start_14
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_11

    goto :goto_5
.end method

.method private declared-synchronized sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 1870
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebViewCore$EventHub;->mBlockMessages:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-eqz v0, :cond_7

    .line 1878
    :goto_5
    monitor-exit p0

    return-void

    .line 1873
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    .line 1874
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    goto :goto_5

    .line 1870
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1876
    :cond_15
    :try_start_15
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_12

    goto :goto_5
.end method

.method private declared-synchronized sendMessageDelayed(Landroid/os/Message;J)V
    .registers 5
    .parameter "msg"
    .parameter "delay"

    .prologue
    .line 1860
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebViewCore$EventHub;->mBlockMessages:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-eqz v0, :cond_7

    .line 1864
    :goto_5
    monitor-exit p0

    return-void

    .line 1863
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    goto :goto_5

    .line 1860
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private transferMessages()V
    .registers 5

    .prologue
    .line 1076
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    iput v2, p0, Landroid/webkit/WebViewCore$EventHub;->mTid:I

    .line 1077
    iget v2, p0, Landroid/webkit/WebViewCore$EventHub;->mTid:I

    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebViewCore$EventHub;->mSavedPriority:I

    .line 1079
    new-instance v2, Landroid/webkit/WebViewCore$EventHub$1;

    invoke-direct {v2, p0}, Landroid/webkit/WebViewCore$EventHub$1;-><init>(Landroid/webkit/WebViewCore$EventHub;)V

    iput-object v2, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    .line 1810
    monitor-enter p0

    .line 1811
    :try_start_16
    iget-object v2, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1812
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1d
    if-ge v0, v1, :cond_2f

    .line 1813
    iget-object v3, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1812
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 1815
    :cond_2f
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    .line 1816
    monitor-exit p0

    .line 1817
    return-void

    .line 1816
    .end local v0           #i:I
    .end local v1           #size:I
    :catchall_34
    move-exception v2

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_16 .. :try_end_36} :catchall_34

    throw v2
.end method
