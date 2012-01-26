.class public Lcom/google/android/mms/pdu/PduComposer;
.super Ljava/lang/Object;
.source "PduComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mms/pdu/PduComposer$1;,
        Lcom/google/android/mms/pdu/PduComposer$BufferStack;,
        Lcom/google/android/mms/pdu/PduComposer$PositionMarker;,
        Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LOG_TAG:Ljava/lang/String; = "PduComposer"

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final PDU_COMPOSER_BLOCK_SIZE:I = 0x400

.field private static final PDU_COMPOSE_CONTENT_ERROR:I = 0x1

.field private static final PDU_COMPOSE_FIELD_NOT_SET:I = 0x2

.field private static final PDU_COMPOSE_FIELD_NOT_SUPPORTED:I = 0x3

.field private static final PDU_COMPOSE_SUCCESS:I = 0x0

.field private static final PDU_EMAIL_ADDRESS_TYPE:I = 0x2

.field private static final PDU_IPV4_ADDRESS_TYPE:I = 0x3

.field private static final PDU_IPV6_ADDRESS_TYPE:I = 0x4

.field private static final PDU_PHONE_NUMBER_ADDRESS_TYPE:I = 0x1

.field private static final PDU_UNKNOWN_ADDRESS_TYPE:I = 0x5

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field static final REGEXP_EMAIL_ADDRESS_TYPE:Ljava/lang/String; = "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

.field static final REGEXP_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

.field static final REGEXP_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

.field static final REGEXP_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "\\+?[0-9|\\.|\\-]+"

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field static final STRING_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV4"

.field static final STRING_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV6"

.field static final STRING_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=PLMN"

.field private static final TEXT_MAX:I = 0x7f

.field private static mContentTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mMessage:Ljava/io/ByteArrayOutputStream;

.field private mOptionalFieldAttendance:Z

.field private mPdu:Lcom/google/android/mms/pdu/GenericPdu;

.field private mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

.field protected mPosition:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 32
    const-class v1, Lcom/google/android/mms/pdu/PduComposer;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_2b

    const/4 v1, 0x1

    :goto_9
    sput-boolean v1, Lcom/google/android/mms/pdu/PduComposer;->$assertionsDisabled:Z

    .line 121
    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 124
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 127
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2d

    .line 128
    sget-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 32
    .end local v0           #i:I
    :cond_2b
    const/4 v1, 0x0

    goto :goto_9

    .line 130
    .restart local v0       #i:I
    :cond_2d
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V
    .registers 6
    .parameter "context"
    .parameter "pdu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 96
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 101
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 106
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    .line 116
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    .line 135
    iput-boolean v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mOptionalFieldAttendance:Z

    .line 144
    iput-object p2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    .line 146
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/GenericPdu;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    .line 147
    new-instance v0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-direct {v0, p0, v1}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;-><init>(Lcom/google/android/mms/pdu/PduComposer;Lcom/google/android/mms/pdu/PduComposer$1;)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    .line 148
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 149
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 150
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/mms/pdu/PduComposer;)Lcom/google/android/mms/pdu/PduComposer$BufferStack;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    return-object v0
.end method

