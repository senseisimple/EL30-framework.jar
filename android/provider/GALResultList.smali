.class public Landroid/provider/GALResultList;
.super Ljava/lang/Object;
.source "GALResultList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/provider/GALResultList;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "GALResultList"


# instance fields
.field private mEndRange:I

.field private mStartRange:I

.field private mTotalResults:I

.field private resultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/provider/GALResultItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 82
    new-instance v0, Landroid/provider/GALResultList$1;

    invoke-direct {v0}, Landroid/provider/GALResultList$1;-><init>()V

    sput-object v0, Landroid/provider/GALResultList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/provider/GALResultList;->resultList:Ljava/util/ArrayList;

    .line 97
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/provider/GALResultList;->resultList:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {p0, p1}, Landroid/provider/GALResultList;->readFromParcel(Landroid/os/Parcel;)V

    .line 93
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/provider/GALResultList$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/provider/GALResultList;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public AddGALResultItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "displayName"
    .parameter "phone"
    .parameter "office"
    .parameter "title"
    .parameter "company"
    .parameter "alias"
    .parameter "firstName"
    .parameter "lastName"
    .parameter "homePhone"
    .parameter "mobile"
    .parameter "emailAddress"

    .prologue
    .line 199
    new-instance v0, Landroid/provider/GALResultItem;

    invoke-direct {v0}, Landroid/provider/GALResultItem;-><init>()V

    .line 200
    .local v0, item:Landroid/provider/GALResultItem;
    if-eqz p1, :cond_e

    .line 201
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/provider/GALResultItem;->mDisplayName:Ljava/lang/String;

    .line 202
    :cond_e
    if-eqz p2, :cond_17

    .line 203
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/provider/GALResultItem;->mPhone:Ljava/lang/String;

    .line 204
    :cond_17
    if-eqz p3, :cond_20

    .line 205
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/provider/GALResultItem;->mOffice:Ljava/lang/String;

    .line 206
    :cond_20
    if-eqz p4, :cond_29

    .line 207
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/provider/GALResultItem;->mTitle:Ljava/lang/String;

    .line 208
    :cond_29
    if-eqz p5, :cond_32

    .line 209
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/provider/GALResultItem;->mCompany:Ljava/lang/String;

    .line 210
    :cond_32
    if-eqz p6, :cond_3b

    .line 211
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/provider/GALResultItem;->mAlias:Ljava/lang/String;

    .line 212
    :cond_3b
    if-eqz p7, :cond_44

    .line 213
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/provider/GALResultItem;->mFirstName:Ljava/lang/String;

    .line 214
    :cond_44
    if-eqz p8, :cond_4d

    .line 215
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/provider/GALResultItem;->mLastName:Ljava/lang/String;

    .line 216
    :cond_4d
    if-eqz p9, :cond_56

    .line 217
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/provider/GALResultItem;->mHomePhone:Ljava/lang/String;

    .line 218
    :cond_56
    if-eqz p10, :cond_5f

    .line 219
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/provider/GALResultItem;->mMobilePhone:Ljava/lang/String;

    .line 220
    :cond_5f
    if-eqz p11, :cond_68

    .line 221
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/provider/GALResultItem;->mEmailId:Ljava/lang/String;

    .line 222
    :cond_68
    iget-object v1, p0, Landroid/provider/GALResultList;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public displayGALResults()V
    .registers 1

    .prologue
    .line 250
    return-void
.end method

.method public getAlias(I)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 141
    if-ltz p1, :cond_15

    iget-object v0, p0, Landroid/provider/GALResultList;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 142
    iget-object v0, p0, Landroid/provider/GALResultList;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/provider/GALResultItem;

    iget-object v0, p0, Landroid/provider/GALResultItem;->mAlias:Ljava/lang/String;

    .line 144
    :goto_14
    return-object v0

    .restart local p0
    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getCompany(I)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 133
    if-ltz p1, :cond_15

    iget-object v0, p0, Landroid/provider/GALResultList;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 134
    iget-object v0, p0, Landroid/provider/GALResultList;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/provider/GALResultItem;

    iget-object v0, p0, Landroid/provider/GALResultItem;->mCompany:Ljava/lang/String;

    .line 136
    :goto_14
    return-object v0

    .restart local p0
    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getDisplayName(I)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 101
    if-ltz p1, :cond_15

    iget-object v0, p0, Landroid/provider/GALResultList;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 102
    iget-object v0, p0, Landroid/provider/GALResultList;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/provider/GALResultItem;

    iget-object v0, p0, Landroid/provider/GALResultItem;->mDisplayName:Ljava/lang/String;

    .line 104
    :goto_14
    return-object v0

    .restart local p0
    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getEmail(I)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 181
    if-ltz p1, :cond_15

    iget-object v0, p0, Landroid/provider/GALResultList;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 182
    iget-object v0, p0, Landroid/provider/GALResultList;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/provider/GALResultItem;

    iget-object v0, p0, Landroid/provider/GALResultItem;->mEmailId:Ljava/lang/String;

    .line 184
    :goto_14
    return-object v0

    .restart local p0
    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getEndRange()I
    .registers 2

    .prologue
    .line 242
    iget v0, p0, Landroid/provider/GALResultList;->mEndRange:I

    return v0
