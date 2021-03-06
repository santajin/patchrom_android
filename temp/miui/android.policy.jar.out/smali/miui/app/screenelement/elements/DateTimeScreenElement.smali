.class public Lmiui/app/screenelement/elements/DateTimeScreenElement;
.super Lmiui/app/screenelement/elements/TextScreenElement;
.source "DateTimeScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "DateTime"


# instance fields
.field protected mCalendar:Ljava/util/Calendar;

.field private mCurDay:I

.field private mLunarDate:Ljava/lang/String;

.field private mPreValue:J

.field private mText:Ljava/lang/String;

.field private mValue:Lmiui/app/screenelement/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 1
    .parameter "node"
    .parameter "c"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lmiui/app/screenelement/elements/TextScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/DateTimeScreenElement;->mCalendar:Ljava/util/Calendar;

    const/4 v0, -0x1

    iput v0, p0, Lmiui/app/screenelement/elements/DateTimeScreenElement;->mCurDay:I

    const-string v0, "value"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/DateTimeScreenElement;->mValue:Lmiui/app/screenelement/data/Expression;

    return-void
.end method


# virtual methods
.method protected getText()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x5

    iget-object v5, p0, Lmiui/app/screenelement/elements/DateTimeScreenElement;->mValue:Lmiui/app/screenelement/data/Expression;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lmiui/app/screenelement/elements/DateTimeScreenElement;->mValue:Lmiui/app/screenelement/data/Expression;

    iget-object v6, p0, Lmiui/app/screenelement/elements/DateTimeScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v6, v6, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v5, v6}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v5

    double-to-long v1, v5

    .local v1, ms:J
    :goto_0
    iget-wide v5, p0, Lmiui/app/screenelement/elements/DateTimeScreenElement;->mPreValue:J

    sub-long v5, v1, v5

    const-wide/16 v7, 0xc8

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    iget-object v5, p0, Lmiui/app/screenelement/elements/DateTimeScreenElement;->mText:Ljava/lang/String;

    :goto_1
    return-object v5

    .end local v1           #ms:J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    goto :goto_0

    .restart local v1       #ms:J
    :cond_1
    iget-object v5, p0, Lmiui/app/screenelement/elements/DateTimeScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0}, Lmiui/app/screenelement/elements/DateTimeScreenElement;->getFormat()Ljava/lang/String;

    move-result-object v0

    .local v0, format:Ljava/lang/String;
    if-nez v0, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const-string v5, "NNNN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lmiui/app/screenelement/elements/DateTimeScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget v6, p0, Lmiui/app/screenelement/elements/DateTimeScreenElement;->mCurDay:I

    if-eq v5, v6, :cond_4

    iget-object v5, p0, Lmiui/app/screenelement/elements/DateTimeScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v5, v5, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .local v3, res:Landroid/content/res/Resources;
    iget-object v5, p0, Lmiui/app/screenelement/elements/DateTimeScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v5}, Lmiui/util/LunarDate;->getString(Landroid/content/res/Resources;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lmiui/app/screenelement/elements/DateTimeScreenElement;->mLunarDate:Ljava/lang/String;

    iget-object v5, p0, Lmiui/app/screenelement/elements/DateTimeScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v5}, Lmiui/util/LunarDate;->getSolarTerm(Landroid/content/res/Resources;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v4

    .local v4, term:Ljava/lang/String;
    if-eqz v4, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lmiui/app/screenelement/elements/DateTimeScreenElement;->mLunarDate:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lmiui/app/screenelement/elements/DateTimeScreenElement;->mLunarDate:Ljava/lang/String;

    :cond_3
    iget-object v5, p0, Lmiui/app/screenelement/elements/DateTimeScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iput v5, p0, Lmiui/app/screenelement/elements/DateTimeScreenElement;->mCurDay:I

    const-string v5, "DateTimeScreenElement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get lunar date:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lmiui/app/screenelement/elements/DateTimeScreenElement;->mLunarDate:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3           #res:Landroid/content/res/Resources;
    .end local v4           #term:Ljava/lang/String;
    :cond_4
    const-string v5, "NNNN"

    iget-object v6, p0, Lmiui/app/screenelement/elements/DateTimeScreenElement;->mLunarDate:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    iget-object v5, p0, Lmiui/app/screenelement/elements/DateTimeScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lmiui/app/screenelement/elements/DateTimeScreenElement;->mText:Ljava/lang/String;

    iput-wide v1, p0, Lmiui/app/screenelement/elements/DateTimeScreenElement;->mPreValue:J

    iget-object v5, p0, Lmiui/app/screenelement/elements/DateTimeScreenElement;->mText:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public resume()V
    .locals 1

    .prologue
    invoke-super {p0}, Lmiui/app/screenelement/elements/TextScreenElement;->resume()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/DateTimeScreenElement;->mCalendar:Ljava/util/Calendar;

    return-void
.end method
