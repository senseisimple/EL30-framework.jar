.class Lcom/android/internal/telephony/Am$InstrumentationWatcher;
.super Landroid/app/IInstrumentationWatcher$Stub;
.source "Am.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstrumentationWatcher"
.end annotation


# instance fields
.field private mFinished:Z

.field private mRawMode:Z

.field final synthetic this$0:Lcom/android/internal/telephony/Am;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/Am;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 754
    iput-object p1, p0, Lcom/android/internal/telephony/Am$InstrumentationWatcher;->this$0:Lcom/android/internal/telephony/Am;

    invoke-direct {p0}, Landroid/app/IInstrumentationWatcher$Stub;-><init>()V

    .line 755
    iput-boolean v0, p0, Lcom/android/internal/telephony/Am$InstrumentationWatcher;->mFinished:Z

    .line 756
    iput-boolean v0, p0, Lcom/android/internal/telephony/Am$InstrumentationWatcher;->mRawMode:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/Am;Lcom/android/internal/telephony/Am$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 754
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Am$InstrumentationWatcher;-><init>(Lcom/android/internal/telephony/Am;)V

    return-void
.end method


# virtual methods
.method public instrumentationFinished(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    .registers 10
    .parameter "name"
    .parameter "resultCode"
    .parameter "results"

    .prologue
    .line 791
    monitor-enter p0

    .line 793
    const/4 v2, 0x0

    .line 794
    .local v2, pretty:Ljava/lang/String;
    :try_start_2
    iget-boolean v3, p0, Lcom/android/internal/telephony/Am$InstrumentationWatcher;->mRawMode:Z

    if-nez v3, :cond_f

    if-eqz p3, :cond_f

    .line 795
    const-string/jumbo v3, "stream"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 797
    :cond_f
    if-eqz v2, :cond_1e

    .line 798
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 808
    :goto_16
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/Am$InstrumentationWatcher;->mFinished:Z

    .line 809
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 810
    monitor-exit p0

    .line 811
    return-void

    .line 800
    :cond_1e
    if-eqz p3, :cond_5e

    .line 801
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 802
    .local v1, key:Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSTRUMENTATION_RESULT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_28

    .line 810
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    :catchall_5b
    move-exception v3

    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_2 .. :try_end_5d} :catchall_5b

    throw v3

    .line 806
    :cond_5e
    :try_start_5e
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSTRUMENTATION_CODE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_5e .. :try_end_76} :catchall_5b

    goto :goto_16
.end method

.method public instrumentationStatus(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    .registers 10
    .parameter "name"
    .parameter "resultCode"
    .parameter "results"

    .prologue
    .line 768
    monitor-enter p0

    .line 770
    const/4 v2, 0x0

    .line 771
    .local v2, pretty:Ljava/lang/String;
    :try_start_2
    iget-boolean v3, p0, Lcom/android/internal/telephony/Am$InstrumentationWatcher;->mRawMode:Z

    if-nez v3, :cond_f

    if-eqz p3, :cond_f

    .line 772
    const-string/jumbo v3, "stream"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 774
    :cond_f
    if-eqz v2, :cond_1b

    .line 775
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 785
    :goto_16
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 786
    monitor-exit p0

    .line 787
    return-void

    .line 777
    :cond_1b
    if-eqz p3, :cond_5b

    .line 778
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 779
    .local v1, key:Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSTRUMENTATION_STATUS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_25

    .line 786
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    :catchall_58
    move-exception v3

    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_2 .. :try_end_5a} :catchall_58

    throw v3

    .line 783
    :cond_5b
    :try_start_5b
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSTRUMENTATION_STATUS_CODE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_5b .. :try_end_73} :catchall_58

    goto :goto_16
.end method

.method public setRawOutput(Z)V
    .registers 2
    .parameter "rawMode"

    .prologue
    .line 764
    iput-boolean p1, p0, Lcom/android/internal/telephony/Am$InstrumentationWatcher;->mRawMode:Z

    .line 765
    return-void
.end method

.method public waitForFinish()Z
    .registers 4

    .prologue
    .line 814
    monitor-enter p0

    .line 815
    :goto_1
    :try_start_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/Am$InstrumentationWatcher;->mFinished:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_26

    if-nez v1, :cond_29

    .line 817
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/telephony/Am$InstrumentationWatcher;->this$0:Lcom/android/internal/telephony/Am;

    #getter for: Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;
    invoke-static {v1}, Lcom/android/internal/telephony/Am;->access$200(Lcom/android/internal/telephony/Am;)Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_26
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_12} :catch_1e

    move-result v1

    if-nez v1, :cond_18

    .line 818
    const/4 v1, 0x0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_26

    .line 826
    :goto_17
    return v1

    .line 820
    :cond_18
    const-wide/16 v1, 0x3e8

    :try_start_1a
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_26
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_1

    .line 821
    :catch_1e
    move-exception v1

    move-object v0, v1

    .line 822
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_20
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 825
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_26
    move-exception v1

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_26

    throw v1

    :cond_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_26

    .line 826
    const/4 v1, 0x1

    goto :goto_17
.end method
