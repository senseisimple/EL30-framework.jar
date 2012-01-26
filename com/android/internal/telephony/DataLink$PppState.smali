.class public final enum Lcom/android/internal/telephony/DataLink$PppState;
.super Ljava/lang/Enum;
.source "DataLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PppState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/DataLink$PppState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/DataLink$PppState;

.field public static final enum CONNECTED:Lcom/android/internal/telephony/DataLink$PppState;

.field public static final enum CONNECTING:Lcom/android/internal/telephony/DataLink$PppState;

.field public static final enum DISCONNECTING:Lcom/android/internal/telephony/DataLink$PppState;

.field public static final enum FAILED:Lcom/android/internal/telephony/DataLink$PppState;

.field public static final enum IDLE:Lcom/android/internal/telephony/DataLink$PppState;

.field public static final enum INITING:Lcom/android/internal/telephony/DataLink$PppState;

.field public static final enum SCANNING:Lcom/android/internal/telephony/DataLink$PppState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/android/internal/telephony/DataLink$PppState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/DataLink$PppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataLink$PppState;->IDLE:Lcom/android/internal/telephony/DataLink$PppState;

    .line 43
    new-instance v0, Lcom/android/internal/telephony/DataLink$PppState;

    const-string v1, "INITING"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/DataLink$PppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataLink$PppState;->INITING:Lcom/android/internal/telephony/DataLink$PppState;

    .line 44
    new-instance v0, Lcom/android/internal/telephony/DataLink$PppState;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/DataLink$PppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataLink$PppState;->CONNECTING:Lcom/android/internal/telephony/DataLink$PppState;

    .line 45
    new-instance v0, Lcom/android/internal/telephony/DataLink$PppState;

    const-string v1, "SCANNING"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/DataLink$PppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataLink$PppState;->SCANNING:Lcom/android/internal/telephony/DataLink$PppState;

    .line 46
    new-instance v0, Lcom/android/internal/telephony/DataLink$PppState;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/DataLink$PppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataLink$PppState;->CONNECTED:Lcom/android/internal/telephony/DataLink$PppState;

    .line 47
    new-instance v0, Lcom/android/internal/telephony/DataLink$PppState;

    const-string v1, "DISCONNECTING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataLink$PppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataLink$PppState;->DISCONNECTING:Lcom/android/internal/telephony/DataLink$PppState;

    .line 48
    new-instance v0, Lcom/android/internal/telephony/DataLink$PppState;

    const-string v1, "FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataLink$PppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataLink$PppState;->FAILED:Lcom/android/internal/telephony/DataLink$PppState;

    .line 41
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/internal/telephony/DataLink$PppState;

    sget-object v1, Lcom/android/internal/telephony/DataLink$PppState;->IDLE:Lcom/android/internal/telephony/DataLink$PppState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/DataLink$PppState;->INITING:Lcom/android/internal/telephony/DataLink$PppState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/DataLink$PppState;->CONNECTING:Lcom/android/internal/telephony/DataLink$PppState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/DataLink$PppState;->SCANNING:Lcom/android/internal/telephony/DataLink$PppState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/DataLink$PppState;->CONNECTED:Lcom/android/internal/telephony/DataLink$PppState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/DataLink$PppState;->DISCONNECTING:Lcom/android/internal/telephony/DataLink$PppState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/DataLink$PppState;->FAILED:Lcom/android/internal/telephony/DataLink$PppState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/DataLink$PppState;->$VALUES:[Lcom/android/internal/telephony/DataLink$PppState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DataLink$PppState;
    .registers 2
    .parameter "name"

    .prologue
    .line 41
    const-class v0, Lcom/android/internal/telephony/DataLink$PppState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/DataLink$PppState;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/DataLink$PppState;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/internal/telephony/DataLink$PppState;->$VALUES:[Lcom/android/internal/telephony/DataLink$PppState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/DataLink$PppState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DataLink$PppState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const-string v2, "IDLE"

    .line 51
    sget-object v0, Lcom/android/internal/telephony/DataLink$1;->$SwitchMap$com$android$internal$telephony$DataLink$PppState:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataLink$PppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_22

    .line 63
    const-string v0, "IDLE"

    move-object v0, v2

    :goto_10
    return-object v0

    .line 53
    :pswitch_11
    const-string v0, "IDLE"

    move-object v0, v2

    goto :goto_10

    .line 55
    :pswitch_15
    const-string v0, "INITING"

    goto :goto_10

    .line 57
    :pswitch_18
    const-string v0, "CONNECTING"

    goto :goto_10

    .line 59
    :pswitch_1b
    const-string v0, "CONNECTED"

    goto :goto_10

    .line 61
    :pswitch_1e
    const-string v0, "DISCONNECTING"

    goto :goto_10

    .line 51
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_11
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
    .end packed-switch
.end method
