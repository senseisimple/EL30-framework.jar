.class Landroid/server/BluetoothService$Reaper;
.super Ljava/lang/Object;
.source "BluetoothService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Reaper"
.end annotation


# instance fields
.field handle:I

.field pid:I

.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;II)V
    .registers 4
    .parameter
    .parameter "handle"
    .parameter "pid"

    .prologue
    .line 2452
    iput-object p1, p0, Landroid/server/BluetoothService$Reaper;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2453
    iput p3, p0, Landroid/server/BluetoothService$Reaper;->pid:I

    .line 2454
    iput p2, p0, Landroid/server/BluetoothService$Reaper;->handle:I

    .line 2455
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .prologue
    .line 2457
    iget-object v0, p0, Landroid/server/BluetoothService$Reaper;->this$0:Landroid/server/BluetoothService;

    monitor-enter v0

    .line 2458
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tracked app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/server/BluetoothService$Reaper;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " died"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Landroid/server/BluetoothService;->access$1300(Ljava/lang/String;)V

    .line 2459
    iget-object v1, p0, Landroid/server/BluetoothService$Reaper;->this$0:Landroid/server/BluetoothService;

    iget v2, p0, Landroid/server/BluetoothService$Reaper;->handle:I

    iget v3, p0, Landroid/server/BluetoothService$Reaper;->pid:I

    #calls: Landroid/server/BluetoothService;->checkAndRemoveRecord(II)V
    invoke-static {v1, v2, v3}, Landroid/server/BluetoothService;->access$3100(Landroid/server/BluetoothService;II)V

    .line 2460
    monitor-exit v0

    .line 2461
    return-void

    .line 2460
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method
