.class public final enum Lcom/android/internal/telephony/DataConnection$SetupResult;
.super Ljava/lang/Enum;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "SetupResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/DataConnection$SetupResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/DataConnection$SetupResult;

.field public static final enum ERR_BadCommand:Lcom/android/internal/telephony/DataConnection$SetupResult;

.field public static final enum ERR_BadDns:Lcom/android/internal/telephony/DataConnection$SetupResult;

.field public static final enum ERR_Other:Lcom/android/internal/telephony/DataConnection$SetupResult;

.field public static final enum ERR_Stale:Lcom/android/internal/telephony/DataConnection$SetupResult;

.field public static final enum SUCCESS:Lcom/android/internal/telephony/DataConnection$SetupResult;


# instance fields
.field public mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    new-instance v0, Lcom/android/internal/telephony/DataConnection$SetupResult;

    const-string v1, "ERR_BadCommand"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$SetupResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_BadCommand:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .line 107
    new-instance v0, Lcom/android/internal/telephony/DataConnection$SetupResult;

    const-string v1, "ERR_BadDns"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/DataConnection$SetupResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_BadDns:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .line 108
    new-instance v0, Lcom/android/internal/telephony/DataConnection$SetupResult;

    const-string v1, "ERR_Other"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/DataConnection$SetupResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_Other:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .line 109
    new-instance v0, Lcom/android/internal/telephony/DataConnection$SetupResult;

    const-string v1, "ERR_Stale"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/DataConnection$SetupResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_Stale:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .line 110
    new-instance v0, Lcom/android/internal/telephony/DataConnection$SetupResult;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/DataConnection$SetupResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$SetupResult;->SUCCESS:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .line 105
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/telephony/DataConnection$SetupResult;

    sget-object v1, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_BadCommand:Lcom/android/internal/telephony/DataConnection$SetupResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_BadDns:Lcom/android/internal/telephony/DataConnection$SetupResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_Other:Lcom/android/internal/telephony/DataConnection$SetupResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_Stale:Lcom/android/internal/telephony/DataConnection$SetupResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/DataConnection$SetupResult;->SUCCESS:Lcom/android/internal/telephony/DataConnection$SetupResult;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/DataConnection$SetupResult;->$VALUES:[Lcom/android/internal/telephony/DataConnection$SetupResult;

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
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnection$SetupResult;
    .registers 2
    .parameter "name"

    .prologue
    .line 105
    const-class v0, Lcom/android/internal/telephony/DataConnection$SetupResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/DataConnection$SetupResult;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/DataConnection$SetupResult;
    .registers 1

    .prologue
    .line 105
    sget-object v0, Lcom/android/internal/telephony/DataConnection$SetupResult;->$VALUES:[Lcom/android/internal/telephony/DataConnection$SetupResult;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/DataConnection$SetupResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DataConnection$SetupResult;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 116
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$SetupResult:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection$SetupResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 122
    const-string/jumbo v0, "unknown"

    :goto_e
    return-object v0

    .line 117
    :pswitch_f
    const-string v0, "Bad Command"

    goto :goto_e

    .line 118
    :pswitch_12
    const-string v0, "Bad DNS"

    goto :goto_e

    .line 119
    :pswitch_15
    const-string v0, "Other error"

    goto :goto_e

    .line 120
    :pswitch_18
    const-string v0, "Stale command"

    goto :goto_e

    .line 121
    :pswitch_1b
    const-string v0, "SUCCESS"

    goto :goto_e

    .line 116
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
    .end packed-switch
.end method
