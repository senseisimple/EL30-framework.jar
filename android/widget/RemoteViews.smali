.class public Landroid/widget/RemoteViews;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/view/LayoutInflater$Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViews$ViewGroupAction;,
        Landroid/widget/RemoteViews$ReflectionAction;,
        Landroid/widget/RemoteViews$SetDrawableParameters;,
        Landroid/widget/RemoteViews$SetOnSweepPendingIntent;,
        Landroid/widget/RemoteViews$SetLaunchPendingIntent;,
        Landroid/widget/RemoteViews$SetLaunchButton;,
        Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;,
        Landroid/widget/RemoteViews$SetOnClickPendingIntent;,
        Landroid/widget/RemoteViews$Action;,
        Landroid/widget/RemoteViews$ActionException;,
        Landroid/widget/RemoteViews$RemoteView;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "RemoteViews"

.field public static final SWEEP_TO_LEFT:I = -0x1

.field public static final SWEEP_TO_RIGHT:I = 0x1

.field private static mIsLongClick:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutId:I

.field private mPackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->mIsLongClick:Ljava/util/HashMap;

    .line 1421
    new-instance v0, Landroid/widget/RemoteViews$1;

    invoke-direct {v0}, Landroid/widget/RemoteViews$1;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 8
    .parameter "parcel"

    .prologue
    .line 912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 913
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    .line 914
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 915
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 916
    .local v0, count:I
    if-lez v0, :cond_9f

    .line 917
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    .line 918
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1d
    if-ge v1, v0, :cond_9f

    .line 919
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 920
    .local v2, tag:I
    packed-switch v2, :pswitch_data_a0

    .line 948
    new-instance v3, Landroid/widget/RemoteViews$ActionException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 922
    :pswitch_45
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v4, Landroid/widget/RemoteViews$SetOnClickPendingIntent;

    invoke-direct {v4, p0, p1}, Landroid/widget/RemoteViews$SetOnClickPendingIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    :goto_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 925
    :pswitch_52
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v4, Landroid/widget/RemoteViews$SetDrawableParameters;

    invoke-direct {v4, p0, p1}, Landroid/widget/RemoteViews$SetDrawableParameters;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 928
    :pswitch_5d
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v4, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-direct {v4, p0, p1}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 931
    :pswitch_68
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v4, Landroid/widget/RemoteViews$ViewGroupAction;

    invoke-direct {v4, p0, p1}, Landroid/widget/RemoteViews$ViewGroupAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 935
    :pswitch_73
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v4, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    invoke-direct {v4, p0, p1}, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 938
    :pswitch_7e
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v4, Landroid/widget/RemoteViews$SetLaunchButton;

    invoke-direct {v4, p0, p1}, Landroid/widget/RemoteViews$SetLaunchButton;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 941
    :pswitch_89
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v4, Landroid/widget/RemoteViews$SetLaunchPendingIntent;

    invoke-direct {v4, p0, p1}, Landroid/widget/RemoteViews$SetLaunchPendingIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 944
    :pswitch_94
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v4, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;

    invoke-direct {v4, p0, p1}, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 952
    .end local v1           #i:I
    .end local v2           #tag:I
    :cond_9f
    return-void

    .line 920
    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_45
        :pswitch_5d
        :pswitch_52
        :pswitch_68
        :pswitch_73
        :pswitch_7e
        :pswitch_94
        :pswitch_89
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter "packageName"
    .parameter "layoutId"

    .prologue
    .line 902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 903
    iput-object p1, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    .line 904
    iput p2, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 905
    return-void
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 68
    sget-object v0, Landroid/widget/RemoteViews;->mIsLongClick:Ljava/util/HashMap;

    return-object v0
.end method

.method private addAction(Landroid/widget/RemoteViews$Action;)V
    .registers 3
    .parameter "a"

    .prologue
    .line 976
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 977
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    .line 979
    :cond_b
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 980
    return-void
.end method

.method private performApply(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 1362
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_1b

    .line 1363
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1364
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, v1, :cond_1b

    .line 1365
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$Action;

    .line 1366
    .local v0, a:Landroid/widget/RemoteViews$Action;
    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews$Action;->apply(Landroid/view/View;)V

    .line 1364
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1369
    .end local v0           #a:Landroid/widget/RemoteViews$Action;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_1b
    return-void
.end method

.method private prepareContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 8
    .parameter "context"

    .prologue
    .line 1373
    iget-object v2, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    .line 1375
    .local v2, packageName:Ljava/lang/String;
    if-eqz v2, :cond_2b

    .line 1377
    const/4 v3, 0x4

    :try_start_5
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_8} :catch_a

    move-result-object v0

    .line 1386
    .local v0, c:Landroid/content/Context;
    :goto_9
    return-object v0

    .line 1378
    .end local v0           #c:Landroid/content/Context;
    :catch_a
    move-exception v1

    .line 1379
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "RemoteViews"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    move-object v0, p1

    .line 1381
    .restart local v0       #c:Landroid/content/Context;
    goto :goto_9

    .line 1383
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2b
    move-object v0, p1

    .restart local v0       #c:Landroid/content/Context;
    goto :goto_9
