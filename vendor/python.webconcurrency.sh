case $(ulimit -u) in

# 1X DYNO
256)
  export DYNO_RAM=512
  export WEB_CONCURRENCY=${WEB_CONCURRENCY:-2}
  ;;

# 2X DYNO
512)
  export DYNO_RAM=1024
  export WEB_CONCURRENCY=${WEB_CONCURRENCY:-4}
  ;;

# IX DYNO
32767)
  export DYNO_RAM=2560
  export WEB_CONCURRENCY=${WEB_CONCURRENCY:-8}
  ;;

# PX DYNO
32768)
  export DYNO_RAM=6656
  export WEB_CONCURRENCY=${WEB_CONCURRENCY:-11}
  ;;

esac