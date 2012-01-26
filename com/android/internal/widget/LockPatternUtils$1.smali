.class Lcom/android/internal/widget/LockPatternUtils$1;
.super Landroid/os/FileObserver;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils$1;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 10
    .parameter "event"
    .parameter "path"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "LockPatternUtils"

    .line 194
    const-string v0, "gesture.key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 195
    const-string v0, "LockPatternUtils"

    const-string v0, "lock pattern file changed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->access$100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-lez v1, :cond_2f

    move v1, v4

    :goto_2b
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 207
    :cond_2e
    :goto_2e
    return-void

    :cond_2f
    move v1, v3

    .line 196
    goto :goto_2b

    .line 197
    :cond_31
    const-string/jumbo v0, "password.key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 198
    const-string v0, "LockPatternUtils"

    const-string v0, "lock password file changed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->access$300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-lez v1, :cond_5b

    move v1, v4

    :goto_57
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2e

    :cond_5b
    move v1, v3

    goto :goto_57

    .line 200
    :cond_5d
    const-string/jumbo v0, "password_history.key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 201
    const-string v0, "LockPatternUtils"

    const-string v0, "lock password history file changed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->access$500()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-lez v1, :cond_87

    move v1, v4

    :goto_83
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2e

    :cond_87
    move v1, v3

    goto :goto_83

    .line 203
    :cond_89
    const-string/jumbo v0, "recovery_password.key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 204
    const-string v0, "LockPatternUtils"

    const-string v0, "lock recovery password file changed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->access$700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->access$600()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-lez v1, :cond_b4

    move v1, v4

    :goto_af
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_2e

    :cond_b4
    move v1, v3

    goto :goto_af
.end method
