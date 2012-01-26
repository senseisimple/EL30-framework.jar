.class public final Lcom/android/internal/telephony/cdma/EriManager;
.super Ljava/lang/Object;
.source "EriManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
        Lcom/android/internal/telephony/cdma/EriManager$EriFile;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final ERI_FROM_FILE_SYSTEM:I = 0x1

.field public static final ERI_FROM_MODEM:I = 0x2

.field public static final ERI_FROM_XML:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static final VDBG:Z


# instance fields
.field private isEriFileLoaded:Z

.field private mContext:Landroid/content/Context;

.field private mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

.field private mEriFileSource:I

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;I)V
    .registers 5
    .parameter "phone"
    .parameter "context"
    .parameter "eriFileSource"

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    .line 135
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 136
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 137
    iput p3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    .line 138
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/EriManager$EriFile;-><init>(Lcom/android/internal/telephony/cdma/EriManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    .line 139
    return-void
.end method

.method private getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    .registers 14
    .parameter "roamInd"
    .parameter "defRoamInd"

    .prologue
    .line 544
    packed-switch p1, :pswitch_data_26c

    .line 701
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded:Z

    if-nez v1, :cond_1fa

    .line 703
    const-string v1, "CDMA"

    const-string v2, "ERI File not loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const/4 v1, 0x2

    if-le p2, v1, :cond_19b

    .line 706
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v4, 0x104012b

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .line 808
    .local v0, ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :goto_2a
    return-object v0

    .line 548
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_2b
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v4, 0x10401a8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 551
    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_2a

    .line 555
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_40
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v4, 0x1040129

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .line 563
    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_2a

    .line 566
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_5a
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v4, 0x104012a

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .line 574
    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_2a

    .line 577
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_74
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v4, 0x104012b

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .line 585
    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_2a

    .line 590
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_8e
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v2, 0x104012c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .line 598
    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_2a

    .line 601
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_a8
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v2, 0x104012d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .line 609
    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_2a

    .line 612
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_c3
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v2, 0x104012e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .line 620
    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_2a

    .line 623
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_de
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v2, 0x104012f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .line 631
    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_2a

    .line 634
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_f9
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v2, 0x1040130

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .line 642
    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_2a

    .line 645
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_114
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v2, 0x1040131

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .line 653
    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_2a

    .line 656
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_12f
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v2, 0x1040132

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .line 664
    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_2a

    .line 667
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_14a
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v2, 0x1040133

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .line 675
    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_2a

    .line 678
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_165
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v2, 0x1040134

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .line 686
    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_2a

    .line 689
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_180
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v2, 0x1040135

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .line 697
    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_2a

    .line 717
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_19b
    packed-switch p2, :pswitch_data_28c

    .line 755
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const-string v3, "ERI text"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_2a

    .line 719
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_1a9
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v4, 0x1040129

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .line 728
    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_2a

    .line 731
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_1c4
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v4, 0x104012a

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .line 740
    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_2a

    .line 743
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_1df
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v4, 0x104012b

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .line 752
    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_2a

    .line 760
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_1fa
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v10

    .line 761
    .local v10, eriInfo:Lcom/android/internal/telephony/cdma/EriInfo;
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v9

    .line 762
    .local v9, defEriInfo:Lcom/android/internal/telephony/cdma/EriInfo;
    if-nez v10, :cond_255

    .line 767
    if-nez v9, :cond_23f

    .line 768
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERI defRoamInd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found in ERI file ...on"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v4, 0x1040129

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_2a

    .line 784
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_23f
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget v2, v9, Lcom/android/internal/telephony/cdma/EriInfo;->mIconIndex:I

    iget v3, v9, Lcom/android/internal/telephony/cdma/EriInfo;->mIconMode:I

    iget-object v4, v9, Lcom/android/internal/telephony/cdma/EriInfo;->mEriText:Ljava/lang/String;

    iget v5, v9, Lcom/android/internal/telephony/cdma/EriInfo;->mBannerStyle:I

    iget v6, v9, Lcom/android/internal/telephony/cdma/EriInfo;->mCallGuardStatus:I

    iget v7, v9, Lcom/android/internal/telephony/cdma/EriInfo;->mRinger:I

    iget v8, v9, Lcom/android/internal/telephony/cdma/EriInfo;->mDataCallGuardStatus:I

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_2a

    .line 795
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_255
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget v2, v10, Lcom/android/internal/telephony/cdma/EriInfo;->mIconIndex:I

    iget v3, v10, Lcom/android/internal/telephony/cdma/EriInfo;->mIconMode:I

    iget-object v4, v10, Lcom/android/internal/telephony/cdma/EriInfo;->mEriText:Ljava/lang/String;

    iget v5, v10, Lcom/android/internal/telephony/cdma/EriInfo;->mBannerStyle:I

    iget v6, v10, Lcom/android/internal/telephony/cdma/EriInfo;->mCallGuardStatus:I

    iget v7, v10, Lcom/android/internal/telephony/cdma/EriInfo;->mRinger:I

    iget v8, v10, Lcom/android/internal/telephony/cdma/EriInfo;->mDataCallGuardStatus:I

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_2a

    .line 544
    nop

    :pswitch_data_26c
    .packed-switch -0x1
        :pswitch_2b
        :pswitch_40
        :pswitch_5a
        :pswitch_74
        :pswitch_8e
        :pswitch_a8
        :pswitch_c3
        :pswitch_de
        :pswitch_f9
        :pswitch_114
        :pswitch_12f
        :pswitch_14a
        :pswitch_165
        :pswitch_180
    .end packed-switch

    .line 717
    :pswitch_data_28c
    .packed-switch 0x0
        :pswitch_1a9
        :pswitch_1c4
        :pswitch_1df
    .end packed-switch
.end method

.method private getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;
    .registers 4
    .parameter "roamingIndicator"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/cdma/EriInfo;

    move-object v0, p0

    .line 337
    :goto_1d
    return-object v0

    .restart local p0
    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private loadEriFileFromFileSystem()V
    .registers 1

    .prologue
    .line 182
    return-void
.end method

.method private loadEriFileFromModem()V
    .registers 1

    .prologue
    .line 172
    return-void
.end method

.method private loadEriFileFromXml()V
    .registers 22

    .prologue
    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 215
    .local v19, r:Landroid/content/res/Resources;
    const v3, 0x10b0004

    move-object/from16 v0, v19

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v18

    .line 218
    .local v18, parser:Landroid/content/res/XmlResourceParser;
    :try_start_13
    const-string v3, "EriFile"

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object v3, v0

    const/4 v4, 0x0

    const-string v5, "VersionNumber"

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object v3, v0

    const/4 v4, 0x0

    const-string v5, "NumberOfEriEntries"

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object v3, v0

    const/4 v4, 0x0

    const-string v5, "EriFileType"

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    .line 226
    const/16 v17, 0x0

    .line 228
    .local v17, parsedEriEntries:I
    :cond_5f
    :goto_5f
    invoke-static/range {v18 .. v18}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 229
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 230
    .local v16, name:Ljava/lang/String;
    if-nez v16, :cond_b7

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object v3, v0

    iget v3, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    move/from16 v0, v17

    move v1, v3

    if-eq v0, v1, :cond_a6

    .line 232
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error Parsing ERI file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object v5, v0

    iget v5, v5, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " defined, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " parsed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_a6
    const-string v3, "CDMA"

    const-string v4, "loadEriFileFromXml: eri parsing successful, file loaded"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded:Z
    :try_end_b3
    .catchall {:try_start_13 .. :try_end_b3} :catchall_119
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_b3} :catch_ec

    .line 293
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->close()V

    .line 295
    .end local v16           #name:Ljava/lang/String;
    .end local v17           #parsedEriEntries:I
    :goto_b6
    return-void

    .line 235
    .restart local v16       #name:Ljava/lang/String;
    .restart local v17       #parsedEriEntries:I
    :cond_b7
    :try_start_b7
    const-string v3, "CallPromptId"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11e

    .line 236
    const/4 v3, 0x0

    const-string v4, "Id"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 237
    .local v15, id:I
    const/4 v3, 0x0

    const-string v4, "CallPromptText"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 238
    .local v20, text:Ljava/lang/String;
    if-ltz v15, :cond_f9

    const/4 v3, 0x2

    if-gt v15, v3, :cond_f9

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mCallPromptId:[Ljava/lang/String;

    aput-object v20, v3, v15
    :try_end_ea
    .catchall {:try_start_b7 .. :try_end_ea} :catchall_119
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_ea} :catch_ec

    goto/16 :goto_5f

    .line 279
    .end local v15           #id:I
    .end local v16           #name:Ljava/lang/String;
    .end local v17           #parsedEriEntries:I
    .end local v20           #text:Ljava/lang/String;
    :catch_ec
    move-exception v3

    move-object v14, v3

    .line 280
    .local v14, e:Ljava/lang/Exception;
    :try_start_ee
    const-string v3, "CDMA"

    const-string v4, "Got exception while loading ERI file."

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f5
    .catchall {:try_start_ee .. :try_end_f5} :catchall_119

    .line 293
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_b6

    .line 241
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v15       #id:I
    .restart local v16       #name:Ljava/lang/String;
    .restart local v17       #parsedEriEntries:I
    .restart local v20       #text:Ljava/lang/String;
    :cond_f9
    :try_start_f9
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error Parsing ERI file: found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " CallPromptId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_117
    .catchall {:try_start_f9 .. :try_end_117} :catchall_119
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_117} :catch_ec

    goto/16 :goto_5f

    .line 293
    .end local v15           #id:I
    .end local v16           #name:Ljava/lang/String;
    .end local v17           #parsedEriEntries:I
    .end local v20           #text:Ljava/lang/String;
    :catchall_119
    move-exception v3

    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->close()V

    throw v3

    .line 244
    .restart local v16       #name:Ljava/lang/String;
    .restart local v17       #parsedEriEntries:I
    :cond_11e
    :try_start_11e
    const-string v3, "EriInfo"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 245
    const/4 v3, 0x0

    const-string v4, "RoamingIndicator"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 247
    .local v4, roamingIndicator:I
    const/4 v3, 0x0

    const-string v5, "IconIndex"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 248
    .local v5, iconIndex:I
    const/4 v3, 0x0

    const-string v6, "IconMode"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 249
    .local v6, iconMode:I
    const/4 v3, 0x0

    const-string v7, "EriText"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 250
    .local v7, eriText:Ljava/lang/String;
    const/4 v3, 0x0

    const-string v8, "CallPromptId"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v8

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 252
    .local v8, callPromptId:I
    const/4 v3, 0x0

    const-string v9, "AlertId"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v9

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 255
    .local v9, alertId:I
    const/4 v3, 0x0

    const-string v10, "BannerStyle"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v10

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 257
    .local v10, bannerStyle:I
    const/4 v3, 0x0

    const-string v11, "CallGuardStatus"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v11

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 259
    .local v11, callGuardStatus:I
    const/4 v3, 0x0

    const-string v12, "Ringer"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v12

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 260
    .local v12, ringer:I
    const/4 v3, 0x0

    const-string v13, "DataCallGuardStatus"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v13

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 263
    .local v13, dataCallGuardStatus:I
    add-int/lit8 v17, v17, 0x1

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object v3, v0

    iget-object v14, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v3, Lcom/android/internal/telephony/cdma/EriInfo;

    invoke-direct/range {v3 .. v13}, Lcom/android/internal/telephony/cdma/EriInfo;-><init>(IIILjava/lang/String;IIIIII)V

    invoke-virtual {v14, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d0
    .catchall {:try_start_11e .. :try_end_1d0} :catchall_119
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_1d0} :catch_ec

    goto/16 :goto_5f
