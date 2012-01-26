.class public Landroid/text/format/DateFormat;
.super Ljava/lang/Object;
.source "DateFormat.java"


# static fields
.field public static final AM_PM:C = 'a'

.field public static final CAPITAL_AM_PM:C = 'A'

.field public static final DATE:C = 'd'

.field public static final DAY:C = 'E'

.field public static final HOUR:C = 'h'

.field public static final HOUR_OF_DAY:C = 'k'

.field public static final MINUTE:C = 'm'

.field public static final MONTH:C = 'M'

.field public static final QUOTE:C = '\''

.field public static final SECONDS:C = 's'

.field public static final TIME_ZONE:C = 'z'

.field public static final YEAR:C = 'y'

.field private static sIs24Hour:Z

.field private static sIs24HourLocale:Ljava/util/Locale;

.field private static final sLocaleLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 194
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final appendQuotedText(Landroid/text/SpannableStringBuilder;II)I
    .registers 7
    .parameter "s"
    .parameter "i"
    .parameter "len"

    .prologue
    const/16 v3, 0x27

    .line 661
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_15

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_15

    .line 662
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 663
    const/4 v2, 0x1

    .line 694
    :goto_14
    return v2

    .line 666
    :cond_15
    const/4 v1, 0x0

    .line 669
    .local v1, count:I
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 670
    add-int/lit8 p2, p2, -0x1

    .line 672
    :goto_1d
    if-ge p1, p2, :cond_42

    .line 673
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    .line 675
    .local v0, c:C
    if-ne v0, v3, :cond_44

    .line 677
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_3d

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_3d

    .line 679
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 680
    add-int/lit8 p2, p2, -0x1

    .line 681
    add-int/lit8 v1, v1, 0x1

    .line 682
    add-int/lit8 p1, p1, 0x1

    goto :goto_1d

    .line 685
    :cond_3d
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .end local v0           #c:C
    :cond_42
    move v2, v1

    .line 694
    goto :goto_14

    .line 689
    .restart local v0       #c:C
    :cond_44
    add-int/lit8 p1, p1, 0x1

    .line 690
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d
.end method

