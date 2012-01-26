.class Lcom/android/internal/telephony/gsm/FastDormDataStatistics$1;
.super Landroid/content/BroadcastReceiver;
.source "FastDormDataStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/FastDormDataStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/FastDormDataStatistics;)V
    .registers 2
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics$1;->this$0:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v5, 0x1388

    const/4 v4, 0x0

    const/4 v3, -0x1

    const-string v6, "FastDormancy"

    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 112
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics$1;->this$0:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mIsScreenOn:Z
    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$002(Lcom/android/internal/telephony/gsm/FastDormDataStatistics;Z)Z

    .line 114
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics$1;->this$0:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    #getter for: Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mDorm:Lcom/android/internal/telephony/gsm/FastDorm;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$100(Lcom/android/internal/telephony/gsm/FastDormDataStatistics;)Lcom/android/internal/telephony/gsm/FastDorm;

    move-result-object v1

    if-eqz v1, :cond_65

    .line 115
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics$1;->this$0:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    #getter for: Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mDorm:Lcom/android/internal/telephony/gsm/FastDorm;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$100(Lcom/android/internal/telephony/gsm/FastDormDataStatistics;)Lcom/android/internal/telephony/gsm/FastDorm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/FastDorm;->getScreenOnDormTime()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$202(I)I

    .line 116
    invoke-static {}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$200()I

    move-result v1

    if-eq v1, v3, :cond_66

    invoke-static {}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$200()I

    move-result v1

    invoke-static {}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$300()I

    move-result v2

    if-eq v1, v2, :cond_66

    .line 118
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics$1;->this$0:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    #calls: Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->changeKernelWakeLockTime()V
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$400(Lcom/android/internal/telephony/gsm/FastDormDataStatistics;)V

    .line 119
    invoke-static {}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$200()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$302(I)I

    .line 121
    const-string v1, "FastDormancy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SCREEN_ON] New FD Time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$200()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_65
    :goto_65
    return-void

    .line 122
    :cond_66
    invoke-static {}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$200()I

    move-result v1

    if-ne v1, v3, :cond_65

    .line 123
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$202(I)I

    goto :goto_65

    .line 126
    :cond_70
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 127
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics$1;->this$0:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    #setter for: Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mIsScreenOn:Z
    invoke-static {v1, v4}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$002(Lcom/android/internal/telephony/gsm/FastDormDataStatistics;Z)Z

    .line 129
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics$1;->this$0:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    #getter for: Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mDorm:Lcom/android/internal/telephony/gsm/FastDorm;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$100(Lcom/android/internal/telephony/gsm/FastDormDataStatistics;)Lcom/android/internal/telephony/gsm/FastDorm;

    move-result-object v1

    if-eqz v1, :cond_ca

    .line 130
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics$1;->this$0:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    #getter for: Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mDorm:Lcom/android/internal/telephony/gsm/FastDorm;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$100(Lcom/android/internal/telephony/gsm/FastDormDataStatistics;)Lcom/android/internal/telephony/gsm/FastDorm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/FastDorm;->getScreenOffDormTime()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$202(I)I

    .line 131
    invoke-static {}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$200()I

    move-result v1

    if-eq v1, v3, :cond_e2

    invoke-static {}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$200()I

    move-result v1

    invoke-static {}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$300()I

    move-result v2

    if-eq v1, v2, :cond_e2

    .line 133
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics$1;->this$0:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    #calls: Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->changeKernelWakeLockTime()V
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$400(Lcom/android/internal/telephony/gsm/FastDormDataStatistics;)V

    .line 134
    invoke-static {}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$200()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$302(I)I

    .line 136
    const-string v1, "FastDormancy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SCREEN_OFF] New FD Time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$200()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_ca
    :goto_ca
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$502(Z)Z

    .line 143
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics$1;->this$0:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    #getter for: Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->inactivityPeriod:J
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$600(Lcom/android/internal/telephony/gsm/FastDormDataStatistics;)J

    move-result-wide v1

    invoke-static {}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$200()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_65

    .line 144
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics$1;->this$0:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    #calls: Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->forceDataDormancy()V
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$700(Lcom/android/internal/telephony/gsm/FastDormDataStatistics;)V

    goto :goto_65

    .line 137
    :cond_e2
    invoke-static {}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$200()I

    move-result v1

    if-ne v1, v3, :cond_ca

    .line 138
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$202(I)I

    goto :goto_ca
.end method
