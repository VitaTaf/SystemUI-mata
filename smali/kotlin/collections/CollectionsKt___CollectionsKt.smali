.class Lkotlin/collections/CollectionsKt___CollectionsKt;
.super Lkotlin/collections/CollectionsKt___CollectionsJvmKt;
.source "_Collections.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n_Collections.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,2484:1\n238#1,2:2485\n448#1,7:2487\n461#1,6:2494\n740#1,2:2500\n685#1:2502\n1583#1,2:2503\n686#1,2:2505\n1585#1:2507\n688#1:2508\n1583#1,3:2509\n702#1,2:2512\n732#1,2:2514\n1105#1,4:2520\n1078#1,4:2524\n1092#1,4:2528\n1135#1,4:2532\n1215#1,5:2536\n1256#1,3:2541\n1259#1,3:2551\n1274#1,3:2554\n1277#1,3:2564\n1370#1,3:2581\n1342#1,4:2584\n1331#1:2588\n1583#1,3:2589\n1332#1:2592\n1583#1,3:2593\n1361#1:2596\n1574#1,2:2597\n1362#1:2599\n1574#1,2:2600\n740#1,2:2602\n710#1:2604\n732#1,2:2605\n710#1:2607\n732#1,2:2608\n710#1:2610\n732#1,2:2611\n2206#1,8:2617\n2234#1,7:2625\n2265#1,10:2632\n37#2,2:2516\n37#2,2:2518\n305#3,7:2544\n305#3,7:2557\n305#3,7:2567\n305#3,7:2574\n31#4,2:2613\n31#4,2:2615\n*E\n*S KotlinDebug\n*F\n+ 1 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n153#1,2:2485\n161#1,7:2487\n169#1,6:2494\n667#1,2:2500\n676#1:2502\n676#1,2:2503\n676#1,2:2505\n676#1:2507\n676#1:2508\n685#1,3:2509\n695#1,2:2512\n710#1,2:2514\n1042#1,4:2520\n1055#1,4:2524\n1067#1,4:2528\n1124#1,4:2532\n1208#1,5:2536\n1231#1,3:2541\n1231#1,3:2551\n1244#1,3:2554\n1244#1,3:2564\n1301#1,3:2581\n1311#1,4:2584\n1321#1:2588\n1321#1,3:2589\n1321#1:2592\n1331#1,3:2593\n1353#1:2596\n1353#1,2:2597\n1353#1:2599\n1361#1,2:2600\n1939#1,2:2602\n1951#1:2604\n1951#1,2:2605\n1964#1:2607\n1964#1,2:2608\n1977#1:2610\n1977#1,2:2611\n2195#1,8:2617\n2223#1,7:2625\n2252#1,10:2632\n898#1,2:2516\n939#1,2:2518\n1231#1,7:2544\n1244#1,7:2557\n1258#1,7:2567\n1276#1,7:2574\n2142#1,2:2613\n2182#1,2:2615\n*E\n"
.end annotation


# direct methods
.method public static asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2325
    new-instance v0, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v0, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method
