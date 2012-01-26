.class Landroid/provider/Settings$NameValueCache;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValueCache"
.end annotation


# static fields
.field private static final DISABLED_CACHE:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NAME_EQ_PLACEHOLDER:Ljava/lang/String; = "name=?"

.field private static final SELECT_VALUE:[Ljava/lang/String;


# instance fields
.field private final mCallCommand:Ljava/lang/String;

.field private mContentProvider:Landroid/content/IContentProvider;

.field private final mUri:Landroid/net/Uri;

.field private final mValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValuesVersion:J

.field private final mVersionSystemProperty:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 623
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE:[Ljava/lang/String;

    .line 647
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/provider/Settings$NameValueCache;->DISABLED_CACHE:Ljava/util/HashSet;

    .line 648
    sget-object v0, Landroid/provider/Settings$NameValueCache;->DISABLED_CACHE:Ljava/util/HashSet;

    const-string v1, "device_provisioned"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 649
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 6
    .parameter "versionSystemProperty"
    .parameter "uri"
    .parameter "callCommand"

    .prologue
    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    .line 629
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/provider/Settings$NameValueCache;->mValuesVersion:J

    .line 632
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .line 639
    iput-object p1, p0, Landroid/provider/Settings$NameValueCache;->mVersionSystemProperty:Ljava/lang/String;

    .line 640
    iput-object p2, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 641
    iput-object p3, p0, Landroid/provider/Settings$NameValueCache;->mCallCommand:Ljava/lang/String;

    .line 642
    return-void
.end method


# virtual methods
.method public getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .parameter "cr"
    .parameter "name"

    .prologue
    .line 653
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mVersionSystemProperty:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 655
    .local v10, newValuesVersion:J
    sget-object v1, Landroid/provider/Settings$NameValueCache;->DISABLED_CACHE:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 656
    monitor-enter p0

    .line 657
    :try_start_11
    iget-wide v1, p0, Landroid/provider/Settings$NameValueCache;->mValuesVersion:J

    cmp-long v1, v1, v10

    if-eqz v1, :cond_1e

    .line 663
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 664
    iput-wide v10, p0, Landroid/provider/Settings$NameValueCache;->mValuesVersion:J

    .line 667
    :cond_1e
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 668
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    monitor-exit p0

    move-object v1, p1

    .line 725
    :cond_30
    :goto_30
    return-object v1

    .line 670
    .restart local p1
    :cond_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_11 .. :try_end_32} :catchall_60

    .line 673
    :cond_32
    const/4 v0, 0x0

    .line 674
    .local v0, cp:Landroid/content/IContentProvider;
    monitor-enter p0

    .line 675
    :try_start_34
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .line 676
    if-nez v0, :cond_45

    .line 677
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v8

    iput-object v8, p0, Landroid/provider/Settings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .end local v0           #cp:Landroid/content/IContentProvider;
    .local v8, cp:Landroid/content/IContentProvider;
    move-object v0, v8

    .line 679
    .end local v8           #cp:Landroid/content/IContentProvider;
    .restart local v0       #cp:Landroid/content/IContentProvider;
    :cond_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_34 .. :try_end_46} :catchall_63

    .line 685
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mCallCommand:Ljava/lang/String;

    if-eqz v1, :cond_6a

    .line 687
    :try_start_4a
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mCallCommand:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p2, v2}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 688
    .local v6, b:Landroid/os/Bundle;
    if-eqz v6, :cond_6a

    .line 689
    invoke-virtual {v6}, Landroid/os/Bundle;->getPairValue()Ljava/lang/String;

    move-result-object v12

    .line 690
    .local v12, value:Ljava/lang/String;
    monitor-enter p0
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_58} :catch_69

    .line 691
    :try_start_58
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_66

    move-object v1, v12

    .line 693
    goto :goto_30

    .line 670
    .end local v0           #cp:Landroid/content/IContentProvider;
    .end local v6           #b:Landroid/os/Bundle;
    .end local v12           #value:Ljava/lang/String;
    .end local p1
    :catchall_60
    move-exception v1

    :try_start_61
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v1

    .line 679
    .restart local v0       #cp:Landroid/content/IContentProvider;
    .restart local p1
    :catchall_63
    move-exception v1

    :try_start_64
    monitor-exit p0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v1

    .line 692
    .restart local v6       #b:Landroid/os/Bundle;
    .restart local v12       #value:Ljava/lang/String;
    :catchall_66
    move-exception v1

    :try_start_67
    monitor-exit p0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    :try_start_68
    throw v1
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_69} :catch_69

    .line 697
    .end local v6           #b:Landroid/os/Bundle;
    .end local v12           #value:Ljava/lang/String;
    :catch_69
    move-exception v1

    .line 703
    :cond_6a
    const/4 v7, 0x0

    .line 705
    .local v7, c:Landroid/database/Cursor;
    :try_start_6b
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE:[Ljava/lang/String;

    const-string/jumbo v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 707
    if-nez v7, :cond_aa

    .line 708
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catchall {:try_start_6b .. :try_end_a3} :catchall_f9
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_a3} :catch_cb

    .line 709
    const/4 v1, 0x0

    .line 725
    if-eqz v7, :cond_30

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_30

    .line 712
    :cond_aa
    :try_start_aa
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_c5

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    .line 713
    .restart local v12       #value:Ljava/lang/String;
    :goto_b6
    monitor-enter p0
    :try_end_b7
    .catchall {:try_start_aa .. :try_end_b7} :catchall_f9
    .catch Landroid/os/RemoteException; {:try_start_aa .. :try_end_b7} :catch_cb

    .line 714
    :try_start_b7
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    monitor-exit p0
    :try_end_bd
    .catchall {:try_start_b7 .. :try_end_bd} :catchall_c8

    .line 725
    if-eqz v7, :cond_c2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_c2
    move-object v1, v12

    goto/16 :goto_30

    .line 712
    .end local v12           #value:Ljava/lang/String;
    :cond_c5
    const/4 v1, 0x0

    move-object v12, v1

    goto :goto_b6

    .line 715
    .restart local v12       #value:Ljava/lang/String;
    :catchall_c8
    move-exception v1

    :try_start_c9
    monitor-exit p0
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_c8

    :try_start_ca
    throw v1
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_f9
    .catch Landroid/os/RemoteException; {:try_start_ca .. :try_end_cb} :catch_cb

    .line 721
    .end local v12           #value:Ljava/lang/String;
    :catch_cb
    move-exception v1

    move-object v9, v1

    .line 722
    .local v9, e:Landroid/os/RemoteException;
    :try_start_cd
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f1
    .catchall {:try_start_cd .. :try_end_f1} :catchall_f9

    .line 723
    const/4 v1, 0x0

    .line 725
    if-eqz v7, :cond_30

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_30

    .end local v9           #e:Landroid/os/RemoteException;
    :catchall_f9
    move-exception v1

    if-eqz v7, :cond_ff

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_ff
    throw v1
.end method
