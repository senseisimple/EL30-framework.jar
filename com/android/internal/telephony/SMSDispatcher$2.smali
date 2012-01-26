.class Lcom/android/internal/telephony/SMSDispatcher$2;
.super Landroid/content/BroadcastReceiver;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;)V
    .registers 2
    .parameter

    .prologue
    .line 2565
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "SMSDispatcher"

    .line 2569
    const-string v0, "SMSDispatcher"

    const-string v0, "BroadcastReceiver - mGcfResultReceiver "

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.GCF_DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2572
    const-string v0, "SMSDispatcher"

    const-string v0, "ACTION_GCF_DEVICE_STORAGE_LOW "

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2575
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2577
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 2578
    invoke-static {v3}, Lcom/android/internal/telephony/SMSDispatcher;->access$102(Z)Z

    .line 2581
    :cond_2f
    invoke-static {v2}, Lcom/android/internal/telephony/SMSDispatcher;->access$002(Z)Z

    .line 2582
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iput-boolean v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    .line 2583
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iput-boolean v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->receive_intent:Z

    .line 2587
    :cond_3a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.GCF_DEVICE_STORAGE_OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 2588
    const-string v0, "SMSDispatcher"

    const-string v0, "ACTION_GCF_DEVICE_STORAGE_OK "

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->access$100()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 2593
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 2594
    invoke-static {v3}, Lcom/android/internal/telephony/SMSDispatcher;->access$002(Z)Z

    .line 2597
    :cond_5d
    invoke-static {v2}, Lcom/android/internal/telephony/SMSDispatcher;->access$102(Z)Z

    .line 2599
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iput-boolean v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    .line 2600
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iput-boolean v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->receive_intent:Z

    .line 2604
    :cond_68
    return-void
.end method
