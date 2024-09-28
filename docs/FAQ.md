# Frequently Asked Questions

## Does Google Sync/Translate/Data saver/IP protection work?
No.
This is not a limitation of Cromite but of all Chromium-based projects in general, as general public is not allowed to use Google's APIs for free unless when using Chromium.

Additionally, these features would not be privacy-friendly.

## Does Cromite require root?
No.

## Is Cromite de-googled?

Yes, but if you were to find connections to cloud-based services please report them via the issue tracker.

Cromite uses [Internal firewall patch](https://github.com/uazo/cromite/blob/master/build/patches/Internal-firewall.patch) to disable unwanted connections and [ungoogled-chromium: no special hosts/domains](https://github.com/uazo/cromite/blob/master/build/patches/ungoogled-chromium-no-special-hosts-domains.patch) for the removal of all code that uses pointers to Google servers.

Please note that the patch is called ungoogled-chromium but has nothing to do with the project of the same name.

## Does Cromite support DRM media?

No, since it is unclear whether any externally retrieved DRM required licence is bound to the device and the correct way to delete it.

## Is Cromite on Play Store?
No, but there are plans to activate it.

## Is Cromite on F-Droid?
It is not on the official F-Droid repository.

You can use F-Droid client to install and receive updates via [the official Cromite F-Droid repository](https://www.cromite.org/fdroid/repo).

## Using Cromite will favour the monopoly of the Chromium/Blink engine, why do you develop and maintain Cromite?

Many years of experience with chromium code leads me to think that it is indeed the best browser out there. Its flaws are Google's priority to its customers over its users, but I don't have that problem.

## Does Cromite support extensions in Android?
No. But there is an intention to explore this issue further.

## Why do push notifications not work on this website?

The [Chromium Blink engine](https://www.chromium.org/blink) uses [GCM](https://en.wikipedia.org/wiki/Google_Cloud_Messaging) to deliver messages
when websites use the [Push API](https://w3c.github.io/push-api/); this will not work in Cromite because cloud integrations are disabled (GCM in this case).

## Can TWA/PWAs be installed?

No. TWAs will not work because they are generated server-side on googleapis.com (which is not allowed in Cromite).

What is supported is home shortcuts that launch the browser without its interface.

## Does Cromite support the Android autofill framework?

Yes, the native Android autofill can be used.

## Does Cromite support casting media content?

No, this would require Play Store binary blobs.

## Can you add this search engine as default?
No. Cromite does not make any choice related to default search engines, user will have to decide during the first launch.
You are still free to enter any search engine you prefer via the settings ui.

## Some websites show ads, how can I fix this?
Cromite uses public lists for adblock that you see in the settings. Please check if the issue is due to the rules (and if so, report the problem in its correct repo) before requesting a check.

## This website is not performing well with Cromite, how can I fix this?
Cromite comes with [JavaScript JIT](https://hacks.mozilla.org/2017/02/a-crash-course-in-just-in-time-jit-compilers/) disabled by default.
You are free if you prefer to reactivate it via settings.

## Why was AdBlock Plus used rather than uBlock?
ADB is developed in c++ while uBlock is an extension in javascript. Currently, support for extensions is not active in Android.

ADB in Cromite is enhanced with support for cname uncloaking and blocking even in workers (a unique feature of Cromite). Support for "acceptable ads" has been completely removed.

## Why don't you accept donations?
I haven't decided yet. Currently the motivation is that I have no time or desire to understand how donations work in my country and with my current job position.
Fortunately, I don't need it for now.