.end method


# virtual methods
.method public IsDomesticRoaming(II)Z
    .registers 6
    .parameter "roamInd"
    .parameter "defRoamInd"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 857
    const/4 v0, -0x1

    if-ne p1, v0, :cond_7

    move v0, v1

    .line 863
    :goto_6
    return v0

    .line 860
    :cond_7
    if-eq p1, v2, :cond_11

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->IsInternationalRoaming(II)Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v2

    .line 861
    goto :goto_6

    :cond_11
    move v0, v1

    .line 863
    goto :goto_6
.end method

.method public IsInternationalRoaming(II)Z
    .registers 6
    .parameter "roamInd"
    .parameter "defRoamInd"

    .prologue
    const/4 v2, 0x0

    .line 836
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v1

    iget-object v0, v1, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconText:Ljava/lang/String;

    .line 838
    .local v0, eriText:Ljava/lang/String;
    const/4 v1, -0x1

    if-ne p1, v1, :cond_c

    move v1, v2

    .line 849
    :goto_b
    return v1

    .line 841
    :cond_c
    const-string v1, "International Roaming"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, "International"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, "Premium International"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, "International Services"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, "International Voice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, "Int\'l Voice/Data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 847
    :cond_3c
    const/4 v1, 0x1

    goto :goto_b

    :cond_3e
    move v1, v2

    .line 849
    goto :goto_b
