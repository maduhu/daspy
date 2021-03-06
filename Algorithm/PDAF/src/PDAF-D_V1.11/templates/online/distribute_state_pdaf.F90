!$Id: distribute_state_pdaf.F90 1441 2013-10-04 10:33:42Z lnerger $
!BOP
!
! !ROUTINE: distribute_state_pdaf --- Initialize model fields from state vector
!
! !INTERFACE:
SUBROUTINE distribute_state_pdaf(dim_p, state_p)

! !DESCRIPTION:
! User-supplied routine for PDAF.
! Used in the filters: SEEK/EnKF/SEIK/LSEIK/ETKF/LETKF/ESTKF/LESTKF
!
! During the forecast phase of the filter this
! subroutine is called from PDAF\_get\_state
! supplying a model state which has to be evolved. 
! The routine has to initialize the fields of the 
! model (typically available through a module) from 
! the state vector of PDAF. With parallelization, 
! MPI communication might be required to 
! initialize all subdomains on the model PEs.
!
! The routine is executed by each process that is
! participating in the model integrations.
!
! !REVISION HISTORY:
! 2004-10 - Lars Nerger - Initial code
! Later revisions - see svn log
!
! !USES:
  IMPLICIT NONE
  
! !ARGUMENTS:
  INTEGER, INTENT(in) :: dim_p           ! PE-local state dimension
  REAL, INTENT(inout) :: state_p(dim_p)  ! PE-local state vector

! !CALLING SEQUENCE:
! Called by: PDAF_get_state   (as U_dist_state)
!EOP


! *******************************************
! *** Initialize model fields from state  ***
! *** Each model PE knows his sub-state   ***
!********************************************

  WRITE (*,*) 'TEMPLATE distribute_state_pdaf.F90: Initialize model fields from state vector here!'

END SUBROUTINE distribute_state_pdaf
