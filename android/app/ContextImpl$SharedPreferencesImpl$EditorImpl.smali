.class public final Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;
.super Ljava/lang/Object;
.source "ContextImpl.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl$SharedPreferencesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EditorImpl"
.end annotation


# instance fields
.field private mClear:Z

.field private final mModified:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;


# direct methods
.method public constructor <init>(Landroid/app/ContextImpl$SharedPreferencesImpl;)V
    .registers 3
    .parameter

    .prologue
    .line 3141
    iput-object p1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3142
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    .line 3143
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mClear:Z

    return-void
.end method

.method static synthetic access$600(Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3141
    invoke-direct {p0, p1}, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->notifyListeners(Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;)V

    return-void
.end method

.method private commitToMemory()Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;
    .registers 15

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 3221
    new-instance v6, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;

    const/4 v8, 0x0

    invoke-direct {v6, v8}, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;-><init>(Landroid/app/ContextImpl$1;)V

    .line 3222
    .local v6, mcr:Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;
    iget-object v8, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    monitor-enter v8

    .line 3226
    :try_start_b
    iget-object v9, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    #getter for: Landroid/app/ContextImpl$SharedPreferencesImpl;->mDiskWritesInFlight:I
    invoke-static {v9}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$300(Landroid/app/ContextImpl$SharedPreferencesImpl;)I

    move-result v9

    if-lez v9, :cond_23

    .line 3231
    iget-object v9, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    new-instance v10, Ljava/util/HashMap;

    iget-object v11, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    #getter for: Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v11}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$400(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #setter for: Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v9, v10}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$402(Landroid/app/ContextImpl$SharedPreferencesImpl;Ljava/util/Map;)Ljava/util/Map;

    .line 3233
    :cond_23
    iget-object v9, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    #getter for: Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v9}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$400(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v9

    iput-object v9, v6, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->mapToWriteToDisk:Ljava/util/Map;

    .line 3234
    iget-object v9, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    invoke-static {v9}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$308(Landroid/app/ContextImpl$SharedPreferencesImpl;)I

    .line 3236
    iget-object v9, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    #getter for: Landroid/app/ContextImpl$SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;
    invoke-static {v9}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$500(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/WeakHashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/WeakHashMap;->size()I

    move-result v9

    if-lez v9, :cond_bf

    move v2, v12

    .line 3237
    .local v2, hasListeners:Z
    :goto_3d
    if-eqz v2, :cond_57

    .line 3238
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v6, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    .line 3239
    new-instance v9, Ljava/util/HashSet;

    iget-object v10, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    #getter for: Landroid/app/ContextImpl$SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;
    invoke-static {v10}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$500(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/WeakHashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v9, v6, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->listeners:Ljava/util/Set;

    .line 3243
    :cond_57
    monitor-enter p0
    :try_end_58
    .catchall {:try_start_b .. :try_end_58} :catchall_bc

    .line 3244
    :try_start_58
    iget-boolean v9, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mClear:Z

    if-eqz v9, :cond_77

    .line 3245
    iget-object v9, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    #getter for: Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v9}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$400(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_74

    .line 3246
    const/4 v9, 0x1

    iput-boolean v9, v6, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->changesMade:Z

    .line 3247
    iget-object v9, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    #getter for: Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v9}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$400(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 3249
    :cond_74
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mClear:Z

    .line 3252
    :cond_77
    iget-object v9, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_81
    :goto_81
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_eb

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3253
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3254
    .local v5, k:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 3255
    .local v7, v:Ljava/lang/Object;
    if-ne v7, p0, :cond_c2

    .line 3256
    iget-object v9, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    #getter for: Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v9}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$400(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_81

    .line 3259
    iget-object v9, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    #getter for: Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v9}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$400(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3271
    :goto_ae
    const/4 v9, 0x1

    iput-boolean v9, v6, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->changesMade:Z

    .line 3272
    if-eqz v2, :cond_81

    .line 3273
    iget-object v9, v6, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_81

    .line 3278
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #k:Ljava/lang/String;
    .end local v7           #v:Ljava/lang/Object;
    :catchall_b9
    move-exception v9

    monitor-exit p0
    :try_end_bb
    .catchall {:try_start_58 .. :try_end_bb} :catchall_b9

    :try_start_bb
    throw v9

    .line 3279
    .end local v2           #hasListeners:Z
    :catchall_bc
    move-exception v9

    monitor-exit v8
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_bc

    throw v9

    :cond_bf
    move v2, v13

    .line 3236
    goto/16 :goto_3d

    .line 3261
    .restart local v0       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2       #hasListeners:Z
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #k:Ljava/lang/String;
    .restart local v7       #v:Ljava/lang/Object;
    :cond_c2
    const/4 v4, 0x0

    .line 3262
    .local v4, isSame:Z
    :try_start_c3
    iget-object v9, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    #getter for: Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v9}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$400(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e1

    .line 3263
    iget-object v9, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    #getter for: Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v9}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$400(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3264
    .local v1, existingValue:Ljava/lang/Object;
    if-eqz v1, :cond_e1

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_81

    .line 3268
    .end local v1           #existingValue:Ljava/lang/Object;
    :cond_e1
    iget-object v9, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    #getter for: Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v9}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$400(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ae

    .line 3277
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4           #isSame:Z
    .end local v5           #k:Ljava/lang/String;
    .end local v7           #v:Ljava/lang/Object;
    :cond_eb
    iget-object v9, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 3278
    monitor-exit p0
    :try_end_f1
    .catchall {:try_start_c3 .. :try_end_f1} :catchall_b9

    .line 3279
    :try_start_f1
    monitor-exit v8
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_bc

    .line 3280
    return-object v6
.end method

.method private notifyListeners(Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;)V
    .registers 8
    .parameter "mcr"

    .prologue
    .line 3297
    iget-object v4, p1, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->listeners:Ljava/util/Set;

    if-eqz v4, :cond_10

    iget-object v4, p1, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    if-eqz v4, :cond_10

    iget-object v4, p1, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_11

    .line 3318
    :cond_10
    :goto_10
    return-void

    .line 3301
    :cond_11
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v4, v5, :cond_4b

    .line 3302
    iget-object v4, p1, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v0, v4, v5

    .local v0, i:I
    :goto_24
    if-ltz v0, :cond_10

    .line 3303
    iget-object v4, p1, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3304
    .local v2, key:Ljava/lang/String;
    iget-object v4, p1, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->listeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_34
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 3305
    .local v3, listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    if-eqz v3, :cond_34

    .line 3306
    iget-object v4, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_34

    .line 3302
    .end local v3           #listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    :cond_48
    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    .line 3312
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    :cond_4b
    sget-object v4, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    new-instance v5, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl$3;

    invoke-direct {v5, p0, p1}, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl$3;-><init>(Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_10
.end method


# virtual methods
.method public apply()V
    .registers 5

    .prologue
    .line 3191
    invoke-direct {p0}, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->commitToMemory()Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;

    move-result-object v1

    .line 3192
    .local v1, mcr:Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;
    new-instance v0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl$1;

    invoke-direct {v0, p0, v1}, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl$1;-><init>(Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;)V

    .line 3201
    .local v0, awaitCommit:Ljava/lang/Runnable;
    invoke-static {v0}, Landroid/app/QueuedWork;->add(Ljava/lang/Runnable;)V

    .line 3203
    new-instance v2, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl$2;

    invoke-direct {v2, p0, v0}, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl$2;-><init>(Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;Ljava/lang/Runnable;)V

    .line 3210
    .local v2, postWriteRunnable:Ljava/lang/Runnable;
    iget-object v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    #calls: Landroid/app/ContextImpl$SharedPreferencesImpl;->enqueueDiskWrite(Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
    invoke-static {v3, v1, v2}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$100(Landroid/app/ContextImpl$SharedPreferencesImpl;Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    .line 3216
    invoke-direct {p0, v1}, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->notifyListeners(Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;)V

    .line 3217
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .registers 2

    .prologue
    .line 3184
    monitor-enter p0

    .line 3185
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mClear:Z

    .line 3186
    monitor-exit p0

    return-object p0

    .line 3187
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public commit()Z
    .registers 5

    .prologue
    .line 3284
    invoke-direct {p0}, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->commitToMemory()Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;

    move-result-object v1

    .line 3285
    .local v1, mcr:Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;
    iget-object v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    const/4 v3, 0x0

    #calls: Landroid/app/ContextImpl$SharedPreferencesImpl;->enqueueDiskWrite(Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
    invoke-static {v2, v1, v3}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$100(Landroid/app/ContextImpl$SharedPreferencesImpl;Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    .line 3288
    :try_start_a
    iget-object v2, v1, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->writtenToDiskLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_f} :catch_15

    .line 3292
    invoke-direct {p0, v1}, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->notifyListeners(Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;)V

    .line 3293
    iget-boolean v2, v1, Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;->writeToDiskResult:Z

    :goto_14
    return v2

    .line 3289
    :catch_15
    move-exception v2

    move-object v0, v2

    .line 3290
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 3170
    monitor-enter p0

    .line 3171
    :try_start_1
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3172
    monitor-exit p0

    return-object p0

    .line 3173
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 3164
    monitor-enter p0

    .line 3165
    :try_start_1
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3166
    monitor-exit p0

    return-object p0

    .line 3167
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 3152
    monitor-enter p0

    .line 3153
    :try_start_1
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3154
    monitor-exit p0

    return-object p0

    .line 3155
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .registers 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 3158
    monitor-enter p0

    .line 3159
    :try_start_1
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3160
    monitor-exit p0

    return-object p0

    .line 3161
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 3146
    monitor-enter p0

    .line 3147
    :try_start_1
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3148
    monitor-exit p0

    return-object p0

    .line 3149
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 3
    .parameter "key"

    .prologue
    .line 3177
    monitor-enter p0

    .line 3178
    :try_start_1
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3179
    monitor-exit p0

    return-object p0

    .line 3180
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method