.end method

.method public getFirstName(I)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 149
    if-ltz p1, :cond_15

    iget-object v0, p0, Landroid/provider/GALResultList;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 150
    iget-object v0, p0, Landroid/provider/GALResultList;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/provider/GALResultItem;

    iget-object v0, p0, Landroid/provider/GALResultItem;->mFirstName:Ljava/lang/String;

    .line 152
    :goto_14
    return-object v0

    .restart local p0
    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getHomePhone(I)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 165
    if-ltz p1, :cond_15

    iget-object v0, p0, Landroid/provider/GALResultList;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 166
    iget-object v0, p0, Landroid/provider/GALResultList;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/provider/GALResultItem;

    iget-object v0, p0, Landroid/provider/GALResultItem;->mHomePhone:Ljava/lang/String;

    .line 168
    :goto_14
    return-object v0

    .restart local p0
    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getLastName(I)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 157
    if-ltz p1, :cond_15

    iget-object v0, p0, Landroid/provider/GALResultList;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 158
    iget-object v0, p0, Landroid/provider/GALResultList;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/provider/GALResultItem;

    iget-object v0, p0, Landroid/provider/GALResultItem;->mLastName:Ljava/lang/String;

    .line 160
    :goto_14
    return-object v0

    .restart local p0
    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getMobile(I)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 173
    if-ltz p1, :cond_15

    iget-object v0, p0, Landroid/provider/GALResultList;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 174
    iget-object v0, p0, Landroid/provider/GALResultList;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/provider/GALResultItem;

    iget-object v0, p0, Landroid/provider/GALResultItem;->mMobilePhone:Ljava/lang/String;

    .line 176
    :goto_14
    return-object v0

    .restart local p0
    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getOffice(I)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 117
    if-ltz p1, :cond_15

    iget-object v0, p0, Landroid/provider/GALResultList;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 118
    iget-object v0, p0, Landroid/provider/GALResultList;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/provider/GALResultItem;

    iget-object v0, p0, Landroid/provider/GALResultItem;->mOffice:Ljava/lang/String;

    .line 120
    :goto_14
    return-object v0

    .restart local p0
    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getPhone(I)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 109
    if-ltz p1, :cond_15

    iget-object v0, p0, Landroid/provider/GALResultList;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 110
    iget-object v0, p0, Landroid/provider/GALResultList;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/provider/GALResultItem;

    iget-object v0, p0, Landroid/provider/GALResultItem;->mPhone:Ljava/lang/String;

    .line 112
    :goto_14
    return-object v0

    .restart local p0
    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getResultsFound()I
    .registers 2

    .prologue
    .line 246
    iget v0, p0, Landroid/provider/GALResultList;->mTotalResults:I

    return v0
.end method

.method public getSize()I
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Landroid/provider/GALResultList;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getStartRange()I
    .registers 2

    .prologue
    .line 238
    iget v0, p0, Landroid/provider/GALResultList;->mStartRange:I

    return v0
.end method

.method public getTitle(I)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 125
    if-ltz p1, :cond_15

    iget-object v0, p0, Landroid/provider/GALResultList;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 126
    iget-object v0, p0, Landroid/provider/GALResultList;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/provider/GALResultItem;

    iget-object v0, p0, Landroid/provider/GALResultItem;->mTitle:Ljava/lang/String;

    .line 128
    :goto_14
    return-object v0

    .restart local p0
    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 267
    iget-object v0, p0, Landroid/provider/GALResultList;->resultList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/provider/GALResultList;->mStartRange:I

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/provider/GALResultList;->mEndRange:I

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/provider/GALResultList;->mTotalResults:I

    .line 271
    return-void
.end method

.method public setEndRange(I)V
    .registers 2
    .parameter "endRange"

    .prologue
    .line 230
    iput p1, p0, Landroid/provider/GALResultList;->mEndRange:I

    .line 231
    return-void
.end method

.method public setStartRange(I)V
    .registers 2
    .parameter "startRange"

    .prologue
    .line 226
    iput p1, p0, Landroid/provider/GALResultList;->mStartRange:I

    .line 227
    return-void
.end method

.method public setTotalResults(I)V
    .registers 2
    .parameter "totalResults"

    .prologue
    .line 234
    iput p1, p0, Landroid/provider/GALResultList;->mTotalResults:I

    .line 235
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 259
    iget-object v0, p0, Landroid/provider/GALResultList;->resultList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 260
    iget v0, p0, Landroid/provider/GALResultList;->mStartRange:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget v0, p0, Landroid/provider/GALResultList;->mEndRange:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget v0, p0, Landroid/provider/GALResultList;->mTotalResults:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    return-void
.end method