.end method


# virtual methods
.method public addView(ILandroid/widget/RemoteViews;)V
    .registers 4
    .parameter "viewId"
    .parameter "nestedView"

    .prologue
    .line 993
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupAction;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$ViewGroupAction;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 994
    return-void
.end method

.method public apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 1333
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->prepareContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 1335
    .local v0, c:Landroid/content/Context;
    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1338
    .local v1, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1339
    invoke-virtual {v1, p0}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    .line 1341
    iget v3, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1343
    .local v2, result:Landroid/view/View;
    invoke-direct {p0, v2}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;)V

    .line 1345
    return-object v2
.end method

.method public clone()Landroid/widget/RemoteViews;
    .registers 4

    .prologue
    .line 955
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    iget v2, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 956
    .local v0, that:Landroid/widget/RemoteViews;
    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v1, :cond_17

    .line 957
    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/ArrayList;

    iput-object p0, v0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    .line 959
    :cond_17
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 1399
    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutId()I
    .registers 2

    .prologue
    .line 967
    iget v0, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    return v0
.end method

.method public getPackage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 963
    iget-object v0, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public onLoadClass(Ljava/lang/Class;)Z
    .registers 3
    .parameter "clazz"

    .prologue
    .line 1395
    const-class v0, Landroid/widget/RemoteViews$RemoteView;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public reapply(Landroid/content/Context;Landroid/view/View;)V
    .registers 3
    .parameter "context"
    .parameter "v"

    .prologue
    .line 1357
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->prepareContext(Landroid/content/Context;)Landroid/content/Context;

    .line 1358
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;)V

    .line 1359
    return-void
.end method

.method public removeAllViews(I)V
    .registers 4
    .parameter "viewId"

    .prologue
    .line 1003
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ViewGroupAction;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1004
    return-void
.end method

.method public setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 10
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 1305
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xc

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1306
    return-void
.end method

.method public setBoolean(ILjava/lang/String;Z)V
    .registers 10
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 1181
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1182
    return-void
.end method

