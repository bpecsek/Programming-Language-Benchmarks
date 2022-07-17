program prime
implicit none
character(30) arg1
integer i,k,M,N, kount
logical, allocatable :: flags(:)
call get_command_argument(1,arg1)
read(arg1,*)M
do k = 1,3
   N = ishft(10000,M+1-k)
   allocate(flags(N))
   flags = .true.
   do i=2, nint(sqrt(real(N)))
      if(flags(i))flags(i*2:N:i) = .false.
   end do
   kount = count(flags)
   deallocate(flags)
   print '(1x,A,1x,i10,1x,i10)','primes up to ',N,kount
end do
end program
