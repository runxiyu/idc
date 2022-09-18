# Python IDC Server

This is an experimental implementation of [the IDC protocol](https://git.andrewyu.org/idc/idc.git/).  Neither the protcol, this experimental implementation, or the future reference implementation are complete.

This is an "experimental implementation" which means that this is where the IDC development team tests out our ideas for the protocol and implement them first, before adding them to the C implementation, as writing C is slower and requires things to be better thought-out whereas Python implementations are "quick and dirty", good for testing ideas out.

We're not actively working on IDC and friends at the moment, so this is quite stalled.  Will pick this up sometime.  It seems to start without exceptions, but it probably has a thousand bugs waiting to be ironed out.  And this version utilizes Python exceptions excessively, with a ton of async and stuff, making it generally unfit to be our experimental playground for the actual reference implementation.  When development time comes we'll be restructuring and rewriting this.
