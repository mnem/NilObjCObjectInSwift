# Unexpect nil obj-c objects in Swift

Little experiment to check the behaviour of objects that are unexpectedly `nil` 
in Swift. For some reason I assumed there would be a runtime error, but it 
turns out that isn't the case - it behaves similarly to Obj-C. That is, calling
a function on a nil (but non-optional) object is a NOOP. It makes sense if you
consider that Swift is really just performing an `objc_msgsend` under the hood,
but it still took me by surprise.