.end method

.method public dispose()V
    .registers 2

    .prologue
    .line 142
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/EriManager$EriFile;-><init>(Lcom/android/internal/telephony/cdma/EriManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded:Z

    .line 144
    return-void
.end method

.method public getCdmaEriBannerStyle(II)I
    .registers 4
    .parameter "roamInd"
    .parameter "defRoamInd"

    .prologue
    .line 826
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriBannerStyle:I

    return v0
.end method

.method public getCdmaEriIconIndex(II)I
    .registers 4
    .parameter "roamInd"
    .parameter "defRoamInd"

    .prologue
    .line 813
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconIndex:I

    return v0
.end method

.method public getCdmaEriIconMode(II)I
    .registers 4
    .parameter "roamInd"
    .parameter "defRoamInd"

    .prologue
    .line 817
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconMode:I

    return v0
.end method

.method public getCdmaEriRinger(II)I
    .registers 4
    .parameter "roamInd"
    .parameter "defRoamInd"

    .prologue
    .line 830
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriRinger:I

    return v0
.end method

.method public getCdmaEriText(II)Ljava/lang/String;
    .registers 4
    .parameter "roamInd"
    .parameter "defRoamInd"

    .prologue
    .line 821
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconText:Ljava/lang/String;

    return-object v0
.end method

.method public getEriFileType()I
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    return v0
.end method

.method public getEriFileVersion()I
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    return v0
.end method

.method public getEriNumberOfEntries()I
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    return v0
.end method

.method public isEriFileLoaded()Z
    .registers 2

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded:Z

    return v0
.end method

.method public loadEriFile()V
    .registers 2

    .prologue
    .line 148
    iget v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    packed-switch v0, :pswitch_data_12

    .line 159
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromXml()V

    .line 162
    :goto_8
    return-void

    .line 150
    :pswitch_9
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromModem()V

    goto :goto_8

    .line 154
    :pswitch_d
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromFileSystem()V

    goto :goto_8

    .line 148
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d
        :pswitch_9
    .end packed-switch
.end method
