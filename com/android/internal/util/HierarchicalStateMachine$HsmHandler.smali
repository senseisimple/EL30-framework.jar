.class Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;
.super Landroid/os/Handler;
.source "HierarchicalStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/HierarchicalStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HsmHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$QuittingState;,
        Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;,
        Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    }
.end annotation


# static fields
.field private static final mInitMsg:Landroid/os/Message;

.field private static final mQuitObj:Ljava/lang/Object;


# instance fields
.field private mDbg:Z

.field private mDeferredMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mDestState:Lcom/android/internal/util/HierarchicalState;

.field private mHaltingState:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;

.field private mHsm:Lcom/android/internal/util/HierarchicalStateMachine;

.field private mInitialState:Lcom/android/internal/util/HierarchicalState;

.field private mIsConstructionCompleted:Z

.field private mMsg:Landroid/os/Message;

.field private mProcessedMessages:Lcom/android/internal/util/ProcessedMessages;

.field private mQuittingState:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$QuittingState;

.field private mStateInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/util/HierarchicalState;",
            "Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

.field private mStateStackTopIndex:I

.field private mTempStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

.field private mTempStateStackCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 446
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mQuitObj:Ljava/lang/Object;

    .line 449
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mInitMsg:Landroid/os/Message;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Lcom/android/internal/util/HierarchicalStateMachine;)V
    .registers 5
    .parameter "looper"
    .parameter "hsm"

    .prologue
    const/4 v1, 0x0

    .line 904
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    .line 455
    new-instance v0, Lcom/android/internal/util/ProcessedMessages;

    invoke-direct {v0}, Lcom/android/internal/util/ProcessedMessages;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mProcessedMessages:Lcom/android/internal/util/ProcessedMessages;

    .line 464
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    .line 473
    new-instance v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;-><init>(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalStateMachine$1;)V

    iput-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mHaltingState:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;

    .line 476
    new-instance v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$QuittingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$QuittingState;-><init>(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalStateMachine$1;)V

    iput-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mQuittingState:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$QuittingState;

    .line 507
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateInfo:Ljava/util/HashMap;

    .line 517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    .line 905
    iput-object p2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mHsm:Lcom/android/internal/util/HierarchicalStateMachine;

    .line 907
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mHaltingState:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .line 908
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mQuittingState:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$QuittingState;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .line 909
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/android/internal/util/HierarchicalStateMachine;Lcom/android/internal/util/HierarchicalStateMachine$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 440
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;-><init>(Landroid/os/Looper;Lcom/android/internal/util/HierarchicalStateMachine;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mHaltingState:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->setProcessedMessagesSize(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->getProcessedMessagesSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->getProcessedMessagesCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;I)Lcom/android/internal/util/ProcessedMessages$Info;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->getProcessedMessage(I)Lcom/android/internal/util/ProcessedMessages$Info;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->quit()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Landroid/os/Message;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->isQuit(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->isDbg()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)Lcom/android/internal/util/HierarchicalStateMachine;
    .registers 2
    .parameter "x0"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mHsm:Lcom/android/internal/util/HierarchicalStateMachine;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->setDbg(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->completeConstruction()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 440
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)Landroid/os/Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)Lcom/android/internal/util/HierarchicalState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->getCurrentState()Lcom/android/internal/util/HierarchicalState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->setInitialState(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method private final addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    .registers 9
    .parameter "state"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    const-string v5, "HierarchicalStateMachine"

    .line 867
    iget-boolean v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v2, :cond_31

    .line 868
    const-string v2, "HierarchicalStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addStateInternal: E state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",parent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_67

    const-string v3, ""

    :goto_26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_31
    const/4 v0, 0x0

    .line 872
    .local v0, parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    if-eqz p2, :cond_42

    .line 873
    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    check-cast v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .line 874
    .restart local v0       #parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    if-nez v0, :cond_42

    .line 876
    invoke-direct {p0, p2, v4}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    move-result-object v0

    .line 879
    :cond_42
    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .line 880
    .local v1, stateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    if-nez v1, :cond_56

    .line 881
    new-instance v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .end local v1           #stateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    invoke-direct {v1, p0, v4}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;-><init>(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalStateMachine$1;)V

    .line 882
    .restart local v1       #stateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    :cond_56
    iget-object v2, v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    if-eqz v2, :cond_6c

    iget-object v2, v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    if-eq v2, v0, :cond_6c

    .line 888
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "state already added"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 868
    .end local v0           #parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    .end local v1           #stateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    :cond_67
    invoke-virtual {p2}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_26

    .line 890
    .restart local v0       #parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    .restart local v1       #stateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    :cond_6c
    iput-object p1, v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    .line 891
    iput-object v0, v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .line 892
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->active:Z

    .line 893
    iget-boolean v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v2, :cond_8f

    const-string v2, "HierarchicalStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addStateInternal: X stateInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_8f
    return-object v1
.end method

.method private final completeConstruction()V
    .registers 9

    .prologue
    const-string v7, "HierarchicalStateMachine"

    .line 640
    iget-boolean v5, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v5, :cond_d

    const-string v5, "HierarchicalStateMachine"

    const-string v5, "completeConstruction: E"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_d
    const/4 v3, 0x0

    .line 647
    .local v3, maxDepth:I
    iget-object v5, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .line 648
    .local v4, si:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    const/4 v0, 0x0

    .line 649
    .local v0, depth:I
    move-object v1, v4

    .local v1, i:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    :goto_26
    if-eqz v1, :cond_2d

    .line 650
    iget-object v1, v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .line 649
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 652
    :cond_2d
    if-ge v3, v0, :cond_18

    .line 653
    move v3, v0

    goto :goto_18

    .line 656
    .end local v0           #depth:I
    .end local v1           #i:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    .end local v4           #si:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    :cond_31
    iget-boolean v5, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v5, :cond_4d

    const-string v5, "HierarchicalStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "completeConstruction: maxDepth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_4d
    new-array v5, v3, [Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iput-object v5, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .line 659
    new-array v5, v3, [Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iput-object v5, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .line 660
    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->setupInitialStateStack()V

    .line 666
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mIsConstructionCompleted:Z

    .line 667
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mMsg:Landroid/os/Message;

    .line 668
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->invokeEnterMethods(I)V

    .line 673
    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->performTransitions()V

    .line 675
    iget-boolean v5, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v5, :cond_74

    const-string v5, "HierarchicalStateMachine"

    const-string v5, "completeConstruction: X"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_74
    return-void
.end method

.method private final deferMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 925
    iget-boolean v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v1, :cond_1e

    const-string v1, "HierarchicalStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deferMessage: msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_1e
    invoke-virtual {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 929
    .local v0, newMsg:Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 931
    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    return-void
.end method

.method private final getCurrentMessage()Landroid/os/Message;
    .registers 2

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mMsg:Landroid/os/Message;

    return-object v0
.end method

.method private final getCurrentState()Lcom/android/internal/util/HierarchicalState;
    .registers 3

    .prologue
    .line 854
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iget v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method private final getProcessedMessage(I)Lcom/android/internal/util/ProcessedMessages$Info;
    .registers 3
    .parameter "index"

    .prologue
    .line 972
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mProcessedMessages:Lcom/android/internal/util/ProcessedMessages;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/ProcessedMessages;->get(I)Lcom/android/internal/util/ProcessedMessages$Info;

    move-result-object v0

    return-object v0
.end method

.method private final getProcessedMessagesCount()I
    .registers 2

    .prologue
    .line 967
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mProcessedMessages:Lcom/android/internal/util/ProcessedMessages;

    invoke-virtual {v0}, Lcom/android/internal/util/ProcessedMessages;->count()I

    move-result v0

    return v0
.end method

.method private final getProcessedMessagesSize()I
    .registers 2

    .prologue
    .line 962
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mProcessedMessages:Lcom/android/internal/util/ProcessedMessages;

    invoke-virtual {v0}, Lcom/android/internal/util/ProcessedMessages;->size()I

    move-result v0

    return v0
.end method

.method private final invokeEnterMethods(I)V
    .registers 6
    .parameter "stateStackEnteringIndex"

    .prologue
    .line 738
    move v0, p1

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    if-gt v0, v1, :cond_3e

    .line 739
    iget-boolean v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v1, :cond_2b

    const-string v1, "HierarchicalStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeEnterMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {v3}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_2b
    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {v1}, Lcom/android/internal/util/HierarchicalState;->enter()V

    .line 741
    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->active:Z

    .line 738
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 743
    :cond_3e
    return-void
.end method

.method private final invokeExitMethods(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;)V
    .registers 6
    .parameter "commonStateInfo"

    .prologue
    .line 724
    :goto_0
    iget v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    if-ltz v1, :cond_47

    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    aget-object v1, v1, v2

    if-eq v1, p1, :cond_47

    .line 726
    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    aget-object v1, v1, v2

    iget-object v0, v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    .line 727
    .local v0, curState:Lcom/android/internal/util/HierarchicalState;
    iget-boolean v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v1, :cond_34

    const-string v1, "HierarchicalStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeExitMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_34
    invoke-virtual {v0}, Lcom/android/internal/util/HierarchicalState;->exit()V

    .line 729
    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->active:Z

    .line 730
    iget v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    goto :goto_0

    .line 732
    .end local v0           #curState:Lcom/android/internal/util/HierarchicalState;
    :cond_47
    return-void
.end method

.method private final isDbg()Z
    .registers 2

    .prologue
    .line 947
    iget-boolean v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    return v0
.end method

.method private final isQuit(Landroid/os/Message;)Z
    .registers 4
    .parameter "msg"

    .prologue
    .line 942
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mQuitObj:Ljava/lang/Object;

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private final moveDeferredMessageAtFrontOfQueue()V
    .registers 6

    .prologue
    .line 755
    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_9
    if-ltz v1, :cond_37

    .line 756
    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 757
    .local v0, curMsg:Landroid/os/Message;
    iget-boolean v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v2, :cond_31

    const-string v2, "HierarchicalStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveDeferredMessageAtFrontOfQueue; what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_31
    invoke-virtual {p0, v0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 755
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 760
    .end local v0           #curMsg:Landroid/os/Message;
    :cond_37
    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 761
    return-void
.end method

.method private final moveTempStateStackToStateStack()I
    .registers 8

    .prologue
    const/4 v5, 0x1

    const-string v6, "HierarchicalStateMachine"

    .line 771
    iget v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    add-int/lit8 v2, v3, 0x1

    .line 772
    .local v2, startingIndex:I
    iget v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStackCount:I

    sub-int v0, v3, v5

    .line 773
    .local v0, i:I
    move v1, v2

    .line 774
    .local v1, j:I
    :goto_c
    if-ltz v0, :cond_42

    .line 775
    iget-boolean v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v3, :cond_35

    const-string v3, "HierarchicalStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveTempStackToStateStack: i="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",j="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_35
    iget-object v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iget-object v4, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    aget-object v4, v4, v0

    aput-object v4, v3, v1

    .line 777
    add-int/lit8 v1, v1, 0x1

    .line 778
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 781
    :cond_42
    sub-int v3, v1, v5

    iput v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    .line 782
    iget-boolean v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v3, :cond_85

    .line 783
    const-string v3, "HierarchicalStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveTempStackToStateStack: X mStateStackTop="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",startingIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",Top="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iget v5, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {v4}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_85
    return v2
.end method

.method private performTransitions()V
    .registers 6

    .prologue
    .line 580
    const/4 v1, 0x0

    .line 581
    .local v1, destState:Lcom/android/internal/util/HierarchicalState;
    :goto_1
    iget-object v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDestState:Lcom/android/internal/util/HierarchicalState;

    if-eqz v3, :cond_27

    .line 582
    iget-boolean v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v3, :cond_10

    const-string v3, "HierarchicalStateMachine"

    const-string v4, "handleMessage: new destination call exit"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_10
    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDestState:Lcom/android/internal/util/HierarchicalState;

    .line 589
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDestState:Lcom/android/internal/util/HierarchicalState;

    .line 596
    invoke-direct {p0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->setupTempStateStackWithStatesToEnter(Lcom/android/internal/util/HierarchicalState;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    move-result-object v0

    .line 597
    .local v0, commonStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    invoke-direct {p0, v0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->invokeExitMethods(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;)V

    .line 598
    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->moveTempStateStackToStateStack()I

    move-result v2

    .line 599
    .local v2, stateStackEnteringIndex:I
    invoke-direct {p0, v2}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->invokeEnterMethods(I)V

    .line 608
    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->moveDeferredMessageAtFrontOfQueue()V

    goto :goto_1

    .line 615
    .end local v0           #commonStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    .end local v2           #stateStackEnteringIndex:I
    :cond_27
    if-eqz v1, :cond_41

    .line 616
    iget-object v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mQuittingState:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$QuittingState;

    if-ne v1, v3, :cond_42

    .line 620
    iget-object v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mHsm:Lcom/android/internal/util/HierarchicalStateMachine;

    invoke-virtual {v3}, Lcom/android/internal/util/HierarchicalStateMachine;->quitting()V

    .line 621
    iget-object v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mHsm:Lcom/android/internal/util/HierarchicalStateMachine;

    #getter for: Lcom/android/internal/util/HierarchicalStateMachine;->mHsmThread:Landroid/os/HandlerThread;
    invoke-static {v3}, Lcom/android/internal/util/HierarchicalStateMachine;->access$300(Lcom/android/internal/util/HierarchicalStateMachine;)Landroid/os/HandlerThread;

    move-result-object v3

    if-eqz v3, :cond_41

    .line 623
    invoke-virtual {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    .line 634
    :cond_41
    :goto_41
    return-void

    .line 625
    :cond_42
    iget-object v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mHaltingState:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;

    if-ne v1, v3, :cond_41

    .line 631
    iget-object v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mHsm:Lcom/android/internal/util/HierarchicalStateMachine;

    invoke-virtual {v3}, Lcom/android/internal/util/HierarchicalStateMachine;->halting()V

    goto :goto_41
.end method

.method private final processMsg(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const-string/jumbo v6, "processMsg: "

    const-string v5, "HierarchicalStateMachine"

    .line 684
    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iget v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    aget-object v0, v2, v3

    .line 685
    .local v0, curStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    iget-boolean v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v2, :cond_2f

    .line 686
    const-string v2, "HierarchicalStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processMsg: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {v3}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_2f
    :goto_2f
    iget-object v2, v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/HierarchicalState;->processMessage(Landroid/os/Message;)Z

    move-result v2

    if-nez v2, :cond_4b

    .line 692
    iget-object v0, v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .line 693
    if-nez v0, :cond_5d

    .line 697
    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mHsm:Lcom/android/internal/util/HierarchicalStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/HierarchicalStateMachine;->unhandledMessage(Landroid/os/Message;)V

    .line 698
    invoke-direct {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->isQuit(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 699
    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mQuittingState:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$QuittingState;

    invoke-direct {p0, v2}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    .line 711
    :cond_4b
    if-eqz v0, :cond_81

    .line 712
    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iget v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    aget-object v2, v2, v3

    iget-object v1, v2, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    .line 713
    .local v1, orgState:Lcom/android/internal/util/HierarchicalState;
    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mProcessedMessages:Lcom/android/internal/util/ProcessedMessages;

    iget-object v3, v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {v2, p1, v3, v1}, Lcom/android/internal/util/ProcessedMessages;->add(Landroid/os/Message;Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 717
    .end local v1           #orgState:Lcom/android/internal/util/HierarchicalState;
    :goto_5c
    return-void

    .line 703
    :cond_5d
    iget-boolean v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v2, :cond_2f

    .line 704
    const-string v2, "HierarchicalStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processMsg: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->state:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {v3}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 715
    :cond_81
    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mProcessedMessages:Lcom/android/internal/util/ProcessedMessages;

    invoke-virtual {v2, p1, v4, v4}, Lcom/android/internal/util/ProcessedMessages;->add(Landroid/os/Message;Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_5c
.end method

.method private final quit()V
    .registers 3

    .prologue
    .line 936
    iget-boolean v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v0, :cond_c

    const-string v0, "HierarchicalStateMachine"

    const-string/jumbo v1, "quit:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    :cond_c
    const/4 v0, -0x1

    sget-object v1, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mQuitObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 938
    return-void
.end method

.method private final setDbg(Z)V
    .registers 2
    .parameter "dbg"

    .prologue
    .line 952
    iput-boolean p1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    .line 953
    return-void
.end method

.method private final setInitialState(Lcom/android/internal/util/HierarchicalState;)V
    .registers 5
    .parameter "initialState"

    .prologue
    .line 913
    iget-boolean v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v0, :cond_21

    const-string v0, "HierarchicalStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInitialState: initialState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_21
    iput-object p1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mInitialState:Lcom/android/internal/util/HierarchicalState;

    .line 915
    return-void
.end method

.method private final setProcessedMessagesSize(I)V
    .registers 3
    .parameter "maxSize"

    .prologue
    .line 957
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mProcessedMessages:Lcom/android/internal/util/ProcessedMessages;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/ProcessedMessages;->setSize(I)V

    .line 958
    return-void
.end method

.method private final setupInitialStateStack()V
    .registers 5

    .prologue
    .line 826
    iget-boolean v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v1, :cond_23

    .line 827
    const-string v1, "HierarchicalStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setupInitialStateStack: E mInitialState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mInitialState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {v3}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :cond_23
    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateInfo:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mInitialState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .line 832
    .local v0, curStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStackCount:I

    :goto_30
    if-eqz v0, :cond_41

    .line 833
    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStackCount:I

    aput-object v0, v1, v2

    .line 834
    iget-object v0, v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .line 832
    iget v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStackCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStackCount:I

    goto :goto_30

    .line 838
    :cond_41
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateStackTopIndex:I

    .line 840
    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->moveTempStateStackToStateStack()I

    .line 841
    return-void
.end method

.method private final setupTempStateStackWithStatesToEnter(Lcom/android/internal/util/HierarchicalState;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    .registers 6
    .parameter "destState"

    .prologue
    .line 808
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStackCount:I

    .line 809
    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .line 811
    .local v0, curStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;
    :cond_b
    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStack:[Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStackCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStackCount:I

    aput-object v0, v1, v2

    .line 812
    iget-object v0, v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .line 813
    if-eqz v0, :cond_1d

    iget-boolean v1, v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;->active:Z

    if-eqz v1, :cond_b

    .line 815
    :cond_1d
    iget-boolean v1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v1, :cond_46

    .line 816
    const-string v1, "HierarchicalStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setupTempStateStackWithStatesToEnter: X mTempStateStackCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mTempStateStackCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",curStateInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_46
    return-object v0
.end method

.method private final transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    .registers 5
    .parameter "destState"

    .prologue
    .line 919
    iget-boolean v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v0, :cond_20

    const-string v0, "HierarchicalStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateMachine.transitionTo EX destState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_20
    iput-object p1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDestState:Lcom/android/internal/util/HierarchicalState;

    .line 921
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    const-string v2, "HierarchicalStateMachine"

    .line 548
    iget-boolean v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v0, :cond_20

    const-string v0, "HierarchicalStateMachine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: E msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_20
    iput-object p1, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mMsg:Landroid/os/Message;

    .line 556
    iget-boolean v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mIsConstructionCompleted:Z

    if-nez v0, :cond_3f

    .line 557
    const-string v0, "HierarchicalStateMachine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The start method not called, ignore msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_3e
    :goto_3e
    return-void

    .line 565
    :cond_3f
    invoke-direct {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->processMsg(Landroid/os/Message;)V

    .line 566
    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->performTransitions()V

    .line 568
    iget-boolean v0, p0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->mDbg:Z

    if-eqz v0, :cond_3e

    const-string v0, "HierarchicalStateMachine"

    const-string v0, "handleMessage: X"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e
.end method
