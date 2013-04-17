
      subroutine quf(n, alpha1, alpha2, x)

      integer i
      integer n
      double precision x(n)
      double precision alpha1, alpha2

      external rndstart, rndend
      double precision myrbeta
      external myrbeta

      call rndstart()
      do 10 i = 1, n
          x(i) = myrbeta(alpha1, alpha2)
   10 continue
      call rndend()

      end

