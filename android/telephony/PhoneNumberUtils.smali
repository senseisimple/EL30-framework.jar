.class public Landroid/telephony/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final CCC_LENGTH:I = 0x0

.field private static final COUNTLY_CALLING_CALL:[Z = null

.field private static final DBG:Z = false

.field private static final ECC_CATEGORY_Ambulance:I = 0x2

.field private static final ECC_CATEGORY_Default_Emergency_Center:I = 0x0

.field private static final ECC_CATEGORY_Fire_Brigade:I = 0x4

.field private static final ECC_CATEGORY_Marine_Guard:I = 0x8

.field private static final ECC_CATEGORY_Mountain_Rescue:I = 0x10

.field private static final ECC_CATEGORY_Normal_Call:I = 0xff

.field private static final ECC_CATEGORY_Police:I = 0x1

.field public static final FORMAT_JAPAN:I = 0x2

.field public static final FORMAT_NANP:I = 0x1

.field public static final FORMAT_UNKNOWN:I = 0x0

.field private static final GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final KEYPAD_MAP:Landroid/util/SparseIntArray; = null

.field private static final KEYPAD_MAP_SMG:Landroid/util/SparseIntArray; = null

.field static final LOG_TAG:Ljava/lang/String; = "PhoneNumberUtils"

.field static final MIN_MATCH:I = 0x7

.field private static final NANP_COUNTRIES:[Ljava/lang/String; = null

.field private static final NANP_IDP_STRING:Ljava/lang/String; = "011"

.field private static final NANP_LENGTH:I = 0xa

.field private static final NANP_STATE_DASH:I = 0x4

.field private static final NANP_STATE_DIGIT:I = 0x1

.field private static final NANP_STATE_ONE:I = 0x3

.field private static final NANP_STATE_PLUS:I = 0x2

.field public static final PAUSE:C = ','

.field private static final PLUS_SIGN_CHAR:C = '+'

.field private static final PLUS_SIGN_STRING:Ljava/lang/String; = "+"

.field public static final TOA_International:I = 0x91

.field public static final TOA_Unknown:I = 0x81

.field public static final WAIT:C = ';'

.field public static final WILD:C = 'N'


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v7, 0x34

    const/16 v6, 0x33

    const/16 v5, 0x32

    const/16 v4, 0x39

    const/16 v3, 0x37

    .line 91
    const-string v0, "[\\+]?[0-9.-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 1278
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "US"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CA"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "AS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "AI"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "BS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BB"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "BM"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "VG"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "KY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DM"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "DO"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "GD"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GU"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "JM"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "PR"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "MS"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "MP"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "KN"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "LC"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "VC"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TT"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TC"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "VI"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    .line 1748
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    .line 1750
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x61

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x62

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x63

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1751
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x41

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x43

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1753
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1754
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x44

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x45

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1756
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x69

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1757
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x47

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x48

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x49

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1759
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1760
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1762
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6d

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6e

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1763
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4d

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4e

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1765
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x70

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x72

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x73

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1766
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x50

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x51

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x52

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x53

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1768
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x74

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x75

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x76

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1769
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x54

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x55

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x56

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1771
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x77

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x78

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x79

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x7a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1772
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x57

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x58

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x59

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2202
    const/16 v0, 0x64

    new-array v0, v0, [Z

    fill-array-data v0, :array_3e6

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTLY_CALLING_CALL:[Z

    .line 2214
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTLY_CALLING_CALL:[Z

    array-length v0, v0

    sput v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    .line 2470
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    .line 2473
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x61

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x62

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x63

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2474
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x41

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x43

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2476
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2477
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x44

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x45

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2479
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x69

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2480
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x47

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x48

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x49

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2482
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x6a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x6b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x6c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2483
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x4a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x4b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x4c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2485
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x6d

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x6e

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x6f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2486
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x4d

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x4e

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x4f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2488
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x70

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x72

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x73

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2489
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x50

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x51

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x52

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x53

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2491
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x74

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x75

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x76

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2492
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x54

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x55

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x56

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2494
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x77

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x78

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x79

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x7a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2495
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x57

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x58

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x59

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2496
    return-void

    .line 2202
    nop

    :array_3e6
    .array-data 0x1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2237
    return-void
.end method

.method public static DocomoNetworkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .registers 3
    .parameter "s"

    .prologue
    .line 1155
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1156
    .local v0, networkPortion:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->DocomoNumberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method private static DocomoNumberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B
    .registers 15
    .parameter "number"
    .parameter "includeLength"

    .prologue
    .line 1226
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 1227
    .local v7, numberLenReal:I
    move v0, v7

    .line 1228
    .local v0, numberLenEffective:I
    const/16 v1, 0x2b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2e

    const/4 v1, 0x1

    move v3, v1

    .line 1229
    .local v3, hasPlus:Z
    :goto_10
    const/16 v1, 0x23

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_31

    const/4 v1, 0x1

    move v4, v1

    .line 1230
    .local v4, hasSharp:Z
    :goto_1b
    const/16 v1, 0x2a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_34

    const/4 v1, 0x1

    move v5, v1

    .line 1232
    .local v5, hasStar:Z
    :goto_26
    if-eqz v3, :cond_2a

    add-int/lit8 v0, v0, -0x1

    .line 1234
    :cond_2a
    if-nez v0, :cond_37

    const/4 p0, 0x0

    .line 1263
    .end local v0           #numberLenEffective:I
    .end local p0
    .end local p1
    :goto_2d
    return-object p0

    .line 1228
    .end local v3           #hasPlus:Z
    .end local v4           #hasSharp:Z
    .end local v5           #hasStar:Z
    .restart local v0       #numberLenEffective:I
    .restart local p0
    .restart local p1
    :cond_2e
    const/4 v1, 0x0

    move v3, v1

    goto :goto_10

    .line 1229
    .restart local v3       #hasPlus:Z
    :cond_31
    const/4 v1, 0x0

    move v4, v1

    goto :goto_1b

    .line 1230
    .restart local v4       #hasSharp:Z
    :cond_34
    const/4 v1, 0x0

    move v5, v1

    goto :goto_26

    .line 1236
    .restart local v5       #hasStar:Z
    :cond_37
    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v1, v0, 0x2

    .line 1237
    .end local v0           #numberLenEffective:I
    .local v1, resultLen:I
    const/4 v0, 0x1

    .line 1238
    .local v0, extraBytes:I
    if-eqz p1, :cond_a7

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    .line 1239
    .end local v0           #extraBytes:I
    .local v2, extraBytes:I
    :goto_41
    add-int v9, v1, v2

    .line 1241
    .end local v1           #resultLen:I
    .local v9, resultLen:I
    new-array v8, v9, [B

    .line 1243
    .local v8, result:[B
    const/4 v0, 0x0

    .line 1244
    .local v0, digitCount:I
    const/4 v1, 0x0

    .local v1, i:I
    move v6, v1

    .end local v1           #i:I
    .local v6, i:I
    move v1, v0

    .end local v0           #digitCount:I
    .local v1, digitCount:I
    :goto_49
    if-ge v6, v7, :cond_75

    .line 1245
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1246
    .local v0, c:C
    const/16 v10, 0x2b

    if-ne v0, v10, :cond_59

    move v0, v1

    .line 1244
    .end local v1           #digitCount:I
    .local v0, digitCount:I
    :goto_54
    add-int/lit8 v1, v6, 0x1

    .end local v6           #i:I
    .local v1, i:I
    move v6, v1

    .end local v1           #i:I
    .restart local v6       #i:I
    move v1, v0

    .end local v0           #digitCount:I
    .local v1, digitCount:I
    goto :goto_49

    .line 1247
    .local v0, c:C
    :cond_59
    and-int/lit8 v10, v1, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_73

    const/4 v10, 0x4

    .line 1248
    .local v10, shift:I
    :goto_5f
    shr-int/lit8 v11, v1, 0x1

    add-int/2addr v11, v2

    aget-byte v12, v8, v11

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->charToBCD(C)I

    move-result v0

    .end local v0           #c:C
    and-int/lit8 v0, v0, 0xf

    shl-int/2addr v0, v10

    int-to-byte v0, v0

    or-int/2addr v0, v12

    int-to-byte v0, v0

    aput-byte v0, v8, v11

    .line 1249
    add-int/lit8 v0, v1, 0x1

    .end local v1           #digitCount:I
    .local v0, digitCount:I
    goto :goto_54

    .line 1247
    .end local v10           #shift:I
    .local v0, c:C
    .restart local v1       #digitCount:I
    :cond_73
    const/4 v10, 0x0

    goto :goto_5f

    .line 1253
    .end local v0           #c:C
    :cond_75
    and-int/lit8 p0, v1, 0x1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_84

    .end local p0
    shr-int/lit8 p0, v1, 0x1

    add-int/2addr p0, v2

    aget-byte v0, v8, p0

    or-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    aput-byte v0, v8, p0

    .line 1255
    :cond_84
    const/4 p0, 0x0

    .line 1256
    .local p0, offset:I
    if-eqz p1, :cond_90

    add-int/lit8 p1, p0, 0x1

    .end local p0           #offset:I
    .local p1, offset:I
    const/4 v0, 0x1

    sub-int v0, v9, v0

    int-to-byte v0, v0

    aput-byte v0, v8, p0

    move p0, p1

    .line 1257
    .end local p1           #offset:I
    .restart local p0       #offset:I
    :cond_90
    if-eqz v3, :cond_a4

    const/16 p1, 0x91

    :goto_94
    int-to-byte p1, p1

    aput-byte p1, v8, p0

    .line 1259
    if-nez v4, :cond_9b

    if-eqz v5, :cond_a2

    .line 1260
    :cond_9b
    aget-byte p1, v8, p0

    and-int/lit16 p1, p1, 0xf0

    int-to-byte p1, p1

    aput-byte p1, v8, p0

    :cond_a2
    move-object p0, v8

    .line 1263
    goto :goto_2d

    .line 1257
    :cond_a4
    const/16 p1, 0x81

    goto :goto_94

    .end local v2           #extraBytes:I
    .end local v6           #i:I
    .end local v8           #result:[B
    .end local v9           #resultLen:I
    .local v0, extraBytes:I
    .local v1, resultLen:I
    .local p0, number:Ljava/lang/String;
    .local p1, includeLength:Z
    :cond_a7
    move v2, v0

    .end local v0           #extraBytes:I
    .restart local v2       #extraBytes:I
    goto :goto_41
.end method

.method private static appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "dialableIndex"
    .parameter "origStr"
    .parameter "dialStr"

    .prologue
    const/4 v4, 0x0

    .line 2062
    const/4 v3, 0x1

    if-ne p0, v3, :cond_16

    .line 2063
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2064
    .local v1, ret:Ljava/lang/StringBuilder;
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2065
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2072
    .end local v1           #ret:Ljava/lang/StringBuilder;
    .local v2, retStr:Ljava/lang/String;
    :goto_15
    return-object v2

    .line 2069
    .end local v2           #retStr:Ljava/lang/String;
    :cond_16
    invoke-virtual {p2, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2070
    .local v0, nonDigitStr:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #retStr:Ljava/lang/String;
    goto :goto_15
.end method

.method private static bcdToChar(B)C
    .registers 2
    .parameter "b"

    .prologue
    .line 1070
    const/16 v0, 0xa

    if-ge p0, v0, :cond_8

    .line 1071
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    .line 1078
    :goto_7
    return v0

    .line 1072
    :cond_8
    packed-switch p0, :pswitch_data_1a

    .line 1078
    const/4 v0, 0x0

    goto :goto_7

    .line 1073
    :pswitch_d
    const/16 v0, 0x2a

    goto :goto_7

    .line 1074
    :pswitch_10
    const/16 v0, 0x23

    goto :goto_7

    .line 1075
    :pswitch_13
    const/16 v0, 0x2c

    goto :goto_7

    .line 1076
    :pswitch_16
    const/16 v0, 0x4e

    goto :goto_7

    .line 1072
    nop

    :pswitch_data_1a
    .packed-switch 0xa
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
    .end packed-switch
.end method

.method public static calledPartyBCDFragmentToString([BII)Ljava/lang/String;
    .registers 5
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1062
    .local v0, ret:Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 1064
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static calledPartyBCDToString([BII)Ljava/lang/String;
    .registers 15
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const-string v11, ""

    .line 917
    const/4 v2, 0x0

    .line 918
    .local v2, prependPlus:Z
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, p2, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 920
    .local v3, ret:Ljava/lang/StringBuilder;
    if-ge p2, v8, :cond_16

    .line 921
    const-string v5, ""

    move-object v5, v11

    .line 1012
    :goto_15
    return-object v5

    .line 925
    :cond_16
    aget-byte v5, p0, p1

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0x90

    if-ne v5, v6, :cond_1f

    .line 926
    const/4 v2, 0x1

    .line 929
    :cond_1f
    add-int/lit8 v5, p1, 0x1

    sub-int v6, p2, v7

    invoke-static {v3, p0, v5, v6}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 932
    if-eqz v2, :cond_32

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_32

    .line 934
    const-string v5, ""

    move-object v5, v11

    goto :goto_15

    .line 937
    :cond_32
    if-eqz v2, :cond_7b

    .line 963
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 964
    .local v4, retString:Ljava/lang/String;
    const-string v5, "(^[#*])(.*)([#*])(.*)(#)$"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 965
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 966
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_af

    .line 967
    const-string v5, ""

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 971
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 972
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    .end local v0           #m:Ljava/util/regex/Matcher;
    .end local v1           #p:Ljava/util/regex/Pattern;
    .end local v4           #retString:Ljava/lang/String;
    :cond_7b
    :goto_7b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_15

    .line 981
    .restart local v0       #m:Ljava/util/regex/Matcher;
    .restart local v1       #p:Ljava/util/regex/Pattern;
    .restart local v4       #retString:Ljava/lang/String;
    :cond_80
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 982
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7b

    .line 990
    :cond_af
    const-string v5, "(^[#*])(.*)([#*])(.*)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 991
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 992
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_e6

    .line 997
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 998
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7b

    .line 1005
    :cond_e6
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1006
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    const/16 v5, 0x2b

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1007
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7b
.end method

.method public static cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "dialStr"

    .prologue
    const-string v4, ""

    .line 1810
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 1811
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1813
    const-string v2, "gsm.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1814
    .local v0, currIso:Ljava/lang/String;
    const-string v2, "gsm.sim.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1815
    .local v1, defaultIso:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_42

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 1816
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v2, v3}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 1822
    .end local v0           #currIso:Ljava/lang/String;
    .end local v1           #defaultIso:Ljava/lang/String;
    :goto_41
    return-object v2

    :cond_42
    move-object v2, p0

    goto :goto_41
.end method

.method public static cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;
    .registers 11
    .parameter "dialStr"
    .parameter "currFormat"
    .parameter "defaultFormt"

    .prologue
    const/4 v7, 0x1

    .line 1854
    move-object v3, p0

    .line 1857
    .local v3, retStr:Ljava/lang/String;
    if-eqz p0, :cond_49

    const-string v5, "+"

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_49

    .line 1861
    if-ne p1, p2, :cond_62

    if-ne p1, v7, :cond_62

    .line 1863
    const/4 v2, 0x0

    .line 1864
    .local v2, postDialStr:Ljava/lang/String;
    move-object v4, p0

    .line 1867
    .local v4, tempDialStr:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1874
    :cond_14
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1876
    .local v1, networkDialStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->processPlusCodeWithinNanp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1879
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_50

    .line 1880
    if-nez v3, :cond_4b

    .line 1881
    move-object v3, v1

    .line 1892
    :goto_25
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1893
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 1894
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->findDialableIndexFromPostDialStr(Ljava/lang/String;)I

    move-result v0

    .line 1897
    .local v0, dialableIndex:I
    if-lt v0, v7, :cond_57

    .line 1898
    invoke-static {v0, v3, v2}, Landroid/telephony/PhoneNumberUtils;->appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1901
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1913
    .end local v0           #dialableIndex:I
    :cond_3d
    :goto_3d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_49

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    .end local v1           #networkDialStr:Ljava/lang/String;
    .end local v2           #postDialStr:Ljava/lang/String;
    .end local v4           #tempDialStr:Ljava/lang/String;
    :cond_49
    :goto_49
    move-object v5, v3

    .line 1921
    :goto_4a
    return-object v5

    .line 1883
    .restart local v1       #networkDialStr:Ljava/lang/String;
    .restart local v2       #postDialStr:Ljava/lang/String;
    .restart local v4       #tempDialStr:Ljava/lang/String;
    :cond_4b
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_25

    .line 1889
    :cond_50
    const-string v5, "checkAndProcessPlusCode: null newDialStr"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, p0

    .line 1890
    goto :goto_4a

    .line 1906
    .restart local v0       #dialableIndex:I
    :cond_57
    if-gez v0, :cond_5b

    .line 1907
    const-string v2, ""

    .line 1909
    :cond_5b
    const-string/jumbo v5, "wrong postDialStr="

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 1918
    .end local v0           #dialableIndex:I
    .end local v1           #networkDialStr:Ljava/lang/String;
    .end local v2           #postDialStr:Ljava/lang/String;
    .end local v4           #tempDialStr:Ljava/lang/String;
    :cond_62
    const-string v5, "checkAndProcessPlusCode:non-NANP not supported"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49
.end method

.method private static charToBCD(C)I
    .registers 4
    .parameter "c"

    .prologue
    const/16 v1, 0x30

    .line 1084
    if-lt p0, v1, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 1085
    sub-int v0, p0, v1

    .line 1093
    :goto_a
    return v0

    .line 1086
    :cond_b
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_12

    .line 1087
    const/16 v0, 0xa

    goto :goto_a

    .line 1088
    :cond_12
    const/16 v0, 0x23

    if-ne p0, v0, :cond_19

    .line 1089
    const/16 v0, 0xb

    goto :goto_a

    .line 1090
    :cond_19
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_20

    .line 1091
    const/16 v0, 0xc

    goto :goto_a

    .line 1092
    :cond_20
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_27

    .line 1093
    const/16 v0, 0xd

    goto :goto_a

    .line 1095
    :cond_27
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid char for BCD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkPrefixIsIgnorable(Ljava/lang/String;II)Z
    .registers 6
    .parameter "str"
    .parameter "forwardIndex"
    .parameter "backwardIndex"

    .prologue
    const/4 v2, 0x0

    .line 2365
    const/4 v0, 0x0

    .line 2366
    .local v0, trunk_prefix_was_read:Z
    :goto_2
    if-lt p2, p1, :cond_22

    .line 2367
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v1

    if-ltz v1, :cond_16

    .line 2368
    if-eqz v0, :cond_12

    move v1, v2

    .line 2383
    :goto_11
    return v1

    .line 2374
    :cond_12
    const/4 v0, 0x1

    .line 2380
    :cond_13
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 2376
    :cond_16
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v2

    .line 2378
    goto :goto_11

    .line 2383
    :cond_22
    const/4 v1, 0x1

    goto :goto_11
.end method

.method public static compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "context"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 420
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10d0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 422
    .local v0, useStrict:Z
    invoke-static {p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 411
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4
    .parameter "a"
    .parameter "b"
    .parameter "useStrictComparation"

    .prologue
    .line 429
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_6
    return v0

    :cond_7
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_6
.end method

.method public static compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "a"
    .parameter "b"

    .prologue
    .line 450
    const/4 v3, 0x0

    .line 451
    .local v3, numNonDialableCharsInA:I
    const/4 v4, 0x0

    .line 453
    .local v4, numNonDialableCharsInB:I
    if-eqz p0, :cond_6

    if-nez p1, :cond_f

    :cond_6
    if-ne p0, p1, :cond_d

    const/4 p0, 0x1

    .end local p0
    :goto_9
    move p1, v4

    .end local v4           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v3

    .line 537
    .end local v3           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    :goto_c
    return v0

    .line 453
    .restart local v3       #numNonDialableCharsInA:I
    .restart local v4       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_d
    const/4 p0, 0x0

    goto :goto_9

    .line 455
    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_20

    .line 456
    :cond_1b
    const/4 p0, 0x0

    move p1, v4

    .end local v4           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v3

    .end local v3           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto :goto_c

    .line 459
    .restart local v3       #numNonDialableCharsInA:I
    .restart local v4       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_20
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v0

    .line 460
    .local v0, ia:I
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v1

    .line 461
    .local v1, ib:I
    const/4 v2, 0x0

    .local v2, matched:I
    move v6, v4

    .end local v4           #numNonDialableCharsInB:I
    .local v6, numNonDialableCharsInB:I
    move v4, v2

    .end local v2           #matched:I
    .local v4, matched:I
    move v2, v3

    .end local v3           #numNonDialableCharsInA:I
    .local v2, numNonDialableCharsInA:I
    move v3, v1

    .end local v1           #ib:I
    .local v3, ib:I
    move v1, v0

    .line 463
    .end local v0           #ia:I
    .local v1, ia:I
    :goto_2e
    if-ltz v1, :cond_e8

    if-ltz v3, :cond_e8

    .line 465
    const/4 v5, 0x0

    .line 467
    .local v5, skipCmp:Z
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 469
    .local v0, ca:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-nez v7, :cond_e3

    .line 470
    add-int/lit8 v1, v1, -0x1

    .line 471
    const/4 v5, 0x1

    .line 472
    add-int/lit8 v2, v2, 0x1

    move v7, v5

    .end local v5           #skipCmp:Z
    .local v7, skipCmp:Z
    move v5, v2

    .end local v2           #numNonDialableCharsInA:I
    .local v5, numNonDialableCharsInA:I
    move v2, v1

    .line 475
    .end local v1           #ia:I
    .local v2, ia:I
    :goto_45
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 477
    .local v1, cb:C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v8

    if-nez v8, :cond_54

    .line 478
    add-int/lit8 v3, v3, -0x1

    .line 479
    const/4 v7, 0x1

    .line 480
    add-int/lit8 v6, v6, 0x1

    .line 483
    :cond_54
    if-nez v7, :cond_df

    .line 484
    if-eq v1, v0, :cond_7a

    const/16 v7, 0x4e

    if-eq v0, v7, :cond_7a

    .end local v7           #skipCmp:Z
    const/16 v0, 0x4e

    if-eq v1, v0, :cond_7a

    .end local v0           #ca:C
    move v1, v3

    .end local v3           #ib:I
    .local v1, ib:I
    move v0, v2

    .end local v2           #ia:I
    .local v0, ia:I
    move v3, v6

    .end local v6           #numNonDialableCharsInB:I
    .local v3, numNonDialableCharsInB:I
    move v2, v5

    .line 491
    .end local v5           #numNonDialableCharsInA:I
    .local v2, numNonDialableCharsInA:I
    :goto_64
    const/4 v5, 0x7

    if-ge v4, v5, :cond_8a

    .line 492
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .end local p0           #a:Ljava/lang/String;
    sub-int/2addr p0, v2

    .line 493
    .local p0, effectiveALen:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .end local p1           #b:Ljava/lang/String;
    sub-int/2addr p1, v3

    .line 498
    .local p1, effectiveBLen:I
    if-ne p0, p1, :cond_85

    if-ne p0, v4, :cond_85

    .line 499
    const/4 p0, 0x1

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto :goto_c

    .line 487
    .end local v0           #ia:I
    .local v1, cb:C
    .local v2, ia:I
    .local v3, ib:I
    .restart local v5       #numNonDialableCharsInA:I
    .restart local v6       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_7a
    add-int/lit8 v0, v2, -0x1

    .end local v2           #ia:I
    .restart local v0       #ia:I
    add-int/lit8 v1, v3, -0x1

    .end local v3           #ib:I
    .local v1, ib:I
    add-int/lit8 v2, v4, 0x1

    .end local v4           #matched:I
    .local v2, matched:I
    :goto_80
    move v4, v2

    .end local v2           #matched:I
    .restart local v4       #matched:I
    move v3, v1

    .end local v1           #ib:I
    .restart local v3       #ib:I
    move v2, v5

    .end local v5           #numNonDialableCharsInA:I
    .local v2, numNonDialableCharsInA:I
    move v1, v0

    .line 489
    .end local v0           #ia:I
    .local v1, ia:I
    goto :goto_2e

    .line 502
    .end local v6           #numNonDialableCharsInB:I
    .restart local v0       #ia:I
    .local v1, ib:I
    .local v3, numNonDialableCharsInB:I
    .local p0, effectiveALen:I
    .local p1, effectiveBLen:I
    :cond_85
    const/4 p0, 0x0

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto :goto_c

    .line 506
    .restart local v2       #numNonDialableCharsInA:I
    .restart local v3       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_8a
    const/4 v5, 0x7

    if-lt v4, v5, :cond_97

    if-ltz v0, :cond_91

    if-gez v1, :cond_97

    .line 507
    :cond_91
    const/4 p0, 0x1

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto/16 :goto_c

    .line 519
    .restart local v2       #numNonDialableCharsInA:I
    .restart local v3       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_97
    add-int/lit8 v4, v0, 0x1

    invoke-static {p0, v4}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    .end local v4           #matched:I
    move-result v4

    if-eqz v4, :cond_ad

    add-int/lit8 v4, v1, 0x1

    invoke-static {p1, v4}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 522
    const/4 p0, 0x1

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto/16 :goto_c

    .line 525
    .restart local v2       #numNonDialableCharsInA:I
    .restart local v3       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_ad
    add-int/lit8 v4, v0, 0x1

    invoke-static {p0, v4}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_c3

    add-int/lit8 v4, v1, 0x1

    invoke-static {p1, v4}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_c3

    .line 528
    const/4 p0, 0x1

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto/16 :goto_c

    .line 531
    .restart local v2       #numNonDialableCharsInA:I
    .restart local v3       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_c3
    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    .end local v1           #ib:I
    move-result p1

    .end local p1           #b:Ljava/lang/String;
    if-eqz p1, :cond_d9

    add-int/lit8 p1, v0, 0x1

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result p0

    .end local p0           #a:Ljava/lang/String;
    if-eqz p0, :cond_d9

    .line 534
    const/4 p0, 0x1

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto/16 :goto_c

    .line 537
    .end local p0           #numNonDialableCharsInA:I
    .end local p1           #numNonDialableCharsInB:I
    .restart local v2       #numNonDialableCharsInA:I
    .restart local v3       #numNonDialableCharsInB:I
    :cond_d9
    const/4 p0, 0x0

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .restart local p1       #numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .restart local p0       #numNonDialableCharsInA:I
    goto/16 :goto_c

    .local v0, ca:C
    .local v1, cb:C
    .local v2, ia:I
    .local v3, ib:I
    .restart local v4       #matched:I
    .restart local v5       #numNonDialableCharsInA:I
    .restart local v6       #numNonDialableCharsInB:I
    .restart local v7       #skipCmp:Z
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_df
    move v1, v3

    .end local v3           #ib:I
    .local v1, ib:I
    move v0, v2

    .end local v2           #ia:I
    .local v0, ia:I
    move v2, v4

    .end local v4           #matched:I
    .local v2, matched:I
    goto :goto_80

    .end local v7           #skipCmp:Z
    .local v0, ca:C
    .local v1, ia:I
    .local v2, numNonDialableCharsInA:I
    .restart local v3       #ib:I
    .restart local v4       #matched:I
    .local v5, skipCmp:Z
    :cond_e3
    move v7, v5

    .end local v5           #skipCmp:Z
    .restart local v7       #skipCmp:Z
    move v5, v2

    .end local v2           #numNonDialableCharsInA:I
    .local v5, numNonDialableCharsInA:I
    move v2, v1

    .end local v1           #ia:I
    .local v2, ia:I
    goto/16 :goto_45

    .end local v0           #ca:C
    .end local v5           #numNonDialableCharsInA:I
    .end local v7           #skipCmp:Z
    .restart local v1       #ia:I
    .local v2, numNonDialableCharsInA:I
    :cond_e8
    move v0, v1

    .end local v1           #ia:I
    .local v0, ia:I
    move v1, v3

    .end local v3           #ib:I
    .local v1, ib:I
    move v3, v6

    .end local v6           #numNonDialableCharsInB:I
    .local v3, numNonDialableCharsInB:I
    goto/16 :goto_64
.end method

.method public static compareLooselyOld(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .parameter "a"
    .parameter "b"

    .prologue
    const/16 v11, 0x4e

    const/4 v10, 0x7

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 561
    if-eqz p0, :cond_9

    if-nez p1, :cond_f

    :cond_9
    if-ne p0, p1, :cond_d

    move v7, v8

    .line 640
    :goto_c
    return v7

    :cond_d
    move v7, v9

    .line 561
    goto :goto_c

    .line 563
    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1d

    :cond_1b
    move v7, v9

    .line 564
    goto :goto_c

    .line 567
    :cond_1d
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v3

    .line 568
    .local v3, ia:I
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 569
    .local v4, ib:I
    const/4 v5, 0x0

    .line 571
    .local v5, matched:I
    :cond_26
    :goto_26
    if-ltz v3, :cond_4d

    if-ltz v4, :cond_4d

    .line 573
    const/4 v6, 0x0

    .line 575
    .local v6, skipCmp:Z
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 577
    .local v1, ca:C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-nez v7, :cond_38

    .line 578
    add-int/lit8 v3, v3, -0x1

    .line 579
    const/4 v6, 0x1

    .line 582
    :cond_38
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 584
    .local v2, cb:C
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-nez v7, :cond_45

    .line 585
    add-int/lit8 v4, v4, -0x1

    .line 586
    const/4 v6, 0x1

    .line 589
    :cond_45
    if-nez v6, :cond_26

    .line 590
    if-eq v2, v1, :cond_5d

    if-eq v1, v11, :cond_5d

    if-eq v2, v11, :cond_5d

    .line 597
    .end local v1           #ca:C
    .end local v2           #cb:C
    .end local v6           #skipCmp:Z
    :cond_4d
    if-ge v5, v10, :cond_66

    .line 598
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 602
    .local v0, aLen:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v0, v7, :cond_64

    if-ne v0, v5, :cond_64

    move v7, v8

    .line 603
    goto :goto_c

    .line 593
    .end local v0           #aLen:I
    .restart local v1       #ca:C
    .restart local v2       #cb:C
    .restart local v6       #skipCmp:Z
    :cond_5d
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .end local v1           #ca:C
    .end local v2           #cb:C
    .end local v6           #skipCmp:Z
    .restart local v0       #aLen:I
    :cond_64
    move v7, v9

    .line 605
    goto :goto_c

    .line 609
    .end local v0           #aLen:I
    :cond_66
    if-lt v5, v10, :cond_6e

    if-ltz v3, :cond_6c

    if-gez v4, :cond_6e

    :cond_6c
    move v7, v8

    .line 610
    goto :goto_c

    .line 622
    :cond_6e
    add-int/lit8 v7, v3, 0x1

    invoke-static {p0, v7}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_80

    add-int/lit8 v7, v4, 0x1

    invoke-static {p1, v7}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_80

    move v7, v8

    .line 625
    goto :goto_c

    .line 628
    :cond_80
    add-int/lit8 v7, v3, 0x1

    invoke-static {p0, v7}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_93

    add-int/lit8 v7, v4, 0x1

    invoke-static {p1, v7}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_93

    move v7, v8

    .line 631
    goto/16 :goto_c

    .line 634
    :cond_93
    add-int/lit8 v7, v4, 0x1

    invoke-static {p1, v7}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_a6

    add-int/lit8 v7, v3, 0x1

    invoke-static {p0, v7}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_a6

    move v7, v8

    .line 637
    goto/16 :goto_c

    :cond_a6
    move v7, v9

    .line 640
    goto/16 :goto_c
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 648
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 15
    .parameter "a"
    .parameter "b"
    .parameter "acceptInvalidCCCPrefix"

    .prologue
    .line 656
    if-eqz p0, :cond_4

    if-nez p1, :cond_a

    .line 657
    :cond_4
    if-ne p0, p1, :cond_8

    const/4 p0, 0x1

    .line 794
    .end local p0
    .end local p1
    .end local p2
    :goto_7
    return p0

    .line 657
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_8
    const/4 p0, 0x0

    goto :goto_7

    .line 658
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_18

    .line 659
    const/4 p0, 0x0

    goto :goto_7

    .line 662
    :cond_18
    const/4 v3, 0x0

    .line 663
    .local v3, forwardIndexA:I
    const/4 v4, 0x0

    .line 665
    .local v4, forwardIndexB:I
    invoke-static {p0, p2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v1

    .line 667
    .local v1, cccA:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v2

    .line 669
    .local v2, cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    const/4 v0, 0x0

    .line 670
    .local v0, bothHasCountryCallingCode:Z
    const/4 v5, 0x1

    .line 671
    .local v5, okToIgnorePrefix:Z
    const/4 v6, 0x0

    .line 672
    .local v6, trunkPrefixIsOmittedA:Z
    const/4 v7, 0x0

    .line 673
    .local v7, trunkPrefixIsOmittedB:Z
    if-eqz v1, :cond_6f

    if-eqz v2, :cond_6f

    .line 674
    iget v0, v1, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    .end local v0           #bothHasCountryCallingCode:Z
    iget v3, v2, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    .end local v3           #forwardIndexA:I
    if-eq v0, v3, :cond_32

    .line 676
    const/4 p0, 0x0

    goto :goto_7

    .line 680
    :cond_32
    const/4 v3, 0x0

    .line 681
    .end local v5           #okToIgnorePrefix:Z
    .local v3, okToIgnorePrefix:Z
    const/4 v0, 0x1

    .line 682
    .restart local v0       #bothHasCountryCallingCode:Z
    iget v1, v1, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 683
    .local v1, forwardIndexA:I
    iget v2, v2, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .end local v4           #forwardIndexB:I
    .local v2, forwardIndexB:I
    move v10, v7

    .end local v7           #trunkPrefixIsOmittedB:Z
    .local v10, trunkPrefixIsOmittedB:Z
    move v9, v6

    .end local v6           #trunkPrefixIsOmittedA:Z
    .local v9, trunkPrefixIsOmittedA:Z
    move v5, v1

    .end local v1           #forwardIndexA:I
    .local v5, forwardIndexA:I
    move v6, v2

    .end local v2           #forwardIndexB:I
    .local v6, forwardIndexB:I
    move v7, v3

    .end local v3           #okToIgnorePrefix:Z
    .local v7, okToIgnorePrefix:Z
    move v2, v0

    .line 709
    .end local v0           #bothHasCountryCallingCode:Z
    .local v2, bothHasCountryCallingCode:Z
    :goto_3e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 710
    .local v0, backwardIndexA:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    .line 711
    .local v1, backwardIndexB:I
    :cond_4a
    :goto_4a
    if-lt v0, v5, :cond_aa

    if-lt v1, v6, :cond_aa

    .line 712
    const/4 v8, 0x0

    .line 713
    .local v8, skip_compare:Z
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 714
    .local v3, chA:C
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 715
    .local v4, chB:C
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v11

    if-eqz v11, :cond_60

    .line 716
    add-int/lit8 v0, v0, -0x1

    .line 717
    const/4 v8, 0x1

    .line 719
    :cond_60
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v11

    if-eqz v11, :cond_69

    .line 720
    add-int/lit8 v1, v1, -0x1

    .line 721
    const/4 v8, 0x1

    .line 724
    :cond_69
    if-nez v8, :cond_4a

    .line 725
    if-eq v3, v4, :cond_a5

    .line 726
    const/4 p0, 0x0

    goto :goto_7

    .line 684
    .end local v8           #skip_compare:Z
    .end local v9           #trunkPrefixIsOmittedA:Z
    .end local v10           #trunkPrefixIsOmittedB:Z
    .local v0, bothHasCountryCallingCode:Z
    .local v1, cccA:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .local v2, cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .local v3, forwardIndexA:I
    .local v4, forwardIndexB:I
    .local v5, okToIgnorePrefix:Z
    .local v6, trunkPrefixIsOmittedA:Z
    .local v7, trunkPrefixIsOmittedB:Z
    :cond_6f
    if-nez v1, :cond_7b

    if-nez v2, :cond_7b

    .line 687
    const/4 v1, 0x0

    .end local v5           #okToIgnorePrefix:Z
    .local v1, okToIgnorePrefix:Z
    move v10, v7

    .end local v7           #trunkPrefixIsOmittedB:Z
    .restart local v10       #trunkPrefixIsOmittedB:Z
    move v9, v6

    .end local v6           #trunkPrefixIsOmittedA:Z
    .restart local v9       #trunkPrefixIsOmittedA:Z
    move v2, v0

    .end local v0           #bothHasCountryCallingCode:Z
    .local v2, bothHasCountryCallingCode:Z
    move v5, v3

    .end local v3           #forwardIndexA:I
    .local v5, forwardIndexA:I
    move v6, v4

    .end local v4           #forwardIndexB:I
    .local v6, forwardIndexB:I
    move v7, v1

    .end local v1           #okToIgnorePrefix:Z
    .local v7, okToIgnorePrefix:Z
    goto :goto_3e

    .line 689
    .end local v9           #trunkPrefixIsOmittedA:Z
    .end local v10           #trunkPrefixIsOmittedB:Z
    .restart local v0       #bothHasCountryCallingCode:Z
    .local v1, cccA:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .local v2, cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .restart local v3       #forwardIndexA:I
    .restart local v4       #forwardIndexB:I
    .local v5, okToIgnorePrefix:Z
    .local v6, trunkPrefixIsOmittedA:Z
    .local v7, trunkPrefixIsOmittedB:Z
    :cond_7b
    if-eqz v1, :cond_8b

    .line 690
    iget v1, v1, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .end local v3           #forwardIndexA:I
    .local v1, forwardIndexA:I
    move v3, v6

    .line 698
    .end local v6           #trunkPrefixIsOmittedA:Z
    .local v3, trunkPrefixIsOmittedA:Z
    :goto_80
    if-eqz v2, :cond_95

    .line 699
    iget v2, v2, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .end local v4           #forwardIndexB:I
    .local v2, forwardIndexB:I
    move v10, v7

    .end local v7           #trunkPrefixIsOmittedB:Z
    .restart local v10       #trunkPrefixIsOmittedB:Z
    move v9, v3

    .end local v3           #trunkPrefixIsOmittedA:Z
    .restart local v9       #trunkPrefixIsOmittedA:Z
    move v6, v2

    .end local v2           #forwardIndexB:I
    .local v6, forwardIndexB:I
    move v2, v0

    .end local v0           #bothHasCountryCallingCode:Z
    .local v2, bothHasCountryCallingCode:Z
    move v7, v5

    .end local v5           #okToIgnorePrefix:Z
    .local v7, okToIgnorePrefix:Z
    move v5, v1

    .end local v1           #forwardIndexA:I
    .local v5, forwardIndexA:I
    goto :goto_3e

    .line 692
    .end local v9           #trunkPrefixIsOmittedA:Z
    .end local v10           #trunkPrefixIsOmittedB:Z
    .restart local v0       #bothHasCountryCallingCode:Z
    .local v1, cccA:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .local v2, cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .local v3, forwardIndexA:I
    .restart local v4       #forwardIndexB:I
    .local v5, okToIgnorePrefix:Z
    .local v6, trunkPrefixIsOmittedA:Z
    .local v7, trunkPrefixIsOmittedB:Z
    :cond_8b
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    .end local v1           #cccA:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    move-result v1

    .line 693
    .local v1, tmp:I
    if-ltz v1, :cond_130

    .line 694
    move v1, v1

    .line 695
    .end local v3           #forwardIndexA:I
    .local v1, forwardIndexA:I
    const/4 v3, 0x1

    .end local v6           #trunkPrefixIsOmittedA:Z
    .local v3, trunkPrefixIsOmittedA:Z
    goto :goto_80

    .line 701
    :cond_95
    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    .end local v2           #cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    move-result v2

    .line 702
    .local v2, tmp:I
    if-ltz v2, :cond_128

    .line 703
    move v2, v2

    .line 704
    .end local v4           #forwardIndexB:I
    .local v2, forwardIndexB:I
    const/4 v4, 0x1

    .end local v7           #trunkPrefixIsOmittedB:Z
    .local v4, trunkPrefixIsOmittedB:Z
    move v10, v4

    .end local v4           #trunkPrefixIsOmittedB:Z
    .restart local v10       #trunkPrefixIsOmittedB:Z
    move v9, v3

    .end local v3           #trunkPrefixIsOmittedA:Z
    .restart local v9       #trunkPrefixIsOmittedA:Z
    move v7, v5

    .end local v5           #okToIgnorePrefix:Z
    .local v7, okToIgnorePrefix:Z
    move v6, v2

    .end local v2           #forwardIndexB:I
    .local v6, forwardIndexB:I
    move v2, v0

    .end local v0           #bothHasCountryCallingCode:Z
    .local v2, bothHasCountryCallingCode:Z
    move v5, v1

    .end local v1           #forwardIndexA:I
    .local v5, forwardIndexA:I
    goto :goto_3e

    .line 728
    .local v0, backwardIndexA:I
    .local v1, backwardIndexB:I
    .local v3, chA:C
    .local v4, chB:C
    .restart local v8       #skip_compare:Z
    :cond_a5
    add-int/lit8 v0, v0, -0x1

    .line 729
    add-int/lit8 v1, v1, -0x1

    goto :goto_4a

    .line 733
    .end local v3           #chA:C
    .end local v4           #chB:C
    .end local v8           #skip_compare:Z
    :cond_aa
    if-eqz v7, :cond_d8

    .line 734
    if-eqz v9, :cond_b0

    if-le v5, v0, :cond_b6

    :cond_b0
    invoke-static {p0, v5, v0}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v2

    .end local v2           #bothHasCountryCallingCode:Z
    if-nez v2, :cond_c2

    .line 736
    :cond_b6
    if-eqz p2, :cond_bf

    .line 746
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    .end local p2
    move-result p0

    goto/16 :goto_7

    .line 748
    .restart local p2
    :cond_bf
    const/4 p0, 0x0

    goto/16 :goto_7

    .line 751
    :cond_c2
    if-eqz v10, :cond_c6

    if-le v6, v1, :cond_cc

    :cond_c6
    invoke-static {p1, v5, v1}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_125

    .line 753
    :cond_cc
    if-eqz p2, :cond_d5

    .line 754
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    .end local p2
    move-result p0

    goto/16 :goto_7

    .line 756
    .restart local p2
    :cond_d5
    const/4 p0, 0x0

    goto/16 :goto_7

    .line 769
    .restart local v2       #bothHasCountryCallingCode:Z
    :cond_d8
    if-nez v2, :cond_f7

    const/4 p2, 0x1

    .local p2, maybeNamp:Z
    :goto_db
    move v2, p2

    .local v2, maybeNamp:I
    move p2, v0

    .line 770
    .end local v0           #backwardIndexA:I
    .local p2, backwardIndexA:I
    :goto_dd
    if-lt p2, v5, :cond_122

    .line 771
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 772
    .local v0, chA:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v3

    if-eqz v3, :cond_120

    .line 773
    if-eqz v2, :cond_f9

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v0

    .end local v0           #chA:C
    const/4 v2, 0x1

    if-ne v0, v2, :cond_f9

    .line 774
    .end local v2           #maybeNamp:I
    const/4 v0, 0x0

    .line 779
    :goto_f3
    add-int/lit8 p2, p2, -0x1

    move v2, v0

    .line 780
    .restart local v2       #maybeNamp:I
    goto :goto_dd

    .line 769
    .local v0, backwardIndexA:I
    .local v2, bothHasCountryCallingCode:Z
    .local p2, acceptInvalidCCCPrefix:Z
    :cond_f7
    const/4 p2, 0x0

    goto :goto_db

    .line 776
    .end local v0           #backwardIndexA:I
    .end local v2           #bothHasCountryCallingCode:Z
    .local p2, backwardIndexA:I
    :cond_f9
    const/4 p0, 0x0

    goto/16 :goto_7

    .line 781
    .local v1, maybeNamp:I
    .local p0, backwardIndexB:I
    :goto_fc
    if-lt p0, v6, :cond_119

    .line 782
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 783
    .local v0, chB:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-eqz v2, :cond_11e

    .line 784
    if-eqz v1, :cond_116

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v0

    .end local v0           #chB:C
    const/4 v1, 0x1

    if-ne v0, v1, :cond_116

    .line 785
    .end local v1           #maybeNamp:I
    const/4 v0, 0x0

    .line 790
    :goto_112
    add-int/lit8 p0, p0, -0x1

    move v1, v0

    .line 791
    .restart local v1       #maybeNamp:I
    goto :goto_fc

    .line 787
    .end local v1           #maybeNamp:I
    :cond_116
    const/4 p0, 0x0

    goto/16 :goto_7

    .restart local v1       #maybeNamp:I
    :cond_119
    move p1, p0

    .end local p0           #backwardIndexB:I
    .local p1, backwardIndexB:I
    move p0, p2

    .line 794
    .end local v1           #maybeNamp:I
    .end local p2           #backwardIndexA:I
    .local p0, backwardIndexA:I
    :goto_11b
    const/4 p0, 0x1

    goto/16 :goto_7

    .restart local v0       #chB:C
    .restart local v1       #maybeNamp:I
    .local p0, backwardIndexB:I
    .local p1, b:Ljava/lang/String;
    .restart local p2       #backwardIndexA:I
    :cond_11e
    move v0, v1

    .end local v1           #maybeNamp:I
    .local v0, maybeNamp:I
    goto :goto_112

    .local v0, chA:C
    .local v1, backwardIndexB:I
    .local v2, maybeNamp:I
    .local p0, a:Ljava/lang/String;
    :cond_120
    move v0, v2

    .end local v2           #maybeNamp:I
    .local v0, maybeNamp:I
    goto :goto_f3

    .end local v0           #maybeNamp:I
    .restart local v2       #maybeNamp:I
    :cond_122
    move p0, v1

    .end local v1           #backwardIndexB:I
    .local p0, backwardIndexB:I
    move v1, v2

    .end local v2           #maybeNamp:I
    .local v1, maybeNamp:I
    goto :goto_fc

    .local v0, backwardIndexA:I
    .local v1, backwardIndexB:I
    .local p0, a:Ljava/lang/String;
    .local p2, acceptInvalidCCCPrefix:Z
    :cond_125
    move p1, v1

    .end local v1           #backwardIndexB:I
    .local p1, backwardIndexB:I
    move p0, v0

    .end local v0           #backwardIndexA:I
    .local p0, backwardIndexA:I
    goto :goto_11b

    .end local v6           #forwardIndexB:I
    .end local v9           #trunkPrefixIsOmittedA:Z
    .end local v10           #trunkPrefixIsOmittedB:Z
    .local v0, bothHasCountryCallingCode:Z
    .local v1, forwardIndexA:I
    .local v2, tmp:I
    .local v3, trunkPrefixIsOmittedA:Z
    .local v4, forwardIndexB:I
    .local v5, okToIgnorePrefix:Z
    .local v7, trunkPrefixIsOmittedB:Z
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_128
    move v10, v7

    .end local v7           #trunkPrefixIsOmittedB:Z
    .restart local v10       #trunkPrefixIsOmittedB:Z
    move v9, v3

    .end local v3           #trunkPrefixIsOmittedA:Z
    .restart local v9       #trunkPrefixIsOmittedA:Z
    move v2, v0

    .end local v0           #bothHasCountryCallingCode:Z
    .local v2, bothHasCountryCallingCode:Z
    move v6, v4

    .end local v4           #forwardIndexB:I
    .restart local v6       #forwardIndexB:I
    move v7, v5

    .end local v5           #okToIgnorePrefix:Z
    .local v7, okToIgnorePrefix:Z
    move v5, v1

    .end local v1           #forwardIndexA:I
    .local v5, forwardIndexA:I
    goto/16 :goto_3e

    .end local v9           #trunkPrefixIsOmittedA:Z
    .end local v10           #trunkPrefixIsOmittedB:Z
    .restart local v0       #bothHasCountryCallingCode:Z
    .local v1, tmp:I
    .local v2, cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .local v3, forwardIndexA:I
    .restart local v4       #forwardIndexB:I
    .local v5, okToIgnorePrefix:Z
    .local v6, trunkPrefixIsOmittedA:Z
    .local v7, trunkPrefixIsOmittedB:Z
    :cond_130
    move v1, v3

    .end local v3           #forwardIndexA:I
    .local v1, forwardIndexA:I
    move v3, v6

    .end local v6           #trunkPrefixIsOmittedA:Z
    .local v3, trunkPrefixIsOmittedA:Z
    goto/16 :goto_80
.end method

.method public static convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "input"

    .prologue
    .line 1725
    if-nez p0, :cond_4

    move-object v4, p0

    .line 1741
    :goto_3
    return-object v4

    .line 1728
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1729
    .local v2, len:I
    if-nez v2, :cond_c

    move-object v4, p0

    .line 1730
    goto :goto_3

    .line 1733
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 1735
    .local v3, out:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    if-ge v1, v2, :cond_21

    .line 1736
    aget-char v0, v3, v1

    .line 1738
    .local v0, c:C
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    aput-char v4, v3, v1

    .line 1735
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1741
    .end local v0           #c:C
    :cond_21
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_3
.end method

.method public static convertKeypadLettersToDigitsSmg(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "input"

    .prologue
    .line 2499
    if-nez p0, :cond_4

    move-object v4, p0

    .line 2515
    :goto_3
    return-object v4

    .line 2502
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2503
    .local v2, len:I
    if-nez v2, :cond_c

    move-object v4, p0

    .line 2504
    goto :goto_3

    .line 2507
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 2509
    .local v3, out:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    if-ge v1, v2, :cond_21

    .line 2510
    aget-char v0, v3, v1

    .line 2512
    .local v0, c:C
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP_SMG:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    aput-char v4, v3, v1

    .line 2509
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 2515
    .end local v0           #c:C
    :cond_21
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_3
.end method

.method public static convertPostDial(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "phoneNumber"

    .prologue
    .line 292
    if-nez p0, :cond_4

    .line 293
    const/4 v4, 0x0

    .line 310
    :goto_3
    return-object v4

    .line 295
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 296
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 298
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v2, :cond_27

    .line 299
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 301
    .local v0, c:C
    const/16 v4, 0x2c

    if-ne v0, v4, :cond_20

    .line 302
    const/16 v0, 0x70

    .line 307
    :cond_1a
    :goto_1a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 303
    :cond_20
    const/16 v4, 0x3b

    if-ne v0, v4, :cond_1a

    .line 304
    const/16 v0, 0x77

    goto :goto_1a

    .line 310
    .end local v0           #c:C
    :cond_27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3
.end method

.method public static convertPreDial(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "phoneNumber"

    .prologue
    .line 315
    if-nez p0, :cond_4

    .line 316
    const/4 v4, 0x0

    .line 332
    :goto_3
    return-object v4

    .line 318
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 319
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 321
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v2, :cond_27

    .line 322
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 324
    .local v0, c:C
    const/16 v4, 0x70

    if-ne v0, v4, :cond_20

    .line 325
    const/16 v0, 0x2c

    .line 329
    :cond_1a
    :goto_1a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 326
    :cond_20
    const/16 v4, 0x77

    if-ne v0, v4, :cond_1a

    .line 327
    const/16 v0, 0x3b

    goto :goto_1a

    .line 332
    .end local v0           #c:C
    :cond_27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3
.end method

.method public static extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "phoneNumber"

    .prologue
    .line 207
    if-nez p0, :cond_4

    .line 208
    const/4 v5, 0x0

    .line 225
    :goto_3
    return-object v5

    .line 211
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 212
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 213
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 215
    .local v1, firstCharAdded:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v3, :cond_2e

    .line 216
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 217
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_28

    const/16 v5, 0x2b

    if-ne v0, v5, :cond_21

    if-nez v1, :cond_28

    .line 218
    :cond_21
    const/4 v1, 0x1

    .line 219
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 220
    :cond_28
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 225
    .end local v0           #c:C
    :cond_2e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "phoneNumber"

    .prologue
    .line 238
    if-nez p0, :cond_4

    .line 239
    const/4 v5, 0x0

    .line 261
    :goto_3
    return-object v5

    .line 242
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 243
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 244
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 246
    .local v1, haveSeenPlus:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v3, :cond_2f

    .line 247
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 248
    .local v0, c:C
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_1f

    .line 249
    if-eqz v1, :cond_1e

    .line 246
    :cond_1b
    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 252
    :cond_1e
    const/4 v1, 0x1

    .line 254
    :cond_1f
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 255
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 256
    :cond_29
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 261
    .end local v0           #c:C
    :cond_2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method public static extractNetworkPortionExcpetWAIT(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "phoneNumber"

    .prologue
    .line 2390
    if-nez p0, :cond_4

    .line 2391
    const/4 v5, 0x0

    .line 2406
    :goto_3
    return-object v5

    .line 2393
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2394
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2395
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 2397
    .local v1, firstCharAdded:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v3, :cond_2f

    .line 2398
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2400
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-nez v5, :cond_23

    const/16 v5, 0x3b

    if-eq v0, v5, :cond_23

    const/16 v5, 0x2c

    if-ne v0, v5, :cond_29

    .line 2401
    :cond_23
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2397
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 2402
    :cond_29
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 2406
    .end local v0           #c:C
    :cond_2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method public static extractNetworkPortionchangePlusCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "context"
    .parameter "phoneNumber"

    .prologue
    .line 2411
    if-nez p1, :cond_4

    .line 2412
    const/4 v7, 0x0

    .line 2443
    :goto_3
    return-object v7

    .line 2415
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 2416
    .local v4, len:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2417
    .local v5, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 2419
    .local v1, firstCharAdded:Z
    const/4 v2, 0x0

    .line 2421
    .local v2, firstCharPause:Z
    const/4 v6, 0x0

    .line 2423
    .local v6, tempstrng:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_11
    if-ge v3, v4, :cond_2c

    .line 2424
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2426
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 2427
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2423
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 2428
    :cond_23
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 2430
    if-nez v3, :cond_2c

    .line 2431
    const/4 v2, 0x1

    .line 2438
    .end local v0           #c:C
    :cond_2c
    if-nez v2, :cond_38

    .line 2439
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2440
    invoke-static {p0, v6}, Landroid/telephony/PhoneNumberUtils;->processPlusCodeWithinNanp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .line 2441
    goto :goto_3

    :cond_38
    move-object v7, p1

    .line 2443
    goto :goto_3
.end method

.method public static extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "phoneNumber"

    .prologue
    .line 386
    if-nez p0, :cond_4

    const/4 v5, 0x0

    .line 402
    :goto_3
    return-object v5

    .line 389
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .local v2, ret:Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 393
    .local v4, trimIndex:I
    add-int/lit8 v1, v4, 0x1

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 394
    .local v3, s:I
    :goto_13
    if-ge v1, v3, :cond_25

    .line 396
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 397
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 398
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 394
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 402
    .end local v0           #c:C
    :cond_25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method private static findDialableIndexFromPostDialStr(Ljava/lang/String;)I
    .registers 4
    .parameter "postDialStr"

    .prologue
    .line 2046
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 2047
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2048
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_13

    move v2, v1

    .line 2052
    .end local v0           #c:C
    :goto_12
    return v2

    .line 2046
    .restart local v0       #c:C
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2052
    .end local v0           #c:C
    :cond_16
    const/4 v2, -0x1

    goto :goto_12
.end method

.method public static formatJapaneseNumber(Landroid/text/Editable;)V
    .registers 1
    .parameter "text"

    .prologue
    .line 1521
    invoke-static {p0}, Landroid/telephony/JapanesePhoneNumberFormatter;->format(Landroid/text/Editable;)V

    .line 1522
    return-void
.end method

.method public static formatNanpNumber(Landroid/text/Editable;)V
    .registers 9
    .parameter "text"

    .prologue
    .line 1401
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 1402
    .local v0, length:I
    const-string v1, "+1-nnn-nnn-nnnn"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_e

    move p0, v0

    .line 1503
    .end local v0           #length:I
    .local p0, length:I
    :goto_d
    return-void

    .line 1405
    .restart local v0       #length:I
    .local p0, text:Landroid/text/Editable;
    :cond_e
    const/4 v1, 0x5

    if-gt v0, v1, :cond_13

    move p0, v0

    .line 1407
    .end local v0           #length:I
    .local p0, length:I
    goto :goto_d

    .line 1410
    .restart local v0       #length:I
    .local p0, text:Landroid/text/Editable;
    :cond_13
    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1413
    .local v6, saved:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 1414
    .local v0, p:I
    :goto_19
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 1415
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_2d

    .line 1416
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_19

    .line 1418
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 1421
    :cond_30
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1426
    .local v3, length:I
    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 1427
    .end local v0           #p:I
    .local v1, dashPositions:[I
    const/4 v2, 0x0

    .line 1429
    .local v2, numDashes:I
    const/4 v5, 0x1

    .line 1430
    .local v5, state:I
    const/4 v4, 0x0

    .line 1431
    .local v4, numDigits:I
    const/4 v0, 0x0

    .local v0, i:I
    move v7, v5

    .end local v5           #state:I
    .local v7, state:I
    move v5, v4

    .end local v4           #numDigits:I
    .local v5, numDigits:I
    move v4, v2

    .end local v2           #numDashes:I
    .local v4, numDashes:I
    move v2, v0

    .end local v0           #i:I
    .local v2, i:I
    :goto_3f
    if-ge v2, v3, :cond_85

    .line 1432
    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 1433
    .local v0, c:C
    packed-switch v0, :pswitch_data_bc

    .line 1477
    :cond_48
    :pswitch_48
    const/4 v0, 0x0

    invoke-interface {p0, v0, v3, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .end local v0           #c:C
    move p0, v3

    .line 1478
    .end local v3           #length:I
    .local p0, length:I
    goto :goto_d

    .line 1435
    .restart local v0       #c:C
    .restart local v3       #length:I
    .local p0, text:Landroid/text/Editable;
    :pswitch_4e
    if-eqz v5, :cond_53

    const/4 v0, 0x2

    if-ne v7, v0, :cond_59

    .line 1436
    .end local v0           #c:C
    :cond_53
    const/4 v0, 0x3

    .end local v7           #state:I
    .local v0, state:I
    move v7, v0

    .line 1431
    .end local v0           #state:I
    .restart local v7       #state:I
    :goto_55
    add-int/lit8 v0, v2, 0x1

    .end local v2           #i:I
    .local v0, i:I
    move v2, v0

    .end local v0           #i:I
    .restart local v2       #i:I
    goto :goto_3f

    .line 1449
    :cond_59
    :pswitch_59
    const/4 v0, 0x2

    if-ne v7, v0, :cond_62

    .line 1451
    const/4 v0, 0x0

    invoke-interface {p0, v0, v3, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    move p0, v3

    .line 1452
    .end local v3           #length:I
    .local p0, length:I
    goto :goto_d

    .line 1453
    .restart local v3       #length:I
    .local p0, text:Landroid/text/Editable;
    :cond_62
    const/4 v0, 0x3

    if-ne v7, v0, :cond_6f

    .line 1455
    add-int/lit8 v0, v4, 0x1

    .end local v4           #numDashes:I
    .local v0, numDashes:I
    aput v2, v1, v4

    .line 1460
    :goto_69
    const/4 v7, 0x1

    .line 1461
    add-int/lit8 v4, v5, 0x1

    .end local v5           #numDigits:I
    .local v4, numDigits:I
    move v5, v4

    .end local v4           #numDigits:I
    .restart local v5       #numDigits:I
    move v4, v0

    .line 1462
    .end local v0           #numDashes:I
    .local v4, numDashes:I
    goto :goto_55

    .line 1456
    :cond_6f
    const/4 v0, 0x4

    if-eq v7, v0, :cond_ba

    const/4 v0, 0x3

    if-eq v5, v0, :cond_78

    const/4 v0, 0x6

    if-ne v5, v0, :cond_ba

    .line 1458
    :cond_78
    add-int/lit8 v0, v4, 0x1

    .end local v4           #numDashes:I
    .restart local v0       #numDashes:I
    aput v2, v1, v4

    goto :goto_69

    .line 1465
    .local v0, c:C
    .restart local v4       #numDashes:I
    :pswitch_7d
    const/4 v0, 0x4

    .end local v7           #state:I
    .local v0, state:I
    move v7, v0

    .line 1466
    .end local v0           #state:I
    .restart local v7       #state:I
    goto :goto_55

    .line 1469
    .local v0, c:C
    :pswitch_80
    if-nez v2, :cond_48

    .line 1471
    const/4 v0, 0x2

    .end local v7           #state:I
    .local v0, state:I
    move v7, v0

    .line 1472
    .end local v0           #state:I
    .restart local v7       #state:I
    goto :goto_55

    .line 1482
    :cond_85
    const/4 v0, 0x7

    if-ne v5, v0, :cond_b8

    .line 1484
    add-int/lit8 v0, v4, -0x1

    .end local v4           #numDashes:I
    .local v0, numDashes:I
    move v2, v0

    .line 1488
    .end local v0           #numDashes:I
    .local v2, numDashes:I
    :goto_8b
    const/4 v0, 0x0

    .end local v5           #numDigits:I
    .end local v6           #saved:Ljava/lang/CharSequence;
    .local v0, i:I
    :goto_8c
    if-ge v0, v2, :cond_9b

    .line 1489
    aget v4, v1, v0

    .line 1490
    .local v4, pos:I
    add-int v5, v4, v0

    add-int/2addr v4, v0

    const-string v6, "-"

    .end local v4           #pos:I
    invoke-interface {p0, v5, v4, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1488
    add-int/lit8 v0, v0, 0x1

    goto :goto_8c

    .line 1494
    :cond_9b
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 1495
    .end local v1           #dashPositions:[I
    .end local v2           #numDashes:I
    .local v0, len:I
    :goto_9f
    if-lez v0, :cond_b5

    .line 1496
    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_b5

    .line 1497
    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-interface {p0, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1498
    add-int/lit8 v0, v0, -0x1

    goto :goto_9f

    :cond_b5
    move p0, v3

    .line 1503
    .end local v3           #length:I
    .local p0, length:I
    goto/16 :goto_d

    .end local v0           #len:I
    .restart local v1       #dashPositions:[I
    .local v2, i:I
    .restart local v3       #length:I
    .local v4, numDashes:I
    .restart local v5       #numDigits:I
    .restart local v6       #saved:Ljava/lang/CharSequence;
    .local p0, text:Landroid/text/Editable;
    :cond_b8
    move v2, v4

    .end local v4           #numDashes:I
    .local v2, numDashes:I
    goto :goto_8b

    .local v2, i:I
    .restart local v4       #numDashes:I
    :cond_ba
    move v0, v4

    .end local v4           #numDashes:I
    .local v0, numDashes:I
    goto :goto_69

    .line 1433
    :pswitch_data_bc
    .packed-switch 0x2b
        :pswitch_80
        :pswitch_48
        :pswitch_7d
        :pswitch_48
        :pswitch_48
        :pswitch_59
        :pswitch_4e
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
    .end packed-switch
.end method

.method public static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "source"

    .prologue
    .line 1314
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1315
    .local v0, text:Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1316
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "source"
    .parameter "defaultFormattingType"

    .prologue
    .line 1331
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1332
    .local v0, text:Landroid/text/SpannableStringBuilder;
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1333
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Landroid/text/Editable;I)V
    .registers 8
    .parameter "text"
    .parameter "defaultFormattingType"

    .prologue
    const/16 v5, 0x31

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1358
    move v0, p1

    .line 1360
    .local v0, formatType:I
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-le v1, v4, :cond_1b

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_1b

    .line 1361
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1f

    .line 1362
    const/4 v0, 0x1

    .line 1371
    :cond_1b
    :goto_1b
    packed-switch v0, :pswitch_data_3e

    .line 1379
    :cond_1e
    :goto_1e
    return-void

    .line 1363
    :cond_1f
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1e

    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_1e

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1e

    .line 1365
    const/4 v0, 0x2

    goto :goto_1b

    .line 1373
    :pswitch_36
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    goto :goto_1e

    .line 1376
    :pswitch_3a
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatJapaneseNumber(Landroid/text/Editable;)V

    goto :goto_1e

    .line 1371
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_36
        :pswitch_3a
    .end packed-switch
.end method

.method private static getDefaultIdp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1926
    const/4 v0, 0x0

    .line 1927
    .local v0, ps:Ljava/lang/String;
    const-string/jumbo v1, "ro.cdma.idpstring"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1928
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1929
    const-string v0, "011"

    .line 1931
    :cond_f
    return-object v0
.end method

.method public static getEmergencyServiceCategory(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "number"

    .prologue
    .line 1602
    const/4 v0, 0x0

    .line 1603
    .local v0, clir:I
    const/4 v2, 0x0

    .line 1607
    .local v2, isRoaming:I
    if-nez p0, :cond_9

    const/4 p0, 0x0

    move-object v1, p0

    move p0, v0

    .end local v0           #clir:I
    .local p0, clir:I
    move v0, v2

    .line 1682
    .end local v2           #isRoaming:I
    .local v0, isRoaming:I
    :goto_8
    return-object v1

    .line 1612
    .local v0, clir:I
    .restart local v2       #isRoaming:I
    .local p0, number:Ljava/lang/String;
    :cond_9
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1615
    .local v7, words:[Ljava/lang/String;
    array-length v1, v7

    const/4 v3, 0x3

    if-ne v1, v3, :cond_92

    .line 1616
    const/4 v0, 0x0

    aget-object v1, v7, v0

    .line 1617
    .end local v0           #clir:I
    .local v1, dialNumber:Ljava/lang/String;
    const/4 v0, 0x1

    aget-object v0, v7, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1618
    .restart local v0       #clir:I
    const/4 v2, 0x2

    aget-object v2, v7, v2

    .end local v2           #isRoaming:I
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .restart local v2       #isRoaming:I
    move v5, v2

    .line 1625
    .end local v2           #isRoaming:I
    .local v5, isRoaming:I
    :goto_25
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1630
    const-string v3, ""

    .line 1632
    .local v3, numbers:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    move-object v6, v3

    .line 1633
    .end local v3           #numbers:Ljava/lang/String;
    .local v6, numbers:Ljava/lang/String;
    :goto_2d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ril.ecclist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1634
    .local v3, key:Ljava/lang/String;
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1636
    .local v4, n:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_97

    .line 1648
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .end local v2           #i:I
    if-nez v2, :cond_10e

    .line 1651
    const-string p0, ","

    .end local p0           #number:Ljava/lang/String;
    invoke-virtual {v6, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .local p0, arr$:[Ljava/lang/String;
    array-length v6, p0

    .local v6, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v4, v2

    .end local v2           #i$:I
    .end local v3           #key:Ljava/lang/String;
    .local v4, i$:I
    :goto_5e
    if-ge v4, v6, :cond_108

    aget-object v2, p0, v4

    .line 1652
    .local v2, emergencyNum:Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1653
    .local v2, splitStr:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    .line 1654
    .local v3, eccNum:Ljava/lang/String;
    array-length v8, v2

    const/4 v9, 0x1

    if-le v8, v9, :cond_c7

    const/4 v8, 0x1

    aget-object v2, v2, v8

    .line 1655
    .local v2, eccCat:Ljava/lang/String;
    :goto_72
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .end local v3           #eccNum:Ljava/lang/String;
    if-eqz v3, :cond_103

    .line 1658
    array-length p0, v7

    .end local p0           #arr$:[Ljava/lang/String;
    const/4 v3, 0x3

    if-ne p0, v3, :cond_fe

    if-nez v5, :cond_fe

    .line 1659
    const-string p0, "110"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_cc

    .line 1660
    if-nez v0, :cond_ca

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :goto_8d
    move-object v1, p0

    move p0, v0

    .end local v0           #clir:I
    .local p0, clir:I
    move v0, v5

    .end local v5           #isRoaming:I
    .local v0, isRoaming:I
    goto/16 :goto_8

    .line 1621
    .end local v1           #dialNumber:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .local v0, clir:I
    .local v2, isRoaming:I
    .local p0, number:Ljava/lang/String;
    :cond_92
    const/4 v1, 0x0

    aget-object v1, v7, v1

    .restart local v1       #dialNumber:Ljava/lang/String;
    move v5, v2

    .end local v2           #isRoaming:I
    .restart local v5       #isRoaming:I
    goto :goto_25

    .line 1639
    .local v2, i:I
    .local v3, key:Ljava/lang/String;
    .local v4, n:Ljava/lang/String;
    .local v6, numbers:Ljava/lang/String;
    :cond_97
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .end local v3           #key:Ljava/lang/String;
    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 1641
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1632
    .end local v6           #numbers:Ljava/lang/String;
    .local v3, numbers:Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    move-object v6, v3

    .end local v3           #numbers:Ljava/lang/String;
    .restart local v6       #numbers:Ljava/lang/String;
    goto/16 :goto_2d

    .line 1654
    .local v2, splitStr:[Ljava/lang/String;
    .local v3, eccNum:Ljava/lang/String;
    .local v4, i$:I
    .local v6, len$:I
    .local p0, arr$:[Ljava/lang/String;
    :cond_c7
    const-string v2, ""

    goto :goto_72

    .line 1660
    .end local v3           #eccNum:Ljava/lang/String;
    .end local p0           #arr$:[Ljava/lang/String;
    .local v2, eccCat:Ljava/lang/String;
    :cond_ca
    const/4 p0, 0x0

    goto :goto_8d

    .line 1661
    :cond_cc
    const-string p0, "118"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e3

    .line 1662
    if-nez v0, :cond_e1

    const/16 p0, 0x8

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :goto_dc
    move-object v1, p0

    move p0, v0

    .end local v0           #clir:I
    .local p0, clir:I
    move v0, v5

    .end local v5           #isRoaming:I
    .local v0, isRoaming:I
    goto/16 :goto_8

    .end local p0           #clir:I
    .local v0, clir:I
    .restart local v5       #isRoaming:I
    :cond_e1
    const/4 p0, 0x0

    goto :goto_dc

    .line 1663
    :cond_e3
    const-string p0, "119"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f9

    .line 1664
    if-nez v0, :cond_f7

    const/4 p0, 0x6

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :goto_f2
    move-object v1, p0

    move p0, v0

    .end local v0           #clir:I
    .restart local p0       #clir:I
    move v0, v5

    .end local v5           #isRoaming:I
    .local v0, isRoaming:I
    goto/16 :goto_8

    .end local p0           #clir:I
    .local v0, clir:I
    .restart local v5       #isRoaming:I
    :cond_f7
    const/4 p0, 0x0

    goto :goto_f2

    :cond_f9
    move p0, v0

    .end local v0           #clir:I
    .restart local p0       #clir:I
    move-object v1, v2

    move v0, v5

    .line 1666
    .end local v5           #isRoaming:I
    .local v0, isRoaming:I
    goto/16 :goto_8

    .end local p0           #clir:I
    .local v0, clir:I
    .restart local v5       #isRoaming:I
    :cond_fe
    move p0, v0

    .end local v0           #clir:I
    .restart local p0       #clir:I
    move-object v1, v2

    move v0, v5

    .line 1670
    .end local v5           #isRoaming:I
    .local v0, isRoaming:I
    goto/16 :goto_8

    .line 1651
    .local v0, clir:I
    .restart local v5       #isRoaming:I
    .local p0, arr$:[Ljava/lang/String;
    :cond_103
    add-int/lit8 v2, v4, 0x1

    .end local v4           #i$:I
    .local v2, i$:I
    move v4, v2

    .end local v2           #i$:I
    .restart local v4       #i$:I
    goto/16 :goto_5e

    .line 1674
    :cond_108
    const/4 p0, 0x0

    move-object v1, p0

    move p0, v0

    .end local v0           #clir:I
    .local p0, clir:I
    move v0, v5

    .end local v5           #isRoaming:I
    .local v0, isRoaming:I
    goto/16 :goto_8

    .line 1679
    .local v0, clir:I
    .local v3, key:Ljava/lang/String;
    .local v4, n:Ljava/lang/String;
    .restart local v5       #isRoaming:I
    .local v6, numbers:Ljava/lang/String;
    .local p0, number:Ljava/lang/String;
    :cond_10e
    const-string v1, "911"

    .end local v1           #dialNumber:Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_126

    const-string v1, "*911"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_126

    const-string v1, "#911"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .end local p0           #number:Ljava/lang/String;
    if-eqz p0, :cond_12d

    .line 1680
    :cond_126
    const-string p0, ""

    move-object v1, p0

    move p0, v0

    .end local v0           #clir:I
    .local p0, clir:I
    move v0, v5

    .end local v5           #isRoaming:I
    .local v0, isRoaming:I
    goto/16 :goto_8

    .line 1682
    .end local p0           #clir:I
    .local v0, clir:I
    .restart local v5       #isRoaming:I
    :cond_12d
    const/4 p0, 0x0

    move-object v1, p0

    move p0, v0

    .end local v0           #clir:I
    .restart local p0       #clir:I
    move v0, v5

    .end local v5           #isRoaming:I
    .local v0, isRoaming:I
    goto/16 :goto_8
.end method

.method public static getFormatTypeForLocale(Ljava/util/Locale;)I
    .registers 3
    .parameter "locale"

    .prologue
    .line 1344
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1346
    .local v0, country:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static getFormatTypeFromCountryCode(Ljava/lang/String;)I
    .registers 4
    .parameter "country"

    .prologue
    .line 1944
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v1, v2

    .line 1945
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    if-ge v0, v1, :cond_15

    .line 1946
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_12

    .line 1947
    const/4 v2, 0x1

    .line 1953
    :goto_11
    return v2

    .line 1945
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1950
    :cond_15
    const-string v2, "jp"

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1f

    .line 1951
    const/4 v2, 0x2

    goto :goto_11

    .line 1953
    :cond_1f
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public static getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    .registers 14
    .parameter "intent"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 147
    const/4 v8, 0x0

    .line 149
    .local v8, number:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 150
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 152
    .local v10, scheme:Ljava/lang/String;
    const-string/jumbo v0, "tel"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string/jumbo v0, "sip"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 153
    :cond_1c
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 190
    :goto_20
    return-object v0

    .line 158
    :cond_21
    const-string/jumbo v0, "voicemail"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 159
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 162
    :cond_33
    if-nez p1, :cond_37

    move-object v0, v3

    .line 163
    goto :goto_20

    .line 166
    :cond_37
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 167
    .local v11, type:Ljava/lang/String;
    const/4 v9, 0x0

    .line 170
    .local v9, phoneColumn:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 171
    .local v6, authority:Ljava/lang/String;
    const-string v0, "contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 172
    const-string/jumbo v9, "number"

    .line 177
    :cond_4b
    :goto_4b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v9, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 180
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_6e

    .line 182
    :try_start_5d
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 183
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_6a
    .catchall {:try_start_5d .. :try_end_6a} :catchall_7b

    move-result-object v8

    .line 186
    :cond_6b
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6e
    move-object v0, v8

    .line 190
    goto :goto_20

    .line 173
    .end local v7           #c:Landroid/database/Cursor;
    :cond_70
    const-string v0, "com.android.contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 174
    const-string v9, "data1"

    goto :goto_4b

    .line 186
    .restart local v7       #c:Landroid/database/Cursor;
    :catchall_7b
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "phoneNumber"

    .prologue
    .line 838
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 840
    .local v0, np:Ljava/lang/String;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    .line 842
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method private static indexOfLastNetworkChar(Ljava/lang/String;)I
    .registers 7
    .parameter "a"

    .prologue
    const/4 v5, 0x1

    .line 362
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 364
    .local v0, origLength:I
    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 365
    .local v1, pIndex:I
    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 367
    .local v3, wIndex:I
    invoke-static {v1, v3}, Landroid/telephony/PhoneNumberUtils;->minPositive(II)I

    move-result v2

    .line 369
    .local v2, trimIndex:I
    if-gez v2, :cond_1a

    .line 370
    sub-int v4, v0, v5

    .line 372
    :goto_19
    return v4

    :cond_1a
    sub-int v4, v2, v5

    goto :goto_19
.end method

.method private static internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V
    .registers 9
    .parameter "sb"
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 1018
    move v2, p2

    .local v2, i:I
    :goto_1
    add-int v3, p3, p2

    if-ge v2, v3, :cond_10

    .line 1022
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    .line 1024
    .local v1, c:C
    if-nez v1, :cond_11

    .line 1051
    .end local v1           #c:C
    :cond_10
    return-void

    .line 1027
    .restart local v1       #c:C
    :cond_11
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1036
    aget-byte v3, p1, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v0, v3

    .line 1038
    .local v0, b:B
    const/16 v3, 0xf

    if-ne v0, v3, :cond_25

    add-int/lit8 v3, v2, 0x1

    add-int v4, p3, p2

    if-eq v3, v4, :cond_10

    .line 1043
    :cond_25
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    .line 1044
    if-eqz v1, :cond_10

    .line 1048
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1018
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .parameter "np"
    .parameter "numDigits"

    .prologue
    .line 851
    if-nez p0, :cond_4

    const/4 v5, 0x0

    .line 864
    :goto_3
    return-object v5

    .line 853
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 854
    .local v3, ret:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 856
    .local v2, length:I
    const/4 v5, 0x1

    sub-int v1, v2, v5

    .local v1, i:I
    move v4, v2

    .line 857
    .local v4, s:I
    :goto_11
    if-ltz v1, :cond_21

    sub-int v5, v4, v1

    if-gt v5, p1, :cond_21

    .line 859
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 861
    .local v0, c:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 857
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 864
    .end local v0           #c:C
    :cond_21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method public static final is12Key(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 103
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_10

    const/16 v0, 0x23

    if-ne p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static isAccountInfoNumber(Ljava/lang/String;)Z
    .registers 2
    .parameter "number"

    .prologue
    .line 2462
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2467
    const-string v0, "*4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCheckInvalidNumber(Ljava/lang/String;)Z
    .registers 6
    .parameter "phoneNumber"

    .prologue
    const/4 v4, 0x1

    .line 2562
    if-nez p0, :cond_5

    move v3, v4

    .line 2574
    :goto_4
    return v3

    .line 2566
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2567
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v2, :cond_1b

    .line 2568
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2569
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isCheckValidRange(C)Z

    move-result v3

    if-nez v3, :cond_18

    move v3, v4

    .line 2570
    goto :goto_4

    .line 2567
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 2574
    .end local v0           #c:C
    :cond_1b
    const/4 v3, 0x0

    goto :goto_4
.end method

.method public static isCheckValidRange(C)Z
    .registers 3
    .parameter "c"

    .prologue
    const/4 v1, 0x1

    .line 2578
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    move v0, v1

    .line 2588
    :goto_a
    return v0

    .line 2580
    :cond_b
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_23

    const/16 v0, 0x23

    if-eq p0, v0, :cond_23

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_23

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_23

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_23

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_25

    :cond_23
    move v0, v1

    .line 2586
    goto :goto_a

    .line 2588
    :cond_25
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static isCountryCallingCode(I)Z
    .registers 2
    .parameter "countryCallingCodeCandidate"

    .prologue
    .line 2220
    if-lez p0, :cond_e

    sget v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    if-ge p0, v0, :cond_e

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTLY_CALLING_CALL:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isCustomerServiceNumber(Ljava/lang/String;)Z
    .registers 2
    .parameter "number"

    .prologue
    .line 2451
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2456
    const-string v0, "*2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isDefaultPlusCode(Ljava/lang/String;)Z
    .registers 6
    .parameter "dialStr"

    .prologue
    const/16 v4, 0x31

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2549
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    move v0, v2

    .line 2557
    :goto_c
    return v0

    .line 2554
    :cond_d
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_24

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_24

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_24

    move v0, v3

    .line 2555
    goto :goto_c

    :cond_24
    move v0, v2

    .line 2557
    goto :goto_c
.end method

.method public static final isDialable(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 109
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_18

    const/16 v0, 0x23

    if-eq p0, v0, :cond_18

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_18

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private static isDialable(Ljava/lang/String;)Z
    .registers 4
    .parameter "address"

    .prologue
    .line 1123
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, count:I
    :goto_5
    if-ge v1, v0, :cond_16

    .line 1124
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1125
    const/4 v2, 0x0

    .line 1128
    :goto_12
    return v2

    .line 1123
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1128
    :cond_16
    const/4 v2, 0x1

    goto :goto_12
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .registers 9
    .parameter "number"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1552
    if-nez p0, :cond_6

    move v5, v6

    .line 1581
    :goto_5
    return v5

    .line 1556
    :cond_6
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1560
    const-string/jumbo v5, "ril.ecclist"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1561
    .local v4, numbers:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1563
    const-string/jumbo v5, "ro.ril.ecclist"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1566
    :cond_1e
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 1569
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2c
    if-ge v2, v3, :cond_3b

    aget-object v1, v0, v2

    .line 1570
    .local v1, emergencyNum:Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    move v5, v7

    .line 1571
    goto :goto_5

    .line 1569
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .end local v1           #emergencyNum:Ljava/lang/String;
    :cond_3b
    move v5, v6

    .line 1575
    goto :goto_5

    .line 1581
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_3d
    const-string v5, "911"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_55

    const-string v5, "*911"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_55

    const-string v5, "#911"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    :cond_55
    move v5, v7

    goto :goto_5

    :cond_57
    move v5, v6

    goto :goto_5
.end method

.method public static isGlobalPhoneNumber(Ljava/lang/String;)Z
    .registers 3
    .parameter "phoneNumber"

    .prologue
    .line 1114
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1115
    const/4 v1, 0x0

    .line 1119
    :goto_7
    return v1

    .line 1118
    :cond_8
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1119
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_7
.end method

.method public static isISODigit(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 97
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isNanp(Ljava/lang/String;)Z
    .registers 6
    .parameter "dialStr"

    .prologue
    const/16 v4, 0xa

    .line 1961
    const/4 v2, 0x0

    .line 1962
    .local v2, retVal:Z
    if-eqz p0, :cond_34

    .line 1963
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_30

    .line 1964
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_30

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1966
    const/4 v2, 0x1

    .line 1967
    const/4 v1, 0x1

    .local v1, i:I
    :goto_23
    if-ge v1, v4, :cond_30

    .line 1968
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1969
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-nez v3, :cond_31

    .line 1970
    const/4 v2, 0x0

    .line 1979
    .end local v0           #c:C
    .end local v1           #i:I
    :cond_30
    :goto_30
    return v2

    .line 1967
    .restart local v0       #c:C
    .restart local v1       #i:I
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 1977
    .end local v0           #c:C
    .end local v1           #i:I
    :cond_34
    const-string v3, "isNanp: null dialStr passed in"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method public static final isNonSeparator(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 121
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_20

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_20

    const/16 v0, 0x23

    if-eq p0, v0, :cond_20

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_20

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_20

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_20

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private static isNonSeparator(Ljava/lang/String;)Z
    .registers 4
    .parameter "address"

    .prologue
    .line 1132
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, count:I
    :goto_5
    if-ge v1, v0, :cond_16

    .line 1133
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1134
    const/4 v2, 0x0

    .line 1137
    :goto_12
    return v2

    .line 1132
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1137
    :cond_16
    const/4 v2, 0x1

    goto :goto_12
.end method

.method private static isOneNanp(Ljava/lang/String;)Z
    .registers 5
    .parameter "dialStr"

    .prologue
    .line 1986
    const/4 v1, 0x0

    .line 1987
    .local v1, retVal:Z
    if-eqz p0, :cond_19

    .line 1988
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1989
    .local v0, newDialStr:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_18

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1990
    const/4 v1, 0x1

    .line 1995
    .end local v0           #newDialStr:Ljava/lang/String;
    :cond_18
    :goto_18
    return v1

    .line 1993
    :cond_19
    const-string v2, "isOneNanp: null dialStr passed in"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public static final isReallyDialable(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 115
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_14

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_14

    const/16 v0, 0x23

    if-eq p0, v0, :cond_14

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static isSeparator(C)Z
    .registers 2
    .parameter "ch"

    .prologue
    .line 135
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v0

    if-nez v0, :cond_18

    const/16 v0, 0x61

    if-gt v0, p0, :cond_e

    const/16 v0, 0x7a

    if-le p0, v0, :cond_18

    :cond_e
    const/16 v0, 0x41

    if-gt v0, p0, :cond_16

    const/16 v0, 0x5a

    if-le p0, v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static final isStartsPostDial(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 130
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_8

    const/16 v0, 0x3b

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isTwoToNine(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 1935
    const/16 v0, 0x32

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    .line 1936
    const/4 v0, 0x1

    .line 1938
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isUriNumber(Ljava/lang/String;)Z
    .registers 2
    .parameter "number"

    .prologue
    .line 2011
    if-eqz p0, :cond_14

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "%40"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isVoiceMailNumber(Ljava/lang/String;)Z
    .registers 5
    .parameter "number"

    .prologue
    const/4 v3, 0x0

    .line 1700
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_8} :catch_1b

    move-result-object v1

    .line 1707
    .local v1, vmNumber:Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1711
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-static {p0, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    .end local v1           #vmNumber:Ljava/lang/String;
    :goto_1a
    return v2

    .line 1701
    :catch_1b
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/SecurityException;
    move v2, v3

    .line 1702
    goto :goto_1a

    .end local v0           #ex:Ljava/lang/SecurityException;
    .restart local v1       #vmNumber:Ljava/lang/String;
    :cond_1f
    move v2, v3

    .line 1711
    goto :goto_1a
.end method

.method public static isWellFormedSmsAddress(Ljava/lang/String;)Z
    .registers 3
    .parameter "address"

    .prologue
    .line 1105
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1108
    .local v0, networkPortion:Ljava/lang/String;
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 351
    const-string v0, "PhoneNumberUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return-void
.end method

.method private static matchIntlPrefix(Ljava/lang/String;I)Z
    .registers 10
    .parameter "a"
    .parameter "len"

    .prologue
    const/16 v7, 0x31

    const/16 v6, 0x30

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2093
    const/4 v2, 0x0

    .line 2094
    .local v2, state:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, p1, :cond_49

    .line 2095
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2097
    .local v0, c:C
    packed-switch v2, :pswitch_data_56

    .line 2116
    :pswitch_11
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v4

    .line 2122
    .end local v0           #c:C
    :goto_18
    return v3

    .line 2099
    .restart local v0       #c:C
    :pswitch_19
    const/16 v3, 0x2b

    if-ne v0, v3, :cond_21

    const/4 v2, 0x1

    .line 2094
    :cond_1e
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2100
    :cond_21
    if-ne v0, v6, :cond_25

    const/4 v2, 0x2

    goto :goto_1e

    .line 2101
    :cond_25
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v4

    goto :goto_18

    .line 2105
    :pswitch_2d
    if-ne v0, v6, :cond_31

    const/4 v2, 0x3

    goto :goto_1e

    .line 2106
    :cond_31
    if-ne v0, v7, :cond_35

    const/4 v2, 0x4

    goto :goto_1e

    .line 2107
    :cond_35
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v4

    goto :goto_18

    .line 2111
    :pswitch_3d
    if-ne v0, v7, :cond_41

    const/4 v2, 0x5

    goto :goto_1e

    .line 2112
    :cond_41
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v4

    goto :goto_18

    .line 2122
    .end local v0           #c:C
    :cond_49
    if-eq v2, v5, :cond_51

    const/4 v3, 0x3

    if-eq v2, v3, :cond_51

    const/4 v3, 0x5

    if-ne v2, v3, :cond_53

    :cond_51
    move v3, v5

    goto :goto_18

    :cond_53
    move v3, v4

    goto :goto_18

    .line 2097
    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_19
        :pswitch_11
        :pswitch_2d
        :pswitch_11
        :pswitch_3d
    .end packed-switch
.end method

.method private static matchIntlPrefixAndCC(Ljava/lang/String;I)Z
    .registers 9
    .parameter "a"
    .parameter "len"

    .prologue
    const/16 v6, 0x31

    const/16 v5, 0x30

    const/4 v4, 0x0

    .line 2132
    const/4 v2, 0x0

    .line 2133
    .local v2, state:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, p1, :cond_69

    .line 2134
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2136
    .local v0, c:C
    packed-switch v2, :pswitch_data_78

    .line 2168
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v3, v4

    .line 2172
    .end local v0           #c:C
    :goto_17
    return v3

    .line 2138
    .restart local v0       #c:C
    :pswitch_18
    const/16 v3, 0x2b

    if-ne v0, v3, :cond_20

    const/4 v2, 0x1

    .line 2133
    :cond_1d
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2139
    :cond_20
    if-ne v0, v5, :cond_24

    const/4 v2, 0x2

    goto :goto_1d

    .line 2140
    :cond_24
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v3, v4

    goto :goto_17

    .line 2144
    :pswitch_2c
    if-ne v0, v5, :cond_30

    const/4 v2, 0x3

    goto :goto_1d

    .line 2145
    :cond_30
    if-ne v0, v6, :cond_34

    const/4 v2, 0x4

    goto :goto_1d

    .line 2146
    :cond_34
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v3, v4

    goto :goto_17

    .line 2150
    :pswitch_3c
    if-ne v0, v6, :cond_40

    const/4 v2, 0x5

    goto :goto_1d

    .line 2151
    :cond_40
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v3, v4

    goto :goto_17

    .line 2157
    :pswitch_48
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-eqz v3, :cond_50

    const/4 v2, 0x6

    goto :goto_1d

    .line 2158
    :cond_50
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v3, v4

    goto :goto_17

    .line 2163
    :pswitch_58
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-eqz v3, :cond_61

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 2164
    :cond_61
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v3, v4

    goto :goto_17

    .line 2172
    .end local v0           #c:C
    :cond_69
    const/4 v3, 0x6

    if-eq v2, v3, :cond_73

    const/4 v3, 0x7

    if-eq v2, v3, :cond_73

    const/16 v3, 0x8

    if-ne v2, v3, :cond_75

    :cond_73
    const/4 v3, 0x1

    goto :goto_17

    :cond_75
    move v3, v4

    goto :goto_17

    .line 2136
    nop

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_18
        :pswitch_48
        :pswitch_2c
        :pswitch_48
        :pswitch_3c
        :pswitch_48
        :pswitch_58
        :pswitch_58
    .end packed-switch
.end method

.method private static matchTrunkPrefix(Ljava/lang/String;I)Z
    .registers 6
    .parameter "a"
    .parameter "len"

    .prologue
    .line 2180
    const/4 v1, 0x0

    .line 2182
    .local v1, found:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, p1, :cond_1a

    .line 2183
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2185
    .local v0, c:C
    const/16 v3, 0x30

    if-ne v0, v3, :cond_12

    if-nez v1, :cond_12

    .line 2186
    const/4 v1, 0x1

    .line 2182
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2187
    :cond_12
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2188
    const/4 v3, 0x0

    .line 2192
    .end local v0           #c:C
    :goto_19
    return v3

    :cond_1a
    move v3, v1

    goto :goto_19
.end method

.method private static minPositive(II)I
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 339
    if-ltz p0, :cond_a

    if-ltz p1, :cond_a

    .line 340
    if-ge p0, p1, :cond_8

    move v0, p0

    .line 346
    :goto_7
    return v0

    :cond_8
    move v0, p1

    .line 340
    goto :goto_7

    .line 341
    :cond_a
    if-ltz p0, :cond_e

    move v0, p0

    .line 342
    goto :goto_7

    .line 343
    :cond_e
    if-ltz p1, :cond_12

    move v0, p1

    .line 344
    goto :goto_7

    .line 346
    :cond_12
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public static networkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .registers 3
    .parameter "s"

    .prologue
    .line 1147
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1148
    .local v0, networkPortion:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B
    .registers 3
    .parameter "s"

    .prologue
    .line 1167
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1168
    .local v0, networkPortion:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static numberToCalledPartyBCD(Ljava/lang/String;)[B
    .registers 2
    .parameter "number"

    .prologue
    .line 1180
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method private static numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B
    .registers 13
    .parameter "number"
    .parameter "includeLength"

    .prologue
    .line 1189
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 1190
    .local v5, numberLenReal:I
    move v0, v5

    .line 1191
    .local v0, numberLenEffective:I
    const/16 v1, 0x2b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    const/4 v1, 0x1

    move v3, v1

    .line 1192
    .local v3, hasPlus:Z
    :goto_10
    if-eqz v3, :cond_14

    add-int/lit8 v0, v0, -0x1

    .line 1194
    :cond_14
    if-nez v0, :cond_1b

    const/4 p0, 0x0

    .line 1219
    .end local v0           #numberLenEffective:I
    .end local p0
    .end local p1
    :goto_17
    return-object p0

    .line 1191
    .end local v3           #hasPlus:Z
    .restart local v0       #numberLenEffective:I
    .restart local p0
    .restart local p1
    :cond_18
    const/4 v1, 0x0

    move v3, v1

    goto :goto_10

    .line 1196
    .restart local v3       #hasPlus:Z
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v1, v0, 0x2

    .line 1197
    .end local v0           #numberLenEffective:I
    .local v1, resultLen:I
    const/4 v0, 0x1

    .line 1198
    .local v0, extraBytes:I
    if-eqz p1, :cond_80

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    .line 1199
    .end local v0           #extraBytes:I
    .local v2, extraBytes:I
    :goto_25
    add-int v7, v1, v2

    .line 1201
    .end local v1           #resultLen:I
    .local v7, resultLen:I
    new-array v6, v7, [B

    .line 1203
    .local v6, result:[B
    const/4 v0, 0x0

    .line 1204
    .local v0, digitCount:I
    const/4 v1, 0x0

    .local v1, i:I
    move v4, v1

    .end local v1           #i:I
    .local v4, i:I
    move v1, v0

    .end local v0           #digitCount:I
    .local v1, digitCount:I
    :goto_2d
    if-ge v4, v5, :cond_59

    .line 1205
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1206
    .local v0, c:C
    const/16 v8, 0x2b

    if-ne v0, v8, :cond_3d

    move v0, v1

    .line 1204
    .end local v1           #digitCount:I
    .local v0, digitCount:I
    :goto_38
    add-int/lit8 v1, v4, 0x1

    .end local v4           #i:I
    .local v1, i:I
    move v4, v1

    .end local v1           #i:I
    .restart local v4       #i:I
    move v1, v0

    .end local v0           #digitCount:I
    .local v1, digitCount:I
    goto :goto_2d

    .line 1207
    .local v0, c:C
    :cond_3d
    and-int/lit8 v8, v1, 0x1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_57

    const/4 v8, 0x4

    .line 1208
    .local v8, shift:I
    :goto_43
    shr-int/lit8 v9, v1, 0x1

    add-int/2addr v9, v2

    aget-byte v10, v6, v9

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->charToBCD(C)I

    move-result v0

    .end local v0           #c:C
    and-int/lit8 v0, v0, 0xf

    shl-int/2addr v0, v8

    int-to-byte v0, v0

    or-int/2addr v0, v10

    int-to-byte v0, v0

    aput-byte v0, v6, v9

    .line 1209
    add-int/lit8 v0, v1, 0x1

    .end local v1           #digitCount:I
    .local v0, digitCount:I
    goto :goto_38

    .line 1207
    .end local v8           #shift:I
    .local v0, c:C
    .restart local v1       #digitCount:I
    :cond_57
    const/4 v8, 0x0

    goto :goto_43

    .line 1213
    .end local v0           #c:C
    :cond_59
    and-int/lit8 p0, v1, 0x1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_68

    .end local p0
    shr-int/lit8 p0, v1, 0x1

    add-int/2addr p0, v2

    aget-byte v0, v6, p0

    or-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    aput-byte v0, v6, p0

    .line 1215
    :cond_68
    const/4 p0, 0x0

    .line 1216
    .local p0, offset:I
    if-eqz p1, :cond_74

    add-int/lit8 p1, p0, 0x1

    .end local p0           #offset:I
    .local p1, offset:I
    const/4 v0, 0x1

    sub-int v0, v7, v0

    int-to-byte v0, v0

    aput-byte v0, v6, p0

    move p0, p1

    .line 1217
    .end local p1           #offset:I
    .restart local p0       #offset:I
    :cond_74
    if-eqz v3, :cond_7d

    const/16 p1, 0x91

    :goto_78
    int-to-byte p1, p1

    aput-byte p1, v6, p0

    move-object p0, v6

    .line 1219
    goto :goto_17

    .line 1217
    :cond_7d
    const/16 p1, 0x81

    goto :goto_78

    .end local v2           #extraBytes:I
    .end local v4           #i:I
    .end local v6           #result:[B
    .end local v7           #resultLen:I
    .local v0, extraBytes:I
    .local v1, resultLen:I
    .local p0, number:Ljava/lang/String;
    .local p1, includeLength:Z
    :cond_80
    move v2, v0

    .end local v0           #extraBytes:I
    .restart local v2       #extraBytes:I
    goto :goto_25
.end method

.method private static processPlusCodeWithinNanp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "context"
    .parameter "networkDialStr"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2519
    move-object v2, p1

    .line 2525
    .local v2, retStr:Ljava/lang/String;
    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2526
    .local v1, newStr:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2527
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v5, "country_code"

    const-string v6, "011"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2528
    .local v4, value:Ljava/lang/String;
    const-string/jumbo v5, "toggle_country_name"

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2530
    .local v0, isChecked:Z
    if-eqz p1, :cond_3f

    move v5, v8

    :goto_1d
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_41

    move v6, v8

    :goto_26
    and-int/2addr v5, v6

    if-eqz v5, :cond_3e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v8, :cond_3e

    .line 2534
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isDefaultPlusCode(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_43

    if-eqz v0, :cond_43

    .line 2536
    move-object v2, v1

    .line 2544
    :cond_3e
    :goto_3e
    return-object v2

    :cond_3f
    move v5, v9

    .line 2530
    goto :goto_1d

    :cond_41
    move v6, v9

    goto :goto_26

    .line 2540
    :cond_43
    const-string v5, "[+]"

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3e
.end method

.method private static processPlusCodeWithinNanp(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "networkDialStr"

    .prologue
    const/4 v5, 0x1

    .line 2021
    move-object v2, p0

    .line 2026
    .local v2, retStr:Ljava/lang/String;
    if-eqz p0, :cond_1e

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_1e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_1e

    .line 2029
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2030
    .local v1, newStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 2032
    move-object v2, v1

    .line 2040
    .end local v1           #newStr:Ljava/lang/String;
    :cond_1e
    :goto_1e
    return-object v2

    .line 2034
    .restart local v1       #newStr:Ljava/lang/String;
    :cond_1f
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultIdp()Ljava/lang/String;

    move-result-object v0

    .line 2036
    .local v0, idpStr:Ljava/lang/String;
    const-string v3, "[+]"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1e
.end method

.method public static stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "s"
    .parameter "TOA"

    .prologue
    .line 875
    if-nez p0, :cond_4

    const/4 v0, 0x0

    .line 881
    :goto_3
    return-object v0

    .line 877
    :cond_4
    const/16 v0, 0x91

    if-ne p1, v0, :cond_2b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2b

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_2b

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_2b
    move-object v0, p0

    .line 881
    goto :goto_3
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "phoneNumber"

    .prologue
    .line 270
    if-nez p0, :cond_4

    .line 271
    const/4 v4, 0x0

    .line 283
    :goto_3
    return-object v4

    .line 273
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 274
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 276
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v2, :cond_20

    .line 277
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 278
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 279
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 283
    .end local v0           #c:C
    :cond_20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3
.end method

.method public static toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "phoneNumber"

    .prologue
    .line 808
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 809
    .local v0, np:Ljava/lang/String;
    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toCallerIDMinMatch(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "phoneNumber"
    .parameter "minMatch"

    .prologue
    .line 825
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 826
    .local v0, np:Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toaFromString(Ljava/lang/String;)I
    .registers 3
    .parameter "s"

    .prologue
    .line 891
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_14

    .line 892
    const/16 v0, 0x91

    .line 895
    :goto_13
    return v0

    :cond_14
    const/16 v0, 0x81

    goto :goto_13
.end method

.method private static tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .registers 13
    .parameter "str"
    .parameter "acceptThailandCase"

    .prologue
    const/16 v10, 0x36

    const/16 v9, 0x30

    const/16 v8, 0x31

    const/4 v7, 0x0

    .line 2259
    const/4 v5, 0x0

    .line 2260
    .local v5, state:I
    const/4 v0, 0x0

    .line 2261
    .local v0, ccc:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2262
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    if-ge v2, v3, :cond_a1

    .line 2263
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2264
    .local v1, ch:C
    packed-switch v5, :pswitch_data_a4

    move-object v6, v7

    .line 2333
    .end local v1           #ch:C
    :goto_18
    return-object v6

    .line 2266
    .restart local v1       #ch:C
    :pswitch_19
    const/16 v6, 0x2b

    if-ne v1, v6, :cond_21

    const/4 v5, 0x1

    .line 2262
    :cond_1e
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2267
    :cond_21
    if-ne v1, v9, :cond_25

    const/4 v5, 0x2

    goto :goto_1e

    .line 2268
    :cond_25
    if-ne v1, v8, :cond_2e

    .line 2269
    if-eqz p1, :cond_2c

    .line 2270
    const/16 v5, 0x8

    goto :goto_1e

    :cond_2c
    move-object v6, v7

    .line 2272
    goto :goto_18

    .line 2274
    :cond_2e
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_1e

    move-object v6, v7

    .line 2275
    goto :goto_18

    .line 2280
    :pswitch_36
    if-ne v1, v9, :cond_3a

    const/4 v5, 0x3

    goto :goto_1e

    .line 2281
    :cond_3a
    if-ne v1, v8, :cond_3e

    const/4 v5, 0x4

    goto :goto_1e

    .line 2282
    :cond_3e
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_1e

    move-object v6, v7

    .line 2283
    goto :goto_18

    .line 2288
    :pswitch_46
    if-ne v1, v8, :cond_4a

    const/4 v5, 0x5

    goto :goto_1e

    .line 2289
    :cond_4a
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_1e

    move-object v6, v7

    .line 2290
    goto :goto_18

    .line 2300
    :pswitch_52
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    .line 2301
    .local v4, ret:I
    if-lez v4, :cond_7c

    .line 2302
    mul-int/lit8 v6, v0, 0xa

    add-int v0, v6, v4

    .line 2303
    const/16 v6, 0x64

    if-ge v0, v6, :cond_66

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isCountryCallingCode(I)Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 2304
    :cond_66
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v6, v0, v7}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto :goto_18

    .line 2306
    :cond_6e
    const/4 v6, 0x1

    if-eq v5, v6, :cond_77

    const/4 v6, 0x3

    if-eq v5, v6, :cond_77

    const/4 v6, 0x5

    if-ne v5, v6, :cond_79

    .line 2307
    :cond_77
    const/4 v5, 0x6

    goto :goto_1e

    .line 2309
    :cond_79
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 2311
    :cond_7c
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_1e

    move-object v6, v7

    .line 2312
    goto :goto_18

    .line 2317
    .end local v4           #ret:I
    :pswitch_84
    if-ne v1, v10, :cond_89

    const/16 v5, 0x9

    goto :goto_1e

    .line 2318
    :cond_89
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_1e

    move-object v6, v7

    .line 2319
    goto :goto_18

    .line 2323
    :pswitch_91
    if-ne v1, v10, :cond_9e

    .line 2324
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    const/16 v7, 0x42

    add-int/lit8 v8, v2, 0x1

    invoke-direct {v6, v7, v8}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto/16 :goto_18

    :cond_9e
    move-object v6, v7

    .line 2326
    goto/16 :goto_18

    .end local v1           #ch:C
    :cond_a1
    move-object v6, v7

    .line 2333
    goto/16 :goto_18

    .line 2264
    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_19
        :pswitch_52
        :pswitch_36
        :pswitch_52
        :pswitch_46
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_84
        :pswitch_91
    .end packed-switch
.end method

.method private static tryGetISODigit(C)I
    .registers 3
    .parameter "ch"

    .prologue
    const/16 v1, 0x30

    .line 2230
    if-gt v1, p0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 2231
    sub-int v0, p0, v1

    .line 2233
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method private static tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I
    .registers 7
    .parameter "str"
    .parameter "currentIndex"

    .prologue
    const/4 v4, -0x1

    .line 2346
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2347
    .local v2, length:I
    move v1, p1

    .local v1, i:I
    :goto_6
    if-ge v1, v2, :cond_20

    .line 2348
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2349
    .local v0, ch:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v3

    if-ltz v3, :cond_15

    .line 2350
    add-int/lit8 v3, v1, 0x1

    .line 2355
    .end local v0           #ch:C
    :goto_14
    return v3

    .line 2351
    .restart local v0       #ch:C
    :cond_15
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v3, v4

    .line 2352
    goto :goto_14

    .line 2347
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .end local v0           #ch:C
    :cond_20
    move v3, v4

    .line 2355
    goto :goto_14
.end method