.method private appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 6
    .parameter "address"

    .prologue
    .line 464
    const/4 v2, 0x0

    .line 467
    .local v2, temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer;->checkAddressType(Ljava/lang/String;)I

    move-result v0

    .line 468
    .local v0, addressType:I
    invoke-static {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->copy(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 469
    const/4 v3, 0x1

    if-ne v3, v0, :cond_1b

    .line 471
    const-string v3, "/TYPE=PLMN"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    :cond_19
    :goto_19
    move-object v3, v2

    .line 483
    .end local v0           #addressType:I
    :goto_1a
    return-object v3

    .line 472
    .restart local v0       #addressType:I
    :cond_1b
    const/4 v3, 0x3

    if-ne v3, v0, :cond_2c

    .line 474
    const-string v3, "/TYPE=IPV4"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    goto :goto_19

    .line 479
    .end local v0           #addressType:I
    :catch_28
    move-exception v3

    move-object v1, v3

    .line 480
    .local v1, e:Ljava/lang/NullPointerException;
    const/4 v3, 0x0

    goto :goto_1a

    .line 475
    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v0       #addressType:I
    :cond_2c
    const/4 v3, 0x4

    if-ne v3, v0, :cond_19

    .line 477
    const-string v3, "/TYPE=IPV6"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V
    :try_end_38
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_38} :catch_28

    goto :goto_19
.end method

.method private appendHeader(I)I
    .registers 24
    .parameter "field"

    .prologue
    .line 490
    packed-switch p1, :pswitch_data_264

    .line 650
    :pswitch_3
    const/16 v20, 0x3

    .line 653
    :goto_5
    return v20

    .line 492
    :pswitch_6
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v19

    .line 495
    .local v19, version:I
    if-nez v19, :cond_25

    .line 496
    const/16 v20, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 653
    .end local v19           #version:I
    :cond_22
    :goto_22
    const/16 v20, 0x0

    goto :goto_5

    .line 498
    .restart local v19       #version:I
    :cond_25
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto :goto_22

    .line 505
    .end local v19           #version:I
    :pswitch_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v18

    .line 506
    .local v18, textString:[B
    if-nez v18, :cond_40

    .line 507
    const/16 v20, 0x2

    goto :goto_5

    .line 510
    :cond_40
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 511
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto :goto_22

    .line 517
    .end local v18           #textString:[B
    :pswitch_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    .line 519
    .local v3, addr:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v3, :cond_5e

    .line 520
    const/16 v20, 0x2

    goto :goto_5

    .line 524
    :cond_5e
    const/4 v14, 0x0

    .local v14, i:I
    :goto_5f
    move-object v0, v3

    array-length v0, v0

    move/from16 v20, v0

    move v0, v14

    move/from16 v1, v20

    if-ge v0, v1, :cond_22

    .line 525
    aget-object v20, v3, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v17

    .line 526
    .local v17, temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v17, :cond_77

    .line 527
    const/16 v20, 0x1

    goto :goto_5

    .line 530
    :cond_77
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 531
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 524
    add-int/lit8 v14, v14, 0x1

    goto :goto_5f

    .line 537
    .end local v3           #addr:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v14           #i:I
    .end local v17           #temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_84
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v12

    .line 540
    .local v12, from:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v12, :cond_b2

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_b2

    new-instance v20, Ljava/lang/String;

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/String;-><init>([B)V

    const-string v21, "insert-address-token"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c6

    .line 545
    :cond_b2
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 547
    const/16 v20, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    goto/16 :goto_22

    .line 549
    :cond_c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v13

    .line 553
    .local v13, fstart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    const/16 v20, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 555
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v17

    .line 556
    .restart local v17       #temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v17, :cond_ef

    .line 557
    const/16 v20, 0x1

    goto/16 :goto_5

    .line 560
    :cond_ef
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 562
    invoke-virtual {v13}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v11

    .line 563
    .local v11, flen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 564
    move v0, v11

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_22

    .line 575
    .end local v11           #flen:I
    .end local v12           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v13           #fstart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v17           #temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v16

    .line 576
    .local v16, octet:I
    if-nez v16, :cond_12d

    .line 577
    const/16 v20, 0x2

    goto/16 :goto_5

    .line 580
    :cond_12d
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 581
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_22

    .line 585
    .end local v16           #octet:I
    :pswitch_139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v4

    .line 586
    .local v4, date:J
    const-wide/16 v20, -0x1

    cmp-long v20, v20, v4

    if-nez v20, :cond_151

    .line 587
    const/16 v20, 0x2

    goto/16 :goto_5

    .line 590
    :cond_151
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 591
    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendDateValue(J)V

    goto/16 :goto_22

    .line 595
    .end local v4           #date:J
    :pswitch_15c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    .line 597
    .local v6, enString:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v6, :cond_170

    .line 598
    const/16 v20, 0x2

    goto/16 :goto_5

    .line 601
    :cond_170
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 602
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    goto/16 :goto_22

    .line 606
    .end local v6           #enString:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_17b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v15

    .line 607
    .local v15, messageClass:[B
    if-nez v15, :cond_18f

    .line 608
    const/16 v20, 0x2

    goto/16 :goto_5

    .line 611
    :cond_18f
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 612
    const-string v20, "advertisement"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_1ac

    .line 614
    const/16 v20, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_22

    .line 615
    :cond_1ac
    const-string v20, "auto"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_1c6

    .line 617
    const/16 v20, 0x83

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_22

    .line 618
    :cond_1c6
    const-string/jumbo v20, "personal"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_1e1

    .line 620
    const/16 v20, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_22

    .line 621
    :cond_1e1
    const-string v20, "informational"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_1fb

    .line 623
    const/16 v20, 0x82

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_22

    .line 625
    :cond_1fb
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto/16 :goto_22

    .line 630
    .end local v15           #messageClass:[B
    :pswitch_203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v7

    .line 631
    .local v7, expiry:J
    const-wide/16 v20, -0x1

    cmp-long v20, v20, v7

    if-nez v20, :cond_21b

    .line 632
    const/16 v20, 0x2

    goto/16 :goto_5

    .line 635
    :cond_21b
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v10

    .line 640
    .local v10, expiryStart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    const/16 v20, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 641
    move-object/from16 v0, p0

    move-wide v1, v7

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 643
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v9

    .line 644
    .local v9, expiryLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 645
    move v0, v9

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_22

    .line 490
    nop

    :pswitch_data_264
    .packed-switch 0x81
        :pswitch_4b
        :pswitch_4b
        :pswitch_3
        :pswitch_3
        :pswitch_139
        :pswitch_119
        :pswitch_3
        :pswitch_203
        :pswitch_84
        :pswitch_17b
        :pswitch_2d
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_119
        :pswitch_15c
        :pswitch_4b
        :pswitch_2d
        :pswitch_3
        :pswitch_3
        :pswitch_119
    .end packed-switch
.end method

.method protected static checkAddressType(Ljava/lang/String;)I
    .registers 3
    .parameter "address"

    .prologue
    const/4 v1, 0x5

    .line 1184
    if-nez p0, :cond_5

    move v0, v1

    .line 1202
    :goto_4
    return v0

    .line 1188
    :cond_5
    const-string v0, "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1190
    const/4 v0, 0x3

    goto :goto_4

    .line 1191
    :cond_f
    const-string v0, "\\+?[0-9|\\.|\\-]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1193
    const/4 v0, 0x1

    goto :goto_4

    .line 1194
    :cond_19
    const-string v0, "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1196
    const/4 v0, 0x2

    goto :goto_4

    .line 1197
    :cond_23
    const-string v0, "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1199
    const/4 v0, 0x4

    goto :goto_4

    :cond_2d
    move v0, v1

    .line 1202
    goto :goto_4
.end method

.method private makeAckInd()I
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 740
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_f

    .line 741
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 742
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 746
    :cond_f
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 747
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 750
    const/16 v0, 0x98

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_23

    move v0, v2

    .line 762
    :goto_22
    return v0

    .line 755
    :cond_23
    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_2d

    move v0, v2

    .line 756
    goto :goto_22

    .line 760
    :cond_2d
    const/16 v0, 0x91

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move v0, v1

    .line 762
    goto :goto_22
.end method

.method private makeMessageBody()I
    .registers 33

    .prologue
    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v16

    .line 869
    .local v16, ctStart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v29, v0

    const/16 v30, 0x84

    invoke-virtual/range {v29 .. v30}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v29

    move-object v0, v10

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 870
    .local v10, contentType:Ljava/lang/String;
    sget-object v29, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    move-object/from16 v0, v29

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 871
    .local v12, contentTypeIdentifier:Ljava/lang/Integer;
    if-nez v12, :cond_37

    .line 873
    const/16 v29, 0x1

    .line 1043
    :cond_36
    :goto_36
    return v29

    .line 876
    :cond_37
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object v4, v0

    check-cast v4, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/SendReq;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    .line 880
    .local v5, body:Lcom/google/android/mms/pdu/PduBody;
    if-eqz v5, :cond_55

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v29

    if-nez v29, :cond_73

    .line 882
    :cond_55
    const-wide/16 v29, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 885
    const/16 v29, 0x0

    goto :goto_36

    .line 890
    :cond_73
    const/16 v29, 0x0

    :try_start_75
    move-object v0, v5

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v23

    .line 892
    .local v23, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v28

    .line 893
    .local v28, start:[B
    if-eqz v28, :cond_b1

    .line 894
    const/16 v29, 0x8a

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 895
    const/16 v29, 0x3c

    const/16 v30, 0x0

    aget-byte v30, v28, v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_135

    const/16 v29, 0x3e

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v30, v0

    const/16 v31, 0x1

    sub-int v30, v30, v31

    aget-byte v30, v28, v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_135

    .line 896
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 903
    :cond_b1
    :goto_b1
    const/16 v29, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 904
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V
    :try_end_c5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_75 .. :try_end_c5} :catch_160

    .line 910
    .end local v23           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v28           #start:[B
    :goto_c5
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v15

    .line 911
    .local v15, ctLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 912
    move v0, v15

    int-to-long v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 916
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v27

    .line 917
    .local v27, partNum:I
    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 918
    const/16 v20, 0x0

    .local v20, i:I
    :goto_f8
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_388

    .line 919
    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v23

    .line 920
    .restart local v23       #part:Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v4

    .line 923
    .local v4, attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v11

    .line 926
    .local v11, contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v24

    .line 928
    .local v24, partContentType:[B
    if-nez v24, :cond_168

    .line 930
    const/16 v29, 0x1

    goto/16 :goto_36

    .line 898
    .end local v4           #attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v11           #contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v15           #ctLength:I
    .end local v20           #i:I
    .end local v24           #partContentType:[B
    .end local v27           #partNum:I
    .restart local v28       #start:[B
    :cond_135
    :try_start_135
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "<"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    new-instance v30, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ">"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString(Ljava/lang/String;)V
    :try_end_15e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_135 .. :try_end_15e} :catch_160

    goto/16 :goto_b1

    .line 906
    .end local v23           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v28           #start:[B
    :catch_160
    move-exception v29

    move-object/from16 v18, v29

    .line 907
    .local v18, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_c5

    .line 934
    .end local v18           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v4       #attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v11       #contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v15       #ctLength:I
    .restart local v20       #i:I
    .restart local v23       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v24       #partContentType:[B
    .restart local v27       #partNum:I
    :cond_168
    sget-object v29, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    new-instance v30, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    .line 936
    .local v25, partContentTypeIdentifier:Ljava/lang/Integer;
    if-nez v25, :cond_198

    .line 937
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 946
    :goto_182
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v22

    .line 948
    .local v22, name:[B
    if-nez v22, :cond_1a4

    .line 949
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v22

    .line 951
    if-nez v22, :cond_1a4

    .line 952
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v22

    .line 954
    if-nez v22, :cond_1a4

    .line 958
    const/16 v29, 0x1

    goto/16 :goto_36

    .line 939
    .end local v22           #name:[B
    :cond_198
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto :goto_182

    .line 962
    .restart local v22       #name:[B
    :cond_1a4
    const/16 v29, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 963
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 966
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v7

    .line 967
    .local v7, charset:I
    if-eqz v7, :cond_1c9

    .line 968
    const/16 v29, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 969
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 972
    :cond_1c9
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v13

    .line 973
    .local v13, contentTypeLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 974
    move v0, v13

    int-to-long v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 978
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v8

    .line 980
    .local v8, contentId:[B
    if-eqz v8, :cond_21d

    .line 981
    const/16 v29, 0xc0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 982
    const/16 v29, 0x3c

    const/16 v30, 0x0

    aget-byte v30, v8, v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_269

    const/16 v29, 0x3e

    move-object v0, v8

    array-length v0, v0

    move/from16 v30, v0

    const/16 v31, 0x1

    sub-int v30, v30, v31

    aget-byte v30, v8, v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_269

    .line 983
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    .line 990
    :cond_21d
    :goto_21d
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v9

    .line 991
    .local v9, contentLocation:[B
    if-eqz v9, :cond_232

    .line 992
    const/16 v29, 0x8e

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 993
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 997
    :cond_232
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v19

    .line 999
    .local v19, headerLength:I
    const/16 v17, 0x0

    .line 1000
    .local v17, dataLength:I
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v26

    .line 1002
    .local v26, partData:[B
    if-eqz v26, :cond_292

    .line 1003
    const/16 v29, 0x0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 1004
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v17, v0

    .line 1033
    :cond_255
    :goto_255
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v29

    sub-int v29, v29, v19

    move/from16 v0, v17

    move/from16 v1, v29

    if-eq v0, v1, :cond_35a

    .line 1034
    new-instance v29, Ljava/lang/RuntimeException;

    const-string v30, "BUG: Length sanity check failed"

    invoke-direct/range {v29 .. v30}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 985
    .end local v9           #contentLocation:[B
    .end local v17           #dataLength:I
    .end local v19           #headerLength:I
    .end local v26           #partData:[B
    :cond_269
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "<"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    new-instance v30, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object v1, v8

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ">"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString(Ljava/lang/String;)V

    goto :goto_21d

    .line 1006
    .restart local v9       #contentLocation:[B
    .restart local v17       #dataLength:I
    .restart local v19       #headerLength:I
    .restart local v26       #partData:[B
    :cond_292
    const/4 v14, 0x0

    .line 1008
    .local v14, cr:Ljava/io/InputStream;
    const/16 v29, 0x400

    :try_start_295
    move/from16 v0, v29

    new-array v0, v0, [B

    move-object v6, v0

    .line 1009
    .local v6, buffer:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v29, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v14

    .line 1010
    const/16 v21, 0x0

    .line 1011
    .local v21, len:I
    :goto_2aa
    invoke-virtual {v14, v6}, Ljava/io/InputStream;->read([B)I

    move-result v21

    const/16 v29, -0x1

    move/from16 v0, v21

    move/from16 v1, v29

    if-eq v0, v1, :cond_2d9

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object v1, v6

    move/from16 v2, v30

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1013
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    move/from16 v29, v0

    add-int v29, v29, v21

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I
    :try_end_2d6
    .catchall {:try_start_295 .. :try_end_2d6} :catchall_344
    .catch Ljava/io/FileNotFoundException; {:try_start_295 .. :try_end_2d6} :catch_2f0
    .catch Ljava/io/IOException; {:try_start_295 .. :try_end_2d6} :catch_30c
    .catch Ljava/lang/RuntimeException; {:try_start_295 .. :try_end_2d6} :catch_328

    .line 1014
    add-int v17, v17, v21

    goto :goto_2aa

    .line 1023
    :cond_2d9
    if-eqz v14, :cond_255

    .line 1025
    :try_start_2db
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_2de
    .catch Ljava/io/IOException; {:try_start_2db .. :try_end_2de} :catch_2e0

    goto/16 :goto_255

    .line 1026
    :catch_2e0
    move-exception v18

    .line 1027
    .local v18, e:Ljava/io/IOException;
    const-string v29, "PduComposer"

    const-string v30, "IOException caught while closing stream"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_255

    .line 1016
    .end local v6           #buffer:[B
    .end local v18           #e:Ljava/io/IOException;
    .end local v21           #len:I
    :catch_2f0
    move-exception v29

    move-object/from16 v18, v29

    .line 1017
    .local v18, e:Ljava/io/FileNotFoundException;
    const/16 v29, 0x1

    .line 1023
    if-eqz v14, :cond_36

    .line 1025
    :try_start_2f7
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_2fa
    .catch Ljava/io/IOException; {:try_start_2f7 .. :try_end_2fa} :catch_2fc

    goto/16 :goto_36

    .line 1026
    :catch_2fc
    move-exception v18

    .line 1027
    .local v18, e:Ljava/io/IOException;
    const-string v30, "PduComposer"

    const-string v31, "IOException caught while closing stream"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_36

    .line 1018
    .end local v18           #e:Ljava/io/IOException;
    :catch_30c
    move-exception v29

    move-object/from16 v18, v29

    .line 1019
    .restart local v18       #e:Ljava/io/IOException;
    const/16 v29, 0x1

    .line 1023
    if-eqz v14, :cond_36

    .line 1025
    :try_start_313
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_316
    .catch Ljava/io/IOException; {:try_start_313 .. :try_end_316} :catch_318

    goto/16 :goto_36

    .line 1026
    :catch_318
    move-exception v18

    .line 1027
    const-string v30, "PduComposer"

    const-string v31, "IOException caught while closing stream"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_36

    .line 1020
    .end local v18           #e:Ljava/io/IOException;
    :catch_328
    move-exception v29

    move-object/from16 v18, v29

    .line 1021
    .local v18, e:Ljava/lang/RuntimeException;
    const/16 v29, 0x1

    .line 1023
    if-eqz v14, :cond_36

    .line 1025
    :try_start_32f
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_332
    .catch Ljava/io/IOException; {:try_start_32f .. :try_end_332} :catch_334

    goto/16 :goto_36

    .line 1026
    :catch_334
    move-exception v18

    .line 1027
    .local v18, e:Ljava/io/IOException;
    const-string v30, "PduComposer"

    const-string v31, "IOException caught while closing stream"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_36

    .line 1023
    .end local v18           #e:Ljava/io/IOException;
    :catchall_344
    move-exception v29

    if-eqz v14, :cond_34a

    .line 1025
    :try_start_347
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_34a
    .catch Ljava/io/IOException; {:try_start_347 .. :try_end_34a} :catch_34b

    .line 1028
    :cond_34a
    :goto_34a
    throw v29

    .line 1026
    :catch_34b
    move-exception v18

    .line 1027
    .restart local v18       #e:Ljava/io/IOException;
    const-string v30, "PduComposer"

    const-string v31, "IOException caught while closing stream"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34a

    .line 1037
    .end local v14           #cr:Ljava/io/InputStream;
    .end local v18           #e:Ljava/io/IOException;
    :cond_35a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1038
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1039
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 918
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_f8

    .line 1043
    .end local v4           #attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v7           #charset:I
    .end local v8           #contentId:[B
    .end local v9           #contentLocation:[B
    .end local v11           #contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v13           #contentTypeLength:I
    .end local v17           #dataLength:I
    .end local v19           #headerLength:I
    .end local v22           #name:[B
    .end local v23           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v24           #partContentType:[B
    .end local v25           #partContentTypeIdentifier:Ljava/lang/Integer;
    .end local v26           #partData:[B
    :cond_388
    const/16 v29, 0x0

    goto/16 :goto_36
.end method

.method private makeNotifyResp()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 708
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_f

    .line 709
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 710
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 714
    :cond_f
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 715
    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 718
    const/16 v0, 0x98

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_23

    move v0, v1

    .line 733
    :goto_22
    return v0

    .line 723
    :cond_23
    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_2d

    move v0, v1

    .line 724
    goto :goto_22

    .line 728
    :cond_2d
    const/16 v0, 0x95

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_37

    move v0, v1

    .line 729
    goto :goto_22

    :cond_37
    move v0, v2

    .line 733
    goto :goto_22
.end method

.method private makeReadRecInd()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 660
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_f

    .line 661
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 662
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 666
    :cond_f
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 667
    const/16 v0, 0x87

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 670
    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_23

    move v0, v1

    .line 701
    :goto_22
    return v0

    .line 675
    :cond_23
    const/16 v0, 0x8b

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_2d

    move v0, v1

    .line 676
    goto :goto_22

    .line 680
    :cond_2d
    const/16 v0, 0x97

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_37

    move v0, v1

    .line 681
    goto :goto_22

    .line 685
    :cond_37
    const/16 v0, 0x89

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_41

    move v0, v1

    .line 686
    goto :goto_22

    .line 690
    :cond_41
    iget-boolean v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mOptionalFieldAttendance:Z

    if-eqz v0, :cond_4a

    const/16 v0, 0x85

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 693
    :cond_4a
    const/16 v0, 0x9b

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_54

    move v0, v1

    .line 694
    goto :goto_22

    :cond_54
    move v0, v2

    .line 701
    goto :goto_22
.end method

.method private makeSendReqPdu()I
    .registers 7

    .prologue
    const/16 v5, 0x98

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 777
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_11

    .line 778
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 779
    iput v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 783
    :cond_11
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 784
    const/16 v2, 0x80

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 787
    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 789
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v2, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    .line 790
    .local v1, trid:[B
    if-nez v1, :cond_2e

    .line 792
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Transaction-ID is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 794
    :cond_2e
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 797
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_3b

    move v2, v3

    .line 856
    :goto_3a
    return v2

    .line 802
    :cond_3b
    iget-boolean v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mOptionalFieldAttendance:Z

    if-eqz v2, :cond_44

    const/16 v2, 0x85

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 805
    :cond_44
    const/16 v2, 0x89

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_4e

    move v2, v3

    .line 806
    goto :goto_3a

    .line 809
    :cond_4e
    const/4 v0, 0x0

    .line 812
    .local v0, recipient:Z
    const/16 v2, 0x97

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eq v2, v3, :cond_58

    .line 813
    const/4 v0, 0x1

    .line 817
    :cond_58
    const/16 v2, 0x82

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eq v2, v3, :cond_61

    .line 818
    const/4 v0, 0x1

    .line 822
    :cond_61
    const/16 v2, 0x81

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eq v2, v3, :cond_6a

    .line 823
    const/4 v0, 0x1

    .line 827
    :cond_6a
    if-nez v0, :cond_6e

    move v2, v3

    .line 828
    goto :goto_3a

    .line 832
    :cond_6e
    const/16 v2, 0x96

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 836
    iget-boolean v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mOptionalFieldAttendance:Z

    if-eqz v2, :cond_7c

    const/16 v2, 0x8a

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 839
    :cond_7c
    iget-boolean v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mOptionalFieldAttendance:Z

    if-eqz v2, :cond_85

    const/16 v2, 0x88

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 842
    :cond_85
    iget-boolean v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mOptionalFieldAttendance:Z

    if-eqz v2, :cond_8e

    const/16 v2, 0x8f

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 845
    :cond_8e
    const/16 v2, 0x86

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 848
    const/16 v2, 0x90

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 851
    const/16 v2, 0x84

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 854
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeMessageBody()I

    move v2, v4

    .line 856
    goto :goto_3a
.end method


# virtual methods
.method protected append(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 205
    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 206
    return-void
.end method

.method protected appendDateValue(J)V
    .registers 3
    .parameter "date"

    .prologue
    .line 405
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 406
    return-void
.end method

.method protected appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .registers 8
    .parameter "enStr"

    .prologue
    .line 333
    sget-boolean v4, Lcom/google/android/mms/pdu/PduComposer;->$assertionsDisabled:Z

    if-nez v4, :cond_c

    if-nez p1, :cond_c

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 335
    :cond_c
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v0

    .line 336
    .local v0, charset:I
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v3

    .line 337
    .local v3, textString:[B
    if-nez v3, :cond_17

    .line 356
    :goto_16
    return-void

    .line 346
    :cond_17
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 347
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v2

    .line 349
    .local v2, start:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 350
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 352
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v1

    .line 353
    .local v1, len:I
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 354
    int-to-long v4, v1

    invoke-virtual {p0, v4, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 355
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto :goto_16
.end method

.method protected appendLongInteger(J)V
    .registers 13
    .parameter "longInt"

    .prologue
    const/16 v9, 0x8

    .line 266
    move-wide v3, p1

    .line 269
    .local v3, temp:J
    const/4 v2, 0x0

    .local v2, size:I
    :goto_4
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_10

    if-ge v2, v9, :cond_10

    .line 270
    ushr-long/2addr v3, v9

    .line 269
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 274
    :cond_10
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    .line 278
    const/4 v5, 0x1

    sub-int v5, v2, v5

    mul-int/lit8 v1, v5, 0x8

    .line 280
    .local v1, shift:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    if-ge v0, v2, :cond_28

    .line 281
    ushr-long v5, p1, v1

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 282
    sub-int/2addr v1, v9

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 284
    :cond_28
    return-void
.end method

.method protected appendOctet(I)V
    .registers 2
    .parameter "number"

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 235
    return-void
.end method

.method protected appendQuotedString(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 460
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    .line 461
    return-void
.end method

.method protected appendQuotedString([B)V
    .registers 4
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 443
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 444
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 445
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 446
    return-void
.end method

.method protected appendShortInteger(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 223
    or-int/lit16 v0, p1, 0x80

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 224
    return-void
.end method

.method protected appendShortLength(I)V
    .registers 2
    .parameter "value"

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 248
    return-void
.end method

.method protected appendTextString(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 320
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 321
    return-void
.end method

.method protected appendTextString([B)V
    .registers 5
    .parameter "text"

    .prologue
    const/16 v2, 0x7f

    const/4 v1, 0x0

    .line 299
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    if-le v0, v2, :cond_c

    .line 300
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 303
    :cond_c
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 304
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 305
    return-void
.end method

.method protected appendUintvarInteger(J)V
    .registers 14
    .parameter "value"

    .prologue
    const-wide/16 v9, 0x7f

    .line 373
    const-wide/16 v1, 0x7f

    .line 375
    .local v1, max:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    const/4 v5, 0x5

    if-ge v0, v5, :cond_c

    .line 376
    cmp-long v5, p1, v1

    if-gez v5, :cond_20

    .line 383
    :cond_c
    :goto_c
    if-lez v0, :cond_28

    .line 384
    mul-int/lit8 v5, v0, 0x7

    ushr-long v3, p1, v5

    .line 385
    .local v3, temp:J
    and-long/2addr v3, v9

    .line 387
    const-wide/16 v5, 0x80

    or-long/2addr v5, v3

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 389
    add-int/lit8 v0, v0, -0x1

    .line 390
    goto :goto_c

    .line 380
    .end local v3           #temp:J
    :cond_20
    const/4 v5, 0x7

    shl-long v5, v1, v5

    or-long v1, v5, v9

    .line 375
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 392
    :cond_28
    and-long v5, p1, v9

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 393
    return-void
.end method

.method protected appendValueLength(J)V
    .registers 5
    .parameter "value"

    .prologue
    .line 422
    const-wide/16 v0, 0x1f

    cmp-long v0, p1, v0

    if-gez v0, :cond_b

    .line 423
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    .line 429
    :goto_a
    return-void

    .line 427
    :cond_b
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 428
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    goto :goto_a
.end method

.method protected arraycopy([BII)V
    .registers 5
    .parameter "buf"
    .parameter "pos"
    .parameter "length"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 197
    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 198
    return-void
.end method

.method public make()[B
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 161
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v0

    .line 164
    .local v0, type:I
    packed-switch v0, :pswitch_data_34

    :pswitch_a
    move-object v1, v2

    .line 189
    :goto_b
    return-object v1

    .line 166
    :pswitch_c
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeSendReqPdu()I

    move-result v1

    if-eqz v1, :cond_2c

    move-object v1, v2

    .line 167
    goto :goto_b

    .line 171
    :pswitch_14
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeNotifyResp()I

    move-result v1

    if-eqz v1, :cond_2c

    move-object v1, v2

    .line 172
    goto :goto_b

    .line 176
    :pswitch_1c
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeAckInd()I

    move-result v1

    if-eqz v1, :cond_2c

    move-object v1, v2

    .line 177
    goto :goto_b

    .line 181
    :pswitch_24
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeReadRecInd()I

    move-result v1

    if-eqz v1, :cond_2c

    move-object v1, v2

    .line 182
    goto :goto_b

    .line 189
    :cond_2c
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_b

    .line 164
    nop

    :pswitch_data_34
    .packed-switch 0x80
        :pswitch_c
        :pswitch_a
        :pswitch_a
        :pswitch_14
        :pswitch_a
        :pswitch_1c
        :pswitch_a
        :pswitch_24
    .end packed-switch
.end method

.method public setOptionalFieldAttendance(Z)V
    .registers 5
    .parameter "set"

    .prologue
    .line 769
    iput-boolean p1, p0, Lcom/google/android/mms/pdu/PduComposer;->mOptionalFieldAttendance:Z

    .line 770
    const-string v0, "PduComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set optional field attendance to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    return-void
.end method
