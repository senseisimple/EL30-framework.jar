.class public Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;
.super Ljava/lang/Object;
.source "StkCmdMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$2;,
        Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;,
        Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

.field private mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

.field mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

.field private mEventList:[I

.field private mInitialLanguage:Z

.field private mInput:Lcom/android/internal/telephony/gsm/stk/Input;

.field private mLanguage:Ljava/lang/String;

.field private mMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

.field private mNumberOfEventList:I

.field private mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

.field private mToneSettings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 169
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 7
    .parameter "in"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    .line 34
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mToneSettings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    .line 35
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    .line 36
    iput v4, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mNumberOfEventList:I

    .line 37
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mEventList:[I

    .line 38
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mLanguage:Ljava/lang/String;

    .line 39
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mInitialLanguage:Z

    .line 107
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    .line 108
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    .line 109
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/stk/Menu;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    .line 110
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/stk/Input;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mInput:Lcom/android/internal/telephony/gsm/stk/Input;

    .line 111
    sget-object v1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCmdType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_aa

    .line 137
    .end local p0
    :goto_42
    return-void

    .line 113
    .restart local p0
    :pswitch_43
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;-><init>(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    .line 114
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    .line 115
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;->values()[Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    goto :goto_42

    .line 118
    :pswitch_61
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mToneSettings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    goto :goto_42

    .line 121
    :pswitch_6a
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;-><init>(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    .line 122
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object v1, v2, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    .line 123
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object p0, v1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    goto :goto_42

    .line 126
    .restart local p0
    :pswitch_86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mNumberOfEventList:I

    .line 127
    iget v1, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mNumberOfEventList:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mEventList:[I

    .line 128
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mEventList:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    goto :goto_42

    .line 131
    :pswitch_98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mLanguage:Ljava/lang/String;

    .line 132
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 133
    .local v0, tempBooleanArray:[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 134
    aget-boolean v1, v0, v4

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mInitialLanguage:Z

    goto :goto_42

    .line 111
    nop

    :pswitch_data_aa
    .packed-switch 0xc
        :pswitch_43
        :pswitch_61
        :pswitch_6a
        :pswitch_86
        :pswitch_98
    .end packed-switch
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .registers 6
    .parameter "cmdParams"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    .line 34
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mToneSettings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    .line 35
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    .line 36
    iput v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mNumberOfEventList:I

    .line 37
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mEventList:[I

    .line 38
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mLanguage:Ljava/lang/String;

    .line 39
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mInitialLanguage:Z

    .line 59
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    .line 60
    sget-object v2, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCmdType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_ae

    .line 104
    .end local p1
    :goto_26
    return-void

    .line 63
    .restart local p1
    :pswitch_27
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/SelectItemParams;

    .end local p1
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/SelectItemParams;->menu:Lcom/android/internal/telephony/gsm/stk/Menu;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    goto :goto_26

    .line 72
    .restart local p1
    :pswitch_2e
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    .end local p1
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    goto :goto_26

    .line 76
    .restart local p1
    :pswitch_35
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/GetInputParams;

    .end local p1
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/GetInputParams;->input:Lcom/android/internal/telephony/gsm/stk/Input;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mInput:Lcom/android/internal/telephony/gsm/stk/Input;

    goto :goto_26

    .line 79
    .restart local p1
    :pswitch_3c
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    .line 80
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;-><init>(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    .line 81
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;->url:Ljava/lang/String;

    iput-object v2, v3, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    .line 82
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    check-cast p1, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;

    .end local p1
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;->mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    goto :goto_26

    .line 85
    .restart local p1
    :pswitch_5e
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/PlayToneParams;

    move-object v1, v0

    .line 86
    .local v1, params:Lcom/android/internal/telephony/gsm/stk/PlayToneParams;
    iget-object v2, v1, Lcom/android/internal/telephony/gsm/stk/PlayToneParams;->settings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mToneSettings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    .line 87
    iget-object v2, v1, Lcom/android/internal/telephony/gsm/stk/PlayToneParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    goto :goto_26

    .line 90
    .end local v1           #params:Lcom/android/internal/telephony/gsm/stk/PlayToneParams;
    :pswitch_6b
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;-><init>(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    .line 91
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object v2, v3, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    .line 92
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;->callMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object v2, v3, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    .line 93
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    check-cast p1, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;

    .end local p1
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;->address:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->address:Ljava/lang/String;

    goto :goto_26

    .line 96
    .restart local p1
    :pswitch_8f
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SetupEventListParams;

    move-object v2, v0

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/SetupEventListParams;->numberOfEvents:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mNumberOfEventList:I

    .line 97
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/SetupEventListParams;

    .end local p1
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/SetupEventListParams;->events:[I

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mEventList:[I

    goto :goto_26

    .line 100
    .restart local p1
    :pswitch_9e
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/LanguageNotificationParams;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/LanguageNotificationParams;->mLanguage:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mLanguage:Ljava/lang/String;

    .line 101
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/LanguageNotificationParams;

    .end local p1
    iget-boolean v2, p1, Lcom/android/internal/telephony/gsm/stk/LanguageNotificationParams;->mInitialLanguage:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mInitialLanguage:Z

    goto/16 :goto_26

    .line 60
    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_27
        :pswitch_27
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_35
        :pswitch_35
        :pswitch_3c
        :pswitch_5e
        :pswitch_6b
        :pswitch_8f
        :pswitch_9e
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public geInput()Lcom/android/internal/telephony/gsm/stk/Input;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mInput:Lcom/android/internal/telephony/gsm/stk/Input;

    return-object v0
.end method

.method public geTextMessage()Lcom/android/internal/telephony/gsm/stk/TextMessage;
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    return-object v0
.end method

.method public getBrowserSettings()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    return-object v0
.end method

.method public getCallSettings()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    return-object v0
.end method

.method public getCmdType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v0

    return-object v0
.end method

.method public getEventList()[I
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mEventList:[I

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    return-object v0
.end method

.method public getNumberOfEventList()I
    .registers 2

    .prologue
    .line 213
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mNumberOfEventList:I

    return v0
.end method

.method public getToneSettings()Lcom/android/internal/telephony/gsm/stk/ToneSettings;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mToneSettings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    return-object v0
.end method

.method public getinitLanguage()Z
    .registers 2

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mInitialLanguage:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v3, 0x0

    .line 140
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 141
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 142
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 143
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mInput:Lcom/android/internal/telephony/gsm/stk/Input;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 144
    sget-object v1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCmdType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_68

    .line 167
    :goto_24
    return-void

    .line 146
    :pswitch_25
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24

    .line 150
    :pswitch_38
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mToneSettings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_24

    .line 153
    :pswitch_3e
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 154
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_24

    .line 157
    :pswitch_4d
    iget v1, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mNumberOfEventList:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mEventList:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_24

    .line 161
    :pswitch_58
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 163
    .local v0, tempBooleanArray:[Z
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mInitialLanguage:Z

    aput-boolean v1, v0, v3

    .line 164
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto :goto_24

    .line 144
    :pswitch_data_68
    .packed-switch 0xc
        :pswitch_25
        :pswitch_38
        :pswitch_3e
        :pswitch_4d
        :pswitch_58
    .end packed-switch
.end method
