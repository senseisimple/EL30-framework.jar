.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;
.super Ljava/lang/Object;
.source "GsmServiceStateTracker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .registers 2
    .parameter

    .prologue
    .line 2506
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const-string v8, "[SIM profile] refresh profile"

    const-string v6, "GSM"

    .line 2508
    const/4 v2, -0x2

    if-ne p2, v2, :cond_2c

    .line 2509
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->clearNwkProfilePreference()V
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$800(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    .line 2511
    const-string v2, "GSM"

    const-string v2, "[SIM profile] refresh profile"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2515
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState(Z)V
    invoke-static {v2, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$900(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)V

    .line 2539
    :goto_2b
    return-void

    .line 2518
    :cond_2c
    const-string v2, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SIM profile] selected idx: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    iput-object v2, v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    .line 2521
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "simprof.preferences_name"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2523
    .local v1, preferences:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_9b

    .line 2524
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2525
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "simprof.key.nwkname"

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mName:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2526
    const-string/jumbo v2, "simprof.key.mccmnc"

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mMccMnc:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2527
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2529
    const-string v2, "GSM"

    const-string v2, "[SIM profile] refresh profile"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2534
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_9b
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState(Z)V
    invoke-static {v2, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$900(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)V

    .line 2536
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2537
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsProfileSelected:Z
    invoke-static {v2, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1002(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)Z

    goto :goto_2b
.end method
