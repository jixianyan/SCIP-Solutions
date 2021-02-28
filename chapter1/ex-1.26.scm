;The original expmod cuts the computation in half each time exp is an even number:
(remainder (square (expmod base (/ exp 2) m)) m)
;But because Louis' expmod repeats the computation twice (expmod base (/ exp 2) m):
(remainder (* (expmod base (/ exp 2) m)
              (expmod base (/ exp 2) m))
           m)
;So Louis' expmod process doubles the computation each time exp is even.
