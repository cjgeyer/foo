
      subroutine foo(x, n)

      integer i
      integer n
      double precision x(n)

      do 10 i = 1, n
          x(i) = x(i) ** 2
   10 continue

      end

