.class public Lmiui/telephony/phonenumber/ChineseAreaCode;
.super Ljava/lang/Object;
.source "ChineseAreaCode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/StringBuffer;II)Ljava/lang/String;
    .locals 1
    .parameter "buffer"
    .parameter "start"
    .parameter "length"

    .prologue
    invoke-static {}, Lmiui/telephony/phonenumber/ChineseTelocation;->getInstance()Lmiui/telephony/phonenumber/ChineseTelocation;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lmiui/telephony/phonenumber/ChineseTelocation;->parseAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
