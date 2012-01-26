.class public Landroid/divxdrm/mobile/DrmDivxBestRight;
.super Ljava/lang/Object;
.source "DrmDivxBestRight.java"


# instance fields
.field private Composite:Z

.field private HDMI:Z

.field private curCount:J

.field private drmMode:I

.field private orgCount:J

.field private rightStatus:I

.field private version:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComposite()Z
    .registers 2

    .prologue
    .line 66
    iget-boolean v0, p0, Landroid/divxdrm/mobile/DrmDivxBestRight;->Composite:Z

    return v0
.end method

.method public getCurCount()J
    .registers 3

    .prologue
    .line 57
    iget-wide v0, p0, Landroid/divxdrm/mobile/DrmDivxBestRight;->curCount:J

    return-wide v0
.end method

.method public getDivxDrmVersion()I
    .registers 2

    .prologue
    .line 45
    iget v0, p0, Landroid/divxdrm/mobile/DrmDivxBestRight;->version:I

    return v0
.end method

.method public getDrmMode()I
    .registers 2

    .prologue
    .line 53
    iget v0, p0, Landroid/divxdrm/mobile/DrmDivxBestRight;->drmMode:I

    return v0
.end method

.method public getHDMI()Z
    .registers 2

    .prologue
    .line 70
    iget-boolean v0, p0, Landroid/divxdrm/mobile/DrmDivxBestRight;->HDMI:Z

    return v0
.end method

.method public getOrgCount()J
    .registers 3

    .prologue
    .line 61
    iget-wide v0, p0, Landroid/divxdrm/mobile/DrmDivxBestRight;->orgCount:J

    return-wide v0
.end method

.method public getRightStatus()I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Landroid/divxdrm/mobile/DrmDivxBestRight;->rightStatus:I

    return v0
.end method
