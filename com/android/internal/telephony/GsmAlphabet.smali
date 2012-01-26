.class public Lcom/android/internal/telephony/GsmAlphabet;
.super Ljava/lang/Object;
.source "GsmAlphabet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    }
.end annotation


# static fields
.field public static final GSM_EXTENDED_ESCAPE:B = 0x1bt

.field private static final TAG:Ljava/lang/String; = "GSM"

.field private static final UDH_SEPTET_COST_CONCATENATED_MESSAGE:I = 0x6

.field private static final UDH_SEPTET_COST_LENGTH:I = 0x1

.field private static final UDH_SEPTET_COST_ONE_SHIFT_TABLE:I = 0x4

.field private static final UDH_SEPTET_COST_TWO_SHIFT_TABLES:I = 0x7

.field private static final charToGsm:Landroid/util/SparseIntArray;

.field private static final charToGsmExtended:Landroid/util/SparseIntArray;

.field private static final gsmExtendedToChar:Landroid/util/SparseIntArray;

.field private static final gsmToChar:Landroid/util/SparseIntArray;

.field private static final sCharsToGsmTables:[Landroid/util/SparseIntArray;

.field private static final sCharsToShiftTables:[Landroid/util/SparseIntArray;

.field private static sEnabledLockingShiftTables:[I

.field private static sEnabledSingleShiftTables:[I

.field private static sGsmSpaceChar:I

.field private static sHighestEnabledSingleShiftCode:I

.field private static final sLanguageShiftTables:[Ljava/lang/String;

.field private static final sLanguageTables:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    .line 1056
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "@\u00a3$\u00a5\u00e8\u00e9\u00f9\u00ec\u00f2\u00c7\n\u00d8\u00f8\r\u00c5\u00e5\u0394_\u03a6\u0393\u039b\u03a9\u03a0\u03a8\u03a3\u0398\u039e\uffff\u00c6\u00e6\u00df\u00c9 !\"#\u00a4%&\'()*+,-./0123456789:;<=>?\u00a1ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c4\u00d6\u00d1\u00dc\u00a7\u00bfabcdefghijklmnopqrstuvwxyz\u00e4\u00f6\u00f1\u00fc\u00e0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "@\u00a3$\u00a5\u20ac\u00e9\u00f9\u0131\u00f2\u00c7\n\u011e\u011f\r\u00c5\u00e5\u0394_\u03a6\u0393\u039b\u03a9\u03a0\u03a8\u03a3\u0398\u039e\uffff\u015e\u015f\u00df\u00c9 !\"#\u00a4%&\'()*+,-./0123456789:;<=>?\u0130ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c4\u00d6\u00d1\u00dc\u00a7\u00e7abcdefghijklmnopqrstuvwxyz\u00e4\u00f6\u00f1\u00fc\u00e0"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "@\u00a3$\u00a5\u00ea\u00e9\u00fa\u00ed\u00f3\u00e7\n\u00d4\u00f4\r\u00c1\u00e1\u0394_\u00aa\u00c7\u00c0\u221e^\\\u20ac\u00d3|\uffff\u00c2\u00e2\u00ca\u00c9 !\"#\u00ba%&\'()*+,-./0123456789:;<=>?\u00cdABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c3\u00d5\u00da\u00dc\u00a7~abcdefghijklmnopqrstuvwxyz\u00e3\u00f5`\u00fc\u00e0"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "\u0981\u0982\u0983\u0985\u0986\u0987\u0988\u0989\u098a\u098b\n\u098c \r \u098f\u0990  \u0993\u0994\u0995\u0996\u0997\u0998\u0999\u099a\uffff\u099b\u099c\u099d\u099e !\u099f\u09a0\u09a1\u09a2\u09a3\u09a4)(\u09a5\u09a6,\u09a7.\u09a80123456789:; \u09aa\u09ab?\u09ac\u09ad\u09ae\u09af\u09b0 \u09b2   \u09b6\u09b7\u09b8\u09b9\u09bc\u09bd\u09be\u09bf\u09c0\u09c1\u09c2\u09c3\u09c4  \u09c7\u09c8  \u09cb\u09cc\u09cd\u09ceabcdefghijklmnopqrstuvwxyz\u09d7\u09dc\u09dd\u09f0\u09f1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "\u0a81\u0a82\u0a83\u0a85\u0a86\u0a87\u0a88\u0a89\u0a8a\u0a8b\n\u0a8c\u0a8d\r \u0a8f\u0a90\u0a91 \u0a93\u0a94\u0a95\u0a96\u0a97\u0a98\u0a99\u0a9a\uffff\u0a9b\u0a9c\u0a9d\u0a9e !\u0a9f\u0aa0\u0aa1\u0aa2\u0aa3\u0aa4)(\u0aa5\u0aa6,\u0aa7.\u0aa80123456789:; \u0aaa\u0aab?\u0aac\u0aad\u0aae\u0aaf\u0ab0 \u0ab2\u0ab3 \u0ab5\u0ab6\u0ab7\u0ab8\u0ab9\u0abc\u0abd\u0abe\u0abf\u0ac0\u0ac1\u0ac2\u0ac3\u0ac4\u0ac5 \u0ac7\u0ac8\u0ac9 \u0acb\u0acc\u0acd\u0ad0abcdefghijklmnopqrstuvwxyz\u0ae0\u0ae1\u0ae2\u0ae3\u0af1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u0901\u0902\u0903\u0905\u0906\u0907\u0908\u0909\u090a\u090b\n\u090c\u090d\r\u090e\u090f\u0910\u0911\u0912\u0913\u0914\u0915\u0916\u0917\u0918\u0919\u091a\uffff\u091b\u091c\u091d\u091e !\u091f\u0920\u0921\u0922\u0923\u0924)(\u0925\u0926,\u0927.\u09280123456789:;\u0929\u092a\u092b?\u092c\u092d\u092e\u092f\u0930\u0931\u0932\u0933\u0934\u0935\u0936\u0937\u0938\u0939\u093c\u093d\u093e\u093f\u0940\u0941\u0942\u0943\u0944\u0945\u0946\u0947\u0948\u0949\u094a\u094b\u094c\u094d\u0950abcdefghijklmnopqrstuvwxyz\u0972\u097b\u097c\u097e\u097f"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, " \u0c82\u0c83\u0c85\u0c86\u0c87\u0c88\u0c89\u0c8a\u0c8b\n\u0c8c \r\u0c8e\u0c8f\u0c90 \u0c92\u0c93\u0c94\u0c95\u0c96\u0c97\u0c98\u0c99\u0c9a\uffff\u0c9b\u0c9c\u0c9d\u0c9e !\u0c9f\u0ca0\u0ca1\u0ca2\u0ca3\u0ca4)(\u0ca5\u0ca6,\u0ca7.\u0ca80123456789:; \u0caa\u0cab?\u0cac\u0cad\u0cae\u0caf\u0cb0\u0cb1\u0cb2\u0cb3 \u0cb5\u0cb6\u0cb7\u0cb8\u0cb9\u0cbc\u0cbd\u0cbe\u0cbf\u0cc0\u0cc1\u0cc2\u0cc3\u0cc4 \u0cc6\u0cc7\u0cc8 \u0cca\u0ccb\u0ccc\u0ccd\u0cd5abcdefghijklmnopqrstuvwxyz\u0cd6\u0ce0\u0ce1\u0ce2\u0ce3"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, " \u0d02\u0d03\u0d05\u0d06\u0d07\u0d08\u0d09\u0d0a\u0d0b\n\u0d0c \r\u0d0e\u0d0f\u0d10 \u0d12\u0d13\u0d14\u0d15\u0d16\u0d17\u0d18\u0d19\u0d1a\uffff\u0d1b\u0d1c\u0d1d\u0d1e !\u0d1f\u0d20\u0d21\u0d22\u0d23\u0d24)(\u0d25\u0d26,\u0d27.\u0d280123456789:; \u0d2a\u0d2b?\u0d2c\u0d2d\u0d2e\u0d2f\u0d30\u0d31\u0d32\u0d33\u0d34\u0d35\u0d36\u0d37\u0d38\u0d39 \u0d3d\u0d3e\u0d3f\u0d40\u0d41\u0d42\u0d43\u0d44 \u0d46\u0d47\u0d48 \u0d4a\u0d4b\u0d4c\u0d4d\u0d57abcdefghijklmnopqrstuvwxyz\u0d60\u0d61\u0d62\u0d63\u0d79"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\u0b01\u0b02\u0b03\u0b05\u0b06\u0b07\u0b08\u0b09\u0b0a\u0b0b\n\u0b0c \r \u0b0f\u0b10  \u0b13\u0b14\u0b15\u0b16\u0b17\u0b18\u0b19\u0b1a\uffff\u0b1b\u0b1c\u0b1d\u0b1e !\u0b1f\u0b20\u0b21\u0b22\u0b23\u0b24)(\u0b25\u0b26,\u0b27.\u0b280123456789:; \u0b2a\u0b2b?\u0b2c\u0b2d\u0b2e\u0b2f\u0b30 \u0b32\u0b33 \u0b35\u0b36\u0b37\u0b38\u0b39\u0b3c\u0b3d\u0b3e\u0b3f\u0b40\u0b41\u0b42\u0b43\u0b44  \u0b47\u0b48  \u0b4b\u0b4c\u0b4d\u0b56abcdefghijklmnopqrstuvwxyz\u0b57\u0b60\u0b61\u0b62\u0b63"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "\u0a01\u0a02\u0a03\u0a05\u0a06\u0a07\u0a08\u0a09\u0a0a \n  \r \u0a0f\u0a10  \u0a13\u0a14\u0a15\u0a16\u0a17\u0a18\u0a19\u0a1a\uffff\u0a1b\u0a1c\u0a1d\u0a1e !\u0a1f\u0a20\u0a21\u0a22\u0a23\u0a24)(\u0a25\u0a26,\u0a27.\u0a280123456789:; \u0a2a\u0a2b?\u0a2c\u0a2d\u0a2e\u0a2f\u0a30 \u0a32\u0a33 \u0a35\u0a36 \u0a38\u0a39\u0a3c \u0a3e\u0a3f\u0a40\u0a41\u0a42    \u0a47\u0a48  \u0a4b\u0a4c\u0a4d\u0a51abcdefghijklmnopqrstuvwxyz\u0a70\u0a71\u0a72\u0a73\u0a74"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, " \u0b82\u0b83\u0b85\u0b86\u0b87\u0b88\u0b89\u0b8a \n  \r\u0b8e\u0b8f\u0b90 \u0b92\u0b93\u0b94\u0b95   \u0b99\u0b9a\uffff \u0b9c \u0b9e !\u0b9f   \u0ba3\u0ba4)(  , .\u0ba80123456789:;\u0ba9\u0baa ?  \u0bae\u0baf\u0bb0\u0bb1\u0bb2\u0bb3\u0bb4\u0bb5\u0bb6\u0bb7\u0bb8\u0bb9  \u0bbe\u0bbf\u0bc0\u0bc1\u0bc2   \u0bc6\u0bc7\u0bc8 \u0bca\u0bcb\u0bcc\u0bcd\u0bd0abcdefghijklmnopqrstuvwxyz\u0bd7\u0bf0\u0bf1\u0bf2\u0bf9"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "\u0c01\u0c02\u0c03\u0c05\u0c06\u0c07\u0c08\u0c09\u0c0a\u0c0b\n\u0c0c \r\u0c0e\u0c0f\u0c10 \u0c12\u0c13\u0c14\u0c15\u0c16\u0c17\u0c18\u0c19\u0c1a\uffff\u0c1b\u0c1c\u0c1d\u0c1e !\u0c1f\u0c20\u0c21\u0c22\u0c23\u0c24)(\u0c25\u0c26,\u0c27.\u0c280123456789:; \u0c2a\u0c2b?\u0c2c\u0c2d\u0c2e\u0c2f\u0c30\u0c31\u0c32\u0c33 \u0c35\u0c36\u0c37\u0c38\u0c39 \u0c3d\u0c3e\u0c3f\u0c40\u0c41\u0c42\u0c43\u0c44 \u0c46\u0c47\u0c48 \u0c4a\u0c4b\u0c4c\u0c4d\u0c55abcdefghijklmnopqrstuvwxyz\u0c56\u0c60\u0c61\u0c62\u0c63"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "\u0627\u0622\u0628\u067b\u0680\u067e\u06a6\u062a\u06c2\u067f\n\u0679\u067d\r\u067a\u067c\u062b\u062c\u0681\u0684\u0683\u0685\u0686\u0687\u062d\u062e\u062f\uffff\u068c\u0688\u0689\u068a !\u068f\u068d\u0630\u0631\u0691\u0693)(\u0699\u0632,\u0696.\u06980123456789:;\u069a\u0633\u0634?\u0635\u0636\u0637\u0638\u0639\u0641\u0642\u06a9\u06aa\u06ab\u06af\u06b3\u06b1\u0644\u0645\u0646\u06ba\u06bb\u06bc\u0648\u06c4\u06d5\u06c1\u06be\u0621\u06cc\u06d0\u06d2\u064d\u0650\u064f\u0657\u0654abcdefghijklmnopqrstuvwxyz\u0655\u0651\u0653\u0656\u0670"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    .line 1249
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "          \u000c         ^                   {}     \\            [~] |                                    \u20ac                          "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "          \u000c         ^                   {}     \\            [~] |      \u011e \u0130         \u015e               \u00e7 \u20ac \u011f \u0131         \u015f            "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "         \u00e7\u000c         ^                   {}     \\            [~] |\u00c1       \u00cd     \u00d3     \u00da           \u00e1   \u20ac   \u00ed     \u00f3     \u00fa          "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "     \u00ea   \u00e7\u000c\u00d4\u00f4 \u00c1\u00e1  \u03a6\u0393^\u03a9\u03a0\u03a8\u03a3\u0398     \u00ca        {}     \\            [~] |\u00c0       \u00cd     \u00d3     \u00da     \u00c3\u00d5    \u00c2   \u20ac   \u00ed     \u00f3     \u00fa     \u00e3\u00f5  \u00e2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u09e6\u09e7 \u09e8\u09e9\u09ea\u09eb\u09ec\u09ed\u09ee\u09ef\u09df\u09e0\u09e1\u09e2{}\u09e3\u09f2\u09f3\u09f4\u09f5\\\u09f6\u09f7\u09f8\u09f9\u09fa       [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0ae6\u0ae7\u0ae8\u0ae9\u0aea\u0aeb\u0aec\u0aed\u0aee\u0aef  {}     \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0966\u0967\u0968\u0969\u096a\u096b\u096c\u096d\u096e\u096f\u0951\u0952{}\u0953\u0954\u0958\u0959\u095a\\\u095b\u095c\u095d\u095e\u095f\u0960\u0961\u0962\u0963\u0970\u0971 [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0ce6\u0ce7\u0ce8\u0ce9\u0cea\u0ceb\u0cec\u0ced\u0cee\u0cef\u0cde\u0cf1{}\u0cf2    \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0d66\u0d67\u0d68\u0d69\u0d6a\u0d6b\u0d6c\u0d6d\u0d6e\u0d6f\u0d70\u0d71{}\u0d72\u0d73\u0d74\u0d75\u0d7a\\\u0d7b\u0d7c\u0d7d\u0d7e\u0d7f       [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0b66\u0b67\u0b68\u0b69\u0b6a\u0b6b\u0b6c\u0b6d\u0b6e\u0b6f\u0b5c\u0b5d{}\u0b5f\u0b70\u0b71  \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0a66\u0a67\u0a68\u0a69\u0a6a\u0a6b\u0a6c\u0a6d\u0a6e\u0a6f\u0a59\u0a5a{}\u0a5b\u0a5c\u0a5e\u0a75 \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0be6\u0be7\u0be8\u0be9\u0bea\u0beb\u0bec\u0bed\u0bee\u0bef\u0bf3\u0bf4{}\u0bf5\u0bf6\u0bf7\u0bf8\u0bfa\\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*   \u0c66\u0c67\u0c68\u0c69\u0c6a\u0c6b\u0c6c\u0c6d\u0c6e\u0c6f\u0c58\u0c59{}\u0c78\u0c79\u0c7a\u0c7b\u0c7c\\\u0c7d\u0c7e\u0c7f         [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0600\u0601 \u06f0\u06f1\u06f2\u06f3\u06f4\u06f5\u06f6\u06f7\u06f8\u06f9\u060c\u060d{}\u060e\u060f\u0610\u0611\u0612\\\u0613\u0614\u061b\u061f\u0640\u0652\u0658\u066b\u066c\u0672\u0673\u06cd[~]\u06d4|ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    .line 1382
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 1384
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x1070020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    .line 1385
    const v1, 0x1070021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .end local v0           #r:Landroid/content/res/Resources;
    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    .line 1386
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    array-length v5, v0

    .line 1387
    .local v5, numTables:I
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    array-length v4, v0

    .line 1388
    .local v4, numShiftTables:I
    if-eq v5, v4, :cond_eb

    .line 1389
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: language tables array length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != shift tables array length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    :cond_eb
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v0, v0

    if-lez v0, :cond_151

    .line 1394
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    sput v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    .line 1400
    :goto_fb
    new-array v0, v5, [Landroid/util/SparseIntArray;

    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    .line 1401
    const/4 v0, 0x0

    .local v0, i:I
    move v2, v0

    .end local v0           #i:I
    .local v2, i:I
    :goto_101
    if-ge v2, v5, :cond_159

    .line 1402
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v6, v0, v2

    .line 1404
    .local v6, table:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 1405
    .local v7, tableLen:I
    if-eqz v7, :cond_139

    const/16 v0, 0x80

    if-eq v7, v0, :cond_139

    .line 1406
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: language tables index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " length "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (expected 128 or 0)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    :cond_139
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v7}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 1411
    .local v1, charToGsmTable:Landroid/util/SparseIntArray;
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aput-object v1, v0, v2

    .line 1412
    const/4 v0, 0x0

    .local v0, j:I
    move v3, v0

    .end local v0           #j:I
    .local v3, j:I
    :goto_144
    if-ge v3, v7, :cond_155

    .line 1413
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1414
    .local v0, c:C
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1412
    add-int/lit8 v0, v3, 0x1

    .end local v3           #j:I
    .local v0, j:I
    move v3, v0

    .end local v0           #j:I
    .restart local v3       #j:I
    goto :goto_144

    .line 1397
    .end local v1           #charToGsmTable:Landroid/util/SparseIntArray;
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v6           #table:Ljava/lang/String;
    .end local v7           #tableLen:I
    :cond_151
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    goto :goto_fb

    .line 1401
    .restart local v1       #charToGsmTable:Landroid/util/SparseIntArray;
    .restart local v2       #i:I
    .restart local v3       #j:I
    .restart local v6       #table:Ljava/lang/String;
    .restart local v7       #tableLen:I
    :cond_155
    add-int/lit8 v0, v2, 0x1

    .end local v2           #i:I
    .local v0, i:I
    move v2, v0

    .end local v0           #i:I
    .restart local v2       #i:I
    goto :goto_101

    .line 1418
    .end local v1           #charToGsmTable:Landroid/util/SparseIntArray;
    .end local v3           #j:I
    .end local v6           #table:Ljava/lang/String;
    .end local v7           #tableLen:I
    :cond_159
    new-array v0, v5, [Landroid/util/SparseIntArray;

    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    .line 1419
    const/4 v0, 0x0

    .end local v2           #i:I
    .restart local v0       #i:I
    move v2, v0

    .end local v0           #i:I
    .end local v5           #numTables:I
    .restart local v2       #i:I
    :goto_15f
    if-ge v2, v4, :cond_1b7

    .line 1420
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v5, v0, v2

    .line 1422
    .local v5, shiftTable:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 1423
    .local v6, shiftTableLen:I
    if-eqz v6, :cond_197

    const/16 v0, 0x80

    if-eq v6, v0, :cond_197

    .line 1424
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: language shift tables index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " length "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (expected 128 or 0)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    :cond_197
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v6}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 1429
    .local v1, charToShiftTable:Landroid/util/SparseIntArray;
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aput-object v1, v0, v2

    .line 1430
    const/4 v0, 0x0

    .local v0, j:I
    move v3, v0

    .end local v0           #j:I
    .restart local v3       #j:I
    :goto_1a2
    if-ge v3, v6, :cond_1b3

    .line 1431
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1432
    .local v0, c:C
    const/16 v7, 0x20

    if-eq v0, v7, :cond_1af

    .line 1433
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1430
    :cond_1af
    add-int/lit8 v0, v3, 0x1

    .end local v3           #j:I
    .local v0, j:I
    move v3, v0

    .end local v0           #j:I
    .restart local v3       #j:I
    goto :goto_1a2

    .line 1419
    :cond_1b3
    add-int/lit8 v0, v2, 0x1

    .end local v2           #i:I
    .local v0, i:I
    move v2, v0

    .end local v0           #i:I
    .restart local v2       #i:I
    goto :goto_15f

    .line 1637
    .end local v1           #charToShiftTable:Landroid/util/SparseIntArray;
    .end local v3           #j:I
    .end local v5           #shiftTable:Ljava/lang/String;
    .end local v6           #shiftTableLen:I
    :cond_1b7
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    .line 1638
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    .line 1639
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    .line 1640
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    .line 1643
    const/4 v0, 0x0

    .line 1645
    .end local v2           #i:I
    .restart local v0       #i:I
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x40

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1646
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xa3

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1647
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x24

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1648
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xa5

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1649
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xe8

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1650
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xe9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1651
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xf9

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1652
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xec

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1653
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xf2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1654
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xc7

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1655
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xa

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1656
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xd8

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1657
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xf8

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1658
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xd

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1659
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xc5

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1660
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xe5

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1662
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x394

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1663
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x5f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1664
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x3a6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1665
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x393

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1666
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x39b

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1667
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x3a9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1668
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x3a0

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1669
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x3a8

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1670
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x3a3

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1671
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x398

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1672
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x39e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1673
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const v3, 0xffff

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1674
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xc6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1675
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xe6

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1676
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xdf

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1677
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xc9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1679
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x20

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1680
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x21

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1681
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x22

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1682
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x23

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1683
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xa4

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1684
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x25

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1685
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x26

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1686
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x27

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1687
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x28

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1688
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x29

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1689
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x2a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1690
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x2b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1691
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x2c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1692
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x2d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1693
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x2e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1694
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x2f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1696
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x30

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1697
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x31

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1698
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x32

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1699
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x33

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1700
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x34

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1701
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x35

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1702
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x36

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1703
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x37

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1704
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x38

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1705
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x39

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1706
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x3a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1707
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x3b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1708
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x3c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1709
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x3d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1710
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x3e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1711
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x3f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1713
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xa1

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1714
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x41

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1715
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x42

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1716
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x43

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1717
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x44

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1718
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x45

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1719
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x46

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1720
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x47

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1721
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x48

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1722
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x49

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1723
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x4a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1724
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x4b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1725
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x4c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1726
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x4d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1727
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x4e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1728
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x4f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1730
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x50

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1731
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x51

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1732
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x52

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1733
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x53

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1734
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x54

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1735
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x55

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1736
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x56

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1737
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x57

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1738
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x58

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1739
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x59

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1740
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x5a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1741
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xc4

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1742
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xd6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1743
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xd1

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1744
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xdc

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1745
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xa7

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1747
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xbf

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1748
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x61

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1749
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x62

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1750
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x63

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1751
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x64

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1752
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x65

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1753
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x66

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1754
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x67

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1755
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x68

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1756
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x69

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1757
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x6a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1758
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x6b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1759
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x6c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1760
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x6d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1761
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x6e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1762
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x6f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1764
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x70

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1765
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x71

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1766
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x72

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1767
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x73

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1768
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x74

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1769
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x75

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1770
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x76

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1771
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x77

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1772
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x78

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1773
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x79

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1774
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0x7a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1775
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xe4

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1776
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xf6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1777
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xf1

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1778
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xfc

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1779
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v3, 0xe0

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1782
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    .end local v0           #i:I
    const/16 v1, 0xc

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1783
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x5e

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1784
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x7b

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1785
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x7d

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1786
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x5c

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1787
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x5b

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1788
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x7e

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1789
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x5d

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1790
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x7c

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1791
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x20ac

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1795
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0xc7

    const/16 v2, 0x43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1796
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x11e

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1797
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x130

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1798
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x15e

    const/16 v2, 0x53

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1799
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0xe7

    const/16 v2, 0x63

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1800
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x131

    const/16 v2, 0x67

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1801
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x11f

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1802
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v1, 0x15f

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1805
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 1806
    .local v1, size:I
    const/4 v0, 0x0

    .end local v4           #numShiftTables:I
    .local v0, j:I
    :goto_6fe
    if-ge v0, v1, :cond_714

    .line 1807
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    sget-object v3, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1806
    add-int/lit8 v0, v0, 0x1

    goto :goto_6fe

    .line 1810
    :cond_714
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    .end local v0           #j:I
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 1811
    const/4 v0, 0x0

    .restart local v0       #j:I
    :goto_71b
    if-ge v0, v1, :cond_731

    .line 1812
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    sget-object v3, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1811
    add-int/lit8 v0, v0, 0x1

    goto :goto_71b

    .line 1814
    :cond_731
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    .end local v0           #j:I
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    .end local v1           #size:I
    move-result v0

    sput v0, Lcom/android/internal/telephony/GsmAlphabet;->sGsmSpaceChar:I

    .line 1815
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CountGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .registers 12
    .parameter "s"
    .parameter "use7bitOnly"

    .prologue
    .line 778
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v0, v0

    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    array-length v1, v1

    add-int/2addr v0, v1

    if-nez v0, :cond_3f

    .line 779
    new-instance v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 780
    .local v0, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result p0

    .line 781
    .local p0, septets:I
    const/4 p1, -0x1

    if-ne p0, p1, :cond_19

    .line 782
    .end local p1
    const/4 p0, 0x0

    .line 909
    .end local v0           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local p0           #septets:I
    :goto_18
    return-object p0

    .line 784
    .restart local v0       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .restart local p0       #septets:I
    :cond_19
    const/4 p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 785
    iput p0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 786
    const/16 p1, 0xa0

    if-le p0, p1, :cond_35

    .line 787
    add-int/lit16 p1, p0, 0x98

    div-int/lit16 p1, p1, 0x99

    iput p1, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 789
    iget p1, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    mul-int/lit16 p1, p1, 0x99

    sub-int p0, p1, p0

    iput p0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 795
    .end local p0           #septets:I
    :goto_30
    const/4 p0, 0x1

    iput p0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move-object p0, v0

    .line 796
    goto :goto_18

    .line 792
    .restart local p0       #septets:I
    :cond_35
    const/4 p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 793
    const/16 p1, 0xa0

    sub-int p0, p1, p0

    iput p0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_30

    .line 799
    .end local v0           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .local p0, s:Ljava/lang/CharSequence;
    .restart local p1
    :cond_3f
    sget v5, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    .line 800
    .local v5, maxSingleShiftCode:I
    new-instance v4, Ljava/util/ArrayList;

    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 804
    .local v4, lpcList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;>;"
    new-instance v0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 805
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    move v2, v1

    .end local v1           #i$:I
    .local v2, i$:I
    :goto_59
    if-ge v2, v3, :cond_75

    aget v1, v0, v2

    .line 807
    .local v1, i:I
    if-eqz v1, :cond_71

    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_71

    .line 808
    new-instance v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    invoke-direct {v6, v1}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 805
    :cond_71
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i$:I
    .local v1, i$:I
    move v2, v1

    .end local v1           #i$:I
    .restart local v2       #i$:I
    goto :goto_59

    .line 812
    :cond_75
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 814
    .local v7, sz:I
    const/4 v0, 0x0

    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .end local v2           #i$:I
    .end local v3           #len$:I
    .local v1, i:I
    :goto_7b
    if-ge v1, v7, :cond_107

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_107

    .line 815
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 816
    .local v0, c:C
    const/16 v2, 0x1b

    if-ne v0, v2, :cond_96

    .line 817
    const-string v0, "GSM"

    .end local v0           #c:C
    const-string v2, "countGsmSeptets() string contains Escape character, ignoring!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_92
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_7b

    .line 821
    .local v0, c:C
    :cond_96
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_9a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_92

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    .line 822
    .local v3, lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    iget v8, v3, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    aget-object v6, v6, v8

    const/4 v8, -0x1

    invoke-virtual {v6, v0, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 823
    .local v6, tableIndex:I
    const/4 v8, -0x1

    if-ne v6, v8, :cond_f2

    .line 825
    const/4 v6, 0x0

    .local v6, table:I
    move v8, v6

    .end local v6           #table:I
    .local v8, table:I
    :goto_b6
    if-gt v8, v5, :cond_f0

    .line 826
    iget-object v6, v3, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v6, v6, v8

    const/4 v9, -0x1

    if-eq v6, v9, :cond_dd

    .line 827
    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v6, v6, v8

    const/4 v9, -0x1

    invoke-virtual {v6, v0, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 828
    .local v6, shiftTableIndex:I
    const/4 v9, -0x1

    if-ne v6, v9, :cond_e7

    .line 829
    if-eqz p1, :cond_e1

    .line 831
    iget-object v6, v3, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    .end local v6           #shiftTableIndex:I
    aget v9, v6, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v6, v8

    .line 832
    iget-object v6, v3, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    aget v9, v6, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v6, v8

    .line 825
    :cond_dd
    :goto_dd
    add-int/lit8 v6, v8, 0x1

    .end local v8           #table:I
    .local v6, table:I
    move v8, v6

    .end local v6           #table:I
    .restart local v8       #table:I
    goto :goto_b6

    .line 835
    .local v6, shiftTableIndex:I
    :cond_e1
    iget-object v6, v3, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    .end local v6           #shiftTableIndex:I
    const/4 v9, -0x1

    aput v9, v6, v8

    goto :goto_dd

    .line 839
    .restart local v6       #shiftTableIndex:I
    :cond_e7
    iget-object v6, v3, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    .end local v6           #shiftTableIndex:I
    aget v9, v6, v8

    add-int/lit8 v9, v9, 0x2

    aput v9, v6, v8

    goto :goto_dd

    :cond_f0
    move v3, v8

    .line 825
    .end local v8           #table:I
    .local v3, table:I
    goto :goto_9a

    .line 845
    .local v3, lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .local v6, tableIndex:I
    :cond_f2
    const/4 v6, 0x0

    .local v6, table:I
    :goto_f3
    if-gt v6, v5, :cond_19d

    .line 846
    iget-object v8, v3, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v8, v8, v6

    const/4 v9, -0x1

    if-eq v8, v9, :cond_104

    .line 847
    iget-object v8, v3, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v9, v8, v6

    add-int/lit8 v9, v9, 0x1

    aput v9, v8, v6

    .line 845
    :cond_104
    add-int/lit8 v6, v6, 0x1

    goto :goto_f3

    .line 855
    .end local v0           #c:C
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .end local v6           #table:I
    :cond_107
    new-instance v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    .end local v7           #sz:I
    invoke-direct {v7}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 856
    .local v7, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const p0, 0x7fffffff

    iput p0, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 857
    .end local p0           #s:Ljava/lang/CharSequence;
    const/4 p0, 0x1

    iput p0, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 858
    const v0, 0x7fffffff

    .line 859
    .local v0, minUnencodableCount:I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .local p0, i$:Ljava/util/Iterator;
    move v1, v0

    .end local v0           #minUnencodableCount:I
    .end local v4           #lpcList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;>;"
    .local v1, minUnencodableCount:I
    :cond_11c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    .line 860
    .local v0, lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    const/4 v2, 0x0

    .local v2, shiftTable:I
    move v6, v2

    .end local v2           #shiftTable:I
    .local v6, shiftTable:I
    :goto_12a
    if-gt v6, v5, :cond_11c

    .line 861
    iget-object v2, v0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v3, v2, v6

    .line 862
    .local v3, septets:I
    const/4 v2, -0x1

    if-ne v3, v2, :cond_137

    .line 860
    :cond_133
    :goto_133
    add-int/lit8 v2, v6, 0x1

    .end local v6           #shiftTable:I
    .restart local v2       #shiftTable:I
    move v6, v2

    .end local v2           #shiftTable:I
    .restart local v6       #shiftTable:I
    goto :goto_12a

    .line 866
    :cond_137
    iget v2, v0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    if-eqz v2, :cond_17c

    if-eqz v6, :cond_17c

    .line 867
    const/16 v2, 0x8

    .local v2, udhLength:I
    move v8, v2

    .line 875
    .end local v2           #udhLength:I
    .local v8, udhLength:I
    :goto_140
    add-int v2, v3, v8

    const/16 v4, 0xa0

    if-le v2, v4, :cond_188

    .line 876
    if-nez v8, :cond_19b

    .line 877
    const/4 v2, 0x1

    .line 879
    .end local v8           #udhLength:I
    .restart local v2       #udhLength:I
    :goto_149
    add-int/lit8 v8, v2, 0x6

    .line 880
    .end local v2           #udhLength:I
    .restart local v8       #udhLength:I
    const/16 v2, 0xa0

    sub-int v4, v2, v8

    .line 881
    .local v4, septetsPerMessage:I
    add-int v2, v3, v4

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    div-int/2addr v2, v4

    .line 882
    .local v2, msgCount:I
    mul-int/2addr v4, v2

    sub-int/2addr v4, v3

    .line 888
    .local v4, septetsRemaining:I
    :goto_156
    iget-object v8, v0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    .end local v8           #udhLength:I
    aget v8, v8, v6

    .line 889
    .local v8, unencodableCount:I
    if-eqz p1, :cond_15e

    if-gt v8, v1, :cond_133

    .line 892
    :cond_15e
    if-eqz p1, :cond_162

    if-lt v8, v1, :cond_16e

    :cond_162
    iget v9, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    if-lt v2, v9, :cond_16e

    iget v9, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    if-ne v2, v9, :cond_133

    iget v9, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    if-le v4, v9, :cond_133

    .line 895
    :cond_16e
    move v1, v8

    .line 896
    iput v2, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 897
    iput v3, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 898
    iput v4, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 899
    iget v2, v0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    .end local v2           #msgCount:I
    iput v2, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    .line 900
    iput v6, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    goto :goto_133

    .line 868
    .end local v4           #septetsRemaining:I
    .end local v8           #unencodableCount:I
    :cond_17c
    iget v2, v0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    if-nez v2, :cond_182

    if-eqz v6, :cond_185

    .line 869
    :cond_182
    const/4 v2, 0x5

    .local v2, udhLength:I
    move v8, v2

    .end local v2           #udhLength:I
    .local v8, udhLength:I
    goto :goto_140

    .line 871
    .end local v8           #udhLength:I
    :cond_185
    const/4 v2, 0x0

    .restart local v2       #udhLength:I
    move v8, v2

    .end local v2           #udhLength:I
    .restart local v8       #udhLength:I
    goto :goto_140

    .line 884
    :cond_188
    const/4 v2, 0x1

    .line 885
    .local v2, msgCount:I
    const/16 v4, 0xa0

    sub-int/2addr v4, v8

    sub-int/2addr v4, v3

    .restart local v4       #septetsRemaining:I
    goto :goto_156

    .line 905
    .end local v0           #lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .end local v2           #msgCount:I
    .end local v3           #septets:I
    .end local v4           #septetsRemaining:I
    .end local v6           #shiftTable:I
    .end local v8           #udhLength:I
    :cond_18e
    iget p0, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .end local p0           #i$:Ljava/util/Iterator;
    const p1, 0x7fffffff

    if-ne p0, p1, :cond_198

    .line 906
    .end local p1
    const/4 p0, 0x0

    goto/16 :goto_18

    :cond_198
    move-object p0, v7

    .line 909
    goto/16 :goto_18

    .restart local v0       #lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .restart local v3       #septets:I
    .restart local v6       #shiftTable:I
    .restart local v8       #udhLength:I
    .restart local p0       #i$:Ljava/util/Iterator;
    .restart local p1
    :cond_19b
    move v2, v8

    .end local v8           #udhLength:I
    .local v2, udhLength:I
    goto :goto_149

    .local v0, c:C
    .local v1, i:I
    .local v2, i$:Ljava/util/Iterator;
    .local v3, lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .local v4, lpcList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;>;"
    .local v6, table:I
    .local v7, sz:I
    .local p0, s:Ljava/lang/CharSequence;
    :cond_19d
    move v3, v6

    .end local v6           #table:I
    .local v3, table:I
    goto/16 :goto_9a
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 44
    sget v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    return v0
.end method

.method static synthetic access$100()[I
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    return-object v0
.end method

.method public static charToGsm(C)I
    .registers 5
    .parameter "c"

    .prologue
    const/16 v3, 0x20

    const/4 v2, 0x0

    .line 96
    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(CZ)I
    :try_end_7
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v1

    .line 99
    :goto_8
    return v1

    .line 97
    :catch_9
    move-exception v0

    .line 99
    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    goto :goto_8
.end method

.method public static charToGsm(CZ)I
    .registers 7
    .parameter "c"
    .parameter "throwException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 119
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 121
    .local v0, ret:I
    if-ne v0, v2, :cond_2c

    .line 122
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 124
    if-ne v0, v2, :cond_29

    .line 125
    if-eqz p1, :cond_20

    .line 126
    new-instance v1, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v1

    .line 128
    :cond_20
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 135
    :goto_28
    return v1

    .line 131
    :cond_29
    const/16 v1, 0x1b

    goto :goto_28

    :cond_2c
    move v1, v0

    .line 135
    goto :goto_28
.end method

.method public static charToGsmExtended(C)I
    .registers 6
    .parameter "c"

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 149
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 151
    .local v0, ret:I
    if-ne v0, v2, :cond_17

    .line 152
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 155
    :goto_16
    return v1

    :cond_17
    move v1, v0

    goto :goto_16
.end method

.method public static convertEachCharacter(C)C
    .registers 4
    .parameter "c"

    .prologue
    const/4 v2, -0x1

    .line 1441
    move v0, p0

    .line 1444
    .local v0, ret:C
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_c

    .line 1445
    move v0, p0

    .line 1453
    :goto_b
    return v0

    .line 1446
    :cond_c
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_16

    .line 1447
    move v0, p0

    goto :goto_b

    .line 1450
    :cond_16
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->convertNonGSMCharacter(C)C

    move-result v0

    goto :goto_b
.end method

.method private static convertNonGSMCharacter(C)C
    .registers 6
    .parameter "c"

    .prologue
    const-string/jumbo v4, "temp char :"

    .line 1460
    move v0, p0

    .line 1461
    .local v0, temp:C
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "temp char :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1462
    packed-switch v0, :pswitch_data_1a0

    .line 1613
    :pswitch_20
    const/16 v1, 0x7f

    if-le v0, v1, :cond_2a

    .line 1615
    const/16 v1, 0x80

    if-ne v0, v1, :cond_19a

    .line 1618
    const/16 v0, 0x20

    .line 1628
    :cond_2a
    :goto_2a
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "temp char :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1630
    return v0

    .line 1474
    :pswitch_44
    const/16 v0, 0x61

    goto :goto_2a

    .line 1475
    :pswitch_47
    const/16 v0, 0x61

    goto :goto_2a

    .line 1476
    :pswitch_4a
    const/16 v0, 0x61

    goto :goto_2a

    .line 1477
    :pswitch_4d
    const/16 v0, 0x61

    goto :goto_2a

    .line 1478
    :pswitch_50
    const/16 v0, 0x61

    goto :goto_2a

    .line 1480
    :pswitch_53
    const/16 v0, 0x41

    goto :goto_2a

    .line 1481
    :pswitch_56
    const/16 v0, 0x41

    goto :goto_2a

    .line 1482
    :pswitch_59
    const/16 v0, 0x41

    goto :goto_2a

    .line 1483
    :pswitch_5c
    const/16 v0, 0x41

    goto :goto_2a

    .line 1484
    :pswitch_5f
    const/16 v0, 0x41

    goto :goto_2a

    .line 1485
    :pswitch_62
    const/16 v0, 0x41

    goto :goto_2a

    .line 1487
    :pswitch_65
    const/16 v0, 0x63

    goto :goto_2a

    .line 1488
    :pswitch_68
    const/16 v0, 0x63

    goto :goto_2a

    .line 1489
    :pswitch_6b
    const/16 v0, 0x63

    goto :goto_2a

    .line 1491
    :pswitch_6e
    const/16 v0, 0x43

    goto :goto_2a

    .line 1492
    :pswitch_71
    const/16 v0, 0x43

    goto :goto_2a

    .line 1494
    :pswitch_74
    const/16 v0, 0x64

    goto :goto_2a

    .line 1496
    :pswitch_77
    const/16 v0, 0x44

    goto :goto_2a

    .line 1498
    :pswitch_7a
    const/16 v0, 0x65

    goto :goto_2a

    .line 1499
    :pswitch_7d
    const/16 v0, 0x65

    goto :goto_2a

    .line 1500
    :pswitch_80
    const/16 v0, 0x65

    goto :goto_2a

    .line 1501
    :pswitch_83
    const/16 v0, 0x65

    goto :goto_2a

    .line 1502
    :pswitch_86
    const/16 v0, 0x65

    goto :goto_2a

    .line 1504
    :pswitch_89
    const/16 v0, 0x45

    goto :goto_2a

    .line 1505
    :pswitch_8c
    const/16 v0, 0x45

    goto :goto_2a

    .line 1506
    :pswitch_8f
    const/16 v0, 0x45

    goto :goto_2a

    .line 1507
    :pswitch_92
    const/16 v0, 0x45

    goto :goto_2a

    .line 1508
    :pswitch_95
    const/16 v0, 0x45

    goto :goto_2a

    .line 1509
    :pswitch_98
    const/16 v0, 0x45

    goto :goto_2a

    .line 1511
    :pswitch_9b
    const/16 v0, 0x67

    goto :goto_2a

    .line 1513
    :pswitch_9e
    const/16 v0, 0x47

    goto :goto_2a

    .line 1515
    :pswitch_a1
    const/16 v0, 0x69

    goto :goto_2a

    .line 1516
    :pswitch_a4
    const/16 v0, 0x69

    goto :goto_2a

    .line 1517
    :pswitch_a7
    const/16 v0, 0x69

    goto :goto_2a

    .line 1518
    :pswitch_aa
    const/16 v0, 0x69

    goto/16 :goto_2a

    .line 1519
    :pswitch_ae
    const/16 v0, 0x69

    goto/16 :goto_2a

    .line 1521
    :pswitch_b2
    const/16 v0, 0x49

    goto/16 :goto_2a

    .line 1522
    :pswitch_b6
    const/16 v0, 0x49

    goto/16 :goto_2a

    .line 1523
    :pswitch_ba
    const/16 v0, 0x49

    goto/16 :goto_2a

    .line 1524
    :pswitch_be
    const/16 v0, 0x49

    goto/16 :goto_2a

    .line 1525
    :pswitch_c2
    const/16 v0, 0x49

    goto/16 :goto_2a

    .line 1526
    :pswitch_c6
    const/16 v0, 0x49

    goto/16 :goto_2a

    .line 1528
    :pswitch_ca
    const/16 v0, 0x6c

    goto/16 :goto_2a

    .line 1529
    :pswitch_ce
    const/16 v0, 0x6c

    goto/16 :goto_2a

    .line 1530
    :pswitch_d2
    const/16 v0, 0x6c

    goto/16 :goto_2a

    .line 1532
    :pswitch_d6
    const/16 v0, 0x4c

    goto/16 :goto_2a

    .line 1533
    :pswitch_da
    const/16 v0, 0x4c

    goto/16 :goto_2a

    .line 1534
    :pswitch_de
    const/16 v0, 0x4c

    goto/16 :goto_2a

    .line 1536
    :pswitch_e2
    const/16 v0, 0x6e

    goto/16 :goto_2a

    .line 1537
    :pswitch_e6
    const/16 v0, 0x6e

    goto/16 :goto_2a

    .line 1539
    :pswitch_ea
    const/16 v0, 0x4e

    goto/16 :goto_2a

    .line 1540
    :pswitch_ee
    const/16 v0, 0x4e

    goto/16 :goto_2a

    .line 1542
    :pswitch_f2
    const/16 v0, 0x6f

    goto/16 :goto_2a

    .line 1543
    :pswitch_f6
    const/16 v0, 0x6f

    goto/16 :goto_2a

    .line 1544
    :pswitch_fa
    const/16 v0, 0x6f

    goto/16 :goto_2a

    .line 1545
    :pswitch_fe
    const/16 v0, 0x6f

    goto/16 :goto_2a

    .line 1546
    :pswitch_102
    const/16 v0, 0x6f

    goto/16 :goto_2a

    .line 1548
    :pswitch_106
    const/16 v0, 0x4f

    goto/16 :goto_2a

    .line 1549
    :pswitch_10a
    const/16 v0, 0x4f

    goto/16 :goto_2a

    .line 1550
    :pswitch_10e
    const/16 v0, 0x4f

    goto/16 :goto_2a

    .line 1551
    :pswitch_112
    const/16 v0, 0x4f

    goto/16 :goto_2a

    .line 1552
    :pswitch_116
    const/16 v0, 0x4f

    goto/16 :goto_2a

    .line 1553
    :pswitch_11a
    const/16 v0, 0x4f

    goto/16 :goto_2a

    .line 1555
    :pswitch_11e
    const/16 v0, 0x72

    goto/16 :goto_2a

    .line 1556
    :pswitch_122
    const/16 v0, 0x72

    goto/16 :goto_2a

    .line 1558
    :pswitch_126
    const/16 v0, 0x52

    goto/16 :goto_2a

    .line 1559
    :pswitch_12a
    const/16 v0, 0x52

    goto/16 :goto_2a

    .line 1561
    :pswitch_12e
    const/16 v0, 0x73

    goto/16 :goto_2a

    .line 1562
    :pswitch_132
    const/16 v0, 0x73

    goto/16 :goto_2a

    .line 1563
    :pswitch_136
    const/16 v0, 0x73

    goto/16 :goto_2a

    .line 1565
    :pswitch_13a
    const/16 v0, 0x53

    goto/16 :goto_2a

    .line 1566
    :pswitch_13e
    const/16 v0, 0x53

    goto/16 :goto_2a

    .line 1567
    :pswitch_142
    const/16 v0, 0x53

    goto/16 :goto_2a

    .line 1569
    :pswitch_146
    const/16 v0, 0x74

    goto/16 :goto_2a

    .line 1571
    :pswitch_14a
    const/16 v0, 0x54

    goto/16 :goto_2a

    .line 1573
    :pswitch_14e
    const/16 v0, 0x75

    goto/16 :goto_2a

    .line 1574
    :pswitch_152
    const/16 v0, 0x75

    goto/16 :goto_2a

    .line 1575
    :pswitch_156
    const/16 v0, 0x75

    goto/16 :goto_2a

    .line 1576
    :pswitch_15a
    const/16 v0, 0x75

    goto/16 :goto_2a

    .line 1578
    :pswitch_15e
    const/16 v0, 0x55

    goto/16 :goto_2a

    .line 1579
    :pswitch_162
    const/16 v0, 0x55

    goto/16 :goto_2a

    .line 1580
    :pswitch_166
    const/16 v0, 0x55

    goto/16 :goto_2a

    .line 1581
    :pswitch_16a
    const/16 v0, 0x55

    goto/16 :goto_2a

    .line 1582
    :pswitch_16e
    const/16 v0, 0x55

    goto/16 :goto_2a

    .line 1584
    :pswitch_172
    const/16 v0, 0x79

    goto/16 :goto_2a

    .line 1585
    :pswitch_176
    const/16 v0, 0x79

    goto/16 :goto_2a

    .line 1587
    :pswitch_17a
    const/16 v0, 0x59

    goto/16 :goto_2a

    .line 1588
    :pswitch_17e
    const/16 v0, 0x59

    goto/16 :goto_2a

    .line 1590
    :pswitch_182
    const/16 v0, 0x7a

    goto/16 :goto_2a

    .line 1591
    :pswitch_186
    const/16 v0, 0x7a

    goto/16 :goto_2a

    .line 1592
    :pswitch_18a
    const/16 v0, 0x7a

    goto/16 :goto_2a

    .line 1594
    :pswitch_18e
    const/16 v0, 0x5a

    goto/16 :goto_2a

    .line 1595
    :pswitch_192
    const/16 v0, 0x5a

    goto/16 :goto_2a

    .line 1596
    :pswitch_196
    const/16 v0, 0x5a

    goto/16 :goto_2a

    .line 1622
    :cond_19a
    const v0, 0xfeff

    goto/16 :goto_2a

    .line 1462
    nop

    :pswitch_data_1a0
    .packed-switch 0xc0
        :pswitch_53
        :pswitch_56
        :pswitch_59
        :pswitch_5c
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_89
        :pswitch_20
        :pswitch_8c
        :pswitch_8f
        :pswitch_b2
        :pswitch_b6
        :pswitch_ba
        :pswitch_be
        :pswitch_20
        :pswitch_20
        :pswitch_106
        :pswitch_10a
        :pswitch_10e
        :pswitch_112
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_15e
        :pswitch_162
        :pswitch_166
        :pswitch_20
        :pswitch_17a
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_44
        :pswitch_47
        :pswitch_4a
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_6b
        :pswitch_20
        :pswitch_20
        :pswitch_7a
        :pswitch_7d
        :pswitch_20
        :pswitch_a1
        :pswitch_a4
        :pswitch_a7
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_f2
        :pswitch_f6
        :pswitch_fa
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_14e
        :pswitch_152
        :pswitch_20
        :pswitch_172
        :pswitch_20
        :pswitch_176
        :pswitch_5f
        :pswitch_50
        :pswitch_20
        :pswitch_20
        :pswitch_62
        :pswitch_4d
        :pswitch_6e
        :pswitch_65
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_71
        :pswitch_68
        :pswitch_77
        :pswitch_74
        :pswitch_20
        :pswitch_20
        :pswitch_98
        :pswitch_86
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_92
        :pswitch_80
        :pswitch_95
        :pswitch_83
        :pswitch_20
        :pswitch_20
        :pswitch_9e
        :pswitch_9b
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_c6
        :pswitch_ae
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_c2
        :pswitch_aa
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_d6
        :pswitch_ca
        :pswitch_20
        :pswitch_20
        :pswitch_da
        :pswitch_ce
        :pswitch_20
        :pswitch_20
        :pswitch_de
        :pswitch_d2
        :pswitch_ea
        :pswitch_e2
        :pswitch_20
        :pswitch_20
        :pswitch_ee
        :pswitch_e6
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_116
        :pswitch_fe
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_11a
        :pswitch_102
        :pswitch_126
        :pswitch_11e
        :pswitch_20
        :pswitch_20
        :pswitch_12a
        :pswitch_122
        :pswitch_13a
        :pswitch_12e
        :pswitch_20
        :pswitch_20
        :pswitch_142
        :pswitch_136
        :pswitch_13e
        :pswitch_132
        :pswitch_20
        :pswitch_20
        :pswitch_14a
        :pswitch_146
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_16e
        :pswitch_15a
        :pswitch_20
        :pswitch_20
        :pswitch_16a
        :pswitch_156
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_17e
        :pswitch_18e
        :pswitch_182
        :pswitch_196
        :pswitch_18a
        :pswitch_192
        :pswitch_186
    .end packed-switch
.end method

.method public static countGsmSeptets(C)I
    .registers 4
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 667
    const/4 v1, 0x0

    :try_start_2
    invoke-static {p0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I
    :try_end_5
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_5} :catch_7

    move-result v1

    .line 670
    :goto_6
    return v1

    .line 668
    :catch_7
    move-exception v0

    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    move v1, v2

    .line 670
    goto :goto_6
.end method

.method public static countGsmSeptets(CZ)I
    .registers 6
    .parameter "c"
    .parameter "throwsException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 685
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_f

    move v0, v3

    .line 697
    :goto_e
    return v0

    .line 689
    :cond_f
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_1b

    .line 690
    const/4 v0, 0x2

    goto :goto_e

    .line 693
    :cond_1b
    if-eqz p1, :cond_23

    .line 694
    new-instance v0, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v0

    :cond_23
    move v0, v3

    .line 697
    goto :goto_e
.end method

.method public static countGsmSeptets(Ljava/lang/CharSequence;Z)I
    .registers 6
    .parameter "s"
    .parameter "throwsException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 708
    const/4 v0, 0x0

    .line 709
    .local v0, charIndex:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 710
    .local v2, sz:I
    const/4 v1, 0x0

    .line 712
    .local v1, count:I
    :goto_6
    if-ge v0, v2, :cond_14

    .line 713
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 714
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 717
    :cond_14
    return v1
.end method

.method public static countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I
    .registers 13
    .parameter "s"
    .parameter "use7bitOnly"
    .parameter "languageTable"
    .parameter "languageShiftTable"

    .prologue
    const/4 v8, -0x1

    .line 734
    const/4 v3, 0x0

    .line 735
    .local v3, count:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 736
    .local v5, sz:I
    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v6, p2

    .line 737
    .local v1, charToLanguageTable:Landroid/util/SparseIntArray;
    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v2, v6, p3

    .line 738
    .local v2, charToShiftTable:Landroid/util/SparseIntArray;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_f
    if-ge v4, v5, :cond_3c

    .line 739
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 740
    .local v0, c:C
    const/16 v6, 0x1b

    if-ne v0, v6, :cond_23

    .line 741
    const-string v6, "GSM"

    const-string v7, "countGsmSeptets() string contains Escape character, skipping."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :goto_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 744
    :cond_23
    invoke-virtual {v1, v0, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    if-eq v6, v8, :cond_2c

    .line 745
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 746
    :cond_2c
    invoke-virtual {v2, v0, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    if-eq v6, v8, :cond_35

    .line 747
    add-int/lit8 v3, v3, 0x2

    goto :goto_20

    .line 748
    :cond_35
    if-eqz p1, :cond_3a

    .line 749
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_3a
    move v6, v8

    .line 754
    .end local v0           #c:C
    :goto_3b
    return v6

    :cond_3c
    move v6, v3

    goto :goto_3b
.end method

.method public static findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I
    .registers 13
    .parameter "s"
    .parameter "start"
    .parameter "limit"
    .parameter "langTable"
    .parameter "langShiftTable"

    .prologue
    const/4 v7, -0x1

    .line 929
    const/4 v0, 0x0

    .line 930
    .local v0, accumulator:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 932
    .local v5, size:I
    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v2, v6, p3

    .line 933
    .local v2, charToLangTable:Landroid/util/SparseIntArray;
    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v6, p4

    .line 934
    .local v1, charToLangShiftTable:Landroid/util/SparseIntArray;
    move v4, p1

    .local v4, i:I
    :goto_f
    if-ge v4, v5, :cond_34

    .line 935
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 936
    .local v3, encodedSeptet:I
    if-ne v3, v7, :cond_2e

    .line 937
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 938
    if-ne v3, v7, :cond_2b

    .line 940
    add-int/lit8 v0, v0, 0x1

    .line 947
    :goto_27
    if-le v0, p2, :cond_31

    move v6, v4

    .line 951
    .end local v3           #encodedSeptet:I
    :goto_2a
    return v6

    .line 942
    .restart local v3       #encodedSeptet:I
    :cond_2b
    add-int/lit8 v0, v0, 0x2

    goto :goto_27

    .line 945
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 934
    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .end local v3           #encodedSeptet:I
    :cond_34
    move v6, v5

    .line 951
    goto :goto_2a
.end method

.method static declared-synchronized getEnabledLockingShiftTables()[I
    .registers 2

    .prologue
    .line 1001
    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized getEnabledSingleShiftTables()[I
    .registers 2

    .prologue
    .line 990
    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static gsm7BitPackedToString([BII)Ljava/lang/String;
    .registers 9
    .parameter "pdu"
    .parameter "offset"
    .parameter "lengthSeptets"

    .prologue
    const/4 v3, 0x0

    .line 390
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsm7BitPackedToString([BIII)Ljava/lang/String;
    .registers 15
    .parameter "pdu"
    .parameter "offset"
    .parameter "lengthSeptets"
    .parameter "numPaddingBits"

    .prologue
    const/4 v10, 0x1

    .line 408
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 412
    .local v6, ret:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 414
    .local v5, prevCharWasEscape:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_8
    if-ge v4, p2, :cond_54

    .line 415
    mul-int/lit8 v8, v4, 0x7

    add-int v0, v8, p3

    .line 417
    .local v0, bitOffset:I
    :try_start_e
    div-int/lit8 v1, v0, 0x8

    .line 418
    .local v1, byteOffset:I
    rem-int/lit8 v7, v0, 0x8

    .line 421
    .local v7, shift:I
    add-int v8, p1, v1

    aget-byte v8, p0, v8

    shr-int/2addr v8, v7

    and-int/lit8 v3, v8, 0x7f

    .line 424
    .local v3, gsmVal:I
    if-le v7, v10, :cond_2e

    .line 426
    const/16 v8, 0x7f

    sub-int v9, v7, v10

    shr-int/2addr v8, v9

    and-int/2addr v3, v8

    .line 428
    add-int v8, p1, v1

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p0, v8

    const/16 v9, 0x8

    sub-int/2addr v9, v7

    shl-int/2addr v8, v9

    and-int/lit8 v8, v8, 0x7f

    or-int/2addr v3, v8

    .line 431
    :cond_2e
    if-eqz v5, :cond_3b

    .line 432
    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 433
    const/4 v5, 0x0

    .line 414
    :goto_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 434
    :cond_3b
    const/16 v8, 0x1b

    if-ne v3, v8, :cond_41

    .line 435
    const/4 v5, 0x1

    goto :goto_38

    .line 437
    :cond_41
    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_48
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_48} :catch_49

    goto :goto_38

    .line 440
    .end local v1           #byteOffset:I
    .end local v3           #gsmVal:I
    .end local v7           #shift:I
    :catch_49
    move-exception v8

    move-object v2, v8

    .line 441
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v8, "GSM"

    const-string v9, "Error GSM 7 bit packed: "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 442
    const/4 v8, 0x0

    .line 445
    .end local v0           #bitOffset:I
    .end local v2           #ex:Ljava/lang/RuntimeException;
    :goto_53
    return-object v8

    :cond_54
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_53
.end method

.method public static gsm7BitPackedToString([BIIIII)Ljava/lang/String;
    .registers 14
    .parameter "pdu"
    .parameter "offset"
    .parameter "lengthSeptets"
    .parameter "numPaddingBits"
    .parameter "languageTable"
    .parameter "shiftTable"

    .prologue
    .line 465
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 467
    .local v3, ret:Ljava/lang/StringBuilder;
    if-ltz p4, :cond_c

    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    array-length v0, v0

    if-le p4, v0, :cond_2c

    .line 468
    :cond_c
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown language table "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    .end local p4
    const-string v1, ", using default"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/4 p4, 0x0

    .line 471
    .restart local p4
    :cond_2c
    if-ltz p5, :cond_33

    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    array-length v0, v0

    if-le p5, v0, :cond_53

    .line 472
    :cond_33
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown single shift table "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    .end local p5
    const-string v1, ", using default"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v0, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/4 p5, 0x0

    .line 477
    .restart local p5
    :cond_53
    const/4 v2, 0x0

    .line 478
    .local v2, prevCharWasEscape:Z
    :try_start_54
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v0, v0, p4

    .line 479
    .local v0, languageTableToChar:Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v4, v1, p5

    .line 481
    .local v4, shiftTableToChar:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_129

    .line 482
    const-string v0, "GSM"

    .end local v0           #languageTableToChar:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no language table for code "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    .end local p4
    const-string v1, ", using default"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    sget-object p4, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p4, p4, v0

    .local p4, languageTableToChar:Ljava/lang/String;
    move-object v1, p4

    .line 485
    .end local p4           #languageTableToChar:Ljava/lang/String;
    .local v1, languageTableToChar:Ljava/lang/String;
    :goto_87
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_127

    .line 486
    const-string p4, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no single shift table for code "

    .end local v4           #shiftTableToChar:Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    .end local p5
    const-string v0, ", using default"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    sget-object p4, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    const/4 p5, 0x0

    aget-object p4, p4, p5

    .local p4, shiftTableToChar:Ljava/lang/String;
    move-object v5, p4

    .line 490
    .end local p4           #shiftTableToChar:Ljava/lang/String;
    .local v5, shiftTableToChar:Ljava/lang/String;
    :goto_b2
    const/4 p4, 0x0

    .local p4, i:I
    move v0, p4

    .end local p4           #i:I
    .local v0, i:I
    :goto_b4
    if-ge v0, p2, :cond_11d

    .line 491
    mul-int/lit8 p4, v0, 0x7

    add-int/2addr p4, p3

    .line 493
    .local p4, bitOffset:I
    div-int/lit8 p5, p4, 0x8

    .line 494
    .local p5, byteOffset:I
    rem-int/lit8 v4, p4, 0x8

    .line 497
    .local v4, shift:I
    add-int p4, p1, p5

    aget-byte p4, p0, p4

    .end local p4           #bitOffset:I
    shr-int/2addr p4, v4

    and-int/lit8 p4, p4, 0x7f

    .line 500
    .local p4, gsmVal:I
    const/4 v6, 0x1

    if-le v4, v6, :cond_125

    .line 502
    const/16 v6, 0x7f

    const/4 v7, 0x1

    sub-int v7, v4, v7

    shr-int/2addr v6, v7

    and-int/2addr p4, v6

    .line 504
    add-int/2addr p5, p1

    add-int/lit8 p5, p5, 0x1

    aget-byte p5, p0, p5
    :try_end_d3
    .catch Ljava/lang/RuntimeException; {:try_start_54 .. :try_end_d3} :catch_122

    .end local p5           #byteOffset:I
    const/16 v6, 0x8

    sub-int v4, v6, v4

    shl-int/2addr p5, v4

    and-int/lit8 p5, p5, 0x7f

    or-int/2addr p4, p5

    move p5, p4

    .line 507
    .end local v4           #shift:I
    .end local p4           #gsmVal:I
    .local p5, gsmVal:I
    :goto_dc
    if-eqz v2, :cond_10d

    .line 508
    const/16 p4, 0x1b

    if-ne p5, p4, :cond_ee

    .line 509
    const/16 p4, 0x20

    :try_start_e4
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 518
    :goto_e7
    const/4 p4, 0x0

    .end local v2           #prevCharWasEscape:Z
    .local p4, prevCharWasEscape:Z
    move p5, p4

    .line 490
    .end local p4           #prevCharWasEscape:Z
    .local p5, prevCharWasEscape:Z
    :goto_e9
    add-int/lit8 p4, v0, 0x1

    .end local v0           #i:I
    .local p4, i:I
    move v0, p4

    .end local p4           #i:I
    .restart local v0       #i:I
    move v2, p5

    .end local p5           #prevCharWasEscape:Z
    .restart local v2       #prevCharWasEscape:Z
    goto :goto_b4

    .line 511
    .local p5, gsmVal:I
    :cond_ee
    invoke-virtual {v5, p5}, Ljava/lang/String;->charAt(I)C

    move-result p4

    .line 512
    .local p4, c:C
    const/16 v4, 0x20

    if-ne p4, v4, :cond_109

    .line 513
    invoke-virtual {v1, p5}, Ljava/lang/String;->charAt(I)C

    move-result p4

    .end local p4           #c:C
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_fd
    .catch Ljava/lang/RuntimeException; {:try_start_e4 .. :try_end_fd} :catch_fe

    goto :goto_e7

    .line 525
    :catch_fe
    move-exception p0

    move p1, v2

    .line 526
    .end local v0           #i:I
    .end local v1           #languageTableToChar:Ljava/lang/String;
    .end local v2           #prevCharWasEscape:Z
    .end local v5           #shiftTableToChar:Ljava/lang/String;
    .end local p5           #gsmVal:I
    .local p0, ex:Ljava/lang/RuntimeException;
    .local p1, prevCharWasEscape:Z
    :goto_100
    const-string p1, "GSM"

    .end local p1           #prevCharWasEscape:Z
    const-string p2, "Error GSM 7 bit packed: "

    .end local p2
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 527
    const/4 p0, 0x0

    .line 530
    .end local p0           #ex:Ljava/lang/RuntimeException;
    :goto_108
    return-object p0

    .line 515
    .restart local v0       #i:I
    .restart local v1       #languageTableToChar:Ljava/lang/String;
    .restart local v2       #prevCharWasEscape:Z
    .restart local v5       #shiftTableToChar:Ljava/lang/String;
    .local p0, pdu:[B
    .local p1, offset:I
    .restart local p2
    .restart local p4       #c:C
    .restart local p5       #gsmVal:I
    :cond_109
    :try_start_109
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e7

    .line 519
    .end local p4           #c:C
    :cond_10d
    const/16 p4, 0x1b

    if-ne p5, p4, :cond_114

    .line 520
    const/4 p4, 0x1

    .end local v2           #prevCharWasEscape:Z
    .local p4, prevCharWasEscape:Z
    move p5, p4

    .end local p4           #prevCharWasEscape:Z
    .local p5, prevCharWasEscape:Z
    goto :goto_e9

    .line 522
    .restart local v2       #prevCharWasEscape:Z
    .local p5, gsmVal:I
    :cond_114
    invoke-virtual {v1, p5}, Ljava/lang/String;->charAt(I)C

    move-result p4

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_11b
    .catch Ljava/lang/RuntimeException; {:try_start_109 .. :try_end_11b} :catch_fe

    move p5, v2

    .end local v2           #prevCharWasEscape:Z
    .local p5, prevCharWasEscape:Z
    goto :goto_e9

    .line 530
    .end local p5           #prevCharWasEscape:Z
    .restart local v2       #prevCharWasEscape:Z
    :cond_11d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_108

    .line 525
    .end local v0           #i:I
    .end local v1           #languageTableToChar:Ljava/lang/String;
    .end local v5           #shiftTableToChar:Ljava/lang/String;
    :catch_122
    move-exception p0

    move p1, v2

    .end local v2           #prevCharWasEscape:Z
    .local p1, prevCharWasEscape:Z
    goto :goto_100

    .restart local v0       #i:I
    .restart local v1       #languageTableToChar:Ljava/lang/String;
    .restart local v2       #prevCharWasEscape:Z
    .restart local v4       #shift:I
    .restart local v5       #shiftTableToChar:Ljava/lang/String;
    .local p1, offset:I
    .local p4, gsmVal:I
    .local p5, byteOffset:I
    :cond_125
    move p5, p4

    .end local p4           #gsmVal:I
    .local p5, gsmVal:I
    goto :goto_dc

    .end local v0           #i:I
    .end local v5           #shiftTableToChar:Ljava/lang/String;
    .local v4, shiftTableToChar:Ljava/lang/String;
    .local p5, shiftTable:I
    :cond_127
    move-object v5, v4

    .end local v4           #shiftTableToChar:Ljava/lang/String;
    .restart local v5       #shiftTableToChar:Ljava/lang/String;
    goto :goto_b2

    .end local v1           #languageTableToChar:Ljava/lang/String;
    .end local v5           #shiftTableToChar:Ljava/lang/String;
    .local v0, languageTableToChar:Ljava/lang/String;
    .restart local v4       #shiftTableToChar:Ljava/lang/String;
    .local p4, languageTable:I
    :cond_129
    move-object v1, v0

    .end local v0           #languageTableToChar:Ljava/lang/String;
    .restart local v1       #languageTableToChar:Ljava/lang/String;
    goto/16 :goto_87
.end method

.method public static gsm8BitUnpackedToString([BII)Ljava/lang/String;
    .registers 13
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x0

    .line 549
    sget-object v7, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v2, v7, v8

    .line 550
    .local v2, languageTableToChar:Ljava/lang/String;
    sget-object v7, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v6, v7, v8

    .line 552
    .local v6, shiftTableToChar:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 553
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 554
    .local v3, prevWasEscape:Z
    move v1, p1

    .local v1, i:I
    :goto_12
    add-int v7, p1, p2

    if-ge v1, v7, :cond_1e

    .line 557
    aget-byte v7, p0, v1

    and-int/lit16 v0, v7, 0xff

    .line 559
    .local v0, c:I
    const/16 v7, 0xff

    if-ne v0, v7, :cond_23

    .line 587
    .end local v0           #c:I
    :cond_1e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 561
    .restart local v0       #c:I
    :cond_23
    const/16 v7, 0x1b

    if-ne v0, v7, :cond_32

    .line 562
    if-eqz v3, :cond_30

    .line 566
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 567
    const/4 v3, 0x0

    .line 554
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 569
    :cond_30
    const/4 v3, 0x1

    goto :goto_2d

    .line 572
    :cond_32
    if-eqz v3, :cond_47

    .line 573
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 574
    .local v5, shiftChar:C
    if-ne v5, v9, :cond_43

    .line 576
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 583
    .end local v5           #shiftChar:C
    :goto_41
    const/4 v3, 0x0

    goto :goto_2d

    .line 578
    .restart local v5       #shiftChar:C
    :cond_43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_41

    .line 581
    .end local v5           #shiftChar:C
    :cond_47
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_41
.end method

.method public static gsmExtendedToChar(I)C
    .registers 5
    .parameter "gsmChar"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x20

    .line 194
    const/16 v1, 0x1b

    if-ne p0, v1, :cond_9

    move v1, v2

    .line 204
    :goto_8
    return v1

    .line 196
    :cond_9
    if-ltz p0, :cond_24

    const/16 v1, 0x80

    if-ge p0, v1, :cond_24

    .line 197
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 198
    .local v0, c:C
    if-ne v0, v2, :cond_22

    .line 199
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_8

    :cond_22
    move v1, v0

    .line 201
    goto :goto_8

    .end local v0           #c:C
    :cond_24
    move v1, v2

    .line 204
    goto :goto_8
.end method

.method public static gsmToChar(I)C
    .registers 3
    .parameter "gsmChar"

    .prologue
    .line 172
    if-ltz p0, :cond_10

    const/16 v0, 0x80

    if-ge p0, v0, :cond_10

    .line 173
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 175
    :goto_f
    return v0

    :cond_10
    const/16 v0, 0x20

    goto :goto_f
.end method

.method private static packSmsChar([BII)V
    .registers 7
    .parameter "packedChars"
    .parameter "bitOffset"
    .parameter "value"

    .prologue
    .line 367
    div-int/lit8 v0, p1, 0x8

    .line 368
    .local v0, byteOffset:I
    rem-int/lit8 v1, p1, 0x8

    .line 370
    .local v1, shift:I
    add-int/lit8 v0, v0, 0x1

    aget-byte v2, p0, v0

    shl-int v3, p2, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 372
    const/4 v2, 0x1

    if-le v1, v2, :cond_1b

    .line 373
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x8

    sub-int/2addr v2, v1

    shr-int v2, p2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 375
    :cond_1b
    return-void
.end method

.method static declared-synchronized setEnabledLockingShiftTables([I)V
    .registers 3
    .parameter "tables"

    .prologue
    .line 979
    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 980
    monitor-exit v0

    return-void

    .line 979
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized setEnabledSingleShiftTables([I)V
    .registers 4
    .parameter "tables"

    .prologue
    .line 962
    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    .line 964
    array-length v1, p0

    if-lez v1, :cond_11

    .line 965
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v1, p0, v1

    sput v1, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_15

    .line 969
    :goto_f
    monitor-exit v0

    return-void

    .line 967
    :cond_11
    const/4 v1, 0x0

    :try_start_12
    sput v1, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_15

    goto :goto_f

    .line 962
    :catchall_15
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;)[B
    .registers 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 266
    const/4 v0, 0x1

    invoke-static {p0, v1, v0, v1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;II)[B
    .registers 5
    .parameter "data"
    .parameter "languageTable"
    .parameter "languageShiftTable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 290
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;IZII)[B
    .registers 14
    .parameter "data"
    .parameter "startingSeptetOffset"
    .parameter "throwException"
    .parameter "languageTable"
    .parameter "languageShiftTable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 318
    .local v1, dataLen:I
    if-nez p2, :cond_16

    const/4 v0, 0x1

    :goto_7
    invoke-static {p0, v0, p3, p4}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v0

    .line 320
    .local v0, septetCount:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_18

    .line 321
    new-instance p0, Lcom/android/internal/telephony/EncodeException;

    .end local p0
    const-string p1, "countGsmSeptetsUsingTables(): unencodable char"

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 318
    .end local v0           #septetCount:I
    .restart local p0
    .restart local p1
    :cond_16
    const/4 v0, 0x0

    goto :goto_7

    .line 323
    .restart local v0       #septetCount:I
    :cond_18
    add-int v4, v0, p1

    .line 324
    .end local v0           #septetCount:I
    .local v4, septetCount:I
    const/16 v0, 0xff

    if-le v4, v0, :cond_26

    .line 325
    new-instance p0, Lcom/android/internal/telephony/EncodeException;

    .end local p0
    const-string p1, "Payload cannot exceed 255 septets"

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 327
    .restart local p0
    .restart local p1
    :cond_26
    mul-int/lit8 v0, v4, 0x7

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 328
    .local v0, byteCount:I
    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [B

    .line 329
    .end local v0           #byteCount:I
    .local v3, ret:[B
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v0, v0, p3

    .line 330
    .local v0, charToLanguageTable:Landroid/util/SparseIntArray;
    sget-object p3, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    .end local p3
    aget-object p4, p3, p4

    .line 331
    .local p4, charToShiftTable:Landroid/util/SparseIntArray;
    const/4 p3, 0x0

    .local p3, i:I
    move v2, p1

    .local v2, septets:I
    mul-int/lit8 p1, p1, 0x7

    .local p1, bitOffset:I
    move v5, v2

    .end local v2           #septets:I
    .local v5, septets:I
    move v2, p3

    .line 332
    .end local p3           #i:I
    .local v2, i:I
    :goto_3e
    if-ge v2, v1, :cond_82

    if-ge v5, v4, :cond_82

    .line 334
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    .line 335
    .local p3, c:C
    const/4 v6, -0x1

    invoke-virtual {v0, p3, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 336
    .local v6, v:I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_87

    .line 337
    const/4 v6, -0x1

    invoke-virtual {p4, p3, v6}, Landroid/util/SparseIntArray;->get(II)I

    .end local v6           #v:I
    move-result v6

    .line 338
    .restart local v6       #v:I
    const/4 p3, -0x1

    if-ne v6, p3, :cond_77

    .line 339
    .end local p3           #c:C
    if-eqz p2, :cond_61

    .line 340
    new-instance p0, Lcom/android/internal/telephony/EncodeException;

    .end local p0
    const-string/jumbo p1, "stringToGsm7BitPacked(): unencodable char"

    .end local p1           #bitOffset:I
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 342
    .restart local p0
    .restart local p1       #bitOffset:I
    :cond_61
    const/16 p3, 0x20

    const/16 v6, 0x20

    invoke-virtual {v0, p3, v6}, Landroid/util/SparseIntArray;->get(II)I

    .end local v6           #v:I
    move-result p3

    .local p3, v:I
    move v8, p3

    .end local p3           #v:I
    .local v8, v:I
    move p3, v5

    .end local v5           #septets:I
    .local p3, septets:I
    move v5, v8

    .line 350
    .end local v8           #v:I
    .local v5, v:I
    :goto_6c
    invoke-static {v3, p1, v5}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    .line 351
    add-int/lit8 v5, p3, 0x1

    .line 333
    .end local p3           #septets:I
    .local v5, septets:I
    add-int/lit8 p3, v2, 0x1

    .end local v2           #i:I
    .local p3, i:I
    add-int/lit8 p1, p1, 0x7

    move v2, p3

    .end local p3           #i:I
    .restart local v2       #i:I
    goto :goto_3e

    .line 345
    .restart local v6       #v:I
    :cond_77
    const/16 p3, 0x1b

    invoke-static {v3, p1, p3}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    .line 346
    add-int/lit8 p1, p1, 0x7

    .line 347
    add-int/lit8 p3, v5, 0x1

    .end local v5           #septets:I
    .local p3, septets:I
    move v5, v6

    .end local v6           #v:I
    .local v5, v:I
    goto :goto_6c

    .line 353
    .end local p3           #septets:I
    .local v5, septets:I
    :cond_82
    const/4 p0, 0x0

    int-to-byte p1, v4

    aput-byte p1, v3, p0

    .line 354
    .end local p0
    .end local p1           #bitOffset:I
    return-object v3

    .restart local v6       #v:I
    .restart local p0
    .restart local p1       #bitOffset:I
    .local p3, c:C
    :cond_87
    move p3, v5

    .end local v5           #septets:I
    .local p3, septets:I
    move v5, v6

    .end local v6           #v:I
    .local v5, v:I
    goto :goto_6c
.end method

.method public static stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    .registers 10
    .parameter "data"
    .parameter "header"
    .parameter "languageTable"
    .parameter "languageShiftTable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 233
    if-eqz p1, :cond_6

    array-length v3, p1

    if-nez v3, :cond_b

    .line 234
    :cond_6
    invoke-static {p0, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;II)[B

    move-result-object v3

    .line 246
    :goto_a
    return-object v3

    .line 237
    :cond_b
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v0, v3, 0x8

    .line 238
    .local v0, headerBits:I
    add-int/lit8 v3, v0, 0x6

    div-int/lit8 v1, v3, 0x7

    .line 240
    .local v1, headerSeptets:I
    invoke-static {p0, v1, v4, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v2

    .line 244
    .local v2, ret:[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 245
    const/4 v3, 0x0

    const/4 v4, 0x2

    array-length v5, p1

    invoke-static {p1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v2

    .line 246
    goto :goto_a
.end method

.method public static stringToGsm8BitPacked(Ljava/lang/String;)[B
    .registers 5
    .parameter "s"

    .prologue
    const/4 v3, 0x0

    .line 600
    const/4 v2, 0x1

    invoke-static {p0, v2, v3, v3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v1

    .line 603
    .local v1, septets:I
    new-array v0, v1, [B

    .line 605
    .local v0, ret:[B
    array-length v2, v0

    invoke-static {p0, v0, v3, v2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V

    .line 607
    return-object v0
.end method

.method public static stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V
    .registers 16
    .parameter "s"
    .parameter "dest"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v11, 0x20

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 622
    move v4, p2

    .line 623
    .local v4, outByteIndex:I
    sget-object v8, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v8, v10

    .line 624
    .local v1, charToLanguageTable:Landroid/util/SparseIntArray;
    sget-object v8, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v2, v8, v10

    .line 627
    .local v2, charToShiftTable:Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .local v6, sz:I
    move v5, v4

    .line 628
    .end local v4           #outByteIndex:I
    .local v5, outByteIndex:I
    :goto_13
    if-ge v3, v6, :cond_3b

    sub-int v8, v5, p2

    if-ge v8, p3, :cond_3b

    .line 631
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 633
    .local v0, c:C
    invoke-virtual {v1, v0, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 635
    .local v7, v:I
    if-ne v7, v9, :cond_4d

    .line 636
    invoke-virtual {v2, v0, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 637
    if-ne v7, v9, :cond_36

    .line 638
    invoke-virtual {v1, v11, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    move v4, v5

    .line 649
    .end local v5           #outByteIndex:I
    .restart local v4       #outByteIndex:I
    :goto_2e
    add-int/lit8 v5, v4, 0x1

    .end local v4           #outByteIndex:I
    .restart local v5       #outByteIndex:I
    int-to-byte v8, v7

    aput-byte v8, p1, v4

    .line 629
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 641
    :cond_36
    add-int/lit8 v8, v5, 0x1

    sub-int/2addr v8, p2

    if-lt v8, p3, :cond_45

    .line 653
    .end local v0           #c:C
    .end local v7           #v:I
    :cond_3b
    :goto_3b
    sub-int v8, v5, p2

    if-ge v8, p3, :cond_4c

    .line 654
    add-int/lit8 v4, v5, 0x1

    .end local v5           #outByteIndex:I
    .restart local v4       #outByteIndex:I
    aput-byte v9, p1, v5

    move v5, v4

    .end local v4           #outByteIndex:I
    .restart local v5       #outByteIndex:I
    goto :goto_3b

    .line 645
    .restart local v0       #c:C
    .restart local v7       #v:I
    :cond_45
    add-int/lit8 v4, v5, 0x1

    .end local v5           #outByteIndex:I
    .restart local v4       #outByteIndex:I
    const/16 v8, 0x1b

    aput-byte v8, p1, v5

    goto :goto_2e

    .line 656
    .end local v0           #c:C
    .end local v4           #outByteIndex:I
    .end local v7           #v:I
    .restart local v5       #outByteIndex:I
    :cond_4c
    return-void

    .restart local v0       #c:C
    .restart local v7       #v:I
    :cond_4d
    move v4, v5

    .end local v5           #outByteIndex:I
    .restart local v4       #outByteIndex:I
    goto :goto_2e
.end method
