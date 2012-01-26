.class final Landroid/webkit/GeolocationService;
.super Ljava/lang/Object;
.source "GeolocationService.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "geolocationService"


# instance fields
.field private mIsGpsEnabled:Z

.field private mIsGpsProviderAvailable:Z

.field private mIsNetworkProviderAvailable:Z

.field private mIsRunning:Z

.field private mLocationManager:Landroid/location/LocationManager;

.field private mNativeObject:J


# direct methods
.method public constructor <init>(J)V
    .registers 7
    .parameter "nativeObject"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide p1, p0, Landroid/webkit/GeolocationService;->mNativeObject:J

    .line 54
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v1

    .line 55
    .local v1, thread:Landroid/app/ActivityThread;
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 56
    .local v0, context:Landroid/content/Context;
    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, Landroid/webkit/GeolocationService;->mLocationManager:Landroid/location/LocationManager;

    .line 57
    iget-object v2, p0, Landroid/webkit/GeolocationService;->mLocationManager:Landroid/location/LocationManager;

    if-nez v2, :cond_22

    .line 58
    const-string v2, "geolocationService"

    const-string v3, "Could not get location manager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_22
    return-void
.end method

.method private maybeReportError(Ljava/lang/String;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 185
    iget-boolean v0, p0, Landroid/webkit/GeolocationService;->mIsRunning:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Landroid/webkit/GeolocationService;->mIsNetworkProviderAvailable:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Landroid/webkit/GeolocationService;->mIsGpsProviderAvailable:Z

    if-nez v0, :cond_11

    .line 186
    iget-wide v0, p0, Landroid/webkit/GeolocationService;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/webkit/GeolocationService;->nativeNewErrorAvailable(JLjava/lang/String;)V

    .line 188
    :cond_11
    return-void
.end method

.method private static native nativeNewErrorAvailable(JLjava/lang/String;)V
.end method

.method private static native nativeNewLocationAvailable(JLandroid/location/Location;)V
.end method

.method private registerForLocationUpdates()V
    .registers 8

    .prologue
    .line 159
    :try_start_0
    iget-object v0, p0, Landroid/webkit/GeolocationService;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/GeolocationService;->mIsNetworkProviderAvailable:Z

    .line 161
    iget-boolean v0, p0, Landroid/webkit/GeolocationService;->mIsGpsEnabled:Z

    if-eqz v0, :cond_21

    .line 162
    iget-object v0, p0, Landroid/webkit/GeolocationService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/GeolocationService;->mIsGpsProviderAvailable:Z
    :try_end_21
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_21} :catch_22

    .line 169
    :cond_21
    :goto_21
    return-void

    .line 165
    :catch_22
    move-exception v0

    move-object v6, v0

    .line 166
    .local v6, e:Ljava/lang/SecurityException;
    const-string v0, "geolocationService"

    const-string v1, "Caught security exception registering for location updates from system. This should only happen in DumpRenderTree."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method private unregisterFromLocationUpdates()V
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Landroid/webkit/GeolocationService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 176
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4
    .parameter "location"

    .prologue
    .line 103
    iget-boolean v0, p0, Landroid/webkit/GeolocationService;->mIsRunning:Z

    if-eqz v0, :cond_9

    .line 104
    iget-wide v0, p0, Landroid/webkit/GeolocationService;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/webkit/GeolocationService;->nativeNewLocationAvailable(JLandroid/location/Location;)V

    .line 106
    :cond_9
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 4
    .parameter "providerName"

    .prologue
    const/4 v1, 0x0

    .line 146
    const-string/jumbo v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 147
    iput-boolean v1, p0, Landroid/webkit/GeolocationService;->mIsNetworkProviderAvailable:Z

    .line 151
    :cond_c
    :goto_c
    const-string v0, "The last location provider was disabled"

    invoke-direct {p0, v0}, Landroid/webkit/GeolocationService;->maybeReportError(Ljava/lang/String;)V

    .line 152
    return-void

    .line 148
    :cond_12
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 149
    iput-boolean v1, p0, Landroid/webkit/GeolocationService;->mIsGpsProviderAvailable:Z

    goto :goto_c
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 4
    .parameter "providerName"

    .prologue
    const/4 v1, 0x1

    .line 133
    const-string/jumbo v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 134
    iput-boolean v1, p0, Landroid/webkit/GeolocationService;->mIsNetworkProviderAvailable:Z

    .line 138
    :cond_c
    :goto_c
    return-void

    .line 135
    :cond_d
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 136
    iput-boolean v1, p0, Landroid/webkit/GeolocationService;->mIsGpsProviderAvailable:Z

    goto :goto_c
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 6
    .parameter "providerName"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 116
    const/4 v1, 0x2

    if-ne p2, v1, :cond_16

    const/4 v1, 0x1

    move v0, v1

    .line 117
    .local v0, isAvailable:Z
    :goto_5
    const-string/jumbo v1, "network"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 118
    iput-boolean v0, p0, Landroid/webkit/GeolocationService;->mIsNetworkProviderAvailable:Z

    .line 122
    :cond_10
    :goto_10
    const-string v1, "The last location provider is no longer available"

    invoke-direct {p0, v1}, Landroid/webkit/GeolocationService;->maybeReportError(Ljava/lang/String;)V

    .line 123
    return-void

    .line 116
    .end local v0           #isAvailable:Z
    :cond_16
    const/4 v1, 0x0

    move v0, v1

    goto :goto_5

    .line 119
    .restart local v0       #isAvailable:Z
    :cond_19
    const-string v1, "gps"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 120
    iput-boolean v0, p0, Landroid/webkit/GeolocationService;->mIsGpsProviderAvailable:Z

    goto :goto_10
.end method

.method public setEnableGps(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 83
    iget-boolean v0, p0, Landroid/webkit/GeolocationService;->mIsGpsEnabled:Z

    if-eq v0, p1, :cond_10

    .line 84
    iput-boolean p1, p0, Landroid/webkit/GeolocationService;->mIsGpsEnabled:Z

    .line 85
    iget-boolean v0, p0, Landroid/webkit/GeolocationService;->mIsRunning:Z

    if-eqz v0, :cond_10

    .line 88
    invoke-direct {p0}, Landroid/webkit/GeolocationService;->unregisterFromLocationUpdates()V

    .line 89
    invoke-direct {p0}, Landroid/webkit/GeolocationService;->registerForLocationUpdates()V

    .line 92
    :cond_10
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/webkit/GeolocationService;->registerForLocationUpdates()V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/GeolocationService;->mIsRunning:Z

    .line 68
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/webkit/GeolocationService;->unregisterFromLocationUpdates()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/GeolocationService;->mIsRunning:Z

    .line 76
    return-void
.end method
