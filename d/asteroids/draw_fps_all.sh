set -xe
../../haskell/dist-newstyle/build/x86_64-linux/ghc-8.10.2/plotting-0.1.0.0/x/calc-fps/build/calc-fps/calc-fps multiple LDC ./fps.out_ldc DMD ./fps.out_dmd
xdg-open fps_many.png