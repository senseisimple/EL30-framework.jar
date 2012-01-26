.class public Landroid/app/enterprise/CertificateInfo;
.super Ljava/lang/Object;
.source "CertificateInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCertificate:Ljava/security/cert/Certificate;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    new-instance v0, Landroid/app/enterprise/CertificateInfo$1;

    invoke-direct {v0}, Landroid/app/enterprise/CertificateInfo$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/CertificateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-direct {p0, p1}, Landroid/app/enterprise/CertificateInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 63
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    iput-object v0, p0, Landroid/app/enterprise/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    .line 95
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public getCertificate()Ljava/security/cert/Certificate;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Landroid/app/enterprise/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public setCertificate(Ljava/security/cert/Certificate;)V
    .registers 2
    .parameter "aCertificate"

    .prologue
    .line 104
    iput-object p1, p0, Landroid/app/enterprise/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    .line 105
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flag"

    .prologue
    .line 77
    iget-object v0, p0, Landroid/app/enterprise/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 78
    return-void
.end method
