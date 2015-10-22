! --------------------------------------------------------------------------------
! ---  Conclusions from this test
! --------------------------------------------------------------------------------
! C  -Prepro  IS     case sensitive
! DEC-Preproc IS NOT case sensitive

program test_preproc

!#if defined __LINUX__
!print*,'C __LINUX__'
!#endif
!#if defined __linux__
!print*,'C __linux__'
!#endif
!#if defined _WIN32
!print*,'C _WIN32'
!#endif
!#if defined _WIN64
!print*,'C _WIN64'
!#endif
!
!#if defined __UNIX__
!print*,'C __UNIX__'
!#endif
!#if defined __unix__
!print*,'C __unix__'
!#endif
!!DEC$ if defined(__LINUX__)
!print*,'Intel __LINUX__'
!!DEC$ endif
!!dec$ if defined(__linux__)
!print*,'Intel __linux__'
!!DEC$ endif
!#if defined __MYMACRO__
!print*,'C __MYMACRO__'
!#endif
!#if defined __mymacro__
!print*,'C __mymacro__'
!#endif
!#if defined _DF_VERSION_
!print*,'C _DF_VERSION'
!#endif 
!#if defined _VF_VERSION_
!print*,'C _VF_VERSION'
!#endif 
!dec$ if defined(_DF_VERSION_)
print*,'Compaq _DF_VERSION'
!dec$ endif

!!dec$ if defined (mymacro)
!print*,'Intel __MYMACRO__'
!!dec$ endif
!!dec$ if defined(__mymacro__)
!!print*,'Intel __mymacro__'
!!DEC$ endif
end program
