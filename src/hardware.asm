; $Id: hardware.asm,v 1.10 2005/02/06 19:13:27 bifimsx Exp $
; C-BIOS hardware related declarations
;
; Copyright (c) 2002-2003 BouKiCHi.  All rights reserved.
; Copyright (c) 2003 Reikan.  All rights reserved.
; Copyright (c) 2004-2005 Maarten ter Huurne.  All rights reserved.
; Copyright (c) 2004 Manuel Bilderbeek.  All rights reserved.
; Copyright (c) 2004 Albert Beevendorp.  All rights reserved.
; Copyright (c) 2004-2005 Joost Yervante Damad.  All rights reserved.
;
; Redistribution and use in source and binary forms, with or without
; modification, are permitted provided that the following conditions
; are met:
; 1. Redistributions of source code must retain the above copyright
;    notice, this list of conditions and the following disclaimer.
; 2. Redistributions in binary form must reproduce the above copyright
;    notice, this list of conditions and the following disclaimer in the
;    documentation and/or other materials provided with the distribution.
;
; THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
; IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
; OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
; IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
; INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
; NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
; DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
; THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
; (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
; THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
;

;---------------------------------------------------
; I/O ports

DBG_CTRL:       equ     $2E             ; openMSX debugdevice control (mode)
DBG_DATA:       equ     $2F             ; openMSX debugdevice data

PRN_STAT:       equ     $90             ; printer status

VDP_DATA:       equ     $98             ; VDP data port (VRAM read/write)
VDP_ADDR:       equ     $99             ; VDP address (write only)
VDP_STAT:       equ     $99             ; VDP status (read only)
VDP_PALT:       equ     $9A             ; VDP palette latch (write only)
VDP_REGS:       equ     $9B             ; VDP register access (write only)

PSG_REGS:       equ     $A0             ; PSG register write port
PSG_DATA:       equ     $A1             ; PSG value write port
PSG_STAT:       equ     $A2             ; PSG value read port

PSL_STAT:       equ     $A8             ; slot status
KBD_STAT:       equ     $A9             ; keyboard status
GIO_REGS:       equ     $AA             ; 総合IOレジスタ
PPI_REGS:       equ     $AB             ; PPI register

RTC_ADDR:       equ     $B4             ; RTC address
RTC_DATA:       equ     $B5             ; RTC data

SYSFLAGS:       equ     $F4             ; MSX2+ System flags,
                                        ; preserved after reset
                                        ; bit 5: CPU boot mode (1=R800)
                                        ; bit 7: Boot method
                                        ;        (1=soft boot, no logo)

MAP_REG1:       equ     $FC             ; memory mapper: bank in $0000-$3FFF
MAP_REG2:       equ     $FD             ; memory mapper: bank in $4000-$7FFF
MAP_REG3:       equ     $FE             ; memory mapper: bank in $8000-$BFFF
MAP_REG4:       equ     $FF             ; memory mapper: bank in $C000-$FFFF

;---------------------------------------------------
; memory mapped I/O

SSL_REGS:       equ     $FFFF           ; secondary slot select registers

;---------------------------------------------------
; Constants used to define which hardware the BIOS will run on.
; Used by the main_<model>.asm sources.

; VDP models:
TMS99X8:        equ     $9918
V9938:          equ     $9938
V9958:          equ     $9958

; MSX models:
MODEL_MSX1:     equ     0
MODEL_MSX2:     equ     1
MODEL_MSX2P:    equ     2
MODEL_MSXTR:    equ     3

; BOOLEAN VALUES
YES:            equ     1
NO:             equ     0

; vim:ts=8:expandtab:filetype=z8a:syntax=z8a:
