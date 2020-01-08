.class public Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;
.super Lcom/sprint/ms/smf/SmfContract$Responses$BaseResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMF-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 870
    invoke-direct {p0, v0}, Lcom/sprint/ms/smf/SmfContract$Responses$BaseResponse;-><init>(B)V

    .line 1081
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->b:Ljava/util/List;

    return-void
.end method

.method public static fromJsonObject(Lorg/json/JSONObject;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;
    .locals 13

    const-string v0, "friendlyDescription"

    const-string v1, "code"

    const-string v2, "errors"

    const-string v3, "systemCode"

    const-string v4, "system"

    const-string v5, "message"

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1173
    :cond_0
    new-instance v6, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    invoke-direct {v6}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;-><init>()V

    .line 1176
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1177
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v2, 0x0

    .line 1179
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v2, v7, :cond_7

    .line 1181
    :try_start_1
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 1183
    new-instance v8, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;

    invoke-direct {v8}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;-><init>()V

    .line 1184
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;->code:I

    .line 1186
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1187
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;->friendlyDescription:Ljava/lang/String;

    .line 1190
    :cond_1
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1191
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;->message:Ljava/lang/String;

    .line 1194
    :cond_2
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1195
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;->system:Ljava/lang/String;

    .line 1198
    :cond_3
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1199
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;->systemCode:Ljava/lang/String;

    .line 1202
    :cond_4
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .line 1203
    :cond_5
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1204
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1205
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 1206
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 1207
    iget-object v11, v8, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;->values:Ljava/util/Map;

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1211
    :cond_6
    invoke-virtual {v6, v8}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_1
    :cond_7
    return-object v6
.end method

.method public static isErrorResponse(Lorg/json/JSONObject;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "errors"

    .line 1243
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addError(ILjava/lang/String;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    .line 1108
    invoke-virtual/range {v0 .. v6}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    return-object p0
.end method

.method public addError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;"
        }
    .end annotation

    .line 1145
    new-instance v0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;

    invoke-direct {v0}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;-><init>()V

    .line 1146
    iput p1, v0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;->code:I

    .line 1147
    iput-object p2, v0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;->friendlyDescription:Ljava/lang/String;

    .line 1148
    iput-object p3, v0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;->message:Ljava/lang/String;

    .line 1149
    iput-object p4, v0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;->system:Ljava/lang/String;

    .line 1150
    iput-object p5, v0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;->systemCode:Ljava/lang/String;

    if-eqz p6, :cond_0

    .line 1151
    invoke-interface {p6}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1152
    iget-object p1, v0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;->values:Ljava/util/Map;

    invoke-interface {p1, p6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1154
    :cond_0
    iget-object p1, p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addError(ILjava/lang/String;Ljava/util/Map;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v6, p3

    .line 1125
    invoke-virtual/range {v0 .. v6}, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->addError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;

    return-object p0
.end method

.method public addError(Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;)Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;
    .locals 1

    .line 1093
    iget-object v0, p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getErrors()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;",
            ">;"
        }
    .end annotation

    .line 1231
    iget-object p0, p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->b:Ljava/util/List;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1254
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1256
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1258
    iget-object p0, p0, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;

    .line 1259
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "code"

    .line 1261
    iget v5, v2, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;->code:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1263
    iget-object v4, v2, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;->friendlyDescription:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "friendlyDescription"

    .line 1264
    iget-object v5, v2, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;->friendlyDescription:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1266
    :cond_0
    iget-object v4, v2, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;->message:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "message"

    .line 1267
    iget-object v5, v2, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;->message:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1269
    :cond_1
    iget-object v4, v2, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;->system:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "system"

    .line 1270
    iget-object v5, v2, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;->system:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1272
    :cond_2
    iget-object v4, v2, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;->systemCode:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "systemCode"

    .line 1273
    iget-object v5, v2, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;->systemCode:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1275
    :cond_3
    iget-object v4, v2, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;->values:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1276
    iget-object v2, v2, Lcom/sprint/ms/smf/SmfContract$Responses$ErrorResponse$Error;->values:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1277
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 1280
    :cond_4
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    .line 1283
    :cond_5
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_6

    const-string p0, "errors"

    .line 1284
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    const/4 p0, 0x4

    .line 1287
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method
