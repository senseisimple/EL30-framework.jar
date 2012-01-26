.class public final Lcom/android/internal/telephony/gsm/SIMFileHandler;
.super Lcom/android/internal/telephony/IccFileHandler;
.source "SIMFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .registers 2
    .parameter "phone"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 41
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMFileHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 42
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    .prologue
    .line 45
    invoke-super {p0}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 46
    return-void
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 49
    const-string v0, "GSM"

    const-string v1, "SIMFileHandler finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .registers 7
    .parameter "efid"

    .prologue
    const-string v4, "3F007F20"

    const-string v3, "3F007F105F3A"

    .line 62
    sparse-switch p1, :sswitch_data_3a

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, path:Ljava/lang/String;
    if-nez v1, :cond_37

    .line 95
    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 96
    .local v0, card:Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_30

    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 97
    const-string v2, "3F007F105F3A"

    move-object v2, v3

    .line 101
    .end local v0           #card:Lcom/android/internal/telephony/IccCard;
    .end local v1           #path:Ljava/lang/String;
    :goto_20
    return-object v2

    .line 64
    :sswitch_21
    const-string v2, "3F007F10"

    goto :goto_20

    .line 76
    :sswitch_24
    const-string v2, "3F007F20"

    move-object v2, v4

    goto :goto_20

    .line 84
    :sswitch_28
    const-string v2, "3F007F20"

    move-object v2, v4

    goto :goto_20

    .line 88
    :sswitch_2c
    const-string v2, "3F007F105F3A"

    move-object v2, v3

    goto :goto_20

    .line 99
    .restart local v0       #card:Lcom/android/internal/telephony/IccCard;
    .restart local v1       #path:Ljava/lang/String;
    :cond_30
    const-string v2, "GSM"

    const-string v3, "Error: EF Path being returned in null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #card:Lcom/android/internal/telephony/IccCard;
    :cond_37
    move-object v2, v1

    .line 101
    goto :goto_20

    .line 62
    nop

    :sswitch_data_3a
    .sparse-switch
        0x4f30 -> :sswitch_2c
        0x6f11 -> :sswitch_28
        0x6f13 -> :sswitch_28
        0x6f14 -> :sswitch_28
        0x6f16 -> :sswitch_28
        0x6f17 -> :sswitch_28
        0x6f18 -> :sswitch_28
        0x6f38 -> :sswitch_24
        0x6f3c -> :sswitch_21
        0x6f46 -> :sswitch_24
        0x6fad -> :sswitch_24
        0x6fc5 -> :sswitch_24
        0x6fc7 -> :sswitch_24
        0x6fc8 -> :sswitch_24
        0x6fc9 -> :sswitch_24
        0x6fca -> :sswitch_24
        0x6fcb -> :sswitch_24
        0x6fcd -> :sswitch_24
    .end sparse-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->handleMessage(Landroid/os/Message;)V

    .line 57
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 105
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 109
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method
