.class Landroid/os/storage/StorageManager$UsbStorageBinderListener;
.super Landroid/os/storage/IUsbStorageServiceListener$Stub;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbStorageBinderListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/storage/StorageManager;


# direct methods
.method private constructor <init>(Landroid/os/storage/StorageManager;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Landroid/os/storage/StorageManager$UsbStorageBinderListener;->this$0:Landroid/os/storage/StorageManager;

    invoke-direct {p0}, Landroid/os/storage/IUsbStorageServiceListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Landroid/os/storage/StorageManager$UsbStorageBinderListener;-><init>(Landroid/os/storage/StorageManager;)V

    return-void
.end method


# virtual methods
.method public onUsbStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 101
    iget-object v2, p0, Landroid/os/storage/StorageManager$UsbStorageBinderListener;->this$0:Landroid/os/storage/StorageManager;

    #getter for: Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;
    invoke-static {v2}, Landroid/os/storage/StorageManager;->access$000(Landroid/os/storage/StorageManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 102
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-ge v0, v1, :cond_1f

    .line 103
    iget-object v2, p0, Landroid/os/storage/StorageManager$UsbStorageBinderListener;->this$0:Landroid/os/storage/StorageManager;

    #getter for: Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;
    invoke-static {v2}, Landroid/os/storage/StorageManager;->access$000(Landroid/os/storage/StorageManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager$ListenerDelegate;

    invoke-virtual {v2, p1, p2, p3}, Landroid/os/storage/StorageManager$ListenerDelegate;->sendUsbStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 105
    :cond_1f
    return-void
.end method
