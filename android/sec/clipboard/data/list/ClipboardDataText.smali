.class public Landroid/sec/clipboard/data/list/ClipboardDataText;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataText.java"


# instance fields
.field private mValue:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/CharSequence;

    .line 21
    return-void
.end method


# virtual methods
.method public GetText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 7
    .parameter "format"
    .parameter "altData"

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 28
    .local v0, Result:Z
    if-eqz v0, :cond_f

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_11

    :cond_f
    move v1, v0

    .line 51
    .end local v0           #Result:Z
    .end local p2
    .local v1, Result:Z
    :goto_10
    return v1

    .line 30
    .end local v1           #Result:Z
    .restart local v0       #Result:Z
    .restart local p2
    :cond_11
    packed-switch p1, :pswitch_data_22

    .end local p2
    :goto_14
    :pswitch_14
    move v1, v0

    .line 51
    .end local v0           #Result:Z
    .restart local v1       #Result:Z
    goto :goto_10

    .line 33
    .end local v1           #Result:Z
    .restart local v0       #Result:Z
    .restart local p2
    :pswitch_16
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .end local p2
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/CharSequence;

    invoke-virtual {p2, v2}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 34
    goto :goto_14

    .line 47
    .restart local p2
    :pswitch_1f
    const/4 v0, 0x0

    goto :goto_14

    .line 30
    nop

    :pswitch_data_22
    .packed-switch 0x2
        :pswitch_16
        :pswitch_14
        :pswitch_1f
    .end packed-switch
.end method

.method public SetText(Ljava/lang/CharSequence;)Z
    .registers 3
    .parameter "text"

    .prologue
    .line 63
    if-nez p1, :cond_4

    .line 64
    const/4 v0, 0x0

    .line 67
    :goto_3
    return v0

    .line 66
    :cond_4
    iput-object p1, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/CharSequence;

    .line 67
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public clearData()V
    .registers 2

    .prologue
    .line 58
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/CharSequence;

    .line 59
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    .line 81
    const-string v4, "ClipboardServiceEx"

    const-string/jumbo v5, "text equals"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, Result:Z
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    move v2, v1

    .line 94
    .end local v1           #Result:Z
    .local v2, Result:I
    :goto_10
    return v2

    .line 86
    .end local v2           #Result:I
    .restart local v1       #Result:Z
    :cond_11
    instance-of v4, p1, Landroid/sec/clipboard/data/list/ClipboardDataText;

    if-nez v4, :cond_17

    move v2, v1

    .line 87
    .restart local v2       #Result:I
    goto :goto_10

    .line 89
    .end local v2           #Result:I
    :cond_17
    move-object v0, p1

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    move-object v3, v0

    .line 91
    .local v3, trgData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_33

    const/4 v4, 0x1

    move v1, v4

    :goto_31
    move v2, v1

    .line 94
    .restart local v2       #Result:I
    goto :goto_10

    .line 91
    .end local v2           #Result:I
    :cond_33
    const/4 v4, 0x0

    move v1, v4

    goto :goto_31
.end method

.method protected readFormSource(Landroid/os/Parcel;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 108
    const-class v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/CharSequence;

    .line 109
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 101
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 103
    return-void
.end method
