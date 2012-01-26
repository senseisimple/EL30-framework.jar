.class final Landroid/provider/GALResultList$1;
.super Ljava/lang/Object;
.source "GALResultList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/GALResultList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/provider/GALResultList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/provider/GALResultList;
    .registers 4
    .parameter "in"

    .prologue
    .line 84
    new-instance v0, Landroid/provider/GALResultList;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/provider/GALResultList;-><init>(Landroid/os/Parcel;Landroid/provider/GALResultList$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Landroid/provider/GALResultList$1;->createFromParcel(Landroid/os/Parcel;)Landroid/provider/GALResultList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/provider/GALResultList;
    .registers 3
    .parameter "size"

    .prologue
    .line 87
    new-array v0, p1, [Landroid/provider/GALResultList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Landroid/provider/GALResultList$1;->newArray(I)[Landroid/provider/GALResultList;

    move-result-object v0

    return-object v0
.end method
