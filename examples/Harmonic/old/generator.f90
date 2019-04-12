PROGRAM ho_pot
  IMPLICIT NONE
  
  REAL(KIND=8) :: r,req,k,rmin,rmax,dr
  INTEGER :: i,nsteps

  k = 4.0
  req = 0.0
  rmin = -3
  rmax = 3
  nsteps = 50000
  dr = (rmax - rmin)/nsteps

  r = rmin
  DO i=0,nsteps
    WRITE(*,*) i, r, 0.5*k*(r-req)**2.0D0  
    !WRITE(*,*) i,r,k*(r-req)**4.0 - k*(r-req)**3.0+k*(r-req)**2.0-k*(r-req)**1.0
    r = r + dr
  END DO 
  

END PROGRAM ho_pot
