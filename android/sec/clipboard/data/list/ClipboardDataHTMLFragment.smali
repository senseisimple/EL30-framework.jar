.class public Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataHTMLFragment.java"


# instance fields
.field private mValue:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/CharSequence;

    .line 17
    return-void
.end method


# virtual methods
.method public GetHTMLFragment()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 8
    .parameter "format"
    .parameter "altData"

    .prologue
    .line 22
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 23
    .local v0, Result:Z
    if-eqz v0, :cond_f

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_11

    :cond_f
    move v1, v0

    .line 51
    .end local v0           #Result:Z
    .end local p2
    .local v1, Result:Z
    :goto_10
    return v1

    .line 25
    .end local v1           #Result:Z
    .restart local v0       #Result:Z
    .restart local p2
    :cond_11
    packed-switch p1, :pswitch_data_38

    .end local p2
    :goto_14
    :pswitch_14
    move v1, v0

    .line 51
    .end local v0           #Result:Z
    .restart local v1       #Result:Z
    goto :goto_10

    .line 30
    .end local v1           #Result:Z
    .restart local v0       #Result:Z
    .restart local p2
    :pswitch_16
    :try_start_16
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .end local p2
    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/sec/clipboard/util/ClipboardProcText;->convertString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_25} :catch_27

    move-result v0

    goto :goto_14

    .line 31
    :catch_27
    move-exception v3

    move-object v2, v3

    .line 32
    .local v2, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 34
    goto :goto_14

    .line 47
    .end local v2           #e:Ljava/lang/Exception;
    .restart local p2
    :pswitch_2b
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .end local p2
    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->SetHTMLFragment(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_14

    .line 25
    :pswitch_data_38
    .packed-switch 0x2
        :pswitch_16
        :pswitch_14
        :pswitch_2b
    .end packed-switch
.end method

.method public SetHTMLFragment(Ljava/lang/CharSequence;)Z
    .registers 3
    .parameter "text"

    .prologue
    .line 62
    if-nez p1, :cond_4

    .line 63
    const/4 v0, 0x0

    .line 66
    :goto_3
    return v0

    .line 65
    :cond_4
    iput-object p1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/CharSequence;

    .line 66
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public clearData()V
    .registers 2

    .prologue
    .line 57
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/CharSequence;

    .line 58
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    .line 80
    const-string v4, "ClipboardServiceEx"

    const-string v5, "html equals"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, Result:Z
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    move v2, v1

    .line 93
    .end local v1           #Result:Z
    .local v2, Result:I
    :goto_f
    return v2

    .line 85
    .end local v2           #Result:I
    .restart local v1       #Result:Z
    :cond_10
    instance-of v4, p1, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    if-nez v4, :cond_16

    move v2, v1

    .line 86
    .restart local v2       #Result:I
    goto :goto_f

    .line 88
    .end local v2           #Result:I
    :cond_16
    move-object v0, p1

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    move-object v3, v0

    .line 91
    .local v3, trgData:Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetHTMLFragment()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_32

    const/4 v4, 0x1

    move v1, v4

    :goto_30
    move v2, v1

    .line 93
    .restart local v2       #Result:I
    goto :goto_f

    .line 91
    .end local v2           #Result:I
    :cond_32
    const/4 v4, 0x0

    move v1, v4

    goto :goto_30
.end method

.method protected readFormSource(Landroid/os/Parcel;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 107
    const-class v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/CharSequence;

    .line 108
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
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 102
    return-void
.end method
