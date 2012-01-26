.class synthetic Lcom/android/internal/telephony/DataConnection$1;
.super Ljava/lang/Object;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$DataConnection$LinkStateResult:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$DataConnection$SetupResult:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$DataConnection$State:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 281
    invoke-static {}, Lcom/android/internal/telephony/DataConnection$FailCause;->values()[Lcom/android/internal/telephony/DataConnection$FailCause;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    :try_start_9
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_1d5

    :goto_14
    :try_start_14
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1d2

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_1cf

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_1cc

    :goto_35
    :try_start_35
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN_PDP_ADDRESS:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_1c9

    :goto_40
    :try_start_40
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_1c6

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_1c3

    :goto_56
    :try_start_56
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_1c0

    :goto_62
    :try_start_62
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_1bd

    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_1ba

    :goto_7a
    :try_start_7a
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_1b7

    :goto_86
    :try_start_86
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_1b4

    :goto_92
    :try_start_92
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_1b1

    :goto_9e
    :try_start_9e
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_aa} :catch_1ae

    :goto_aa
    :try_start_aa
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_1ab

    :goto_b6
    :try_start_b6
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_1a8

    :goto_c2
    :try_start_c2
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_ERROR_RETRY:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c2 .. :try_end_ce} :catch_1a5

    .line 199
    :goto_ce
    invoke-static {}, Lcom/android/internal/telephony/DataConnection$State;->values()[Lcom/android/internal/telephony/DataConnection$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$State:[I

    :try_start_d7
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$State:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$State;->ACTIVE:Lcom/android/internal/telephony/DataConnection$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_e2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d7 .. :try_end_e2} :catch_1a2

    :goto_e2
    :try_start_e2
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$State:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$State;->ACTIVATING:Lcom/android/internal/telephony/DataConnection$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e2 .. :try_end_ed} :catch_19f

    :goto_ed
    :try_start_ed
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$State:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$State;->ACTIVATING_PPP:Lcom/android/internal/telephony/DataConnection$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_f8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ed .. :try_end_f8} :catch_19c

    :goto_f8
    :try_start_f8
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$State:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnection$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_103
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f8 .. :try_end_103} :catch_199

    :goto_103
    :try_start_103
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$State:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$State;->FAILED:Lcom/android/internal/telephony/DataConnection$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_10e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_103 .. :try_end_10e} :catch_196

    .line 136
    :goto_10e
    invoke-static {}, Lcom/android/internal/telephony/DataConnection$LinkStateResult;->values()[Lcom/android/internal/telephony/DataConnection$LinkStateResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$LinkStateResult:[I

    :try_start_117
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$LinkStateResult:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$LinkStateResult;->LINK_Up:Lcom/android/internal/telephony/DataConnection$LinkStateResult;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$LinkStateResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_122
    .catch Ljava/lang/NoSuchFieldError; {:try_start_117 .. :try_end_122} :catch_194

    :goto_122
    :try_start_122
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$LinkStateResult:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$LinkStateResult;->LINK_Down:Lcom/android/internal/telephony/DataConnection$LinkStateResult;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$LinkStateResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_12d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_122 .. :try_end_12d} :catch_192

    :goto_12d
    :try_start_12d
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$LinkStateResult:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$LinkStateResult;->LINK_Exited:Lcom/android/internal/telephony/DataConnection$LinkStateResult;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$LinkStateResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_138
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12d .. :try_end_138} :catch_190

    :goto_138
    :try_start_138
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$LinkStateResult:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$LinkStateResult;->ERR_BadDns:Lcom/android/internal/telephony/DataConnection$LinkStateResult;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$LinkStateResult;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_143
    .catch Ljava/lang/NoSuchFieldError; {:try_start_138 .. :try_end_143} :catch_18e

    .line 116
    :goto_143
    invoke-static {}, Lcom/android/internal/telephony/DataConnection$SetupResult;->values()[Lcom/android/internal/telephony/DataConnection$SetupResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$SetupResult:[I

    :try_start_14c
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$SetupResult:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_BadCommand:Lcom/android/internal/telephony/DataConnection$SetupResult;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$SetupResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_157
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14c .. :try_end_157} :catch_18c

    :goto_157
    :try_start_157
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$SetupResult:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_BadDns:Lcom/android/internal/telephony/DataConnection$SetupResult;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$SetupResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_162
    .catch Ljava/lang/NoSuchFieldError; {:try_start_157 .. :try_end_162} :catch_18a

    :goto_162
    :try_start_162
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$SetupResult:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_Other:Lcom/android/internal/telephony/DataConnection$SetupResult;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$SetupResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_16d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_162 .. :try_end_16d} :catch_188

    :goto_16d
    :try_start_16d
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$SetupResult:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_Stale:Lcom/android/internal/telephony/DataConnection$SetupResult;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$SetupResult;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_178
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16d .. :try_end_178} :catch_186

    :goto_178
    :try_start_178
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$SetupResult:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$SetupResult;->SUCCESS:Lcom/android/internal/telephony/DataConnection$SetupResult;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$SetupResult;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_183
    .catch Ljava/lang/NoSuchFieldError; {:try_start_178 .. :try_end_183} :catch_184

    :goto_183
    return-void

    :catch_184
    move-exception v0

    goto :goto_183

    :catch_186
    move-exception v0

    goto :goto_178

    :catch_188
    move-exception v0

    goto :goto_16d

    :catch_18a
    move-exception v0

    goto :goto_162

    :catch_18c
    move-exception v0

    goto :goto_157

    .line 136
    :catch_18e
    move-exception v0

    goto :goto_143

    :catch_190
    move-exception v0

    goto :goto_138

    :catch_192
    move-exception v0

    goto :goto_12d

    :catch_194
    move-exception v0

    goto :goto_122

    .line 199
    :catch_196
    move-exception v0

    goto/16 :goto_10e

    :catch_199
    move-exception v0

    goto/16 :goto_103

    :catch_19c
    move-exception v0

    goto/16 :goto_f8

    :catch_19f
    move-exception v0

    goto/16 :goto_ed

    :catch_1a2
    move-exception v0

    goto/16 :goto_e2

    .line 281
    :catch_1a5
    move-exception v0

    goto/16 :goto_ce

    :catch_1a8
    move-exception v0

    goto/16 :goto_c2

    :catch_1ab
    move-exception v0

    goto/16 :goto_b6

    :catch_1ae
    move-exception v0

    goto/16 :goto_aa

    :catch_1b1
    move-exception v0

    goto/16 :goto_9e

    :catch_1b4
    move-exception v0

    goto/16 :goto_92

    :catch_1b7
    move-exception v0

    goto/16 :goto_86

    :catch_1ba
    move-exception v0

    goto/16 :goto_7a

    :catch_1bd
    move-exception v0

    goto/16 :goto_6e

    :catch_1c0
    move-exception v0

    goto/16 :goto_62

    :catch_1c3
    move-exception v0

    goto/16 :goto_56

    :catch_1c6
    move-exception v0

    goto/16 :goto_4b

    :catch_1c9
    move-exception v0

    goto/16 :goto_40

    :catch_1cc
    move-exception v0

    goto/16 :goto_35

    :catch_1cf
    move-exception v0

    goto/16 :goto_2a

    :catch_1d2
    move-exception v0

    goto/16 :goto_1f

    :catch_1d5
    move-exception v0

    goto/16 :goto_14
.end method
