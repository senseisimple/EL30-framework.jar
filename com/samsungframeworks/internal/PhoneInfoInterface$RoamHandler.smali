.class Lcom/samsungframeworks/internal/PhoneInfoInterface$RoamHandler;
.super Landroid/os/Handler;
.source "PhoneInfoInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsungframeworks/internal/PhoneInfoInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoamHandler"
.end annotation


# static fields
.field private static final MESSAGE_GET_PREFERRED_NETWORK_TYPE:I = 0x0

.field private static final MESSAGE_QUERY_ROAMING_PREFERENCE:I = 0x2

.field private static final MESSAGE_SET_PREFERRED_NETWORK_TYPE:I = 0x1

.field private static final MESSAGE_SET_ROAMING_PREFERENCE:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/samsungframeworks/internal/PhoneInfoInterface;


# direct methods
.method private constructor <init>(Lcom/samsungframeworks/internal/PhoneInfoInterface;)V
    .registers 2
    .parameter

    .prologue
    .line 1519
    iput-object p1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$RoamHandler;->this$0:Lcom/samsungframeworks/internal/PhoneInfoInterface;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 1528
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1532
    return-void
.end method