.method public setBundle(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 10
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 1316
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xd

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1317
    return-void
.end method

.method public setByte(ILjava/lang/String;B)V
    .registers 10
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 1192
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1193
    return-void
.end method

.method public setChar(ILjava/lang/String;C)V
    .registers 10
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 1258
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0x8

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1259
    return-void
.end method

.method public setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V
    .registers 10
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 1280
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xa

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1281
    return-void
.end method

.method public setChronometer(IJLjava/lang/String;Z)V
    .registers 7
    .parameter "viewId"
    .parameter "base"
    .parameter "format"
    .parameter "started"

    .prologue
    .line 1071
    const-string/jumbo v0, "setBase"

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 1072
    const-string/jumbo v0, "setFormat"

    invoke-virtual {p0, p1, v0, p4}, Landroid/widget/RemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V

    .line 1073
    const-string/jumbo v0, "setStarted"

    invoke-virtual {p0, p1, v0, p5}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 1074
    return-void
.end method

.method public setDouble(ILjava/lang/String;D)V
    .registers 11
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 1247
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x7

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1248
    return-void
.end method

.method public setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V
    .registers 15
    .parameter "viewId"
    .parameter "targetBackground"
    .parameter "alpha"
    .parameter "colorFilter"
    .parameter "mode"
    .parameter "level"

    .prologue
    .line 1158
    new-instance v0, Landroid/widget/RemoteViews$SetDrawableParameters;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$SetDrawableParameters;-><init>(Landroid/widget/RemoteViews;IZIILandroid/graphics/PorterDuff$Mode;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1160
    return-void
.end method

.method public setFloat(ILjava/lang/String;F)V
    .registers 10
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 1236
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x6

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1237
    return-void
.end method

.method public setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    .registers 4
    .parameter "viewId"
    .parameter "bitmap"

    .prologue
    .line 1053
    const-string/jumbo v0, "setImageBitmap"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1054
    return-void
.end method

.method public setImageViewResource(II)V
    .registers 4
    .parameter "viewId"
    .parameter "srcId"

    .prologue
    .line 1033
    const-string/jumbo v0, "setImageResource"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1034
    return-void
.end method

.method public setImageViewUri(ILandroid/net/Uri;)V
    .registers 4
    .parameter "viewId"
    .parameter "uri"

    .prologue
    .line 1043
    const-string/jumbo v0, "setImageURI"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setUri(ILjava/lang/String;Landroid/net/Uri;)V

    .line 1044
    return-void
.end method

.method public setInt(ILjava/lang/String;I)V
    .registers 10
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 1214
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1215
    return-void
.end method

.method public setLaunchButton(I)V
    .registers 3
    .parameter "viewId"

    .prologue
    .line 1118
    new-instance v0, Landroid/widget/RemoteViews$SetLaunchButton;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViews$SetLaunchButton;-><init>(Landroid/widget/RemoteViews;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1119
    return-void
.end method

.method public setLaunchPendingIntent(ILandroid/app/PendingIntent;)V
    .registers 4
    .parameter "viewId"
    .parameter "pendingIntent"

    .prologue
    .line 1122
    new-instance v0, Landroid/widget/RemoteViews$SetLaunchPendingIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetLaunchPendingIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1123
    return-void
.end method

.method public setLong(ILjava/lang/String;J)V
    .registers 11
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 1225
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1226
    return-void
.end method

.method public setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    .registers 4
    .parameter "viewId"
    .parameter "pendingIntent"

    .prologue
    .line 1107
    new-instance v0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetOnClickPendingIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1108
    return-void
.end method

.method public setOnLongClickPendingIntent(Landroid/os/IBinder;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 11
    .parameter "key"
    .parameter "viewId"
    .parameter "downPendingIntent"
    .parameter "upPendingIntent"

    .prologue
    .line 1113
    new-instance v0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/IBinder;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1114
    return-void
.end method

.method public setOnSweepPendingIntent(ILandroid/app/PendingIntent;I)V
    .registers 5
    .parameter "viewId"
    .parameter "pendingIntent"
    .parameter "direction"

    .prologue
    .line 1126
    new-instance v0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1127
    return-void
.end method

.method public setProgressBar(IIIZ)V
    .registers 6
    .parameter "viewId"
    .parameter "max"
    .parameter "progress"
    .parameter "indeterminate"

    .prologue
    .line 1091
    const-string/jumbo v0, "setIndeterminate"

    invoke-virtual {p0, p1, v0, p4}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 1092
    if-nez p4, :cond_14

    .line 1093
    const-string/jumbo v0, "setMax"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1094
    const-string/jumbo v0, "setProgress"

    invoke-virtual {p0, p1, v0, p3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1096
    :cond_14
    return-void
.end method

.method public setShort(ILjava/lang/String;S)V
    .registers 10
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 1203
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1204
    return-void
.end method

.method public setString(ILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 1269
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0x9

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1270
    return-void
.end method

.method public setTextColor(II)V
    .registers 4
    .parameter "viewId"
    .parameter "color"

    .prologue
    .line 1170
    const-string/jumbo v0, "setTextColor"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1171
    return-void
.end method

.method public setTextViewText(ILjava/lang/CharSequence;)V
    .registers 4
    .parameter "viewId"
    .parameter "text"

    .prologue
    .line 1023
    const-string/jumbo v0, "setText"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 1024
    return-void
.end method

.method public setUri(ILjava/lang/String;Landroid/net/Uri;)V
    .registers 10
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 1291
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xb

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1292
    return-void
.end method

.method public setViewVisibility(II)V
    .registers 4
    .parameter "viewId"
    .parameter "visibility"

    .prologue
    .line 1013
    const-string/jumbo v0, "setVisibility"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1014
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 1403
    iget-object v3, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1404
    iget v3, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1406
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_29

    .line 1407
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1411
    .local v1, count:I
    :goto_14
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1412
    const/4 v2, 0x0

    .local v2, i:I
    :goto_18
    if-ge v2, v1, :cond_2b

    .line 1413
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$Action;

    .line 1414
    .local v0, a:Landroid/widget/RemoteViews$Action;
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Landroid/widget/RemoteViews$Action;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1412
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 1409
    .end local v0           #a:Landroid/widget/RemoteViews$Action;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_29
    const/4 v1, 0x0

    .restart local v1       #count:I
    goto :goto_14

    .line 1416
    .restart local v2       #i:I
    :cond_2b
    return-void
.end method
