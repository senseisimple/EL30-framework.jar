.class Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl$1;
.super Ljava/lang/Object;
.source "ContextImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->apply()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;

.field final synthetic val$mcr:Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;


# direct methods
.method constructor <init>(Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3192
    iput-object p1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl$1;->this$1:Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;

    iput-object p2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl$1;->val$mcr:Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 3195
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl$1;->val$mcr:Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;

    iget-object v0, v0, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->writtenToDiskLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_7} :catch_8

    .line 3198
    :goto_7
    return-void

    .line 3196
    :catch_8
    move-exception v0

    goto :goto_7
.end method
