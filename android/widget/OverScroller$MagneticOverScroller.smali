.class Landroid/widget/OverScroller$MagneticOverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MagneticOverScroller"
.end annotation


# static fields
.field private static final DEFAULT_BOUNCE_COEFFICIENT:F = 0.16f

.field static GRAVITY:F = 0.0f

.field private static final MINIMUM_VELOCITY_FOR_BOUNCE:F = 3.4028235E38f

.field private static final OVERSCROLL_SPRINGBACK_DURATION:I = 0xc8

.field private static final TIME_COEF:F = 15.707964f

.field private static final TO_BOUNCE:I = 0x2

.field private static final TO_BOUNDARY:I = 0x1

.field private static final TO_EDGE:I


# instance fields
.field private mBounceCoefficient:F

.field mCurrVelocity:F

.field mCurrentPosition:I

.field mDeceleration:F

.field mDuration:I

.field mFinal:I

.field mFinished:Z

.field private mOver:I

.field mStart:I

.field mStartTime:J

.field private mState:I

.field mVelocity:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mState:I

    .line 541
    const v0, 0x3e23d70a

    iput v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mBounceCoefficient:F

    .line 544
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    .line 545
    return-void
.end method

.method static synthetic access$000(Landroid/widget/OverScroller$MagneticOverScroller;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 478
    iget v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mState:I

    return v0
.end method

.method static computeDuration(IIFF)I
    .registers 11
    .parameter "start"
    .parameter "end"
    .parameter "initialVelocity"
    .parameter "deceleration"

    .prologue
    const/4 v6, 0x0

    .line 562
    sub-int v2, p0, p1

    .line 563
    .local v2, distance:I
    mul-float v3, p2, p2

    const/high16 v4, 0x4000

    mul-float/2addr v4, p3

    int-to-float v5, v2

    mul-float/2addr v4, v5

    sub-float v1, v3, v4

    .line 565
    .local v1, discriminant:F
    cmpl-float v3, v1, v6

    if-ltz v3, :cond_23

    .line 566
    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    .line 567
    .local v0, delta:F
    cmpg-float v3, p3, v6

    if-gez v3, :cond_1b

    .line 568
    neg-float v0, v0

    .line 570
    :cond_1b
    const/high16 v3, 0x447a

    neg-float v4, p2

    sub-float/2addr v4, v0

    mul-float/2addr v3, v4

    div-float/2addr v3, p3

    float-to-int v3, v3

    .line 574
    .end local v0           #delta:F
    :goto_22
    return v3

    :cond_23
    const/4 v3, 0x0

    goto :goto_22
.end method

.method static getDeceleration(I)F
    .registers 2
    .parameter "velocity"

    .prologue
    .line 555
    if-lez p0, :cond_6

    sget v0, Landroid/widget/OverScroller$MagneticOverScroller;->GRAVITY:F

    neg-float v0, v0

    :goto_5
    return v0

    :cond_6
    sget v0, Landroid/widget/OverScroller$MagneticOverScroller;->GRAVITY:F

    goto :goto_5
.end method

.method static initializeFromContext(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 510
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    .line 511
    .local v0, ppi:F
    const v1, 0x43c10b3d

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    sput v1, Landroid/widget/OverScroller$MagneticOverScroller;->GRAVITY:F

    .line 515
    return-void
.end method

.method private onEdgeReached()V
    .registers 7

    .prologue
    .line 780
    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v2, v2

    const v3, 0x417b53d2

    div-float v0, v2, v3

    .line 782
    .local v0, distance:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mOver:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1f

    .line 784
    const/4 v2, 0x2

    iput v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mState:I

    .line 785
    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    iput v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    .line 786
    const/16 v2, 0xc8

    iput v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    .line 794
    :goto_1e
    return-void

    .line 789
    :cond_1f
    const/4 v2, 0x1

    iput v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mState:I

    .line 790
    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    if-lez v2, :cond_45

    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mOver:I

    move v1, v2

    .line 791
    .local v1, over:I
    :goto_29
    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    .line 792
    const-wide v2, 0x408f400000000000L

    int-to-float v4, v1

    div-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide v4, 0x402f6a7a40000000L

    div-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    goto :goto_1e

    .line 790
    .end local v1           #over:I
    :cond_45
    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mOver:I

    neg-int v2, v2

    move v1, v2

    goto :goto_29
.end method

.method private startSpringback(IIZ)V
    .registers 8
    .parameter "start"
    .parameter "end"
    .parameter "positive"

    .prologue
    .line 673
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    .line 674
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mState:I

    .line 675
    iput p2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    iput p2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    .line 676
    const/16 v0, 0xc8

    iput v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    .line 677
    iget-wide v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    const-wide/16 v2, 0x64

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    .line 678
    sub-int v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x417b53d2

    mul-float/2addr v0, v1

    float-to-double v0, v0

    if-eqz p3, :cond_2a

    const-wide/high16 v2, 0x3ff0

    :goto_25
    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    .line 679
    return-void

    .line 678
    :cond_2a
    const-wide/high16 v2, -0x4010

    goto :goto_25
.end method


# virtual methods
.method continueWhenFinished()Z
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 797
    iget v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mState:I

    packed-switch v1, :pswitch_data_80

    .line 827
    :goto_7
    invoke-virtual {p0}, Landroid/widget/OverScroller$MagneticOverScroller;->update()Z

    move v1, v6

    .line 828
    :goto_b
    return v1

    .line 800
    :pswitch_c
    const/high16 v1, -0x3b86

    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 801
    .local v0, duration:I
    iget v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    if-ge v1, v0, :cond_3a

    .line 803
    iget v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    iput v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    .line 805
    iget v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    .line 806
    iget-wide v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    .line 807
    invoke-direct {p0}, Landroid/widget/OverScroller$MagneticOverScroller;->onEdgeReached()V

    goto :goto_7

    :cond_3a
    move v1, v5

    .line 810
    goto :goto_b

    .line 814
    .end local v0           #duration:I
    :pswitch_3c
    iget-wide v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    .line 815
    iget v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    if-lez v3, :cond_58

    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mOver:I

    :goto_4e
    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    if-lez v3, :cond_5c

    move v3, v6

    :goto_54
    invoke-direct {p0, v1, v2, v3}, Landroid/widget/OverScroller$MagneticOverScroller;->startSpringback(IIZ)V

    goto :goto_7

    :cond_58
    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mOver:I

    neg-int v3, v3

    goto :goto_4e

    :cond_5c
    move v3, v5

    goto :goto_54

    .line 819
    :pswitch_5e
    iget v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mBounceCoefficient:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    .line 820
    iget v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x7f7fffff

    cmpg-float v1, v1, v2

    if-gez v1, :cond_77

    move v1, v5

    .line 821
    goto :goto_b

    .line 823
    :cond_77
    iget-wide v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    goto :goto_7

    .line 797
    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_c
        :pswitch_3c
        :pswitch_5e
    .end packed-switch
.end method

.method extendDuration(I)V
    .registers 7
    .parameter "extend"

    .prologue
    .line 644
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 645
    .local v1, time:J
    iget-wide v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    sub-long v3, v1, v3

    long-to-int v0, v3

    .line 646
    .local v0, elapsedTime:I
    add-int v3, v0, p1

    iput v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    .line 647
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    .line 648
    return-void
.end method

.method finish()V
    .registers 2

    .prologue
    .line 632
    iget v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrentPosition:I

    .line 635
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    .line 636
    return-void
.end method

.method fling(IIII)V
    .registers 8
    .parameter "start"
    .parameter "velocity"
    .parameter "min"
    .parameter "max"

    .prologue
    const/4 v2, 0x0

    .line 592
    iput-boolean v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    .line 594
    iput p1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    .line 595
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    .line 597
    iput p2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    .line 599
    invoke-static {p2}, Landroid/widget/OverScroller$MagneticOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    .line 602
    iget v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    if-ge v0, p3, :cond_1c

    .line 603
    iput v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    .line 604
    iput p3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    .line 629
    :cond_1b
    :goto_1b
    return-void

    .line 608
    :cond_1c
    iget v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    if-le v0, p4, :cond_25

    .line 609
    iput v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    .line 610
    iput p4, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    goto :goto_1b

    .line 615
    :cond_25
    const/high16 v0, -0x3b86

    int-to-float v1, p2

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    .line 617
    mul-int v0, p2, p2

    int-to-float v0, v0

    const/high16 v1, 0x4000

    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    .line 620
    iget v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    if-ge v0, p3, :cond_53

    .line 621
    iput p3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    .line 622
    iget v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    iget v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    invoke-static {v0, p3, v1, v2}, Landroid/widget/OverScroller$MagneticOverScroller;->computeDuration(IIFF)I

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    .line 625
    :cond_53
    iget v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    if-le v0, p4, :cond_1b

    .line 626
    iput p4, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    .line 627
    iget v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    iget v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    invoke-static {v0, p4, v1, v2}, Landroid/widget/OverScroller$MagneticOverScroller;->computeDuration(IIFF)I

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    goto :goto_1b
.end method

.method fling(IIIII)V
    .registers 14
    .parameter "start"
    .parameter "velocity"
    .parameter "min"
    .parameter "max"
    .parameter "over"

    .prologue
    .line 682
    const/4 v4, 0x0

    iput v4, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mState:I

    .line 683
    iput p5, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mOver:I

    .line 685
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    .line 687
    iput p1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    .line 688
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    .line 690
    iput p2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    .line 692
    invoke-static {p2}, Landroid/widget/OverScroller$MagneticOverScroller;->getDeceleration(I)F

    move-result v4

    iput v4, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    .line 695
    const/high16 v4, -0x3b86

    int-to-float v5, p2

    mul-float/2addr v4, v5

    iget v5, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    .line 697
    mul-int v4, p2, p2

    int-to-float v4, v4

    const/high16 v5, 0x4000

    iget v6, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    mul-float/2addr v5, v6

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int v4, p1, v4

    iput v4, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    .line 700
    iget v4, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    if-ge v4, p3, :cond_46

    .line 701
    iput p3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    .line 702
    iget v4, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    iget v5, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v5, v5

    iget v6, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    invoke-static {v4, p3, v5, v6}, Landroid/widget/OverScroller$MagneticOverScroller;->computeDuration(IIFF)I

    move-result v4

    iput v4, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    .line 705
    :cond_46
    iget v4, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    if-le v4, p4, :cond_59

    .line 706
    iput p4, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    .line 707
    iget v4, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    iget v5, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v5, v5

    iget v6, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    invoke-static {v4, p4, v5, v6}, Landroid/widget/OverScroller$MagneticOverScroller;->computeDuration(IIFF)I

    move-result v4

    iput v4, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    .line 710
    :cond_59
    if-le p1, p4, :cond_a5

    .line 711
    add-int v4, p4, p5

    if-lt p1, v4, :cond_65

    .line 712
    add-int v4, p4, p5

    invoke-virtual {p0, v4, p3, p4}, Landroid/widget/OverScroller$MagneticOverScroller;->springback(III)Z

    .line 754
    :cond_64
    :goto_64
    return-void

    .line 714
    :cond_65
    if-gtz p2, :cond_6b

    .line 715
    invoke-virtual {p0, p1, p3, p4}, Landroid/widget/OverScroller$MagneticOverScroller;->springback(III)Z

    goto :goto_64

    .line 717
    :cond_6b
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 718
    .local v2, time:J
    sub-int v4, p1, p4

    int-to-float v4, v4

    const v5, 0x417b53d2

    mul-float/2addr v4, v5

    int-to-float v5, p2

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    const-wide v6, 0x402f6a7a40000000L

    div-double v0, v4, v6

    .line 720
    .local v0, durationSinceEdge:D
    long-to-double v4, v2

    const-wide v6, 0x408f400000000000L

    mul-double/2addr v6, v0

    sub-double/2addr v4, v6

    double-to-int v4, v4

    int-to-long v4, v4

    iput-wide v4, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    .line 723
    iput p4, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    .line 725
    int-to-double v4, p2

    const-wide v6, 0x402f6a7a40000000L

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    .line 727
    invoke-direct {p0}, Landroid/widget/OverScroller$MagneticOverScroller;->onEdgeReached()V

    goto :goto_64

    .line 731
    .end local v0           #durationSinceEdge:D
    .end local v2           #time:J
    :cond_a5
    if-ge p1, p3, :cond_64

    .line 732
    sub-int v4, p3, p5

    if-gt p1, v4, :cond_b1

    .line 733
    sub-int v4, p3, p5

    invoke-virtual {p0, v4, p3, p4}, Landroid/widget/OverScroller$MagneticOverScroller;->springback(III)Z

    goto :goto_64

    .line 735
    :cond_b1
    if-ltz p2, :cond_b7

    .line 736
    invoke-virtual {p0, p1, p3, p4}, Landroid/widget/OverScroller$MagneticOverScroller;->springback(III)Z

    goto :goto_64

    .line 738
    :cond_b7
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 739
    .restart local v2       #time:J
    sub-int v4, p1, p3

    int-to-float v4, v4

    const v5, 0x417b53d2

    mul-float/2addr v4, v5

    int-to-float v5, p2

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    const-wide v6, 0x402f6a7a40000000L

    div-double v0, v4, v6

    .line 741
    .restart local v0       #durationSinceEdge:D
    long-to-double v4, v2

    const-wide v6, 0x408f400000000000L

    mul-double/2addr v6, v0

    sub-double/2addr v4, v6

    double-to-int v4, v4

    int-to-long v4, v4

    iput-wide v4, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    .line 744
    iput p3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    .line 746
    int-to-double v4, p2

    const-wide v6, 0x402f6a7a40000000L

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    .line 748
    invoke-direct {p0}, Landroid/widget/OverScroller$MagneticOverScroller;->onEdgeReached()V

    goto/16 :goto_64
.end method

.method notifyEdgeReached(III)V
    .registers 12
    .parameter "start"
    .parameter "end"
    .parameter "over"

    .prologue
    .line 757
    iget v5, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    invoke-static {v5}, Landroid/widget/OverScroller$MagneticOverScroller;->getDeceleration(I)F

    move-result v5

    iput v5, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    .line 760
    iget v5, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrVelocity:F

    iget v6, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    div-float v3, v5, v6

    .line 761
    .local v3, timeCurrent:F
    sub-int v0, p2, p1

    .line 762
    .local v0, distance:I
    const/high16 v5, 0x4000

    int-to-float v6, v0

    mul-float/2addr v5, v6

    iget v6, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    div-float/2addr v5, v6

    mul-float v6, v3, v3

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    neg-float v4, v5

    .line 765
    .local v4, timeEdge:F
    iget v5, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    mul-float/2addr v5, v4

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    .line 768
    iput p2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    .line 770
    iput p3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mOver:I

    .line 772
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 773
    .local v1, time:J
    long-to-float v5, v1

    const/high16 v6, 0x447a

    sub-float v7, v3, v4

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    int-to-long v5, v5

    iput-wide v5, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    .line 775
    invoke-direct {p0}, Landroid/widget/OverScroller$MagneticOverScroller;->onEdgeReached()V

    .line 776
    return-void
.end method

.method setBounceCoefficient(F)V
    .registers 2
    .parameter "coefficient"

    .prologue
    .line 651
    iput p1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mBounceCoefficient:F

    .line 652
    return-void
.end method

.method setFinalPosition(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 639
    iput p1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    .line 640
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    .line 641
    return-void
.end method

.method springback(III)Z
    .registers 8
    .parameter "start"
    .parameter "min"
    .parameter "max"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 655
    iput-boolean v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    .line 657
    iput p1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    .line 658
    iput v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    .line 660
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    .line 661
    iput v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    .line 663
    if-ge p1, p2, :cond_1b

    .line 664
    invoke-direct {p0, p1, p2, v2}, Landroid/widget/OverScroller$MagneticOverScroller;->startSpringback(IIZ)V

    .line 669
    :cond_15
    :goto_15
    iget-boolean v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    if-nez v0, :cond_21

    move v0, v3

    :goto_1a
    return v0

    .line 665
    :cond_1b
    if-le p1, p3, :cond_15

    .line 666
    invoke-direct {p0, p1, p3, v3}, Landroid/widget/OverScroller$MagneticOverScroller;->startSpringback(IIZ)V

    goto :goto_15

    :cond_21
    move v0, v2

    .line 669
    goto :goto_1a
.end method

.method startScroll(III)V
    .registers 7
    .parameter "start"
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 578
    iput-boolean v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    .line 580
    iput p1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    .line 581
    add-int v0, p1, p2

    iput v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    .line 583
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    .line 584
    iput p3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    .line 587
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    .line 588
    iput v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    .line 589
    return-void
.end method

.method update()Z
    .registers 13

    .prologue
    const v11, 0x417b53d2

    .line 837
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    .line 838
    .local v6, time:J
    iget-wide v8, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    sub-long v3, v6, v8

    .line 840
    .local v3, duration:J
    iget v8, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    int-to-long v8, v8

    cmp-long v8, v3, v8

    if-lez v8, :cond_14

    .line 841
    const/4 v8, 0x0

    .line 856
    :goto_13
    return v8

    .line 845
    :cond_14
    long-to-float v8, v3

    const/high16 v9, 0x447a

    div-float v5, v8, v9

    .line 846
    .local v5, t:F
    iget v8, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mState:I

    if-nez v8, :cond_3b

    .line 847
    iget v8, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v8, v8

    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    iput v8, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrVelocity:F

    .line 848
    iget v8, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v8, v8

    mul-float/2addr v8, v5

    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    mul-float/2addr v9, v5

    mul-float/2addr v9, v5

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-double v1, v8

    .line 855
    .local v1, distance:D
    :goto_33
    iget v8, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    double-to-int v9, v1

    add-int/2addr v8, v9

    iput v8, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrentPosition:I

    .line 856
    const/4 v8, 0x1

    goto :goto_13

    .line 850
    .end local v1           #distance:D
    :cond_3b
    mul-float v0, v5, v11

    .line 851
    .local v0, d:F
    iget v8, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v8, v8

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v8, v9

    iput v8, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrVelocity:F

    .line 852
    iget v8, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v8, v8

    div-float/2addr v8, v11

    float-to-double v8, v8

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v1, v8, v10

    .restart local v1       #distance:D
    goto :goto_33
.end method

.method updateScroll(F)V
    .registers 5
    .parameter "q"

    .prologue
    .line 548
    iget v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    iget v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrentPosition:I

    .line 549
    return-void
.end method