.method public static final format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;
    .registers 4
    .parameter "inFormat"
    .parameter "inTimeInMillis"

    .prologue
    .line 487
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;
    .registers 12
    .parameter "inFormat"
    .parameter "inDate"

    .prologue
    const/16 v9, 0xa

    const/16 v8, 0x9

    .line 513
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 517
    .local v5, s:Landroid/text/SpannableStringBuilder;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 519
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    if-ge v2, v3, :cond_b0

    .line 522
    const/4 v1, 0x1

    .line 523
    .local v1, count:I
    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    .line 525
    .local v0, c:I
    const/16 v7, 0x27

    if-ne v0, v7, :cond_23

    .line 526
    invoke-static {v5, v2, v3}, Landroid/text/format/DateFormat;->appendQuotedText(Landroid/text/SpannableStringBuilder;II)I

    move-result v1

    .line 527
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 519
    :cond_21
    :goto_21
    add-int/2addr v2, v1

    goto :goto_e

    .line 531
    :cond_23
    :goto_23
    add-int v7, v2, v1

    if-ge v7, v3, :cond_32

    add-int v7, v2, v1

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v0, :cond_32

    .line 532
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 537
    :cond_32
    sparse-switch v0, :sswitch_data_c0

    .line 593
    const/4 v4, 0x0

    .line 597
    .local v4, replacement:Ljava/lang/String;
    :goto_36
    if-eqz v4, :cond_21

    .line 598
    add-int v7, v2, v1

    invoke-virtual {v5, v2, v7, v4}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 599
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 600
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    goto :goto_21

    .line 539
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_46
    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v4

    .line 540
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_36

    .line 544
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_4f
    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v4

    .line 545
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_36

    .line 548
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_58
    const/4 v7, 0x5

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 549
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_36

    .line 552
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_62
    const/4 v7, 0x7

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 553
    .local v6, temp:I
    const/4 v7, 0x4

    if-ge v1, v7, :cond_71

    const/16 v7, 0x14

    :goto_6c
    invoke-static {v6, v7}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v4

    .line 557
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_36

    .end local v4           #replacement:Ljava/lang/String;
    :cond_71
    move v7, v9

    .line 553
    goto :goto_6c

    .line 560
    .end local v6           #temp:I
    :sswitch_73
    invoke-virtual {p1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 562
    .restart local v6       #temp:I
    if-nez v6, :cond_7b

    .line 563
    const/16 v6, 0xc

    .line 565
    :cond_7b
    invoke-static {v6, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 566
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_36

    .line 569
    .end local v4           #replacement:Ljava/lang/String;
    .end local v6           #temp:I
    :sswitch_80
    const/16 v7, 0xb

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 570
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_36

    .line 573
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_8b
    const/16 v7, 0xc

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 574
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_36

    .line 577
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_96
    invoke-static {p1, v1}, Landroid/text/format/DateFormat;->getMonthString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v4

    .line 578
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_36

    .line 581
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_9b
    const/16 v7, 0xd

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 582
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_36

    .line 585
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_a6
    invoke-static {p1, v1}, Landroid/text/format/DateFormat;->getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v4

    .line 586
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_36

    .line 589
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_ab
    invoke-static {p1, v1}, Landroid/text/format/DateFormat;->getYearString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v4

    .line 590
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_36

    .line 604
    .end local v0           #c:I
    .end local v1           #count:I
    .end local v4           #replacement:Ljava/lang/String;
    :cond_b0
    instance-of v7, p0, Landroid/text/Spanned;

    if-eqz v7, :cond_ba

    .line 605
    new-instance v7, Landroid/text/SpannedString;

    invoke-direct {v7, v5}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 607
    :goto_b9
    return-object v7

    :cond_ba
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_b9

    .line 537
    nop

    :sswitch_data_c0
    .sparse-switch
        0x41 -> :sswitch_4f
        0x45 -> :sswitch_62
        0x4d -> :sswitch_96
        0x61 -> :sswitch_46
        0x64 -> :sswitch_58
        0x68 -> :sswitch_73
        0x6b -> :sswitch_80
        0x6d -> :sswitch_8b
        0x73 -> :sswitch_9b
        0x79 -> :sswitch_ab
        0x7a -> :sswitch_a6
    .end sparse-switch
.end method

.method public static final format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;
    .registers 4
    .parameter "inFormat"
    .parameter "inDate"

    .prologue
    .line 498
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 500
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 502
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private static final formatZoneOffset(II)Ljava/lang/String;
    .registers 8
    .parameter "offset"
    .parameter "count"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 637
    div-int/lit16 p0, p0, 0x3e8

    .line 638
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 640
    .local v2, tb:Ljava/lang/StringBuilder;
    if-gez p0, :cond_2a

    .line 641
    const-string v3, "-"

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    neg-int p0, p0

    .line 647
    :goto_11
    div-int/lit16 v0, p0, 0xe10

    .line 648
    .local v0, hours:I
    rem-int/lit16 v3, p0, 0xe10

    div-int/lit8 v1, v3, 0x3c

    .line 650
    .local v1, minutes:I
    invoke-static {v0, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 644
    .end local v0           #hours:I
    .end local v1           #minutes:I
    :cond_2a
    const-string v3, "+"

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11
.end method

.method public static final getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .registers 4
    .parameter "context"

    .prologue
    .line 271
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, value:Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    return-object v1
.end method

.method public static getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;
    .registers 4
    .parameter "context"
    .parameter "value"

    .prologue
    .line 288
    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, format:Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static final getDateFormatOrder(Landroid/content/Context;)[C
    .registers 15
    .parameter "context"

    .prologue
    const/16 v13, 0x79

    const/16 v12, 0x64

    const/16 v11, 0x4d

    .line 443
    const/4 v10, 0x3

    new-array v8, v10, [C

    fill-array-data v8, :array_3e

    .line 444
    .local v8, order:[C
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 445
    .local v9, value:Ljava/lang/String;
    const/4 v6, 0x0

    .line 446
    .local v6, index:I
    const/4 v2, 0x0

    .line 447
    .local v2, foundDate:Z
    const/4 v3, 0x0

    .line 448
    .local v3, foundMonth:Z
    const/4 v4, 0x0

    .line 450
    .local v4, foundYear:Z
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1a
    if-ge v5, v7, :cond_3c

    aget-char v1, v0, v5

    .line 451
    .local v1, c:C
    if-nez v2, :cond_27

    if-ne v1, v12, :cond_27

    .line 452
    const/4 v2, 0x1

    .line 453
    aput-char v12, v8, v6

    .line 454
    add-int/lit8 v6, v6, 0x1

    .line 457
    :cond_27
    if-nez v3, :cond_30

    if-ne v1, v11, :cond_30

    .line 458
    const/4 v3, 0x1

    .line 459
    aput-char v11, v8, v6

    .line 460
    add-int/lit8 v6, v6, 0x1

    .line 463
    :cond_30
    if-nez v4, :cond_39

    if-ne v1, v13, :cond_39

    .line 464
    const/4 v4, 0x1

    .line 465
    aput-char v13, v8, v6

    .line 466
    add-int/lit8 v6, v6, 0x1

    .line 450
    :cond_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 469
    .end local v1           #c:C
    :cond_3c
    return-object v8

    .line 443
    nop

    :array_3e
    .array-data 0x2
        0x64t 0x0t
        0x4dt 0x0t
        0x79t 0x0t
    .end array-data
.end method

.method private static getDateFormatString(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 473
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, value:Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "context"
    .parameter "value"

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v10, "MM"

    .line 373
    if-eqz p1, :cond_ac

    .line 374
    const/16 v5, 0x4d

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 375
    .local v1, month:I
    const/16 v5, 0x64

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 376
    .local v0, day:I
    const/16 v5, 0x79

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 378
    .local v4, year:I
    if-ltz v1, :cond_ac

    if-ltz v0, :cond_ac

    if-ltz v4, :cond_ac

    .line 379
    const v5, 0x1040079

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, template:Ljava/lang/String;
    if-ge v4, v1, :cond_56

    if-ge v4, v0, :cond_56

    .line 381
    if-ge v1, v0, :cond_42

    .line 382
    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v7

    const-string v6, "MM"

    aput-object v10, v5, v8

    const-string v6, "dd"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_40
    move-object v3, p1

    .line 410
    .end local v0           #day:I
    .end local v1           #month:I
    .end local v2           #template:Ljava/lang/String;
    .end local v4           #year:I
    .end local p1
    .local v3, value:Ljava/lang/String;
    :goto_41
    return-object v3

    .line 384
    .end local v3           #value:Ljava/lang/String;
    .restart local v0       #day:I
    .restart local v1       #month:I
    .restart local v2       #template:Ljava/lang/String;
    .restart local v4       #year:I
    .restart local p1
    :cond_42
    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v7

    const-string v6, "dd"

    aput-object v6, v5, v8

    const-string v6, "MM"

    aput-object v10, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_40

    .line 386
    :cond_56
    if-ge v1, v0, :cond_82

    .line 387
    if-ge v0, v4, :cond_6e

    .line 388
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "MM"

    aput-object v10, v5, v7

    const-string v6, "dd"

    aput-object v6, v5, v8

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_40

    .line 390
    :cond_6e
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "MM"

    aput-object v10, v5, v7

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v8

    const-string v6, "dd"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_40

    .line 393
    :cond_82
    if-ge v1, v4, :cond_98

    .line 394
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "dd"

    aput-object v6, v5, v7

    const-string v6, "MM"

    aput-object v10, v5, v8

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_40

    .line 396
    :cond_98
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "dd"

    aput-object v6, v5, v7

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v8

    const-string v6, "MM"

    aput-object v10, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_40

    .line 409
    .end local v0           #day:I
    .end local v1           #month:I
    .end local v2           #template:Ljava/lang/String;
    .end local v4           #year:I
    :cond_ac
    const v5, 0x1040078

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    .line 410
    .end local p1
    .restart local v3       #value:Ljava/lang/String;
    goto :goto_41
.end method

.method public static final getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .registers 2
    .parameter "context"

    .prologue
    .line 420
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .registers 2
    .parameter "context"

    .prologue
    .line 430
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private static final getMonthString(Ljava/util/Calendar;I)Ljava/lang/String;
    .registers 4
    .parameter "inDate"
    .parameter "count"

    .prologue
    .line 611
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 613
    .local v0, month:I
    const/4 v1, 0x4

    if-lt p1, v1, :cond_f

    .line 614
    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v1

    .line 619
    :goto_e
    return-object v1

    .line 615
    :cond_f
    const/4 v1, 0x3

    if-ne p1, v1, :cond_19

    .line 616
    const/16 v1, 0x14

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 619
    :cond_19
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1, p1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_e
.end method

.method public static final getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .registers 5
    .parameter "context"

    .prologue
    .line 251
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 254
    .local v0, b24:Z
    if-eqz v0, :cond_13

    .line 255
    const v1, 0x1040076

    .line 260
    .local v1, res:I
    :goto_9
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 257
    .end local v1           #res:I
    :cond_13
    const v1, 0x1040075

    .restart local v1       #res:I
    goto :goto_9
.end method

.method private static final getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;
    .registers 7
    .parameter "inDate"
    .parameter "count"

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x0

    .line 624
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 626
    .local v1, tz:Ljava/util/TimeZone;
    const/4 v2, 0x2

    if-ge p1, v2, :cond_1a

    .line 627
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2, p1}, Landroid/text/format/DateFormat;->formatZoneOffset(II)Ljava/lang/String;

    move-result-object v2

    .line 632
    :goto_19
    return-object v2

    .line 631
    :cond_1a
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eqz v2, :cond_27

    const/4 v2, 0x1

    move v0, v2

    .line 632
    .local v0, dst:Z
    :goto_22
    invoke-virtual {v1, v0, v3}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v2

    goto :goto_19

    .end local v0           #dst:Z
    :cond_27
    move v0, v3

    .line 631
    goto :goto_22
.end method

.method private static final getYearString(Ljava/util/Calendar;I)Ljava/lang/String;
    .registers 5
    .parameter "inDate"
    .parameter "count"

    .prologue
    const/4 v2, 0x2

    .line 656
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 657
    .local v0, year:I
    if-gt p1, v2, :cond_f

    rem-int/lit8 v1, v0, 0x64

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v1

    :goto_e
    return-object v1

    :cond_f
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_e
.end method

.method public static is24HourFormat(Landroid/content/Context;)Z
    .registers 13
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v11, "12"

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "time_12_24"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 208
    .local v6, value:Ljava/lang/String;
    if-nez v6, :cond_5b

    .line 209
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v2, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 211
    .local v2, locale:Ljava/util/Locale;
    sget-object v7, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    monitor-enter v7

    .line 212
    :try_start_1e
    sget-object v8, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    if-eqz v8, :cond_2f

    sget-object v8, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    invoke-virtual {v8, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 213
    sget-boolean v8, Landroid/text/format/DateFormat;->sIs24Hour:Z

    monitor-exit v7

    move v7, v8

    .line 241
    .end local v2           #locale:Ljava/util/Locale;
    :goto_2e
    return v7

    .line 215
    .restart local v2       #locale:Ljava/util/Locale;
    :cond_2f
    monitor-exit v7
    :try_end_30
    .catchall {:try_start_1e .. :try_end_30} :catchall_68

    .line 217
    invoke-static {v9, v2}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v3

    .line 221
    .local v3, natural:Ljava/text/DateFormat;
    instance-of v7, v3, Ljava/text/SimpleDateFormat;

    if-eqz v7, :cond_6e

    .line 222
    move-object v0, v3

    check-cast v0, Ljava/text/SimpleDateFormat;

    move-object v5, v0

    .line 223
    .local v5, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v5}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, pattern:Ljava/lang/String;
    const/16 v7, 0x48

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_6b

    .line 226
    const-string v6, "24"

    .line 234
    .end local v4           #pattern:Ljava/lang/String;
    .end local v5           #sdf:Ljava/text/SimpleDateFormat;
    :goto_4a
    sget-object v7, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    monitor-enter v7

    .line 235
    :try_start_4d
    sput-object v2, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    .line 236
    const-string v8, "12"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_71

    move v8, v9

    :goto_58
    sput-boolean v8, Landroid/text/format/DateFormat;->sIs24Hour:Z

    .line 237
    monitor-exit v7
    :try_end_5b
    .catchall {:try_start_4d .. :try_end_5b} :catchall_73

    .line 240
    .end local v2           #locale:Ljava/util/Locale;
    .end local v3           #natural:Ljava/text/DateFormat;
    :cond_5b
    if-eqz v6, :cond_76

    const-string v7, "12"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_76

    move v1, v9

    .local v1, b24:Z
    :goto_66
    move v7, v1

    .line 241
    goto :goto_2e

    .line 215
    .end local v1           #b24:Z
    .restart local v2       #locale:Ljava/util/Locale;
    :catchall_68
    move-exception v8

    :try_start_69
    monitor-exit v7
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v8

    .line 228
    .restart local v3       #natural:Ljava/text/DateFormat;
    .restart local v4       #pattern:Ljava/lang/String;
    .restart local v5       #sdf:Ljava/text/SimpleDateFormat;
    :cond_6b
    const-string v6, "12"

    goto :goto_4a

    .line 231
    .end local v4           #pattern:Ljava/lang/String;
    .end local v5           #sdf:Ljava/text/SimpleDateFormat;
    :cond_6e
    const-string v6, "12"

    goto :goto_4a

    :cond_71
    move v8, v10

    .line 236
    goto :goto_58

    .line 237
    :catchall_73
    move-exception v8

    :try_start_74
    monitor-exit v7
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw v8

    .end local v2           #locale:Ljava/util/Locale;
    .end local v3           #natural:Ljava/text/DateFormat;
    :cond_76
    move v1, v10

    .line 240
    goto :goto_66
.end method

.method public static twGetDateFormatForMediumSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;
    .registers 6
    .parameter "context"
    .parameter "value"

    .prologue
    .line 315
    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, months:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 317
    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, format:Ljava/lang/String;
    :goto_18
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 319
    .end local v0           #format:Ljava/lang/String;
    :cond_1e
    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->twGetDateFormatStringForMediumSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #format:Ljava/lang/String;
    goto :goto_18
.end method

.method private static twGetDateFormatStringForMediumSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "context"
    .parameter "value"

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v10, "MMM"

    .line 331
    if-eqz p1, :cond_ac

    .line 332
    const/16 v5, 0x4d

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 333
    .local v1, month:I
    const/16 v5, 0x64

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 334
    .local v0, day:I
    const/16 v5, 0x79

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 336
    .local v4, year:I
    if-ltz v1, :cond_ac

    if-ltz v0, :cond_ac

    if-ltz v4, :cond_ac

    .line 337
    const v5, 0x1040079

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, template:Ljava/lang/String;
    if-ge v4, v1, :cond_56

    if-ge v4, v0, :cond_56

    .line 339
    if-ge v1, v0, :cond_42

    .line 340
    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v7

    const-string v6, "MMM"

    aput-object v10, v5, v8

    const-string v6, "dd"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_40
    move-object v3, p1

    .line 368
    .end local v0           #day:I
    .end local v1           #month:I
    .end local v2           #template:Ljava/lang/String;
    .end local v4           #year:I
    .end local p1
    .local v3, value:Ljava/lang/String;
    :goto_41
    return-object v3

    .line 342
    .end local v3           #value:Ljava/lang/String;
    .restart local v0       #day:I
    .restart local v1       #month:I
    .restart local v2       #template:Ljava/lang/String;
    .restart local v4       #year:I
    .restart local p1
    :cond_42
    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v7

    const-string v6, "dd"

    aput-object v6, v5, v8

    const-string v6, "MMM"

    aput-object v10, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_40

    .line 344
    :cond_56
    if-ge v1, v0, :cond_82

    .line 345
    if-ge v0, v4, :cond_6e

    .line 346
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "MMM"

    aput-object v10, v5, v7

    const-string v6, "dd"

    aput-object v6, v5, v8

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_40

    .line 348
    :cond_6e
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "MMM"

    aput-object v10, v5, v7

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v8

    const-string v6, "dd"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_40

    .line 351
    :cond_82
    if-ge v1, v4, :cond_98

    .line 352
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "dd"

    aput-object v6, v5, v7

    const-string v6, "MMM"

    aput-object v10, v5, v8

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_40

    .line 354
    :cond_98
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "dd"

    aput-object v6, v5, v7

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v8

    const-string v6, "MMM"

    aput-object v10, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_40

    .line 367
    .end local v0           #day:I
    .end local v1           #month:I
    .end local v2           #template:Ljava/lang/String;
    .end local v4           #year:I
    :cond_ac
    const v5, 0x1040078

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    .line 368
    .end local p1
    .restart local v3       #value:Ljava/lang/String;
    goto :goto_41
.end method

.method public static final twGetDateMediumFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .registers 4
    .parameter "context"

    .prologue
    .line 301
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, value:Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->twGetDateFormatForMediumSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    return-object v1
.end method

.method private static final zeroPad(II)Ljava/lang/String;
    .registers 8
    .parameter "inValue"
    .parameter "inMinDigits"

    .prologue
    .line 698
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 700
    .local v2, val:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, p1, :cond_29

    .line 701
    new-array v0, p1, [C

    .line 703
    .local v0, buf:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    if-ge v1, p1, :cond_16

    .line 704
    const/16 v3, 0x30

    aput-char v3, v0, v1

    .line 703
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 706
    :cond_16
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {v2, v3, v4, v0, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 707
    new-instance v2, Ljava/lang/String;

    .end local v2           #val:Ljava/lang/String;
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    .line 709
    .end local v0           #buf:[C
    .end local v1           #i:I
    .restart local v2       #val:Ljava/lang/String;
    :cond_29
    return-object v2
.end method
