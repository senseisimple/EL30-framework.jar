.class public final Landroid/provider/ContactsContract$CommonDataKinds$Im;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Im"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/im"

.field public static final CUSTOM_PROTOCOL:Ljava/lang/String; = "data6"

.field public static final PROTOCOL:Ljava/lang/String; = "data5"

.field public static final PROTOCOL_AIM:I = 0x0

.field public static final PROTOCOL_CUSTOM:I = -0x1

.field public static final PROTOCOL_GOOGLE_TALK:I = 0x5

.field public static final PROTOCOL_ICQ:I = 0x6

.field public static final PROTOCOL_JABBER:I = 0x7

.field public static final PROTOCOL_MSN:I = 0x1

.field public static final PROTOCOL_NETMEETING:I = 0x8

.field public static final PROTOCOL_QQ:I = 0x4

.field public static final PROTOCOL_SKYPE:I = 0x3

.field public static final PROTOCOL_YAHOO:I = 0x2

.field public static final TYPE_HOME:I = 0x1

.field public static final TYPE_OTHER:I = 0x3

.field public static final TYPE_WORK:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 4220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .parameter "res"
    .parameter "type"
    .parameter "label"

    .prologue
    .line 4307
    const/4 v1, -0x1

    if-ne p1, v1, :cond_b

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    move-object v1, p2

    .line 4311
    :goto_a
    return-object v1

    .line 4310
    :cond_b
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabelResource(I)I

    move-result v0

    .line 4311
    .local v0, labelRes:I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_a
.end method

.method public static final getProtocolLabelResource(I)I
    .registers 2
    .parameter "type"

    .prologue
    .line 4286
    packed-switch p0, :pswitch_data_2c

    .line 4296
    const v0, 0x1040389

    :goto_6
    return v0

    .line 4287
    :pswitch_7
    const v0, 0x104038a

    goto :goto_6

    .line 4288
    :pswitch_b
    const v0, 0x104038b

    goto :goto_6

    .line 4289
    :pswitch_f
    const v0, 0x104038c

    goto :goto_6

    .line 4290
    :pswitch_13
    const v0, 0x104038d

    goto :goto_6

    .line 4291
    :pswitch_17
    const v0, 0x104038e

    goto :goto_6

    .line 4292
    :pswitch_1b
    const v0, 0x104038f

    goto :goto_6

    .line 4293
    :pswitch_1f
    const v0, 0x1040390

    goto :goto_6

    .line 4294
    :pswitch_23
    const v0, 0x1040391

    goto :goto_6

    .line 4295
    :pswitch_27
    const v0, 0x1040392

    goto :goto_6

    .line 4286
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
        :pswitch_27
    .end packed-switch
.end method

.method public static final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .parameter "res"
    .parameter "type"
    .parameter "label"

    .prologue
    .line 4273
    if-nez p1, :cond_a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    move-object v1, p2

    .line 4277
    :goto_9
    return-object v1

    .line 4276
    :cond_a
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getTypeLabelResource(I)I

    move-result v0

    .line 4277
    .local v0, labelRes:I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_9
.end method

.method public static final getTypeLabelResource(I)I
    .registers 2
    .parameter "type"

    .prologue
    .line 4258
    packed-switch p0, :pswitch_data_14

    .line 4262
    const v0, 0x1040385

    :goto_6
    return v0

    .line 4259
    :pswitch_7
    const v0, 0x1040386

    goto :goto_6

    .line 4260
    :pswitch_b
    const v0, 0x1040387

    goto :goto_6

    .line 4261
    :pswitch_f
    const v0, 0x1040388

    goto :goto_6

    .line 4258
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method
