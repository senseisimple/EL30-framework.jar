.class public Landroid/webkit/HtmlComposerView;
.super Landroid/webkit/WebView;
.source "HtmlComposerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HtmlComposerView$InsertionPosition;,
        Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;,
        Landroid/webkit/HtmlComposerView$MenuHandler;
    }
.end annotation


# static fields
.field static final ALT_METASTATE:I = 0x12

.field private static final ID_COPY:I = 0x1020021

.field private static final ID_COPY_ALL:I = 0x1020409

.field private static final ID_CUT:I = 0x1020020

.field private static final ID_CUT_ALL:I = 0x1020408

.field private static final ID_PASTE:I = 0x1020022

.field private static final ID_REDO:I = 0x102002d

.field private static final ID_SELECT_ALL:I = 0x102001f

.field private static final ID_START_SELECTION:I = 0x1020028

.field private static final ID_SWITCH_INPUT_METHOD:I = 0x1020024

.field private static final ID_UNDO:I = 0x102002c

.field static final LOGTAG:Ljava/lang/String; = "HtmlComposerView"

.field private static PICKER_SETS:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final SHIFT_METASTATE:I = 0x41


# instance fields
.field private defaultLoadString:Ljava/lang/String;

.field imeOptions:I

.field private isContextMenuVisible:Z

.field private isInComposingState:Z

.field private isNewLine:Z

.field private isNewSentence:Z

.field private isViewInFocus:Z

.field private mAltIsPressed:Z

.field private mAltModeEnabled:Z

.field private mAltRepeatCount:I

.field private mEmojiIsActive:Z

.field private mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

.field private mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

.field private mShiftIsPressed:Z

.field private mShiftKeyIsPressed:Z

.field private mShiftModeEnabled:Z

.field private mShiftRepeatCount:I

.field private mSmileyDialog:Landroid/app/AlertDialog;

.field private mViewWidth:I

