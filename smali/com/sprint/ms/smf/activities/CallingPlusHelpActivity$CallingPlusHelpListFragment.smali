.class public Lcom/sprint/ms/smf/activities/CallingPlusHelpActivity$CallingPlusHelpListFragment;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/ms/smf/activities/CallingPlusHelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallingPlusHelpListFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/sprint/ms/smf/internal/c/d;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sget v0, Lcom/sprint/ms/smf/R$string;->sprint_smf_cp_help_title:I

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    sget p1, Lcom/sprint/ms/smf/R$xml;->sprint_smf_cp_help_prefs:I

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "sprint_smf_cp_overview"

    .line 79
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "sprint_smf_cp_faq"

    .line 80
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sget v0, Lcom/sprint/ms/smf/R$string;->sprint_smf_wfc_help_title:I

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    sget p1, Lcom/sprint/ms/smf/R$xml;->sprint_smf_wfc_help_prefs:I

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "sprint_smf_wfc_overview"

    .line 84
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "sprint_smf_wfc_faq"

    .line 85
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    .line 91
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 93
    new-instance v0, Lcom/sprint/ms/smf/activities/CallingPlusHelpActivity$ContentFragment;

    invoke-direct {v0}, Lcom/sprint/ms/smf/activities/CallingPlusHelpActivity$ContentFragment;-><init>()V

    .line 94
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "sprint_smf_cp_faq"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v6

    goto :goto_1

    :sswitch_1
    const-string v2, "sprint_smf_cp_overview"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_1

    :sswitch_2
    const-string v2, "sprint_smf_wfc_overview"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v5

    goto :goto_1

    :sswitch_3
    const-string v2, "sprint_smf_wfc_faq"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-string v2, "display"

    if-eqz p1, :cond_4

    if-eq p1, v6, :cond_3

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_1

    goto :goto_2

    .line 110
    :cond_1
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 106
    :cond_2
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 102
    :cond_3
    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 98
    :cond_4
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    :goto_2
    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    sget p1, Lcom/sprint/ms/smf/R$id;->sprint_smf_main_content:I

    .line 117
    invoke-virtual {p0, p1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    const/4 p1, 0x0

    .line 118
    invoke-virtual {p0, p1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 119
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    return v6

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4e11f2cd -> :sswitch_3
        -0x3755ca84 -> :sswitch_2
        0x306c2a73 -> :sswitch_1
        0x600699dc -> :sswitch_0
    .end sparse-switch
.end method
