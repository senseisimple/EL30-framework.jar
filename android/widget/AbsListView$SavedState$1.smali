.class final Landroid/widget/AbsListView$SavedState$1;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView$SavedState;
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
        "Landroid/widget/AbsListView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/widget/AbsListView$SavedState;
    .registers 4
    .parameter "in"

    .prologue
    .line 1043
    new-instance v0, Landroid/widget/AbsListView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcel;Landroid/widget/AbsListView$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1041
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/widget/AbsListView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/widget/AbsListView$SavedState;
    .registers 3
    .parameter "size"

    .prologue
    .line 1047
    new-array v0, p1, [Landroid/widget/AbsListView$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1041
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView$SavedState$1;->newArray(I)[Landroid/widget/AbsListView$SavedState;

    move-result-object v0

    return-object v0
.end method