.field private m_composedataLength:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1100
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    .line 1103
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x41

    const-string/jumbo v2, "\u00c0\u00c1\u00c2\u00c4\u00c6\u00c3\u00c5\u0104\u0100"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1104
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x43

    const-string/jumbo v2, "\u00c7\u0106\u010c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1105
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x44

    const-string/jumbo v2, "\u010e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1106
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x45

    const-string/jumbo v2, "\u00c8\u00c9\u00ca\u00cb\u0118\u011a\u0112"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1107
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x47

    const-string/jumbo v2, "\u011e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1108
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4c

    const-string/jumbo v2, "\u0141"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1109
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x49

    const-string/jumbo v2, "\u00cc\u00cd\u00ce\u00cf\u012a\u0130"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1110
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4e

    const-string/jumbo v2, "\u00d1\u0143\u0147"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1111
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4f

    const-string/jumbo v2, "\u00d8\u0152\u00d5\u00d2\u00d3\u00d4\u00d6\u014c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1112
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x52

    const-string/jumbo v2, "\u0158"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1113
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x53

    const-string/jumbo v2, "\u015a\u0160\u015e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1114
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x54

    const-string/jumbo v2, "\u0164"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1115
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x55

    const-string/jumbo v2, "\u00d9\u00da\u00db\u00dc\u016e\u016a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1116
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x59

    const-string/jumbo v2, "\u00dd\u0178"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1117
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x5a

    const-string/jumbo v2, "\u0179\u017b\u017d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1118
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x61

    const-string/jumbo v2, "\u00e0\u00e1\u00e2\u00e4\u00e6\u00e3\u00e5\u0105\u0101"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1119
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x63

    const-string/jumbo v2, "\u00e7\u0107\u010d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1120
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x64

    const-string/jumbo v2, "\u010f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1121
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x65

    const-string/jumbo v2, "\u00e8\u00e9\u00ea\u00eb\u0119\u011b\u0113"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1122
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x67

    const-string/jumbo v2, "\u011f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1123
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x69

    const-string/jumbo v2, "\u00ec\u00ed\u00ee\u00ef\u012b\u0131"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1124
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6c

    const-string/jumbo v2, "\u0142"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1125
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6e

    const-string/jumbo v2, "\u00f1\u0144\u0148"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1126
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6f

    const-string/jumbo v2, "\u00f8\u0153\u00f5\u00f2\u00f3\u00f4\u00f6\u014d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1127
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x72

    const-string/jumbo v2, "\u0159"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1128
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x73

    const-string/jumbo v2, "\u00a7\u00df\u015b\u0161\u015f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1129
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x74

    const-string/jumbo v2, "\u0165"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1130
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x75

    const-string/jumbo v2, "\u00f9\u00fa\u00fb\u00fc\u016f\u016b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1131
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x79

    const-string/jumbo v2, "\u00fd\u00ff"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1132
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x7a

    const-string/jumbo v2, "\u017a\u017c\u017e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1133
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const v1, 0xef01

    const-string/jumbo v2, "\u2026\u00a5\u2022\u00ae\u00a9\u00b1[]{}\\|"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1135
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2f

    const-string v2, "\\"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1139
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x31

    const-string/jumbo v2, "\u00b9\u00bd\u2153\u00bc\u215b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1140
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x32

    const-string/jumbo v2, "\u00b2\u2154"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1141
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x33

    const-string/jumbo v2, "\u00b3\u00be\u215c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1142
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x34

    const-string/jumbo v2, "\u2074"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1143
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x35

    const-string/jumbo v2, "\u215d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1144
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x37

    const-string/jumbo v2, "\u215e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1145
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x30

    const-string/jumbo v2, "\u207f\u2205"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1146
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x24

    const-string/jumbo v2, "\u00a2\u00a3\u20ac\u00a5\u20a3\u20a4\u20b1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1147
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x25

    const-string/jumbo v2, "\u2030"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1148
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2a

    const-string/jumbo v2, "\u2020\u2021"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1149
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2d

    const-string/jumbo v2, "\u2013\u2014"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1150
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2b

    const-string/jumbo v2, "\u00b1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1151
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x28

    const-string v2, "[{<"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1152
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x29

    const-string v2, "]}>"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1153
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x21

    const-string/jumbo v2, "\u00a1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1154
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x22

    const-string/jumbo v2, "\u201c\u201d\u00ab\u00bb\u02dd"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1155
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3f

    const-string/jumbo v2, "\u00bf"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1156
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2c

    const-string/jumbo v2, "\u201a\u201e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1160
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3d

    const-string/jumbo v2, "\u2260\u2248\u221e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1161
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3c

    const-string/jumbo v2, "\u2264\u00ab\u2039"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1162
    sget-object v0, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3e

    const-string/jumbo v2, "\u2265\u00bb\u203a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 65
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 66
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true> </body></html>"

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 67
    const v0, -0x7fffff01

    iput v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 68
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 69
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 71
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    .line 72
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 74
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 76
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftModeEnabled:Z

    .line 77
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mShiftRepeatCount:I

    .line 78
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftIsPressed:Z

    .line 80
    iput v1, p0, Landroid/webkit/HtmlComposerView;->m_composedataLength:I

    .line 84
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mAltIsPressed:Z

    .line 85
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mAltModeEnabled:Z

    .line 86
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mAltRepeatCount:I

    .line 885
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isNewSentence:Z

    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isNewLine:Z

    .line 101
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 66
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true> </body></html>"

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 67
    const v0, -0x7fffff01

    iput v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 68
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 69
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 71
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    .line 72
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 74
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 76
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftModeEnabled:Z

    .line 77
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mShiftRepeatCount:I

    .line 78
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftIsPressed:Z

    .line 80
    iput v1, p0, Landroid/webkit/HtmlComposerView;->m_composedataLength:I

    .line 84
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mAltIsPressed:Z

    .line 85
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mAltModeEnabled:Z

    .line 86
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mAltRepeatCount:I

    .line 885
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isNewSentence:Z

    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isNewLine:Z

    .line 106
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 66
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true> </body></html>"

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 67
    const v0, -0x7fffff01

    iput v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 68
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 69
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 71
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    .line 72
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 74
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 76
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftModeEnabled:Z

    .line 77
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mShiftRepeatCount:I

    .line 78
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftIsPressed:Z

    .line 80
    iput v1, p0, Landroid/webkit/HtmlComposerView;->m_composedataLength:I

    .line 84
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mAltIsPressed:Z

    .line 85
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mAltModeEnabled:Z

    .line 86
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mAltRepeatCount:I

    .line 885
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isNewSentence:Z

    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isNewLine:Z

    .line 111
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "filePath"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 65
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 66
    const-string v1, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true> </body></html>"

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 67
    const v1, -0x7fffff01

    iput v1, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 68
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 69
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 70
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 71
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    .line 72
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 74
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 76
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mShiftModeEnabled:Z

    .line 77
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mShiftRepeatCount:I

    .line 78
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mShiftIsPressed:Z

    .line 80
    iput v2, p0, Landroid/webkit/HtmlComposerView;->m_composedataLength:I

    .line 84
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mAltIsPressed:Z

    .line 85
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mAltModeEnabled:Z

    .line 86
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mAltRepeatCount:I

    .line 885
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isNewSentence:Z

    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isNewLine:Z

    .line 116
    invoke-direct {p0, p2}, Landroid/webkit/HtmlComposerView;->getLoadableContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, data:Ljava/lang/String;
    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method private HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "data"
    .parameter "mimeType"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 123
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 124
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 125
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setEditableSupport(Z)V

    .line 126
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAdvancedCopyPasteFeature(Z)V

    .line 128
    new-instance v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    invoke-direct {v0, p0}, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;-><init>(Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 131
    const-string v1, "htmlcomposer"

    const-string/jumbo v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/HtmlComposerView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->enableEditing()V

    .line 134
    new-instance v0, Landroid/webkit/HtmlComposerInputConnection;

    invoke-direct {v0, p0}, Landroid/webkit/HtmlComposerInputConnection;-><init>(Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    .line 135
    return-void
.end method

.method static synthetic access$100(Landroid/webkit/HtmlComposerView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    return v0
.end method

.method private canCopy()Z
    .registers 2

    .prologue
    .line 182
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->length()I

    move-result v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_e

    .line 183
    const/4 v0, 0x1

    .line 186
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private canCut()Z
    .registers 2

    .prologue
    .line 174
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->length()I

    move-result v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_e

    .line 175
    const/4 v0, 0x1

    .line 178
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private canPaste()Z
    .registers 2

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_18

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionEnd()I

    move-result v0

    if-ltz v0, :cond_18

    .line 191
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->hasData()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 192
    const/4 v0, 0x1

    .line 196
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private canSelectAll()Z
    .registers 2

    .prologue
    .line 157
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->length()I

    move-result v0

    if-eqz v0, :cond_8

    .line 158
    const/4 v0, 0x1

    .line 161
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private capitalizeFirstLetters(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "string"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1364
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, " "

    invoke-direct {v1, p1, v3, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1365
    .local v1, st:Ljava/util/StringTokenizer;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1367
    .local v0, sb:Ljava/lang/StringBuilder;
    :goto_e
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1368
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1369
    .local v2, token:Ljava/lang/String;
    const-string v3, "%s%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1372
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 1375
    .end local v2           #token:Ljava/lang/String;
    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getLoadableContent(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "filePath"

    .prologue
    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    .local v1, bufer:Ljava/lang/StringBuilder;
    :try_start_5
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 465
    .local v4, fstream:Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 466
    .local v5, in:Ljava/io/DataInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 469
    .local v0, br:Ljava/io/BufferedReader;
    :goto_19
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, strLine:Ljava/lang/String;
    if-eqz v6, :cond_44

    .line 471
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_22} :catch_23

    goto :goto_19

    .line 481
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .end local v6           #strLine:Ljava/lang/String;
    :catch_23
    move-exception v7

    move-object v3, v7

    .line 482
    .local v3, ep:Ljava/lang/Exception;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " HtmlComposerView "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 483
    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .end local v3           #ep:Ljava/lang/Exception;
    :goto_43
    return-object v7

    .line 473
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    .restart local v6       #strLine:Ljava/lang/String;
    :cond_44
    :try_start_44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 476
    .local v2, data:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 477
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    .line 478
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_51} :catch_23

    move-object v7, v2

    .line 479
    goto :goto_43
.end method

.method private getReplacement(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 8
    .parameter "src"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1350
    invoke-static {p1, p2, p3, p0}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 1352
    .local v1, replacement:Ljava/lang/String;
    if-nez v1, :cond_19

    .line 1353
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1354
    .local v0, key:Ljava/lang/String;
    const/4 v2, 0x0

    sub-int v3, p3, p2

    invoke-static {v0, v2, v3, p0}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 1356
    if-nez v1, :cond_19

    .line 1357
    const/4 v2, 0x0

    .line 1359
    .end local v0           #key:Ljava/lang/String;
    :goto_18
    return-object v2

    :cond_19
    move-object v2, v1

    goto :goto_18
.end method

.method private isCapital(Ljava/lang/String;)Z
    .registers 5
    .parameter "string"

    .prologue
    .line 1381
    const-string v1, "Test"

    const-string v2, "checking iscapital"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 1383
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1384
    const/4 v1, 0x0

    .line 1386
    :goto_19
    return v1

    .line 1382
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1386
    :cond_1d
    const/4 v1, 0x1

    goto :goto_19
.end method

.method private showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z
    .registers 15
    .parameter "view"
    .parameter "content"
    .parameter "c"
    .parameter "insert"
    .parameter "count"

    .prologue
    const/4 v8, 0x1

    .line 1166
    sget-object v1, Landroid/webkit/HtmlComposerView;->PICKER_SETS:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1167
    .local v5, set:Ljava/lang/String;
    if-nez v5, :cond_d

    .line 1168
    const/4 v1, 0x0

    .line 1193
    :goto_c
    return v1

    .line 1171
    :cond_d
    if-ne p5, v8, :cond_20

    .line 1172
    new-instance v0, Landroid/webkit/HtmlComposerView$3;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p4

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Landroid/webkit/HtmlComposerView$3;-><init>(Landroid/webkit/HtmlComposerView;Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1189
    .local v0, mcharacterPicker:Landroid/text/method/CharacterPickerDialog;
    invoke-virtual {v0}, Landroid/text/method/CharacterPickerDialog;->show()V

    .end local v0           #mcharacterPicker:Landroid/text/method/CharacterPickerDialog;
    :cond_20
    move v1, v8

    .line 1193
    goto :goto_c
.end method

.method private showSmileyDialog()V
    .registers 20

    .prologue
    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mSmileyDialog:Landroid/app/AlertDialog;

    move-object v4, v0

    if-nez v4, :cond_ca

    .line 815
    sget-object v14, Landroid/text/method/SmileyParser;->DEFAULT_SMILEY_RES_IDS:[I

    .line 816
    .local v14, icons:[I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070027

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 818
    .local v16, names:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070026

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    .line 821
    .local v17, texts:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move v9, v0

    .line 823
    .local v9, N:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 824
    .local v5, entries:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    const/4 v13, 0x0

    .local v13, i:I
    :goto_31
    if-ge v13, v9, :cond_69

    .line 827
    const/4 v10, 0x0

    .line 828
    .local v10, added:Z
    const/4 v15, 0x0

    .local v15, j:I
    :goto_35
    if-ge v15, v13, :cond_3e

    .line 829
    aget v4, v14, v13

    aget v6, v14, v15

    if-ne v4, v6, :cond_66

    .line 830
    const/4 v10, 0x1

    .line 834
    :cond_3e
    if-nez v10, :cond_63

    .line 835
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 837
    .local v12, entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "icon"

    aget v6, v14, v13

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v12, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    const-string/jumbo v4, "name"

    aget-object v6, v16, v13

    invoke-virtual {v12, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    const-string/jumbo v4, "text"

    aget-object v6, v17, v13

    invoke-virtual {v12, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    .end local v12           #entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_63
    add-int/lit8 v13, v13, 0x1

    goto :goto_31

    .line 828
    :cond_66
    add-int/lit8 v15, v15, 0x1

    goto :goto_35

    .line 845
    .end local v10           #added:Z
    .end local v15           #j:I
    :cond_69
    new-instance v3, Landroid/widget/SimpleAdapter;

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x1090082

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "icon"

    .end local v9           #N:I
    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "name"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, "text"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    new-array v8, v8, [I

    fill-array-data v8, :array_d4

    invoke-direct/range {v3 .. v8}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 851
    .local v3, a:Landroid/widget/SimpleAdapter;
    new-instance v18, Landroid/webkit/HtmlComposerView$1;

    invoke-direct/range {v18 .. v19}, Landroid/webkit/HtmlComposerView$1;-><init>(Landroid/webkit/HtmlComposerView;)V

    .line 861
    .local v18, viewBinder:Landroid/widget/SimpleAdapter$ViewBinder;
    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 863
    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v11, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 865
    .local v11, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040524

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local v5           #entries:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 867
    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 868
    new-instance v4, Landroid/webkit/HtmlComposerView$2;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Landroid/webkit/HtmlComposerView$2;-><init>(Landroid/webkit/HtmlComposerView;Landroid/widget/SimpleAdapter;)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 879
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/HtmlComposerView;->mSmileyDialog:Landroid/app/AlertDialog;

    .line 882
    .end local v3           #a:Landroid/widget/SimpleAdapter;
    .end local v11           #b:Landroid/app/AlertDialog$Builder;
    .end local v13           #i:I
    .end local v14           #icons:[I
    .end local v16           #names:[Ljava/lang/String;
    .end local v17           #texts:[Ljava/lang/String;
    .end local v18           #viewBinder:Landroid/widget/SimpleAdapter$ViewBinder;
    :cond_ca
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mSmileyDialog:Landroid/app/AlertDialog;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 883
    return-void

    .line 845
    nop

    :array_d4
    .array-data 0x4
        0xa8t 0x2t 0x2t 0x1t
        0xa9t 0x2t 0x2t 0x1t
        0xaat 0x2t 0x2t 0x1t
    .end array-data
.end method

.method private updateInputMethodExtractText()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 590
    new-instance v1, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 591
    .local v1, outText:Landroid/view/inputmethod/ExtractedText;
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 592
    iget-object v3, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-nez v3, :cond_11

    .line 605
    :cond_10
    :goto_10
    return-void

    .line 594
    :cond_11
    const/4 v3, -0x1

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 595
    iput v5, v1, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 597
    iput v5, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 598
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v2

    .line 599
    .local v2, selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    iget v3, v2, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 600
    iget v3, v2, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 601
    const-string v3, "HtmlComposerView"

    const-string v4, "getExtractedText "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 603
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_10

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 604
    invoke-virtual {v0, p0, v5, v1}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    goto :goto_10
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "content"

    .prologue
    .line 761
    sget-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_END:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {p0, p1, v0}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 762
    return-void
.end method

.method public changeFontColorForSelection(Ljava/lang/String;)V
    .registers 3
    .parameter "fontColor"

    .prologue
    .line 578
    const-string v0, "ForeColor"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    return-void
.end method

.method public changeFontNameForSelection(Ljava/lang/String;)V
    .registers 3
    .parameter "fontName"

    .prologue
    .line 568
    const-string v0, "FontName"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    return-void
.end method

.method public changeFontSizeForSelection(Ljava/lang/String;)V
    .registers 3
    .parameter "fontSize"

    .prologue
    .line 573
    const-string v0, "FontSize"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    return-void
.end method

.method public cleanTempResources()V
    .registers 3

    .prologue
    .line 583
    const-string v0, "HtmlComposerView"

    const-string v1, "cleanTempResources"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->deleteTempDirectory()V

    .line 585
    return-void
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 528
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectAll()V

    .line 529
    const-string v0, ""

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 530
    return-void
.end method

.method public copy()V
    .registers 3

    .prologue
    .line 515
    const-string v0, "Copy"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    return-void
.end method

.method public cut()V
    .registers 3

    .prologue
    .line 511
    const-string v0, "Cut"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method public destroy()V
    .registers 3

    .prologue
    const-string v1, "HtmlComposerView"

    .line 779
    const-string v0, "HtmlComposerView"

    const-string v0, " htmlcomposer destroy() "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->isInputMethodTarget()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 782
    const-string v0, "HtmlComposerView"

    const-string v0, "htmlcomposer destroy() hide "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 785
    :cond_19
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    if-eqz v0, :cond_25

    .line 786
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerInputConnection;->setTargetNull()V

    .line 787
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    .line 789
    :cond_25
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 790
    return-void
.end method

.method public disableEditing()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 504
    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->setEditable(Z)V

    .line 505
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setEditableSupport(Z)V

    .line 506
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    if-eqz v0, :cond_12

    .line 507
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 508
    :cond_12
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 13
    .parameter "event"

    .prologue
    const/16 v10, 0x16

    const/16 v5, 0x13

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1250
    const/4 v8, 0x0

    .line 1251
    .local v8, retVal:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eq v1, v3, :cond_3c

    move v6, v3

    .line 1252
    .local v6, down:Z
    :goto_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    .line 1254
    .local v7, keyCode:I
    if-lt v7, v5, :cond_5c

    if-gt v7, v10, :cond_5c

    .line 1255
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->ckeckIfSelectionAtBoundry()I

    move-result v9

    .line 1256
    .local v9, selctionAtBoundry:I
    if-ne v9, v4, :cond_3e

    .line 1257
    if-eqz v6, :cond_22

    .line 1258
    invoke-virtual {p0, v7}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 1259
    :cond_22
    const/4 v8, 0x1

    .line 1287
    .end local v9           #selctionAtBoundry:I
    :cond_23
    :goto_23
    if-eqz v8, :cond_7f

    .line 1288
    invoke-virtual {p0, v2}, Landroid/webkit/HtmlComposerView;->setComposingState(Z)V

    .line 1289
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "input_method"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    move-object v1, p0

    move v3, v2

    move v5, v4

    .line 1291
    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    move v1, v8

    .line 1296
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :goto_3b
    return v1

    .end local v6           #down:Z
    .end local v7           #keyCode:I
    :cond_3c
    move v6, v2

    .line 1251
    goto :goto_f

    .line 1261
    .restart local v6       #down:Z
    .restart local v7       #keyCode:I
    .restart local v9       #selctionAtBoundry:I
    :cond_3e
    if-nez v9, :cond_4d

    if-eq v7, v10, :cond_46

    const/16 v1, 0x14

    if-ne v7, v1, :cond_4d

    .line 1262
    :cond_46
    if-eqz v6, :cond_4b

    .line 1263
    invoke-virtual {p0, v7}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 1264
    :cond_4b
    const/4 v8, 0x1

    goto :goto_23

    .line 1266
    :cond_4d
    if-ne v9, v3, :cond_23

    if-eq v7, v5, :cond_55

    const/16 v1, 0x15

    if-ne v7, v1, :cond_23

    .line 1267
    :cond_55
    if-eqz v6, :cond_5a

    .line 1268
    invoke-virtual {p0, v7}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 1269
    :cond_5a
    const/4 v8, 0x1

    goto :goto_23

    .line 1273
    .end local v9           #selctionAtBoundry:I
    :cond_5c
    const/16 v1, 0x3d

    if-ne v1, v7, :cond_6b

    .line 1274
    if-eqz v6, :cond_69

    .line 1275
    const-string v1, "InsertText"

    const-string v3, "    "

    invoke-virtual {p0, v1, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    :cond_69
    const/4 v8, 0x1

    goto :goto_23

    .line 1279
    :cond_6b
    const/16 v1, 0x42

    if-ne v7, v1, :cond_23

    .line 1280
    if-eqz v6, :cond_7d

    .line 1281
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isNewLine:Z

    .line 1282
    const-string v1, "InsertText"

    const-string v3, "\n"

    invoke-virtual {p0, v1, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1285
    :cond_7d
    const/4 v8, 0x1

    goto :goto_23

    .line 1296
    :cond_7f
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_3b
.end method

.method public doKeyDown(ILandroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .registers 15
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1332
    new-instance v0, Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    const/16 v8, 0x12

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyboardDevice()I

    move-result v9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v10

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v11

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    return-object v0
.end method

.method public doKeyDownShift(ILandroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .registers 15
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1340
    new-instance v0, Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    const/16 v8, 0x41

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyboardDevice()I

    move-result v9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v10

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v11

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    return-object v0
.end method

.method public enableEditing()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 499
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setEditableSupport(Z)V

    .line 500
    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->setEditable(Z)V

    .line 501
    return-void
.end method

.method declared-synchronized getComposingState()Z
    .registers 2

    .prologue
    .line 96
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConetextmenuVisibility()Z
    .registers 2

    .prologue
    .line 144
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    return v0
.end method

.method public getHTML()Ljava/lang/String;
    .registers 5

    .prologue
    const-string v3, ""

    .line 729
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 731
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getBodyHTML()Ljava/lang/String;

    move-result-object v0

    .line 732
    .local v0, text:Ljava/lang/String;
    if-nez v0, :cond_11

    const-string v1, ""

    move-object v1, v3

    .line 735
    :goto_10
    return-object v1

    .line 733
    :cond_11
    const-string v1, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)true\"?"

    const-string v2, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 734
    const-string v1, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)false\"?"

    const-string v2, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 735
    goto :goto_10
.end method

.method public getImeOptions()I
    .registers 2

    .prologue
    .line 710
    iget v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    return v0
.end method

.method public getMailContent()Landroid/webkit/WebHTMLMarkupData;
    .registers 6

    .prologue
    const-string v4, ""

    .line 739
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 741
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getMailHTML()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v0

    .line 743
    .local v0, data:Landroid/webkit/WebHTMLMarkupData;
    invoke-virtual {v0}, Landroid/webkit/WebHTMLMarkupData;->HTMLFragment()Ljava/lang/String;

    move-result-object v1

    .line 744
    .local v1, text:Ljava/lang/String;
    if-nez v1, :cond_12

    .line 748
    :goto_11
    return-object v0

    .line 745
    :cond_12
    const-string v2, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)true\"?"

    const-string v3, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 746
    const-string v2, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)false\"?"

    const-string v3, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 747
    invoke-virtual {v0, v1}, Landroid/webkit/WebHTMLMarkupData;->setHTMLFragment(Ljava/lang/String;)V

    goto :goto_11
.end method

.method public getSelectionEnd()I
    .registers 2

    .prologue
    .line 774
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v0

    iget v0, v0, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    return v0
.end method

.method public getSelectionStart()I
    .registers 2

    .prologue
    .line 771
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v0

    iget v0, v0, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 6

    .prologue
    .line 718
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v1

    .line 719
    .local v1, text:Ljava/lang/String;
    if-nez v1, :cond_8

    const-string v1, ""

    .line 720
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_34

    .line 721
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    aget-char v0, v2, v3

    .line 722
    .local v0, chrVal:I
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1c

    const-string v1, ""

    .line 723
    :cond_1c
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getText() Not Null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    .end local v0           #chrVal:I
    :cond_34
    return-object v1
.end method

.method public handleNavKeys(I)V
    .registers 5
    .parameter "keyCode"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1198
    packed-switch p1, :pswitch_data_5e

    .line 1245
    :goto_5
    return-void

    .line 1200
    :pswitch_6
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v0, :cond_13

    .line 1201
    const-string v0, "MoveLeftAndModifySelection"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto :goto_5

    .line 1205
    :cond_13
    const-string v0, "MoveLeft"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    invoke-virtual {p0, v2}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_5

    .line 1212
    :pswitch_1c
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v0, :cond_29

    .line 1213
    const-string v0, "MoveRightAndModifySelection"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto :goto_5

    .line 1217
    :cond_29
    const-string v0, "MoveRight"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    invoke-virtual {p0, v2}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_5

    .line 1223
    :pswitch_32
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v0, :cond_3f

    .line 1224
    const-string v0, "MoveUpAndModifySelection"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto :goto_5

    .line 1228
    :cond_3f
    const-string v0, "MoveUp"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    invoke-virtual {p0, v2}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_5

    .line 1234
    :pswitch_48
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v0, :cond_55

    .line 1235
    const-string v0, "MoveDownAndModifySelection"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto :goto_5

    .line 1239
    :cond_55
    const-string v0, "MoveDown"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    invoke-virtual {p0, v2}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_5

    .line 1198
    :pswitch_data_5e
    .packed-switch 0x13
        :pswitch_32
        :pswitch_48
        :pswitch_6
        :pswitch_1c
    .end packed-switch
.end method

.method public insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V
    .registers 5
    .parameter "contentFragment"
    .parameter "pos"

    .prologue
    const/4 v1, 0x0

    .line 488
    sget-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    if-ne p2, v0, :cond_14

    .line 489
    const-string v0, "MoveToBeginningOfDocument"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :cond_a
    :goto_a
    const-string v0, "InsertHTML"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    return-void

    .line 491
    :cond_14
    sget-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_END:Landroid/webkit/HtmlComposerView$InsertionPosition;

    if-ne p2, v0, :cond_a

    .line 492
    const-string v0, "MoveToEndOfDocument"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public insertImage(Ljava/lang/String;)V
    .registers 4
    .parameter "url"

    .prologue
    .line 540
    const-string v0, "InsertImage"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v0, "InsertNewline"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    return-void
.end method

.method public insertImage(Ljava/lang/String;II)V
    .registers 7
    .parameter "url"
    .parameter "widthInPixel"
    .parameter "heightInPixel"

    .prologue
    .line 533
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<img src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 534
    .local v0, imgMarkup:Ljava/lang/String;
    const-string v1, "InsertHTML"

    invoke-virtual {p0, v1, v0}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v1, "InsertNewline"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    return-void
.end method

.method public isInputMethodTarget()Z
    .registers 3

    .prologue
    .line 152
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 153
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_e

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public length()I
    .registers 2

    .prologue
    .line 757
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public loadHtmlFile(Ljava/lang/String;)V
    .registers 4
    .parameter "htmlFilePath"

    .prologue
    .line 451
    invoke-direct {p0, p1}, Landroid/webkit/HtmlComposerView;->getLoadableContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, data:Ljava/lang/String;
    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method public moveCursorBegining()V
    .registers 3

    .prologue
    .line 556
    const-string v0, "MoveToBeginningOfDocument"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    return-void
.end method

.method public moveCursorEnd()V
    .registers 3

    .prologue
    .line 552
    const-string v0, "MoveToEndOfDocument"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method public onContextMenuItem(I)Z
    .registers 14
    .parameter "id"

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 315
    iput-boolean v10, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 316
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v6

    .line 317
    .local v6, selStart:I
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionEnd()I

    move-result v5

    .line 319
    .local v5, selEnd:I
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 320
    .local v4, min:I
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 322
    .local v3, max:I
    if-gez v4, :cond_17

    .line 323
    const/4 v4, 0x0

    .line 325
    :cond_17
    if-gez v3, :cond_1a

    .line 326
    const/4 v3, 0x0

    .line 332
    :cond_1a
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 336
    .local v8, tmpBoolean:Ljava/lang/Boolean;
    sparse-switch p1, :sswitch_data_90

    move v9, v10

    .line 397
    :goto_22
    return v9

    .line 341
    :sswitch_23
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->AdvanceTextSelectionAll()Z

    .line 342
    iget-object v9, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v9, v11}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection(Z)V

    move v9, v11

    .line 343
    goto :goto_22

    .line 346
    :sswitch_2d
    invoke-virtual {p0, v11}, Landroid/webkit/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 347
    .local v0, cursurRect:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    invoke-virtual {p0, v9, v10}, Landroid/webkit/HtmlComposerView;->setTextSelecitonManualAtContentPoint(II)Z

    .line 348
    iget-object v9, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v9, v11}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection(Z)V

    move v9, v11

    .line 350
    goto :goto_22

    .line 353
    .end local v0           #cursurRect:Landroid/graphics/Rect;
    :sswitch_43
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->cut()V

    .line 354
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    move v9, v11

    .line 355
    goto :goto_22

    .line 357
    :sswitch_4b
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectAll()V

    .line 358
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->cut()V

    .line 359
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    move v9, v11

    .line 360
    goto :goto_22

    .line 362
    :sswitch_56
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->copy()V

    move v9, v11

    .line 363
    goto :goto_22

    .line 366
    :sswitch_5b
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v7

    .line 367
    .local v7, start:I
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionEnd()I

    move-result v1

    .line 368
    .local v1, end:I
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectAll()V

    .line 369
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->copy()V

    .line 370
    invoke-virtual {p0, v7, v1}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    move v9, v11

    .line 372
    goto :goto_22

    .line 375
    .end local v1           #end:I
    .end local v7           #start:I
    :sswitch_6e
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->paste()V

    .line 377
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    move v9, v11

    .line 378
    goto :goto_22

    .line 381
    :sswitch_76
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->undo()V

    move v9, v11

    .line 382
    goto :goto_22

    .line 385
    :sswitch_7b
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->redo()V

    move v9, v11

    .line 386
    goto :goto_22

    .line 389
    :sswitch_80
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 390
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_8e

    .line 391
    iget-object v9, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v9, v10}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection(Z)V

    .line 392
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    :cond_8e
    move v9, v11

    .line 394
    goto :goto_22

    .line 336
    :sswitch_data_90
    .sparse-switch
        0x102001f -> :sswitch_23
        0x1020020 -> :sswitch_43
        0x1020021 -> :sswitch_56
        0x1020022 -> :sswitch_6e
        0x1020024 -> :sswitch_80
        0x1020028 -> :sswitch_2d
        0x102002c -> :sswitch_76
        0x102002d -> :sswitch_7b
        0x1020408 -> :sswitch_4b
        0x1020409 -> :sswitch_5b
    .end sparse-switch
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .registers 10
    .parameter "menu"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 234
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 235
    const/4 v0, 0x0

    .line 237
    .local v0, added:Z
    new-instance v1, Landroid/webkit/HtmlComposerView$MenuHandler;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Landroid/webkit/HtmlComposerView$MenuHandler;-><init>(Landroid/webkit/HtmlComposerView;Landroid/webkit/HtmlComposerView$1;)V

    .line 239
    .local v1, handler:Landroid/webkit/HtmlComposerView$MenuHandler;
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->canSelectAll()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 240
    const v4, 0x102001f

    const v5, 0x104000d

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v4

    const/16 v5, 0x61

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 244
    const/4 v0, 0x1

    .line 247
    :cond_26
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionEnd()I

    move-result v5

    if-eq v4, v5, :cond_cc

    move v3, v7

    .line 249
    .local v3, selection:Z
    :goto_31
    if-nez v3, :cond_47

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->length()I

    move-result v4

    if-lez v4, :cond_47

    .line 250
    const v4, 0x1020028

    const v5, 0x1040406

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 253
    const/4 v0, 0x1

    .line 256
    :cond_47
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->canCut()Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 258
    if-eqz v3, :cond_cf

    .line 259
    const v2, 0x1040003

    .line 260
    .local v2, name:I
    const v4, 0x1020020

    invoke-interface {p1, v6, v4, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 268
    :goto_5c
    const/4 v0, 0x1

    .line 271
    .end local v2           #name:I
    :cond_5d
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->canCopy()Z

    move-result v4

    if-eqz v4, :cond_73

    .line 273
    if-eqz v3, :cond_dd

    .line 274
    const v2, 0x1040001

    .line 275
    .restart local v2       #name:I
    const v4, 0x1020021

    invoke-interface {p1, v6, v4, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 283
    :goto_72
    const/4 v0, 0x1

    .line 286
    .end local v2           #name:I
    :cond_73
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->canPaste()Z

    move-result v4

    if-eqz v4, :cond_87

    .line 287
    const v4, 0x1020022

    const v5, 0x104000b

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 289
    const/4 v0, 0x1

    .line 292
    :cond_87
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->canUndo()Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 293
    const v4, 0x102002c

    const v5, 0x1040409

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 297
    :cond_9a
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->canRedo()Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 298
    const v4, 0x102002d

    const v5, 0x104040a

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 302
    :cond_ad
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->isInputMethodTarget()Z

    move-result v4

    if-eqz v4, :cond_c1

    .line 303
    const v4, 0x1020024

    const v5, 0x104040b

    invoke-interface {p1, v7, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 305
    const/4 v0, 0x1

    .line 308
    :cond_c1
    if-eqz v0, :cond_cb

    .line 309
    iput-boolean v7, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 310
    const v4, 0x104040d

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 312
    :cond_cb
    return-void

    .end local v3           #selection:Z
    :cond_cc
    move v3, v6

    .line 247
    goto/16 :goto_31

    .line 262
    .restart local v3       #selection:Z
    :cond_cf
    const v2, 0x1040407

    .line 263
    .restart local v2       #name:I
    const v4, 0x1020408

    invoke-interface {p1, v6, v4, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_5c

    .line 277
    .end local v2           #name:I
    :cond_dd
    const v2, 0x1040408

    .line 278
    .restart local v2       #name:I
    const v4, 0x1020409

    invoke-interface {p1, v6, v4, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_72
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 7
    .parameter "outAttrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "HtmlComposerView"

    .line 1304
    const-string v1, "HtmlComposerView"

    const-string/jumbo v1, "onCreateInputConnection"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    if-ne v3, v1, :cond_1c

    .line 1308
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1309
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "allowEmoji"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1310
    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 1313
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1c
    iget-boolean v1, p0, Landroid/webkit/WebView;->isSelectionset:Z

    if-nez v1, :cond_2a

    .line 1315
    const-string v1, "HtmlComposerView"

    const-string v1, "calling set Caret 0 0 "

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    invoke-virtual {p0, v2, v2}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 1320
    :cond_2a
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit8 v1, v1, 0xf

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    or-int/lit16 v1, v1, 0x4000

    const v2, 0x8000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1326
    iget v1, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 1327
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    return-object v1
.end method

.method public onEditorAction(I)V
    .registers 5
    .parameter "actionCode"

    .prologue
    const/16 v2, 0x82

    .line 798
    const/4 v1, 0x5

    if-ne p1, v1, :cond_19

    .line 799
    invoke-virtual {p0, v2}, Landroid/webkit/HtmlComposerView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 800
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_20

    .line 801
    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_20

    .line 802
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 809
    .end local v0           #v:Landroid/view/View;
    :cond_19
    const-string v1, "InsertText"

    const-string v2, "\n"

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    :cond_20
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 7
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 672
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFocusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 674
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 675
    if-nez p1, :cond_27

    .line 676
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->dismissClipboardUI()V

    .line 677
    :cond_27
    if-eqz p1, :cond_3c

    .line 678
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v0, v1}, Landroid/webkit/WebClipboard;->setPasteListener(Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;)V

    .line 679
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->updateClipboardUI()V

    .line 680
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    .line 683
    :cond_3c
    invoke-virtual {p0, p1}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 684
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 25
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 890
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v20

    .line 891
    .local v20, selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    move/from16 v17, v0

    .line 892
    .local v17, position:I
    sget-object v4, Landroid/webkit/WebView$CursorDirection;->BACKWARD:Landroid/webkit/WebView$CursorDirection;

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->getTextAroundCursor(ILandroid/webkit/WebView$CursorDirection;)Ljava/lang/String;

    move-result-object v19

    .line 893
    .local v19, retText:Ljava/lang/String;
    if-nez v19, :cond_20

    const/16 v4, 0x43

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_20

    .line 894
    const/4 v4, 0x0

    .line 1061
    :goto_1f
    return v4

    .line 896
    :cond_20
    if-eqz v19, :cond_29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->isNewLine:Z

    move v4, v0

    if-eqz v4, :cond_33

    .line 897
    :cond_29
    invoke-virtual/range {p0 .. p2}, Landroid/webkit/HtmlComposerView;->doKeyDownShift(ILandroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p2

    .line 898
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->isNewLine:Z

    .line 900
    :cond_33
    if-eqz v19, :cond_a7

    .line 901
    const-string v4, "\n"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    .line 902
    .local v16, loc:I
    const/16 v21, 0x0

    .line 903
    .local v21, subText:Ljava/lang/String;
    const/4 v4, -0x1

    move/from16 v0, v16

    move v1, v4

    if-eq v0, v1, :cond_70

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, v16

    move v1, v4

    if-ge v0, v1, :cond_70

    .line 904
    move-object/from16 v0, v19

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 905
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    const/16 v4, 0x43

    move/from16 v0, p1

    move v1, v4

    if-eq v0, v1, :cond_70

    .line 906
    invoke-virtual/range {p0 .. p2}, Landroid/webkit/HtmlComposerView;->doKeyDownShift(ILandroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p2

    .line 909
    :cond_70
    const/16 v4, 0x3e

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_1b3

    .line 910
    const/4 v4, 0x1

    sub-int v4, v17, v4

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_e3

    .line 911
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->isNewSentence:Z

    move v4, v0

    if-eqz v4, :cond_a7

    .line 912
    const-string v4, "DeleteBackward"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    const-string v4, "InsertText"

    const-string v5, "."

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->isNewSentence:Z

    .line 961
    .end local v16           #loc:I
    .end local v21           #subText:Ljava/lang/String;
    :cond_a7
    :goto_a7
    const/16 v4, 0x39

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_21f

    .line 963
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerView;->mAltRepeatCount:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerView;->mAltRepeatCount:I

    .line 964
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerView;->mShiftRepeatCount:I

    .line 965
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->mShiftIsPressed:Z

    .line 967
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerView;->mAltRepeatCount:I

    move v4, v0

    const/4 v5, 0x2

    if-le v4, v5, :cond_1e9

    .line 968
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerView;->mAltRepeatCount:I

    .line 969
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->mAltIsPressed:Z

    .line 970
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->mAltModeEnabled:Z

    .line 971
    const/4 v4, 0x1

    goto/16 :goto_1f

    .line 916
    .restart local v16       #loc:I
    .restart local v21       #subText:Ljava/lang/String;
    :cond_e3
    const/4 v4, 0x1

    sub-int v4, v17, v4

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_19d

    .line 917
    const/4 v14, 0x0

    .line 918
    .local v14, index:I
    const/16 v11, 0x2e

    .line 919
    .local v11, delimiter:C
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v14

    :goto_f8
    if-lez v14, :cond_124

    .line 920
    const/4 v4, 0x1

    sub-int v4, v14, v4

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 921
    const/16 v4, 0x20

    if-eq v11, v4, :cond_124

    const/16 v4, 0x9

    if-eq v11, v4, :cond_124

    const/16 v4, 0xa

    if-eq v11, v4, :cond_124

    const/16 v4, 0x2c

    if-eq v11, v4, :cond_124

    const/16 v4, 0x2e

    if-eq v11, v4, :cond_124

    const/16 v4, 0x21

    if-eq v11, v4, :cond_124

    const/16 v4, 0x3f

    if-eq v11, v4, :cond_124

    const/16 v4, 0x22

    if-ne v11, v4, :cond_183

    .line 926
    :cond_124
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v14, v4, :cond_a7

    .line 927
    move-object/from16 v0, v19

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 928
    .local v10, ch_start:C
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v19

    move v1, v14

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 929
    .local v15, lastWord:Ljava/lang/String;
    if-eqz v15, :cond_a7

    .line 930
    const/4 v4, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v4

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/HtmlComposerView;->getReplacement(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v18

    .line 931
    .local v18, rep:Ljava/lang/String;
    if-eqz v18, :cond_a7

    .line 932
    invoke-static {v10}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_15d

    .line 933
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->capitalizeFirstLetters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 934
    :cond_15d
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->isCapital(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16a

    .line 935
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    .line 937
    :cond_16a
    const/16 v4, 0x2e

    if-ne v11, v4, :cond_187

    .line 938
    const/4 v13, 0x0

    .local v13, i:I
    :goto_16f
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v14

    if-ge v13, v4, :cond_191

    .line 939
    const-string v4, "DeleteBackward"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    add-int/lit8 v13, v13, 0x1

    goto :goto_16f

    .line 919
    .end local v10           #ch_start:C
    .end local v13           #i:I
    .end local v15           #lastWord:Ljava/lang/String;
    .end local v18           #rep:Ljava/lang/String;
    :cond_183
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_f8

    .line 942
    .restart local v10       #ch_start:C
    .restart local v15       #lastWord:Ljava/lang/String;
    .restart local v18       #rep:Ljava/lang/String;
    :cond_187
    const-string v4, "DeleteWordBackward"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    :cond_191
    const-string v4, "InsertText"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a7

    .line 948
    .end local v10           #ch_start:C
    .end local v11           #delimiter:C
    .end local v14           #index:I
    .end local v15           #lastWord:Ljava/lang/String;
    .end local v18           #rep:Ljava/lang/String;
    :cond_19d
    const/4 v4, 0x1

    sub-int v4, v17, v4

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_a7

    .line 949
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->isNewSentence:Z

    goto/16 :goto_a7

    .line 951
    :cond_1b3
    const/16 v4, 0x43

    move/from16 v0, p1

    move v1, v4

    if-eq v0, v1, :cond_a7

    const/16 v4, 0x39

    move/from16 v0, p1

    move v1, v4

    if-eq v0, v1, :cond_a7

    const/16 v4, 0x75

    move/from16 v0, p1

    move v1, v4

    if-eq v0, v1, :cond_a7

    const/16 v4, 0x3c

    move/from16 v0, p1

    move v1, v4

    if-eq v0, v1, :cond_a7

    const/16 v4, 0x3b

    move/from16 v0, p1

    move v1, v4

    if-eq v0, v1, :cond_a7

    .line 954
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->isNewSentence:Z

    move v4, v0

    if-nez v4, :cond_a7

    .line 955
    invoke-virtual/range {p0 .. p2}, Landroid/webkit/HtmlComposerView;->doKeyDownShift(ILandroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p2

    .line 956
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->isNewSentence:Z

    goto/16 :goto_a7

    .line 973
    .end local v16           #loc:I
    .end local v21           #subText:Ljava/lang/String;
    :cond_1e9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->mAltModeEnabled:Z

    move v4, v0

    if-eqz v4, :cond_1f9

    .line 974
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->mAltModeEnabled:Z

    .line 975
    const/4 v4, 0x1

    goto/16 :goto_1f

    .line 977
    :cond_1f9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerView;->mAltRepeatCount:I

    move v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_210

    .line 978
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->mAltIsPressed:Z

    .line 979
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->mAltModeEnabled:Z

    .line 980
    const/4 v4, 0x1

    goto/16 :goto_1f

    .line 983
    :cond_210
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->mAltIsPressed:Z

    .line 984
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->mAltModeEnabled:Z

    .line 985
    const/4 v4, 0x1

    goto/16 :goto_1f

    .line 988
    :cond_21f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->mAltIsPressed:Z

    move v4, v0

    if-nez v4, :cond_22d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->mAltModeEnabled:Z

    move v4, v0

    if-eqz v4, :cond_24a

    :cond_22d
    const/16 v4, 0x43

    move/from16 v0, p1

    move v1, v4

    if-eq v0, v1, :cond_24a

    .line 989
    invoke-virtual/range {p0 .. p2}, Landroid/webkit/HtmlComposerView;->doKeyDown(ILandroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p2

    .line 990
    const/16 v4, 0x75

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_24a

    .line 991
    const-string v4, "InsertText"

    const-string v5, ".com"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    :cond_24a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->mAltIsPressed:Z

    move v4, v0

    if-eqz v4, :cond_25a

    .line 995
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->length()I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerView;->m_composedataLength:I

    .line 996
    :cond_25a
    const/16 v4, 0x75

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_287

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->mAltModeEnabled:Z

    move v4, v0

    if-nez v4, :cond_287

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->mAltIsPressed:Z

    move v4, v0

    if-nez v4, :cond_287

    .line 998
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v12

    .line 1000
    .local v12, factory:Landroid/text/Editable$Factory;
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v6

    .line 1001
    .local v6, content:Landroid/text/Editable;
    const v7, 0xef01

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Landroid/webkit/HtmlComposerView;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    .line 1008
    .end local v6           #content:Landroid/text/Editable;
    .end local v12           #factory:Landroid/text/Editable$Factory;
    :cond_287
    const/16 v4, 0x3b

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_2bb

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerView;->mShiftRepeatCount:I

    move v4, v0

    if-nez v4, :cond_2bb

    .line 1010
    invoke-virtual/range {p0 .. p2}, Landroid/webkit/HtmlComposerView;->doKeyDownShift(ILandroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p2

    .line 1011
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 1012
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->mAltModeEnabled:Z

    move v4, v0

    if-nez v4, :cond_2b8

    .line 1014
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->mShiftIsPressed:Z

    .line 1015
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerView;->mShiftRepeatCount:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerView;->mShiftRepeatCount:I

    .line 1017
    :cond_2b8
    const/4 v4, 0x1

    goto/16 :goto_1f

    .line 1019
    :cond_2bb
    const/16 v4, 0x3b

    move/from16 v0, p1

    move v1, v4

    if-eq v0, v1, :cond_2c9

    const/16 v4, 0x3c

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_33c

    :cond_2c9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerView;->mShiftRepeatCount:I

    move v4, v0

    const/4 v5, 0x1

    if-lt v4, v5, :cond_33c

    .line 1022
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerView;->mShiftRepeatCount:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerView;->mShiftRepeatCount:I

    .line 1023
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerView;->mAltRepeatCount:I

    .line 1025
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerView;->mShiftRepeatCount:I

    move v4, v0

    const/4 v5, 0x2

    if-le v4, v5, :cond_306

    .line 1026
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerView;->mShiftRepeatCount:I

    .line 1027
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->mShiftIsPressed:Z

    .line 1028
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->mShiftModeEnabled:Z

    .line 1029
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 1030
    const/4 v4, 0x1

    goto/16 :goto_1f

    .line 1032
    :cond_306
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->mShiftModeEnabled:Z

    move v4, v0

    if-eqz v4, :cond_316

    .line 1033
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->mShiftModeEnabled:Z

    .line 1034
    const/4 v4, 0x1

    goto/16 :goto_1f

    .line 1036
    :cond_316
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerView;->mShiftRepeatCount:I

    move v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_32d

    .line 1037
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->mShiftIsPressed:Z

    .line 1038
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->mShiftModeEnabled:Z

    .line 1039
    const/4 v4, 0x1

    goto/16 :goto_1f

    .line 1042
    :cond_32d
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->mShiftIsPressed:Z

    .line 1043
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->mShiftModeEnabled:Z

    .line 1044
    const/4 v4, 0x1

    goto/16 :goto_1f

    .line 1050
    :cond_33c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->mAltIsPressed:Z

    move v4, v0

    if-nez v4, :cond_35c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->mShiftIsPressed:Z

    move v4, v0

    if-nez v4, :cond_351

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->mShiftModeEnabled:Z

    move v4, v0

    if-eqz v4, :cond_35c

    :cond_351
    const/16 v4, 0x43

    move/from16 v0, p1

    move v1, v4

    if-eq v0, v1, :cond_35c

    .line 1051
    invoke-virtual/range {p0 .. p2}, Landroid/webkit/HtmlComposerView;->doKeyDownShift(ILandroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p2

    .line 1057
    :cond_35c
    const/16 v4, 0x74

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_36d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->mAltModeEnabled:Z

    move v4, v0

    if-nez v4, :cond_36d

    .line 1058
    invoke-direct/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->showSmileyDialog()V

    .line 1061
    :cond_36d
    invoke-super/range {p0 .. p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_1f
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v3, 0x3b

    const/4 v2, 0x0

    .line 1068
    const/16 v0, 0x39

    if-eq p1, v0, :cond_1b

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mAltIsPressed:Z

    if-eqz v0, :cond_1b

    .line 1069
    iget v0, p0, Landroid/webkit/HtmlComposerView;->m_composedataLength:I

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->length()I

    move-result v1

    if-lt v0, v1, :cond_17

    const/16 v0, 0x75

    if-ne p1, v0, :cond_1b

    .line 1071
    :cond_17
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mAltIsPressed:Z

    .line 1072
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mAltRepeatCount:I

    .line 1077
    :cond_1b
    const/16 v0, 0x13

    if-lt p1, v0, :cond_39

    const/16 v0, 0x16

    if-gt p1, v0, :cond_39

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v0, :cond_39

    .line 1079
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mShiftIsPressed:Z

    .line 1080
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mShiftRepeatCount:I

    .line 1083
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mAltIsPressed:Z

    .line 1084
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mAltModeEnabled:Z

    .line 1092
    :cond_2f
    :goto_2f
    if-eq p1, v3, :cond_35

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_44

    .line 1094
    :cond_35
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 1095
    const/4 v0, 0x1

    .line 1097
    :goto_38
    return v0

    .line 1087
    :cond_39
    if-eq p1, v3, :cond_2f

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mShiftIsPressed:Z

    if-eqz v0, :cond_2f

    .line 1088
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mShiftIsPressed:Z

    .line 1089
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mShiftRepeatCount:I

    goto :goto_2f

    .line 1097
    :cond_44
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_38
.end method

.method public onRecieveWebviewTouchUp()V
    .registers 5

    .prologue
    .line 610
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 613
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imm active  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection(Z)V

    .line 617
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "HtmlComposerView"

    .line 623
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 624
    .local v0, ret:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_40

    .line 653
    :cond_f
    :goto_f
    return v0

    .line 626
    :pswitch_10
    const-string v1, "HtmlComposerView"

    const-string v1, "MotionEvent.ACTION_DOWN  html compopser"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iput-boolean v2, p0, Landroid/webkit/WebView;->mInActionMove:Z

    goto :goto_f

    .line 630
    :pswitch_1a
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 631
    const-string v1, "HtmlComposerView"

    const-string v1, "making selection set to true"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iput-boolean v3, p0, Landroid/webkit/WebView;->isSelectionset:Z

    .line 633
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    if-nez v1, :cond_3a

    .line 634
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 635
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    .line 645
    invoke-virtual {p0, v2}, Landroid/webkit/HtmlComposerView;->setComposingState(Z)V

    .line 647
    :cond_3a
    invoke-virtual {p0, v3}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 649
    iput-boolean v2, p0, Landroid/webkit/WebView;->mInActionMove:Z

    goto :goto_f

    .line 624
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_10
        :pswitch_1a
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .registers 6
    .parameter "hasWindowFocus"

    .prologue
    const/4 v2, 0x0

    const-string v3, "HtmlComposerView"

    .line 689
    const-string v0, "HtmlComposerView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onWindowFocusChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V

    .line 691
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    if-eqz v0, :cond_2c

    if-eqz p1, :cond_2c

    .line 692
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 694
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 696
    :cond_2c
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    if-nez v0, :cond_33

    .line 698
    invoke-virtual {p0, v2}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 700
    :cond_33
    if-nez p1, :cond_4e

    .line 701
    const-string v0, "HtmlComposerView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissClipboardUI commented "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :goto_4d
    return-void

    .line 704
    :cond_4e
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    goto :goto_4d
.end method

.method public paste()V
    .registers 3

    .prologue
    .line 520
    const-string v0, "Paste"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    return-void
.end method

.method public redo()V
    .registers 3

    .prologue
    .line 564
    const-string v0, "Redo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    return-void
.end method

.method public selectAll()V
    .registers 3

    .prologue
    .line 524
    const-string v0, "SelectAll"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method declared-synchronized setComposingState(Z)V
    .registers 3
    .parameter "isInComposingState"

    .prologue
    .line 93
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 94
    monitor-exit p0

    return-void

    .line 93
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEditableSelection(II)V
    .registers 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 545
    if-ltz p1, :cond_7

    if-ltz p2, :cond_7

    .line 546
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->setEditableSelection(II)V

    .line 549
    :cond_7
    return-void
.end method

.method public setEmoji(Z)V
    .registers 5
    .parameter "bIsActive"

    .prologue
    .line 766
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " htmlcomposer setEmoji() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 767
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 768
    return-void
.end method

.method public setImeOptions(I)V
    .registers 2
    .parameter "imeOption"

    .prologue
    .line 714
    iput p1, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 715
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3
    .parameter "content"

    .prologue
    .line 753
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clear()V

    .line 754
    sget-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {p0, p1, v0}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 755
    return-void
.end method

.method public setWidthForCopiedImage(I)V
    .registers 2
    .parameter "viewWidth"

    .prologue
    .line 139
    iput p1, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    .line 140
    return-void
.end method

.method public undo()V
    .registers 3

    .prologue
    .line 560
    const-string v0, "Undo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    return-void
.end method
