.class Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetOnLongClickPendingIntent"
.end annotation


# static fields
.field public static final TAG:I = 0x5


# instance fields
.field downPendingIntent:Landroid/app/PendingIntent;

.field key:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field upPendingIntent:Landroid/app/PendingIntent;

.field viewId:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/IBinder;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 7
    .parameter
    .parameter "key"
    .parameter "id"
    .parameter "downPendingIntent"
    .parameter "upPendingIntent"

    .prologue
    .line 199
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 200
    iput-object p2, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->key:Landroid/os/IBinder;

    .line 201
    iput p3, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->viewId:I

    .line 202
    iput-object p4, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->downPendingIntent:Landroid/app/PendingIntent;

    .line 203
    iput-object p5, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->upPendingIntent:Landroid/app/PendingIntent;

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 4
    .parameter
    .parameter "parcel"

    .prologue
    .line 206
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->key:Landroid/os/IBinder;

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->viewId:I

    .line 209
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->downPendingIntent:Landroid/app/PendingIntent;

    .line 210
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->upPendingIntent:Landroid/app/PendingIntent;

    .line 211
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;)V
    .registers 7
    .parameter "root"

    .prologue
    .line 223
    iget v4, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->viewId:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 224
    .local v2, target:Landroid/view/View;
    if-eqz v2, :cond_28

    iget-object v4, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->downPendingIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_28

    iget-object v4, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->upPendingIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_28

    .line 225
    new-instance v1, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$1;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$1;-><init>(Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;)V

    .line 242
    .local v1, longClickListener:Landroid/view/View$OnLongClickListener;
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 244
    new-instance v3, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$2;

    invoke-direct {v3, p0}, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$2;-><init>(Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;)V

    .line 288
    .local v3, touchListener:Landroid/view/View$OnTouchListener;
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 291
    new-instance v0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$3;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$3;-><init>(Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;)V

    .line 320
    .local v0, keyListener:Landroid/view/View$OnKeyListener;
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 323
    .end local v0           #keyListener:Landroid/view/View$OnKeyListener;
    .end local v1           #longClickListener:Landroid/view/View$OnLongClickListener;
    .end local v3           #touchListener:Landroid/view/View$OnTouchListener;
    :cond_28
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 214
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->key:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 216
    iget v0, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->downPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 218
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->upPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 219
    return-void
.end method
