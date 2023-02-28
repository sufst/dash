;/**************************************************************************/
;/*                                                                        */
;/*       Copyright (c) Microsoft Corporation. All rights reserved.        */
;/*                                                                        */
;/*       This software is licensed under the Microsoft Software License   */
;/*       Terms for Microsoft Azure RTOS. Full text of the license can be  */
;/*       found in the LICENSE file at https://aka.ms/AzureRTOS_EULA       */
;/*       and in the root directory of this software.                      */
;/*                                                                        */
;/**************************************************************************/
;
;
;/**************************************************************************/
;/**************************************************************************/
;/**                                                                       */ 
;/** ThreadX Component                                                     */ 
;/**                                                                       */
;/**   Thread                                                              */
;/**                                                                       */
;/**************************************************************************/
;/**************************************************************************/
;
;
;#define TX_SOURCE_CODE
;
;
;/* Include necessary system files.  */
;
;#include "tx_api.h"
;#include "tx_thread.h"
;#include "tx_timer.h"
;
;
IRQ_DISABLE     DEFINE  0x80                    ; IRQ disable bit
MODE_MASK       DEFINE  0x1F                    ; Mode mask
SYS_MODE_BITS   DEFINE  0x1F                    ; System mode bits
;
;
;/**************************************************************************/ 
;/*                                                                        */ 
;/*  FUNCTION                                               RELEASE        */ 
;/*                                                                        */ 
;/*    _tx_thread_irq_nesting_start                         ARM9/IAR       */ 
;/*                                                           6.1          */
;/*  AUTHOR                                                                */
;/*                                                                        */
;/*    William E. Lamie, Microsoft Corporation                             */
;/*                                                                        */
;/*  DESCRIPTION                                                           */
;/*                                                                        */ 
;/*    This function is called by the application from IRQ mode after      */ 
;/*    _tx_thread_context_save has been called and switches the IRQ        */ 
;/*    processing to the system mode so nested IRQ interrupt processing    */ 
;/*    is possible (system mode has its own "lr" register).  Note that     */ 
;/*    this function assumes that the system mode stack pointer was setup  */ 
;/*    during low-level initialization (tx_initialize_low_level.s79).      */ 
;/*                                                                        */ 
;/*    This function returns with IRQ interrupts enabled.                  */ 
;/*                                                                        */ 
;/*  INPUT                                                                 */ 
;/*                                                                        */ 
;/*    None                                                                */ 
;/*                                                                        */ 
;/*  OUTPUT                                                                */ 
;/*                                                                        */ 
;/*    None                                                                */ 
;/*                                                                        */ 
;/*  CALLS                                                                 */ 
;/*                                                                        */ 
;/*    None                                                                */ 
;/*                                                                        */ 
;/*  CALLED BY                                                             */ 
;/*                                                                        */ 
;/*    ISRs                                                                */ 
;/*                                                                        */ 
;/*  RELEASE HISTORY                                                       */ 
;/*                                                                        */ 
;/*    DATE              NAME                      DESCRIPTION             */
;/*                                                                        */
;/*  09-30-2020     William E. Lamie         Initial Version 6.1           */
;/*                                                                        */
;/**************************************************************************/
;VOID   _tx_thread_irq_nesting_start(VOID)
;{
    RSEG    .text:CODE:NOROOT(2)
    PUBLIC  _tx_thread_irq_nesting_start
    CODE32
_tx_thread_irq_nesting_start
    MOV     r3,lr                               ; Save ISR return address
    MRS     r0, CPSR                            ; Pickup the CPSR
    BIC     r0, r0, #MODE_MASK                  ; Clear the mode bits
    ORR     r0, r0, #SYS_MODE_BITS              ; Build system mode CPSR
    MSR     CPSR_cxsf, r0                       ; Enter system mode
    STR     lr, [sp, #-4]!                      ; Push the system mode lr on the system mode stack
    BIC     r0, r0, #IRQ_DISABLE                ; Build enable IRQ CPSR
    MSR     CPSR_cxsf, r0                       ; Enter system mode
    MOV     pc, r3                              ; Return to ISR
;}
;
;
    END

