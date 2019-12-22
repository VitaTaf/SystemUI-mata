.class public Lcom/sprint/ms/smf/internal/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/ms/smf/internal/a/b$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field final a:Landroid/content/Context;

.field b:Ljava/lang/String;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sprint/ms/smf/internal/a/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/sprint/ms/smf/internal/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMF-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/sprint/ms/smf/internal/a/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/ms/smf/internal/a/b;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/ms/smf/internal/a/b;->i:Ljava/util/List;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sprint/ms/smf/internal/a/b;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .line 219
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "characteristic"

    .line 221
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 223
    iget-object p1, p0, Lcom/sprint/ms/smf/internal/a/b;->i:Ljava/util/List;

    iget-object v0, p0, Lcom/sprint/ms/smf/internal/a/b;->j:Lcom/sprint/ms/smf/internal/a/b$a;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 224
    iput-object p1, p0, Lcom/sprint/ms/smf/internal/a/b;->j:Lcom/sprint/ms/smf/internal/a/b$a;

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 237
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 242
    :cond_0
    iget-object p0, p0, Lcom/sprint/ms/smf/internal/a/b;->i:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/ms/smf/internal/a/b$a;

    .line 1063
    iget-object v2, v0, Lcom/sprint/ms/smf/internal/a/b$a;->a:Ljava/lang/String;

    .line 243
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2063
    iget-object v0, v0, Lcom/sprint/ms/smf/internal/a/b$a;->b:Ljava/util/HashMap;

    .line 253
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "AppID"

    .line 254
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 255
    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    return-object v0

    :cond_3
    return-object v1
.end method

.method private b(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 2

    .line 276
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 284
    :cond_0
    invoke-direct {p0, p1}, Lcom/sprint/ms/smf/internal/a/b;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 280
    :cond_1
    invoke-direct {p0, p1}, Lcom/sprint/ms/smf/internal/a/b;->c(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 293
    :goto_1
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 v0, 0x7

    goto :goto_0

    :cond_2
    return v1

    :catch_1
    move-exception p1

    .line 305
    iget-object p0, p0, Lcom/sprint/ms/smf/internal/a/b;->a:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {p0, v0}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 306
    invoke-static {p1}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private c(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    .line 321
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "characteristic"

    .line 323
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 324
    new-instance v0, Lcom/sprint/ms/smf/internal/a/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sprint/ms/smf/internal/a/b$a;-><init>(B)V

    iput-object v0, p0, Lcom/sprint/ms/smf/internal/a/b;->j:Lcom/sprint/ms/smf/internal/a/b$a;

    .line 325
    iget-object v0, p0, Lcom/sprint/ms/smf/internal/a/b;->j:Lcom/sprint/ms/smf/internal/a/b$a;

    const-string v1, "type"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3063
    iput-object p1, v0, Lcom/sprint/ms/smf/internal/a/b$a;->a:Ljava/lang/String;

    .line 326
    iget-object p0, p0, Lcom/sprint/ms/smf/internal/a/b;->j:Lcom/sprint/ms/smf/internal/a/b$a;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 4063
    iput-object p1, p0, Lcom/sprint/ms/smf/internal/a/b$a;->b:Ljava/util/HashMap;

    return-void

    :cond_0
    const-string v1, "parm"

    .line 328
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "name"

    .line 329
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "value"

    .line 330
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "token"

    .line 332
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    iget-object v1, p0, Lcom/sprint/ms/smf/internal/a/b;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/sprint/ms/smf/internal/c/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 336
    :cond_1
    iget-object p0, p0, Lcom/sprint/ms/smf/internal/a/b;->j:Lcom/sprint/ms/smf/internal/a/b$a;

    .line 5063
    iget-object p0, p0, Lcom/sprint/ms/smf/internal/a/b$a;->b:Ljava/util/HashMap;

    .line 336
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 134
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 139
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sprint/ms/smf/internal/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 140
    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "token"

    .line 146
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 147
    iget-object p0, p0, Lcom/sprint/ms/smf/internal/a/b;->a:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sprint/ms/smf/internal/c/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1

    :cond_3
    :goto_0
    return-object v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 92
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sprint/ms/smf/internal/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 98
    :cond_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 99
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 101
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 102
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "token"

    .line 104
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 105
    iget-object v2, p0, Lcom/sprint/ms/smf/internal/a/b;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/sprint/ms/smf/internal/c/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    :cond_3
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 114
    iget-object v1, p0, Lcom/sprint/ms/smf/internal/a/b;->a:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    return-object p2
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 4

    .line 168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 174
    :try_start_0
    iget-object v2, p0, Lcom/sprint/ms/smf/internal/a/b;->a:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/sprint/ms/smf/internal/c/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/ms/smf/internal/a/b;->b:Ljava/lang/String;

    .line 175
    iget-object v2, p0, Lcom/sprint/ms/smf/internal/a/b;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 177
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 178
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    const-string v3, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 179
    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 180
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 181
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 182
    invoke-direct {p0, p1}, Lcom/sprint/ms/smf/internal/a/b;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 201
    iget-object p0, p0, Lcom/sprint/ms/smf/internal/a/b;->a:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {p0, v1}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 202
    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return p1

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v0, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    .line 188
    :goto_1
    :try_start_3
    iget-object v2, p0, Lcom/sprint/ms/smf/internal/a/b;->a:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 189
    invoke-static {p1}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    if-eqz v0, :cond_3

    .line 195
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 201
    iget-object p0, p0, Lcom/sprint/ms/smf/internal/a/b;->a:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {p0, v0}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 202
    invoke-static {p1}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return v1

    :goto_3
    if-eqz v0, :cond_4

    .line 195
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 201
    iget-object p0, p0, Lcom/sprint/ms/smf/internal/a/b;->a:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {p0, v1}, Lcom/sprint/ms/smf/internal/c/h;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 202
    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->report(Ljava/lang/Throwable;)V

    .line 205
    :cond_4
    :goto_4
    throw p1
.end method
